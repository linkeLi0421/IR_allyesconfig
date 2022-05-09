; ModuleID = '/llk/IR_all_yes/drivers/md/raid5-cache.c_pt.bc'
source_filename = "../drivers/md/raid5-cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+r5c_journal_mode_set\22, \22a\22\09"
module asm "\09.weak\09__crc_r5c_journal_mode_set\09\09\09\09"
module asm "\09.long\09__crc_r5c_journal_mode_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_r5c_journal_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22r5c_journal_mode_set\22\09\09\09\09\09"
module asm "__kstrtabns_r5c_journal_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.md_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%union.anon.75 = type { i32 }
%struct.r5l_log = type { ptr, i32, i64, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.bio, %struct.list_head, ptr, %struct.mempool_s, %struct.bio_set, %struct.mempool_s, ptr, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i8, i32, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.xarray }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.stripe_head = type { %struct.hlist_node, %struct.list_head, %struct.llist_node, ptr, i16, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.spinlock, i32, ptr, ptr, %struct.spinlock, %struct.list_head, %union.anon.83, %struct.list_head, i64, %struct.list_head, ptr, %struct.stripe_operations, [1 x %struct.r5dev] }
%struct.llist_node = type { ptr }
%union.anon.83 = type { ptr }
%struct.stripe_operations = type { i32, i32, i32 }
%struct.r5dev = type { %struct.bio, %struct.bio, %struct.bio_vec, %struct.bio_vec, ptr, ptr, i32, ptr, ptr, ptr, ptr, i64, i32, i32, i16 }
%struct.r5conf = type { ptr, [8 x %struct.spinlock], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i16, %struct.seqcount_spinlock, i32, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, %struct.atomic_t, i32, [2 x [32 x i8]], ptr, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.hlist_node, %struct.atomic_t, [8 x %struct.list_head], %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.shrinker, i32, %struct.spinlock, ptr, %struct.bio_set, ptr, [8 x %struct.list_head], ptr, i32, i32, ptr, ptr, %struct.spinlock, i8, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.llist_head = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mddev = type { ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, i32, i32, ptr, %struct.kobject, i32, i32, i32, i32, i32, i32, [17 x i8], i32, i64, i64, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i64, i32, [16 x i8], i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i64, i64, i64, %struct.atomic64_t, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, i32, i32, %struct.timer_list, %struct.percpu_ref, i32, ptr, ptr, %struct.anon.80, %struct.atomic_t, %struct.list_head, ptr, %struct.bio_set, %struct.bio_set, %struct.bio_set, ptr, %struct.atomic_t, i64, i64, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.percpu_ref = type { i32, ptr }
%struct.anon.80 = type { ptr, i64, i32, i64, i32, %struct.mutex, i32, i32, i32, i32, i32, [64 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.r5l_io_unit = type { ptr, ptr, i32, ptr, %struct.atomic_t, i64, i64, i64, %struct.list_head, %struct.list_head, i32, i8, ptr, i8, %struct.bio_list }
%struct.r5l_payload_header = type { i16, i16 }
%struct.r5l_payload_data_parity = type { %struct.r5l_payload_header, i32, i64, [0 x i32] }
%struct.r5l_meta_block = type { i32, i32, i8, i8, i16, i32, i64, i64, [0 x %struct.r5l_payload_header] }
%struct.md_rdev = type { %struct.list_head, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i32, i32, %struct.kobject, i32, %struct.wait_queue_head, i32, i32, i32, i32, %union.anon.81, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.badblocks, %struct.anon.82 }
%union.anon.81 = type { i64 }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.anon.82 = type { i16, i32, i64 }
%struct.md_thread = type { ptr, ptr, %struct.wait_queue_head, i32, ptr, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.stripe_head_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.disk_info = type { ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
%struct.r5l_payload_flush = type { %struct.r5l_payload_header, i32, [0 x i64] }
%struct.r5l_recovery_ctx = type { ptr, i64, i64, i64, i32, i32, %struct.list_head, [256 x ptr], i64, i32, i32, ptr }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/md/raid5-cache.c\00", [39 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@r5l_log_disk_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@r5c_journal_mode_set.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 2, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"raid456\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"r5c_journal_mode_set\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"md/raid:%s: setting r5c cache mode to %d: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@r5c_journal_mode_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.31], [24 x i8] zeroinitializer }, align 32
@__kstrtab_r5c_journal_mode_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_r5c_journal_mode_set = external dso_local constant [0 x i8], align 1
@__ksymtab_r5c_journal_mode_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @r5c_journal_mode_set to i32), ptr @__kstrtab_r5c_journal_mode_set, ptr @__kstrtabns_r5c_journal_mode_set }, section "___ksymtab+r5c_journal_mode_set", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal_mode\00", [19 x i8] zeroinitializer }, align 32
@r5c_journal_mode = dso_local global { %struct.md_sysfs_entry, [36 x i8] } { %struct.md_sysfs_entry { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @r5c_journal_mode_show, ptr @r5c_journal_mode_store }, [36 x i8] zeroinitializer }, align 32
@r5c_big_stripe_cached.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@r5l_init_log.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str, ptr @.str.7, i8 3, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r5l_init_log\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"md/raid:%s: using device %s as journal\0A\00", [56 x i8] zeroinitializer }, align 32
@r5l_init_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 3090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013md/raid:%s: write journal/cache doesn't work for array with %d disks\0A\00", [56 x i8] zeroinitializer }, align 32
@r5l_init_log._entry_ptr = internal global ptr @r5l_init_log._entry, section ".printk_index", align 4
@r5l_init_log.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&log->io_mutex\00", [17 x i8] zeroinitializer }, align 32
@r5l_init_log.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&log->io_list_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r5l_io_unit\00", [20 x i8] zeroinitializer }, align 32
@r5l_init_log.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&log->tree_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reclaim\00", [24 x i8] zeroinitializer }, align 32
@r5l_init_log.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&log->iounit_wait\00", [46 x i8] zeroinitializer }, align 32
@r5l_init_log.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&log->no_space_stripes_lock\00", [36 x i8] zeroinitializer }, align 32
@r5l_init_log.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&log->deferred_io_work)\00", [54 x i8] zeroinitializer }, align 32
@r5l_init_log.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&log->disable_writeback_work)\00", [48 x i8] zeroinitializer }, align 32
@r5l_init_log.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&log->stripe_in_journal_lock\00", [35 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdX\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write-through\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write-back\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[%s] %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s [%s]\0A\00", [23 x i8] zeroinitializer }, align 32
@radix_tree_deref_slot_protected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/radix-tree.h\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@r5l_recovery_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str, i32 2494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016md/raid:%s: starting from clean shutdown\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r5l_recovery_log\00", [47 x i8] zeroinitializer }, align 32
@r5l_recovery_log._entry_ptr = internal global ptr @r5l_recovery_log._entry, section ".printk_index", align 4
@r5l_recovery_log._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str, i32 2498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016md/raid:%s: recovering %d data-only stripes and %d data-parity stripes\0A\00", [54 x i8] zeroinitializer }, align 32
@r5l_recovery_log._entry_ptr.42 = internal global ptr @r5l_recovery_log._entry.40, section ".printk_index", align 4
@r5l_recovery_log._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str, i32 2506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013md/raid:%s: failed to rewrite stripes to journal\0A\00", [44 x i8] zeroinitializer }, align 32
@r5l_recovery_log._entry_ptr.45 = internal global ptr @r5l_recovery_log._entry.43, section ".printk_index", align 4
@r5c_recovery_analyze_meta_block.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.46, ptr @.str, ptr @.str.47, i8 2, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"r5c_recovery_analyze_meta_block\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"md/raid:%s: Increasing stripe cache size to %d to recovery data on journal.\0A\00", [51 x i8] zeroinitializer }, align 32
@r5c_recovery_analyze_meta_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str, i32 2167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013md/raid:%s: Cannot increase cache size, ret=%d, new_size=%d, min_nr_stripes=%d, max_nr_stripes=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@r5c_recovery_analyze_meta_block._entry_ptr = internal global ptr @r5c_recovery_analyze_meta_block._entry, section ".printk_index", align 4
@r5c_recovery_analyze_meta_block._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.46, ptr @.str, i32 2175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013md/raid:%s: Cannot get enough stripes due to memory pressure. Recovery failed.\0A\00", [46 x i8] zeroinitializer }, align 32
@r5c_recovery_analyze_meta_block._entry_ptr.51 = internal global ptr @r5c_recovery_analyze_meta_block._entry.49, section ".printk_index", align 4
@r5l_recovery_replay_one_stripe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@r5l_recovery_replay_one_stripe.__warned.52 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@r5c_recovery_rewrite_data_only_stripes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 2363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013md/raid:%s: cannot allocate memory to rewrite data only stripes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"r5c_recovery_rewrite_data_only_stripes\00", [57 x i8] zeroinitializer }, align 32
@r5c_recovery_rewrite_data_only_stripes._entry_ptr = internal global ptr @r5c_recovery_rewrite_data_only_stripes._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@r5c_disable_writeback_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016md/raid:%s: Disabling writeback cache for degraded array.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"r5c_disable_writeback_async\00", [36 x i8] zeroinitializer }, align 32
@r5c_disable_writeback_async._entry_ptr = internal global ptr @r5c_disable_writeback_async._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 13]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 512]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 256]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 256, i64 512]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 456, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1597, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2593, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [21 x i8] c"r5c_journal_mode_str\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 49, i32 14 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2625, i32 20 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"r5c_journal_mode\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2625, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3073, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3089, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3104, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3106, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3113, i32 15 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3129, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3133, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3138, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3143, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3145, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3146, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 3150, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 695, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 723, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"../drivers/md/md.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 632, i32 54 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 49, i32 40 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 50, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2550, i32 21 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2556, i32 21 }
@___asan_gen_.183 = private unnamed_addr constant [30 x i8] c"../include/linux/radix-tree.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 194, i32 9 }
@___asan_gen_.186 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 717, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2493, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2496, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2505, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2157, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2162, i32 6 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2174, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2362, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 378, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [28 x i8] c"../drivers/md/raid5-cache.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 690, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__ksymtab_r5c_journal_mode_set, ptr @r5c_disable_writeback_async._entry, ptr @r5c_disable_writeback_async._entry_ptr, ptr @r5c_recovery_analyze_meta_block._entry, ptr @r5c_recovery_analyze_meta_block._entry.49, ptr @r5c_recovery_analyze_meta_block._entry_ptr, ptr @r5c_recovery_analyze_meta_block._entry_ptr.51, ptr @r5c_recovery_rewrite_data_only_stripes._entry, ptr @r5c_recovery_rewrite_data_only_stripes._entry_ptr, ptr @r5l_init_log._entry, ptr @r5l_init_log._entry_ptr, ptr @r5l_recovery_log._entry, ptr @r5l_recovery_log._entry.40, ptr @r5l_recovery_log._entry.43, ptr @r5l_recovery_log._entry_ptr, ptr @r5l_recovery_log._entry_ptr.42, ptr @r5l_recovery_log._entry_ptr.45, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @r5c_journal_mode_str, ptr @.str.5, ptr @r5c_journal_mode, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @r5l_init_log.__key, ptr @.str.9, ptr @r5l_init_log.__key.10, ptr @.str.11, ptr @.str.12, ptr @r5l_init_log.__key.13, ptr @.str.14, ptr @.str.15, ptr @r5l_init_log.__key.16, ptr @.str.17, ptr @r5l_init_log.__key.18, ptr @.str.19, ptr @r5l_init_log.__key.20, ptr @.str.21, ptr @r5l_init_log.__key.22, ptr @.str.23, ptr @r5l_init_log.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @xa_init_flags.__key, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5c_journal_mode_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5c_journal_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_init_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_init_log.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_init_log.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_init_log.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_init_log.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_init_log.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_init_log.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_init_log.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_init_log.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_recovery_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_recovery_log._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5l_recovery_log._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5c_recovery_analyze_meta_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5c_recovery_analyze_meta_block._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5c_recovery_rewrite_data_only_stripes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r5c_disable_writeback_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @r5c_is_writeback(ptr noundef readonly %log) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %log, null
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %r5c_journal_mode = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 28
  %0 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r5c_journal_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5c_handle_cached_data_endio(ptr nocapture noundef readonly %conf, ptr noundef %sh, i32 noundef %disks) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %disks1 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 13
  %0 = ptrtoint ptr %disks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disks1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not18 = icmp eq i32 %1, 0
  br i1 %tobool.not18, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mddev.i = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 2
  %sector = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 5
  %state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %dec19.in = phi i32 [ %1, %for.body.lr.ph ], [ %dec19, %if.end.for.body_crit_edge ]
  %dec19 = add i32 %dec19.in, -1
  %written = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec19, i32 10
  %2 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %written, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec19, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #12
  %4 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %written, align 8
  store ptr null, ptr %written, align 8
  %tobool.not10.i = icmp eq ptr %5, null
  br i1 %tobool.not10.i, label %if.then.r5c_return_dev_pending_writes.exit_crit_edge, label %land.rhs.lr.ph.i

if.then.r5c_return_dev_pending_writes.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_return_dev_pending_writes.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then
  %sector.i = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec19, i32 11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %r5_next_bio.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %wbi.011.i = phi ptr [ %5, %land.rhs.lr.ph.i ], [ %retval.0.i.i, %r5_next_bio.exit.i.land.rhs.i_crit_edge ]
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %wbi.011.i, i32 0, i32 8
  %6 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi_iter.i, align 8
  %8 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sector.i, align 8
  %add.i = add i64 %9, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %add.i)
  %cmp.i = icmp ult i64 %7, %add.i
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.r5c_return_dev_pending_writes.exit_crit_edge

land.rhs.i.r5c_return_dev_pending_writes.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_return_dev_pending_writes.exit

while.body.i:                                     ; preds = %land.rhs.i
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %wbi.011.i, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_size.i.i, align 8
  %shr.i.i = lshr i32 %11, 9
  %conv.i.i = zext i32 %shr.i.i to i64
  %add.i.i = add i64 %7, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %add.i)
  %cmp.i.i = icmp ult i64 %add.i.i, %add.i
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.r5_next_bio.exit.i_crit_edge

while.body.i.r5_next_bio.exit.i_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5_next_bio.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %wbi.011.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wbi.011.i, align 8
  br label %r5_next_bio.exit.i

r5_next_bio.exit.i:                               ; preds = %if.then.i.i, %while.body.i.r5_next_bio.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.then.i.i ], [ null, %while.body.i.r5_next_bio.exit.i_crit_edge ]
  %14 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mddev.i, align 4
  tail call void @md_write_end(ptr noundef %15) #12
  tail call void @bio_endio(ptr noundef nonnull %wbi.011.i) #12
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %r5_next_bio.exit.i.r5c_return_dev_pending_writes.exit_crit_edge, label %r5_next_bio.exit.i.land.rhs.i_crit_edge

r5_next_bio.exit.i.land.rhs.i_crit_edge:          ; preds = %r5_next_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

r5_next_bio.exit.i.r5c_return_dev_pending_writes.exit_crit_edge: ; preds = %r5_next_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_return_dev_pending_writes.exit

r5c_return_dev_pending_writes.exit:               ; preds = %r5_next_bio.exit.i.r5c_return_dev_pending_writes.exit_crit_edge, %land.rhs.i.r5c_return_dev_pending_writes.exit_crit_edge, %if.then.r5c_return_dev_pending_writes.exit_crit_edge
  %16 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mddev.i, align 4
  %bitmap = getelementptr inbounds %struct.mddev, ptr %17, i32 0, i32 85
  %18 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitmap, align 4
  %20 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sector, align 8
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state, align 4
  %24 = lshr i32 %23, 8
  %.lobit = and i32 %24, 1
  %25 = xor i32 %.lobit, 1
  tail call void @md_bitmap_endwrite(ptr noundef %19, i64 noundef %21, i32 noundef 8, i32 noundef %25, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %r5c_return_dev_pending_writes.exit, %for.body.if.end_crit_edge
  %tobool.not = icmp eq i32 %dec19, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_bitmap_endwrite(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5c_check_stripe_cache_usage(ptr noundef %conf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %log = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 73
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %entry.cleanup_crit_edge, label %r5c_is_writeback.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

r5c_is_writeback.exit:                            ; preds = %entry
  %r5c_journal_mode.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %r5c_journal_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r5c_journal_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp eq i32 %3, 1
  br i1 %cmp1.i, label %if.end, label %r5c_is_writeback.exit.cleanup_crit_edge

r5c_is_writeback.exit.cleanup_crit_edge:          ; preds = %r5c_is_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %r5c_is_writeback.exit
  %r5c_cached_partial_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 53
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r5c_cached_partial_stripes, i32 noundef 4) #12
  %4 = ptrtoint ptr %r5c_cached_partial_stripes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %r5c_cached_partial_stripes, align 4
  %r5c_cached_full_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 51
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %r5c_cached_full_stripes, i32 noundef 4) #12
  %6 = ptrtoint ptr %r5c_cached_full_stripes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %r5c_cached_full_stripes, align 4
  %add = add i32 %7, %5
  %min_nr_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 10
  %8 = ptrtoint ptr %min_nr_stripes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_nr_stripes, align 4
  %div = sdiv i32 %9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div)
  %cmp = icmp sgt i32 %add, %div
  br i1 %cmp, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %empty_inactive_list_nr = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 57
  %call.i.i14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %empty_inactive_list_nr, i32 noundef 4) #12
  %10 = ptrtoint ptr %empty_inactive_list_nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %empty_inactive_list_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4 = icmp sgt i32 %11, 0
  br i1 %cmp4, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %12 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %do.body.preheader.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.preheader.i:                              ; preds = %if.then5
  %reclaim_target.i = getelementptr inbounds %struct.r5l_log, ptr %13, i32 0, i32 23
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %14 = ptrtoint ptr %reclaim_target.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reclaim_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.not = icmp eq i32 %15, 0
  br i1 %cmp.i.not, label %do.cond.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond.i:                                        ; preds = %do.body.i
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reclaim_target.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %reclaim_target.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.cond.i
  %16 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %reclaim_target.i, i32 0, i32 0) #12, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  %cmp21.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %cmp21.not.i, label %do.end23.i, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end23.i:                                       ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %reclaim_thread.i = getelementptr inbounds %struct.r5l_log, ptr %13, i32 0, i32 22
  %17 = ptrtoint ptr %reclaim_thread.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reclaim_thread.i, align 8
  tail call void @md_wakeup_thread(ptr noundef %18) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end23.i, %do.body.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %r5c_is_writeback.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5l_wake_reclaim(ptr noundef %log, i64 noundef %space) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %space to i32
  %tobool.not = icmp eq ptr %log, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %reclaim_target = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 23
  br label %do.body

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %do.body.preheader
  %0 = ptrtoint ptr %reclaim_target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reclaim_target, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ugt i32 %1, %conv
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %do.cond

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reclaim_target, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %reclaim_target, i32 1, i32 3, i32 1) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.cond
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %reclaim_target, i32 %1, i32 %conv) #12, !srcloc !134
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  %cmp21.not = icmp eq i32 %asmresult1.i, %1
  br i1 %cmp21.not, label %do.end23, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end23:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %reclaim_thread = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 22
  %3 = ptrtoint ptr %reclaim_thread to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reclaim_thread, align 8
  tail call void @md_wakeup_thread(ptr noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5c_check_cached_full_stripe(ptr noundef %conf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %log = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 73
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %entry.if.end5_crit_edge, label %r5c_is_writeback.exit

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

r5c_is_writeback.exit:                            ; preds = %entry
  %r5c_journal_mode.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %r5c_journal_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r5c_journal_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp eq i32 %3, 1
  br i1 %cmp1.i, label %if.end, label %r5c_is_writeback.exit.if.end5_crit_edge

r5c_is_writeback.exit.if.end5_crit_edge:          ; preds = %r5c_is_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end:                                           ; preds = %r5c_is_writeback.exit
  %r5c_cached_full_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 51
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r5c_cached_full_stripes, i32 noundef 4) #12
  %4 = ptrtoint ptr %r5c_cached_full_stripes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %r5c_cached_full_stripes, align 4
  %max_nr_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 9
  %6 = ptrtoint ptr %max_nr_stripes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_nr_stripes, align 8
  %div = sdiv i32 %7, 4
  %chunk_sectors = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 3
  %8 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chunk_sectors, align 8
  %shr = ashr i32 %9, 3
  %10 = tail call i32 @llvm.smin.i32(i32 %div, i32 %shr)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %10)
  %cmp2.not = icmp slt i32 %5, %10
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %11 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %log, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then3.if.end5_crit_edge, label %do.body.preheader.i

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.body.preheader.i:                              ; preds = %if.then3
  %reclaim_target.i = getelementptr inbounds %struct.r5l_log, ptr %12, i32 0, i32 23
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %13 = ptrtoint ptr %reclaim_target.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reclaim_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not = icmp eq i32 %14, 0
  br i1 %cmp.i.not, label %do.cond.i, label %do.body.i.if.end5_crit_edge

do.body.i.if.end5_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.cond.i:                                        ; preds = %do.body.i
  %call.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reclaim_target.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %reclaim_target.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.cond.i
  %15 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %reclaim_target.i, i32 0, i32 0) #12, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  %cmp21.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %cmp21.not.i, label %do.end23.i, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end23.i:                                       ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %reclaim_thread.i = getelementptr inbounds %struct.r5l_log, ptr %12, i32 0, i32 22
  %16 = ptrtoint ptr %reclaim_thread.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reclaim_thread.i, align 8
  tail call void @md_wakeup_thread(ptr noundef %17) #12
  br label %if.end5

if.end5:                                          ; preds = %do.end23.i, %do.body.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %if.end.if.end5_crit_edge, %r5c_is_writeback.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5c_make_stripe_write_out(ptr noundef %sh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_conf = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 3
  %0 = ptrtoint ptr %raid_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_conf, align 4
  %log1 = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log1, align 8
  %cmp.not.i = icmp eq ptr %3, null
  br i1 %cmp.not.i, label %entry.do.body4_crit_edge, label %r5c_is_writeback.exit, !prof !136

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4

r5c_is_writeback.exit:                            ; preds = %entry
  %r5c_journal_mode.i = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %r5c_journal_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r5c_journal_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.i = icmp eq i32 %5, 1
  br i1 %cmp1.i, label %do.end9, label %r5c_is_writeback.exit.do.body4_crit_edge, !prof !137

r5c_is_writeback.exit.do.body4_crit_edge:         ; preds = %r5c_is_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4

do.body4:                                         ; preds = %r5c_is_writeback.exit.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 454, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.end9:                                          ; preds = %r5c_is_writeback.exit
  %state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %do.end29, label %do.end9.if.end35_crit_edge, !prof !139

do.end9.if.end35_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end29:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 456, i32 noundef 9, ptr noundef null) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %do.end9.if.end35_crit_edge
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %state) #12
  %call44 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end35.if.end47_crit_edge

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then46:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %preread_active_stripes = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %preread_active_stripes, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %preread_active_stripes, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %preread_active_stripes, ptr %preread_active_stripes, i32 1, ptr elementtype(i32) %preread_active_stripes) #12, !srcloc !140
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end35.if.end47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r5l_write_stripe(ptr noundef %log, ptr noundef %sh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_conf = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 3
  %0 = ptrtoint ptr %raid_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_conf, align 4
  %tobool.not = icmp eq ptr %log, null
  br i1 %tobool.not, label %entry.cleanup124_crit_edge, label %if.end

entry.cleanup124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup124

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 23
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %pd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  %5 = ptrtoint ptr %pd_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pd_idx, align 8
  %idxprom = sext i16 %6 to i32
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %idxprom, i32 12
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.end8, label %lor.lhs.false3.if.then6_crit_edge

lor.lhs.false3.if.then6_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false3.if.then6_crit_edge, %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %state7 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 23, ptr noundef %state7) #12
  br label %cleanup124

if.end8:                                          ; preds = %lor.lhs.false3
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state, align 4
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.end8.if.end26_crit_edge, label %do.end, !prof !137

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1012, i32 noundef 9, ptr noundef null) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end8.if.end26_crit_edge
  %disks = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 13
  %16 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp227 = icmp sgt i32 %17, 0
  br i1 %cmp227, label %for.body.lr.ph, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %uuid_checksum = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0229 = phi i32 [ 0, %for.body.lr.ph ], [ %inc63, %cleanup.for.body_crit_edge ]
  %write_disks.0228 = phi i32 [ 0, %for.body.lr.ph ], [ %write_disks.1, %cleanup.for.body_crit_edge ]
  %flags35 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0229, i32 12
  %18 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags35, align 4
  %20 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool37.not = icmp eq i32 %20, 0
  br i1 %tobool37.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false38

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false38:                                  ; preds = %for.body
  %21 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags35, align 4
  %23 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool43.not = icmp eq i32 %23, 0
  br i1 %tobool43.not, label %if.end45, label %lor.lhs.false38.cleanup_crit_edge

lor.lhs.false38.cleanup_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false38
  %inc = add i32 %write_disks.0228, 1
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state, align 4
  %26 = and i32 %25, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool48.not = icmp eq i32 %26, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %page = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0229, i32 4
  %27 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %29 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %29, 512
  %30 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %34 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 213
  %38 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %39, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %call.i.i203 = tail call ptr @__kmap_local_page_prot(ptr noundef %28, i32 noundef %or.i) #12
  %40 = ptrtoint ptr %uuid_checksum to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uuid_checksum, align 4
  %call54 = tail call i32 @crc32c(i32 noundef %41, ptr noundef %call.i.i203, i32 noundef 4096) #12
  %log_checksum = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0229, i32 13
  %42 = ptrtoint ptr %log_checksum to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call54, ptr %log_checksum, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i203) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %43 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 213
  %47 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %48, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %49 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end45.cleanup_crit_edge, %lor.lhs.false38.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %write_disks.1 = phi i32 [ %inc, %if.end50 ], [ %write_disks.0228, %lor.lhs.false38.cleanup_crit_edge ], [ %write_disks.0228, %for.body.cleanup_crit_edge ], [ %inc, %if.end45.cleanup_crit_edge ]
  %inc63 = add nuw nsw i32 %i.0229, 1
  %53 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %disks, align 4
  %cmp = icmp slt i32 %inc63, %54
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end26.for.end_crit_edge
  %write_disks.0.lcssa = phi i32 [ 0, %if.end26.for.end_crit_edge ], [ %write_disks.1, %cleanup.for.end_crit_edge ]
  %qd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 7
  %55 = ptrtoint ptr %qd_idx to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %qd_idx, align 2
  %57 = xor i16 %56, -1
  %58 = lshr i16 %57, 15
  %narrow = add nuw nsw i16 %58, 1
  %add = zext i16 %narrow to i32
  %sub = sub i32 %write_disks.0.lcssa, %add
  tail call void @_set_bit(i32 noundef 23, ptr noundef %state) #12
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #12
  %count = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #12
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #12, !srcloc !140
  %io_mutex = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %add72 = shl i32 %write_disks.0.lcssa, 3
  %shl = add i32 %add72, 8
  %r5c_journal_mode = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 28
  %60 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %r5c_journal_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp73 = icmp eq i32 %61, 0
  br i1 %cmp73, label %if.then75, label %if.else85

if.then75:                                        ; preds = %for.end
  %conv76 = sext i32 %shl to i64
  %last_checkpoint.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 4
  %62 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %last_checkpoint.i, align 8
  %log_start.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 6
  %64 = ptrtoint ptr %log_start.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %log_start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %63)
  %cmp.not.i.i = icmp ult i64 %65, %63
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then75.r5l_has_free_space.exit_crit_edge

if.then75.r5l_has_free_space.exit_crit_edge:      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_has_free_space.exit

if.else.i.i:                                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %device_size.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %66 = ptrtoint ptr %device_size.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %device_size.i.i, align 8
  %add.i.i = add i64 %67, %65
  br label %r5l_has_free_space.exit

r5l_has_free_space.exit:                          ; preds = %if.else.i.i, %if.then75.r5l_has_free_space.exit_crit_edge
  %end.pn.i.i = phi i64 [ %add.i.i, %if.else.i.i ], [ %65, %if.then75.r5l_has_free_space.exit_crit_edge ]
  %device_size.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %68 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %device_size.i, align 8
  %retval.0.i.i = sub i64 %conv76, %63
  %add.i = add i64 %retval.0.i.i, %end.pn.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %add.i)
  %cmp.i = icmp ugt i64 %69, %add.i
  br i1 %cmp.i, label %if.else, label %r5l_has_free_space.exit.do.body.preheader.i_crit_edge

r5l_has_free_space.exit.do.body.preheader.i_crit_edge: ; preds = %r5l_has_free_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader.i

if.else:                                          ; preds = %r5l_has_free_space.exit
  %call79 = tail call fastcc i32 @r5l_log_stripe(ptr noundef nonnull %log, ptr noundef %sh, i32 noundef %sub, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.else.if.end118.thread_crit_edge, label %if.then81

if.else.if.end118.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.thread

if.then81:                                        ; preds = %if.else
  %io_list_lock = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %io_list_lock) #12
  %log_list = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24
  %no_mem_stripes = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 17, i32 1
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i, align 4
  %call.i.i204 = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list, ptr noundef %71, ptr noundef %no_mem_stripes) #12
  br i1 %call.i.i204, label %if.end.i.i, label %if.then81.list_add_tail.exit_crit_edge

if.then81.list_add_tail.exit_crit_edge:           ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %log_list, ptr %prev.i, align 4
  %73 = ptrtoint ptr %log_list to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %no_mem_stripes, ptr %log_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24, i32 1
  %74 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %log_list, ptr %71, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then81.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock) #12
  br label %if.end118.thread

if.else85:                                        ; preds = %for.end
  %cache_state = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 62
  %76 = ptrtoint ptr %cache_state to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %cache_state, align 4
  %78 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool87.not = icmp eq i32 %78, 0
  br i1 %tobool87.not, label %if.else85.if.else91_crit_edge, label %land.lhs.true

if.else85.if.else91_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else91

land.lhs.true:                                    ; preds = %if.else85
  %log_start = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 25
  %79 = ptrtoint ptr %log_start to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %log_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %80)
  %cmp88 = icmp eq i64 %80, -1
  br i1 %cmp88, label %land.lhs.true.do.body.preheader.i_crit_edge, label %land.lhs.true.if.else91_crit_edge

land.lhs.true.if.else91_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else91

land.lhs.true.do.body.preheader.i_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader.i

if.else91:                                        ; preds = %land.lhs.true.if.else91_crit_edge, %if.else85.if.else91_crit_edge
  %conv92 = sext i32 %shl to i64
  %last_checkpoint.i205 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 4
  %81 = ptrtoint ptr %last_checkpoint.i205 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %last_checkpoint.i205, align 8
  %log_start.i206 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 6
  %83 = ptrtoint ptr %log_start.i206 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %log_start.i206, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %82)
  %cmp.not.i.i207 = icmp ult i64 %84, %82
  br i1 %cmp.not.i.i207, label %if.else.i.i210, label %if.else91.r5l_has_free_space.exit216_crit_edge

if.else91.r5l_has_free_space.exit216_crit_edge:   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_has_free_space.exit216

if.else.i.i210:                                   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #14
  %device_size.i.i208 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %85 = ptrtoint ptr %device_size.i.i208 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %device_size.i.i208, align 8
  %add.i.i209 = add i64 %86, %84
  br label %r5l_has_free_space.exit216

r5l_has_free_space.exit216:                       ; preds = %if.else.i.i210, %if.else91.r5l_has_free_space.exit216_crit_edge
  %end.pn.i.i211 = phi i64 [ %add.i.i209, %if.else.i.i210 ], [ %84, %if.else91.r5l_has_free_space.exit216_crit_edge ]
  %device_size.i212 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %87 = ptrtoint ptr %device_size.i212 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %device_size.i212, align 8
  %retval.0.i.i213 = sub i64 %conv92, %82
  %add.i214 = add i64 %retval.0.i.i213, %end.pn.i.i211
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %add.i214)
  %cmp.i215 = icmp ugt i64 %88, %add.i214
  br i1 %cmp.i215, label %if.else107, label %if.then94

if.then94:                                        ; preds = %r5l_has_free_space.exit216
  %log_start95 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 25
  %89 = ptrtoint ptr %log_start95 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %log_start95, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %82)
  %cmp96 = icmp eq i64 %90, %82
  br i1 %cmp96, label %do.body99, label %if.else105

do.body99:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #12, !srcloc !145
  unreachable

if.else105:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @r5l_add_no_space_stripe(ptr noundef nonnull %log, ptr noundef %sh)
  br label %if.end118.thread

if.else107:                                       ; preds = %r5l_has_free_space.exit216
  %call108 = tail call fastcc i32 @r5l_log_stripe(ptr noundef nonnull %log, ptr noundef %sh, i32 noundef %sub, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.else107.if.end118.thread_crit_edge, label %if.then110

if.else107.if.end118.thread_crit_edge:            ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.thread

if.then110:                                       ; preds = %if.else107
  %io_list_lock111 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %io_list_lock111) #12
  %log_list112 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24
  %no_mem_stripes113 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 17
  %prev.i217 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 17, i32 1
  %91 = ptrtoint ptr %prev.i217 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i217, align 4
  %call.i.i218 = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list112, ptr noundef %92, ptr noundef %no_mem_stripes113) #12
  br i1 %call.i.i218, label %if.end.i.i220, label %if.then110.list_add_tail.exit221_crit_edge

if.then110.list_add_tail.exit221_crit_edge:       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit221

if.end.i.i220:                                    ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %prev.i217 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %log_list112, ptr %prev.i217, align 4
  %94 = ptrtoint ptr %log_list112 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %no_mem_stripes113, ptr %log_list112, align 4
  %prev3.i.i219 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24, i32 1
  %95 = ptrtoint ptr %prev3.i.i219 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev3.i.i219, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %log_list112, ptr %92, align 4
  br label %list_add_tail.exit221

list_add_tail.exit221:                            ; preds = %if.end.i.i220, %if.then110.list_add_tail.exit221_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock111) #12
  br label %if.end118.thread

if.end118.thread:                                 ; preds = %list_add_tail.exit221, %if.else107.if.end118.thread_crit_edge, %if.else105, %list_add_tail.exit, %if.else.if.end118.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  br label %cleanup124

do.body.preheader.i:                              ; preds = %land.lhs.true.do.body.preheader.i_crit_edge, %r5l_has_free_space.exit.do.body.preheader.i_crit_edge
  %reserve.0 = phi i32 [ %shl, %r5l_has_free_space.exit.do.body.preheader.i_crit_edge ], [ 0, %land.lhs.true.do.body.preheader.i_crit_edge ]
  tail call fastcc void @r5l_add_no_space_stripe(ptr noundef nonnull %log, ptr noundef %sh)
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  %reclaim_target.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 23
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %97 = ptrtoint ptr %reclaim_target.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reclaim_target.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %reserve.0)
  %cmp.i222 = icmp ugt i32 %98, %reserve.0
  br i1 %cmp.i222, label %do.body.i.cleanup124_crit_edge, label %do.cond.i

do.body.i.cleanup124_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup124

do.cond.i:                                        ; preds = %do.body.i
  %call.i.i223 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reclaim_target.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %reclaim_target.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.cond.i
  %99 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %reclaim_target.i, i32 %98, i32 %reserve.0) #12, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %99, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %99, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  %cmp21.not.i = icmp eq i32 %asmresult1.i.i, %98
  br i1 %cmp21.not.i, label %do.end23.i, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end23.i:                                       ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %reclaim_thread.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 22
  %100 = ptrtoint ptr %reclaim_thread.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reclaim_thread.i, align 8
  tail call void @md_wakeup_thread(ptr noundef %101) #12
  br label %cleanup124

cleanup124:                                       ; preds = %do.end23.i, %do.body.i.cleanup124_crit_edge, %if.end118.thread, %if.then6, %entry.cleanup124_crit_edge
  %retval.0 = phi i32 [ -11, %if.then6 ], [ -11, %entry.cleanup124_crit_edge ], [ 0, %if.end118.thread ], [ 0, %do.end23.i ], [ 0, %do.body.i.cleanup124_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5l_add_no_space_stripe(ptr noundef %log, ptr noundef %sh) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %no_space_stripes_lock = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %no_space_stripes_lock) #12
  %log_list = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24
  %no_space_stripes = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 25
  %prev.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 25, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list, ptr noundef %1, ptr noundef %no_space_stripes) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %log_list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %log_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %no_space_stripes, ptr %log_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %log_list, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %no_space_stripes_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r5l_log_stripe(ptr noundef %log, ptr noundef %sh, i32 noundef %data_pages, i32 noundef %parity_pages) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %data_pages, 20
  %add = add i32 %mul, 16
  %mul1 = shl i32 %parity_pages, 2
  %add2 = add i32 %add, %mul1
  %call = tail call fastcc i32 @r5l_get_meta(ptr noundef %log, i32 noundef %add2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_io = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 10
  %0 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_io, align 4
  %state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 27, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %has_flush = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %has_flush to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %has_flush, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %has_flush, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %disks = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 13
  %3 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp226 = icmp sgt i32 %4, 0
  br i1 %cmp226, label %for.body.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %pd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  %qd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 7
  %r5c_journal_mode = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 28
  %has_fua = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0227 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0227, i32 12
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end15:                                         ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %pd_idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pd_idx, align 8
  %conv = sext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0227, i32 %conv)
  %cmp16 = icmp eq i32 %i.0227, %conv
  br i1 %cmp16, label %if.end15.for.inc_crit_edge, label %lor.lhs.false18

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false18:                                  ; preds = %if.end15
  %13 = ptrtoint ptr %qd_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %qd_idx, align 2
  %conv19 = sext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0227, i32 %conv19)
  %cmp20 = icmp eq i32 %i.0227, %conv19
  br i1 %cmp20, label %lor.lhs.false18.for.inc_crit_edge, label %if.end23

lor.lhs.false18.for.inc_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23:                                         ; preds = %lor.lhs.false18
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28.not = icmp eq i32 %17, 0
  br i1 %tobool28.not, label %if.end23.if.end39_crit_edge, label %land.lhs.true

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end23
  %18 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %r5c_journal_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp29 = icmp eq i32 %19, 1
  br i1 %cmp29, label %if.then31, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %has_fua to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load32 = load i8, ptr %has_fua, align 4
  %bf.set38 = or i8 %bf.load32, -64
  store i8 %bf.set38, ptr %has_fua, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %land.lhs.true.if.end39_crit_edge, %if.end23.if.end39_crit_edge
  %call40 = tail call i64 @raid5_compute_blocknr(ptr noundef %sh, i32 noundef %i.0227, i32 noundef 0) #12
  %log_checksum = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0227, i32 13
  %21 = ptrtoint ptr %log_checksum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %log_checksum, align 4
  %23 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %current_io, align 4
  %meta_page.i = getelementptr inbounds %struct.r5l_io_unit, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %meta_page.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %meta_page.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %26) #12
  %meta_offset.i = getelementptr inbounds %struct.r5l_io_unit, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %meta_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %meta_offset.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %28
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 0, ptr %add.ptr.i, align 1
  %flags.i = getelementptr inbounds %struct.r5l_payload_header, ptr %add.ptr.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 0, ptr %flags.i, align 1
  %size.i = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr.i, i32 0, i32 1
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 134217728, ptr %size.i, align 1
  %32 = tail call i64 @llvm.bswap.i64(i64 %call40) #12
  %location4.i = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr.i, i32 0, i32 2
  %33 = ptrtoint ptr %location4.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %location4.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %checksum.i = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr.i, i32 0, i32 3
  %35 = ptrtoint ptr %checksum.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %checksum.i, align 1
  %36 = ptrtoint ptr %meta_offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %meta_offset.i, align 8
  %add16.i = add i32 %37, 20
  store i32 %add16.i, ptr %meta_offset.i, align 8
  %page = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0227, i32 4
  %38 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %page, align 8
  tail call fastcc void @r5l_append_payload_page(ptr noundef %log, ptr noundef %39)
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %lor.lhs.false18.for.inc_crit_edge, %if.end15.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0227, 1
  %40 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %disks, align 4
  %cmp = icmp slt i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  %42 = zext i32 %parity_pages to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %parity_pages, label %for.end.if.end95_crit_edge [
    i32 2, label %if.then47
    i32 1, label %if.then69
  ]

for.end.if.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %sector = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 5
  %43 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sector, align 8
  %pd_idx49 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  %45 = ptrtoint ptr %pd_idx49 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pd_idx49, align 8
  %idxprom = sext i16 %46 to i32
  %log_checksum51 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %idxprom, i32 13
  %47 = ptrtoint ptr %log_checksum51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %log_checksum51, align 4
  %qd_idx53 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 7
  %49 = ptrtoint ptr %qd_idx53 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %qd_idx53, align 2
  %idxprom54 = sext i16 %50 to i32
  %log_checksum56 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %idxprom54, i32 13
  %51 = ptrtoint ptr %log_checksum56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %log_checksum56, align 4
  %53 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %current_io, align 4
  %meta_page.i201 = getelementptr inbounds %struct.r5l_io_unit, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %meta_page.i201 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %meta_page.i201, align 4
  %call.i202 = tail call ptr @page_address(ptr noundef %56) #12
  %meta_offset.i203 = getelementptr inbounds %struct.r5l_io_unit, ptr %54, i32 0, i32 2
  %57 = ptrtoint ptr %meta_offset.i203 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %meta_offset.i203, align 8
  %add.ptr.i204 = getelementptr i8, ptr %call.i202, i32 %58
  %59 = ptrtoint ptr %add.ptr.i204 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 256, ptr %add.ptr.i204, align 1
  %flags.i205 = getelementptr inbounds %struct.r5l_payload_header, ptr %add.ptr.i204, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i205 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 0, ptr %flags.i205, align 1
  %size.i206 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr.i204, i32 0, i32 1
  %61 = ptrtoint ptr %size.i206 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 268435456, ptr %size.i206, align 1
  %62 = tail call i64 @llvm.bswap.i64(i64 %44) #12
  %location4.i207 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr.i204, i32 0, i32 2
  %63 = ptrtoint ptr %location4.i207 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %location4.i207, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %48) #12
  %checksum.i208 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr.i204, i32 0, i32 3
  %65 = ptrtoint ptr %checksum.i208 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %checksum.i208, align 1
  %66 = tail call i32 @llvm.bswap.i32(i32 %52) #12
  %arrayidx7.i = getelementptr [0 x i32], ptr %checksum.i208, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %arrayidx7.i, align 1
  %68 = ptrtoint ptr %meta_offset.i203 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %meta_offset.i203, align 8
  %add16.i209 = add i32 %69, 24
  store i32 %add16.i209, ptr %meta_offset.i203, align 8
  %70 = ptrtoint ptr %pd_idx49 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %pd_idx49, align 8
  %idxprom59 = sext i16 %71 to i32
  %page61 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %idxprom59, i32 4
  %72 = ptrtoint ptr %page61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %page61, align 8
  tail call fastcc void @r5l_append_payload_page(ptr noundef %log, ptr noundef %73)
  br label %if.end95.sink.split

if.then69:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %sector70 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 5
  %74 = ptrtoint ptr %sector70 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %sector70, align 8
  %pd_idx72 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  %76 = ptrtoint ptr %pd_idx72 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pd_idx72, align 8
  %idxprom73 = sext i16 %77 to i32
  %log_checksum75 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %idxprom73, i32 13
  %78 = ptrtoint ptr %log_checksum75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %log_checksum75, align 4
  %80 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %current_io, align 4
  %meta_page.i211 = getelementptr inbounds %struct.r5l_io_unit, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %meta_page.i211 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %meta_page.i211, align 4
  %call.i212 = tail call ptr @page_address(ptr noundef %83) #12
  %meta_offset.i213 = getelementptr inbounds %struct.r5l_io_unit, ptr %81, i32 0, i32 2
  %84 = ptrtoint ptr %meta_offset.i213 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %meta_offset.i213, align 8
  %add.ptr.i214 = getelementptr i8, ptr %call.i212, i32 %85
  %86 = ptrtoint ptr %add.ptr.i214 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 256, ptr %add.ptr.i214, align 1
  %flags.i215 = getelementptr inbounds %struct.r5l_payload_header, ptr %add.ptr.i214, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i215 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 0, ptr %flags.i215, align 1
  %size.i216 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr.i214, i32 0, i32 1
  %88 = ptrtoint ptr %size.i216 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 134217728, ptr %size.i216, align 1
  %89 = tail call i64 @llvm.bswap.i64(i64 %75) #12
  %location4.i217 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr.i214, i32 0, i32 2
  %90 = ptrtoint ptr %location4.i217 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %89, ptr %location4.i217, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %79) #12
  %checksum.i218 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr.i214, i32 0, i32 3
  %92 = ptrtoint ptr %checksum.i218 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %checksum.i218, align 1
  %93 = ptrtoint ptr %meta_offset.i213 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %meta_offset.i213, align 8
  %add16.i219 = add i32 %94, 20
  store i32 %add16.i219, ptr %meta_offset.i213, align 8
  br label %if.end95.sink.split

if.end95.sink.split:                              ; preds = %if.then69, %if.then47
  %.sink.in = phi ptr [ %pd_idx72, %if.then69 ], [ %qd_idx53, %if.then47 ]
  %95 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %95)
  %.sink = load i16, ptr %.sink.in, align 2
  %idxprom78 = sext i16 %.sink to i32
  %page80 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %idxprom78, i32 4
  %96 = ptrtoint ptr %page80 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %page80, align 8
  tail call fastcc void @r5l_append_payload_page(ptr noundef %log, ptr noundef %97)
  br label %if.end95

if.end95:                                         ; preds = %if.end95.sink.split, %for.end.if.end95_crit_edge
  %log_list = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24
  %stripe_list = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 9, i32 1
  %98 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i, align 4
  %call.i.i220 = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list, ptr noundef %99, ptr noundef %stripe_list) #12
  br i1 %call.i.i220, label %if.end.i.i, label %if.end95.list_add_tail.exit_crit_edge

if.end95.list_add_tail.exit_crit_edge:            ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %log_list, ptr %prev.i, align 4
  %101 = ptrtoint ptr %log_list to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %stripe_list, ptr %log_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24, i32 1
  %102 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev3.i.i, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %log_list, ptr %99, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end95.list_add_tail.exit_crit_edge
  %pending_stripe = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_stripe, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %pending_stripe, i32 1, i32 3, i32 1) #12
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_stripe, ptr %pending_stripe, i32 1, ptr elementtype(i32) %pending_stripe) #12, !srcloc !140
  %105 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 23
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %1, ptr %105, align 8
  %r5c_journal_mode96 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 28
  %107 = ptrtoint ptr %r5c_journal_mode96 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %r5c_journal_mode96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp97 = icmp eq i32 %108, 0
  br i1 %cmp97, label %list_add_tail.exit.cleanup_crit_edge, label %if.end100

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end100:                                        ; preds = %list_add_tail.exit
  %log_start = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 25
  %109 = ptrtoint ptr %log_start to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %log_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %110)
  %cmp101 = icmp eq i64 %110, -1
  br i1 %cmp101, label %do.body104, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body104:                                       ; preds = %if.end100
  %r5c = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 26
  %111 = ptrtoint ptr %r5c to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile ptr, ptr %r5c, align 4
  %cmp.i.not = icmp eq ptr %112, %r5c
  br i1 %cmp.i.not, label %do.end124, label %do.body116, !prof !137

do.body116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 968, 0\0A.popsection", ""() #12, !srcloc !146
  unreachable

do.end124:                                        ; preds = %do.body104
  %log_start125 = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 6
  %113 = ptrtoint ptr %log_start125 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %log_start125, align 8
  %115 = ptrtoint ptr %log_start to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %log_start, align 8
  %stripe_in_journal_lock = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 30
  tail call void @_raw_spin_lock_irq(ptr noundef %stripe_in_journal_lock) #12
  %stripe_in_journal_list = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 29
  %prev.i221 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 29, i32 1
  %116 = ptrtoint ptr %prev.i221 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i221, align 4
  %call.i.i222 = tail call zeroext i1 @__list_add_valid(ptr noundef %r5c, ptr noundef %117, ptr noundef %stripe_in_journal_list) #12
  br i1 %call.i.i222, label %if.end.i.i224, label %do.end124.list_add_tail.exit225_crit_edge

do.end124.list_add_tail.exit225_crit_edge:        ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit225

if.end.i.i224:                                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %prev.i221 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %r5c, ptr %prev.i221, align 4
  %119 = ptrtoint ptr %r5c to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %stripe_in_journal_list, ptr %r5c, align 4
  %prev3.i.i223 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 26, i32 1
  %120 = ptrtoint ptr %prev3.i.i223 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev3.i.i223, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %r5c, ptr %117, align 4
  br label %list_add_tail.exit225

list_add_tail.exit225:                            ; preds = %if.end.i.i224, %do.end124.list_add_tail.exit225_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %stripe_in_journal_lock) #12
  %stripe_in_journal_count = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 31
  %call.i.i199 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripe_in_journal_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %stripe_in_journal_count, i32 1, i32 3, i32 1) #12
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stripe_in_journal_count, ptr %stripe_in_journal_count, i32 1, ptr elementtype(i32) %stripe_in_journal_count) #12, !srcloc !140
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit225, %if.end100.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ 0, %list_add_tail.exit225 ], [ 0, %if.end100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5l_write_stripe_run(ptr noundef %log) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %log, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %io_mutex = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  tail call fastcc void @r5l_submit_current_io(ptr noundef nonnull %log)
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5l_submit_current_io(ptr noundef %log) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %current_io = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 10
  %0 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_io, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %meta_page = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %meta_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %meta_page, align 4
  %call = tail call ptr @page_address(ptr noundef %3) #12
  %meta_offset = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %meta_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %meta_offset, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %meta_size = getelementptr inbounds %struct.r5l_meta_block, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %meta_size to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %meta_size, align 1
  %uuid_checksum = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 1
  %8 = ptrtoint ptr %uuid_checksum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uuid_checksum, align 4
  %call1 = tail call i32 @crc32c(i32 noundef %9, ptr noundef %call, i32 noundef 4096) #12
  %10 = tail call i32 @llvm.bswap.i32(i32 %call1)
  %checksum = getelementptr inbounds %struct.r5l_meta_block, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %checksum, align 1
  %12 = ptrtoint ptr %current_io to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %current_io, align 4
  %io_list_lock = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_list_lock) #12
  %has_flush = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %has_flush to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %has_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %14 = icmp ult i8 %bf.load, 64
  br i1 %14, label %if.end.if.end21_crit_edge, label %if.then13

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then13:                                        ; preds = %if.end
  %running_ios = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 12
  %15 = ptrtoint ptr %running_ios to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %running_ios, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 -48
  %cmp15.not = icmp eq ptr %1, %add.ptr
  br i1 %cmp15.not, label %if.then13.if.end21_crit_edge, label %if.then17

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set = or i8 %bf.load, 8
  %17 = ptrtoint ptr %has_flush to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.set, ptr %has_flush, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_list_lock, i32 noundef %call5) #12
  br label %cleanup

if.end21:                                         ; preds = %if.then13.if.end21_crit_edge, %if.end.if.end21_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_list_lock, i32 noundef %call5) #12
  tail call fastcc void @r5l_do_submit_io(ptr noundef %log, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r5l_handle_flush_request(ptr noundef %log, ptr noundef %bio) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %r5c_journal_mode = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 28
  %0 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r5c_journal_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bio_endio(ptr noundef %bio) #12
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %6 = and i32 %5, -262145
  store i32 %6, ptr %bi_opf, align 8
  br label %return

if.else:                                          ; preds = %entry
  br i1 %cmp1, label %if.then8, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then8:                                         ; preds = %if.else
  %io_mutex = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %call = tail call fastcc i32 @r5l_get_meta(ptr noundef %log, i32 noundef 0)
  %current_io = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 10
  %7 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_io, align 4
  %9 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.r5l_io_unit, ptr %8, i32 0, i32 14, i32 1
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bio, ptr %11, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %flush_barriers = getelementptr inbounds %struct.r5l_io_unit, ptr %8, i32 0, i32 14
  %13 = ptrtoint ptr %flush_barriers to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bio, ptr %flush_barriers, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bio, ptr %tail.i, align 4
  %15 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %current_io, align 4
  %has_flush = getelementptr inbounds %struct.r5l_io_unit, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %has_flush to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %has_flush, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %has_flush, align 4
  %18 = load ptr, ptr %current_io, align 4
  %has_null_flush = getelementptr inbounds %struct.r5l_io_unit, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %has_null_flush to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load11 = load i8, ptr %has_null_flush, align 4
  %bf.set13 = or i8 %bf.load11, 32
  store i8 %bf.set13, ptr %has_null_flush, align 4
  %20 = load ptr, ptr %current_io, align 4
  %pending_stripe = getelementptr inbounds %struct.r5l_io_unit, ptr %20, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_stripe, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %pending_stripe, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_stripe, ptr %pending_stripe, i32 1, ptr elementtype(i32) %pending_stripe) #12, !srcloc !140
  tail call fastcc void @r5l_submit_current_io(ptr noundef %log)
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  br label %return

return:                                           ; preds = %bio_list_add.exit, %if.else.return_crit_edge, %if.end, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %bio_list_add.exit ], [ -11, %if.else.return_crit_edge ], [ -11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r5l_get_meta(ptr noundef %log, i32 noundef %payload_size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %current_io = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 10
  %0 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_io, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %land.lhs.true

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

land.lhs.true:                                    ; preds = %entry
  %meta_offset = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %meta_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %meta_offset, align 8
  %add = add i32 %3, %payload_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp ugt i32 %add, 4096
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @r5l_submit_current_io(ptr noundef %log)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %4 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %current_io, align 4
  %tobool3.not = icmp eq ptr %.pr, null
  br i1 %tobool3.not, label %if.end.if.then4_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  %io_pool.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 19
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %io_pool.i, i32 noundef 2592) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then4.return.sink.split_crit_edge, label %if.end.i

if.then4.return.sink.split_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.end.i:                                         ; preds = %if.then4
  %5 = call ptr @memset(ptr %call.i, i32 0, i32 80)
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %log, ptr %call.i, align 8
  %log_sibling.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %log_sibling.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %log_sibling.i, ptr %log_sibling.i, align 4
  %prev.i.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %log_sibling.i, ptr %prev.i.i, align 4
  %stripe_list.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %stripe_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %stripe_list.i, ptr %stripe_list.i, align 4
  %prev.i54.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %prev.i54.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %stripe_list.i, ptr %prev.i54.i, align 4
  %flush_barriers.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 14
  %tail.i.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 14, i32 1
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tail.i.i, align 4
  %12 = ptrtoint ptr %flush_barriers.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %flush_barriers.i, align 4
  %state.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %state.i, align 8
  %meta_pool.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 21
  %call2.i = tail call noalias ptr @mempool_alloc(ptr noundef %meta_pool.i, i32 noundef 3072) #12
  %meta_page.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %meta_page.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2.i, ptr %meta_page.i, align 4
  %call4.i = tail call ptr @page_address(ptr noundef %call2.i) #12
  %15 = getelementptr inbounds i8, ptr %call4.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 4092)
  %17 = ptrtoint ptr %call4.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 163918692, ptr %call4.i, align 1
  %version.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call4.i, i32 0, i32 2
  %18 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %version.i, align 1
  %seq.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 7
  %19 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %seq.i, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #12
  %seq5.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call4.i, i32 0, i32 6
  %22 = ptrtoint ptr %seq5.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %seq5.i, align 1
  %log_start.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 6
  %23 = ptrtoint ptr %log_start.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %log_start.i, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #12
  %position.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call4.i, i32 0, i32 7
  %26 = ptrtoint ptr %position.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %position.i, align 1
  %27 = ptrtoint ptr %log_start.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %log_start.i, align 8
  %log_start7.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %log_start7.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %log_start7.i, align 8
  %meta_offset.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %meta_offset.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %meta_offset.i, align 8
  %31 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %seq.i, align 8
  %inc.i = add i64 %32, 1
  store i64 %inc.i, ptr %seq.i, align 8
  %seq9.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %seq9.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %seq9.i, align 8
  %bs.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 20
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 256, ptr noundef %bs.i.i) #12
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %bi_opf.i.i.i, align 8
  %35 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %log, align 8
  %bdev.i.i = getelementptr inbounds %struct.md_rdev, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bdev.i.i, align 4
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %40, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %42, %38
  br i1 %cmp.not.i.i.i, label %if.end.i.r5l_bio_alloc.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.r5l_bio_alloc.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_bio_alloc.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i.i = and i16 %40, -2177
  %43 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %r5l_bio_alloc.exit.i

r5l_bio_alloc.exit.i:                             ; preds = %if.then.i.i.i, %if.end.i.r5l_bio_alloc.exit.i_crit_edge
  %44 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %38, ptr %bi_bdev.i.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i) #12
  %45 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %log, align 8
  %data_offset.i.i = getelementptr inbounds %struct.md_rdev, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %data_offset.i.i, align 8
  %49 = ptrtoint ptr %log_start.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %log_start.i, align 8
  %add.i.i = add i64 %50, %48
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add.i.i, ptr %bi_iter.i.i, align 8
  %current_bio.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 3
  %52 = ptrtoint ptr %current_bio.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i, ptr %current_bio.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 10
  %53 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @r5l_log_endio, ptr %bi_end_io.i, align 8
  %54 = load ptr, ptr %current_bio.i, align 4
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %bi_private.i, align 4
  %56 = load ptr, ptr %current_bio.i, align 4
  %57 = ptrtoint ptr %meta_page.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %meta_page.i, align 4
  %call15.i = tail call i32 @bio_add_page(ptr noundef %56, ptr noundef %58, i32 noundef 4096, i32 noundef 0) #12
  %59 = ptrtoint ptr %log_start.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %log_start.i, align 8
  %add.i.i.i = add i64 %60, 8
  %device_size.i.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %61 = ptrtoint ptr %device_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %device_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %62)
  %cmp.not.i.i56.i = icmp ult i64 %add.i.i.i, %62
  %sub.i.i.i = select i1 %cmp.not.i.i56.i, i64 0, i64 %62
  %spec.select.i.i.i = sub i64 %add.i.i.i, %sub.i.i.i
  %63 = ptrtoint ptr %log_start.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %spec.select.i.i.i, ptr %log_start.i, align 8
  tail call fastcc void @r5c_update_log_state(ptr noundef %log) #12
  %64 = ptrtoint ptr %log_start.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %log_start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %cmp.i.i = icmp eq i64 %65, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %r5l_bio_alloc.exit.i.r5_reserve_log_entry.exit.i_crit_edge

r5l_bio_alloc.exit.i.r5_reserve_log_entry.exit.i_crit_edge: ; preds = %r5l_bio_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5_reserve_log_entry.exit.i

if.then.i.i:                                      ; preds = %r5l_bio_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %need_split_bio.i.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 11
  %66 = ptrtoint ptr %need_split_bio.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %need_split_bio.i.i, align 4
  br label %r5_reserve_log_entry.exit.i

r5_reserve_log_entry.exit.i:                      ; preds = %if.then.i.i, %r5l_bio_alloc.exit.i.r5_reserve_log_entry.exit.i_crit_edge
  %log_end.i.i = getelementptr inbounds %struct.r5l_io_unit, ptr %call.i, i32 0, i32 7
  %67 = ptrtoint ptr %log_end.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %65, ptr %log_end.i.i, align 8
  %io_list_lock.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %io_list_lock.i) #12
  %running_ios.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 12
  %prev.i57.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 12, i32 1
  %68 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i57.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %log_sibling.i, ptr noundef %69, ptr noundef %running_ios.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %r5_reserve_log_entry.exit.i.r5l_new_meta.exit_crit_edge

r5_reserve_log_entry.exit.i.r5l_new_meta.exit_crit_edge: ; preds = %r5_reserve_log_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_new_meta.exit

if.end.i.i.i:                                     ; preds = %r5_reserve_log_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %log_sibling.i, ptr %prev.i57.i, align 4
  %71 = ptrtoint ptr %log_sibling.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %running_ios.i, ptr %log_sibling.i, align 4
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %log_sibling.i, ptr %69, align 4
  br label %r5l_new_meta.exit

r5l_new_meta.exit:                                ; preds = %if.end.i.i.i, %r5_reserve_log_entry.exit.i.r5l_new_meta.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock.i) #12
  br label %return.sink.split

return.sink.split:                                ; preds = %r5l_new_meta.exit, %if.then4.return.sink.split_crit_edge
  %call.i.sink = phi ptr [ %call.i, %r5l_new_meta.exit ], [ null, %if.then4.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %r5l_new_meta.exit ], [ -12, %if.then4.return.sink.split_crit_edge ]
  %74 = ptrtoint ptr %current_io to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.sink, ptr %current_io, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5l_stripe_write_finished(ptr nocapture noundef %sh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 23
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pending_stripe = getelementptr inbounds %struct.r5l_io_unit, ptr %2, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_stripe, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %pending_stripe, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_stripe, ptr %pending_stripe, i32 1, ptr elementtype(i32) %pending_stripe) #12, !srcloc !148
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__r5l_stripe_write_finished(ptr noundef nonnull %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__r5l_stripe_write_finished(ptr nocapture noundef %io) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mddev = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mddev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %io_list_lock = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_list_lock) #12
  %state1.i = getelementptr inbounds %struct.r5l_io_unit, ptr %io, i32 0, i32 10
  %8 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.not.i = icmp ult i32 %9, 3
  br i1 %cmp.not.i, label %if.end22.critedge.i, label %do.end.i, !prof !137

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 286, i32 noundef 9, ptr noundef null) #12
  br label %__r5l_set_io_unit_state.exit

if.end22.critedge.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %state1.i, align 8
  br label %__r5l_set_io_unit_state.exit

__r5l_set_io_unit_state.exit:                     ; preds = %if.end22.critedge.i, %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %__r5l_set_io_unit_state.exit.if.end.i_crit_edge, label %land.rhs.i

__r5l_set_io_unit_state.exit.if.end.i_crit_edge:  ; preds = %__r5l_set_io_unit_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %__r5l_set_io_unit_state.exit
  %dep_map.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i27 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i27, label %do.end.i28, label %land.rhs.i.if.end.i_crit_edge, !prof !139

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i28:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1203, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i28, %land.rhs.i.if.end.i_crit_edge, %__r5l_set_io_unit_state.exit.if.end.i_crit_edge
  %finished_ios.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %finished_ios.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %finished_ios.i, align 4
  %cmp32.not61.i = icmp eq ptr %13, %finished_ios.i
  br i1 %cmp32.not61.i, label %if.end.i.if.then_crit_edge, label %for.body.lr.ph.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %next_checkpoint.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 8
  %io_pool.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 19
  %dep_map.i.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 4
  %no_mem_stripes.i.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 17
  %state.i40 = getelementptr i8, ptr %13, i32 16
  %14 = ptrtoint ptr %state.i40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp35.i41 = icmp slt i32 %15, 3
  br i1 %cmp35.i41, label %for.body.lr.ph.i.if.then_crit_edge, label %for.body.lr.ph.i.if.end37.i_crit_edge

for.body.lr.ph.i.if.end37.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %if.end37.i

for.body.lr.ph.i.if.then_crit_edge:               ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.i:                                       ; preds = %r5l_run_no_mem_stripe.exit.i
  %state.i = getelementptr i8, ptr %.pn66.i45, i32 16
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 8
  %cmp35.i = icmp slt i32 %17, 3
  br i1 %cmp35.i, label %for.body.i.if.end_crit_edge, label %for.body.i.if.end37.i_crit_edge

for.body.i.if.end37.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end37.i:                                       ; preds = %for.body.i.if.end37.i_crit_edge, %for.body.lr.ph.i.if.end37.i_crit_edge
  %.pn.in63.i42 = phi ptr [ %.pn66.i45, %for.body.i.if.end37.i_crit_edge ], [ %13, %for.body.lr.ph.i.if.end37.i_crit_edge ]
  %io.065.i44 = getelementptr i8, ptr %.pn.in63.i42, i32 -48
  %18 = ptrtoint ptr %.pn.in63.i42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn66.i45 = load ptr, ptr %.pn.in63.i42, align 8
  %log_start.i = getelementptr i8, ptr %.pn.in63.i42, i32 -16
  %19 = ptrtoint ptr %log_start.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %log_start.i, align 8
  %21 = ptrtoint ptr %next_checkpoint.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %next_checkpoint.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in63.i42) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end37.i.list_del.exit.i_crit_edge

if.end37.i.list_del.exit.i_crit_edge:             ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in63.i42, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %.pn.in63.i42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.in63.i42, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end37.i.list_del.exit.i_crit_edge
  %28 = ptrtoint ptr %.pn.in63.i42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in63.i42, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in63.i42, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mempool_free(ptr noundef %io.065.i44, ptr noundef %io_pool.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %30 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %list_del.exit.i.if.end.i.i_crit_edge, label %land.rhs.i.i

list_del.exit.i.if.end.i.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %list_del.exit.i
  %call.i.i58.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i58.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !139

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1187, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %list_del.exit.i.if.end.i.i_crit_edge
  %31 = ptrtoint ptr %no_mem_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %no_mem_stripes.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %32, %no_mem_stripes.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i.r5l_run_no_mem_stripe.exit.i_crit_edge, label %if.then26.i.i

if.end.i.i.r5l_run_no_mem_stripe.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_run_no_mem_stripe.exit.i

if.then26.i.i:                                    ; preds = %if.end.i.i
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 -188
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then26.i.i.list_del_init.exit.i.i_crit_edge

if.then26.i.i.list_del_init.exit.i.i_crit_edge:   ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then26.i.i.list_del_init.exit.i.i_crit_edge
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %32, ptr %32, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %32, ptr %prev.i3.i.i.i, align 4
  %state.i.i = getelementptr i8, ptr %32, i32 -140
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #12
  tail call void @raid5_release_stripe(ptr noundef %add.ptr.i.i) #12
  br label %r5l_run_no_mem_stripe.exit.i

r5l_run_no_mem_stripe.exit.i:                     ; preds = %list_del_init.exit.i.i, %if.end.i.i.r5l_run_no_mem_stripe.exit.i_crit_edge
  %cmp32.not.i = icmp eq ptr %.pn66.i45, %finished_ios.i
  br i1 %cmp32.not.i, label %r5l_run_no_mem_stripe.exit.i.if.end_crit_edge, label %for.body.i

r5l_run_no_mem_stripe.exit.i.if.end_crit_edge:    ; preds = %r5l_run_no_mem_stripe.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body.lr.ph.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_list_lock, i32 noundef %call3) #12
  br label %cleanup

if.end:                                           ; preds = %r5l_run_no_mem_stripe.exit.i.if.end_crit_edge, %for.body.i.if.end_crit_edge
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %mddev.i = getelementptr inbounds %struct.md_rdev, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mddev.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %last_checkpoint.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %last_checkpoint.i, align 8
  %log1.i.i = getelementptr inbounds %struct.r5conf, ptr %46, i32 0, i32 73
  %49 = ptrtoint ptr %log1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %log1.i.i, align 8
  %r5c_journal_mode.i.i = getelementptr inbounds %struct.r5l_log, ptr %50, i32 0, i32 28
  %51 = ptrtoint ptr %r5c_journal_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %r5c_journal_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i = icmp eq i32 %52, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body2.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %next_checkpoint.i.i = getelementptr inbounds %struct.r5l_log, ptr %50, i32 0, i32 8
  %53 = ptrtoint ptr %next_checkpoint.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %next_checkpoint.i.i, align 8
  br label %r5c_calculate_new_cp.exit.i

do.body2.i.i:                                     ; preds = %if.end
  %stripe_in_journal_lock.i.i = getelementptr inbounds %struct.r5l_log, ptr %50, i32 0, i32 30
  %call4.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stripe_in_journal_lock.i.i) #12
  %55 = ptrtoint ptr %log1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %log1.i.i, align 8
  %stripe_in_journal_list.i.i = getelementptr inbounds %struct.r5l_log, ptr %56, i32 0, i32 29
  %57 = ptrtoint ptr %stripe_in_journal_list.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %stripe_in_journal_list.i.i, align 4
  %cmp.i.not.i.i29 = icmp eq ptr %58, %stripe_in_journal_list.i.i
  br i1 %cmp.i.not.i.i29, label %if.then9.i.i, label %if.end12.i.i

if.then9.i.i:                                     ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i.i, i32 noundef %call4.i.i) #12
  %next_checkpoint11.i.i = getelementptr inbounds %struct.r5l_log, ptr %50, i32 0, i32 8
  %59 = ptrtoint ptr %next_checkpoint11.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %next_checkpoint11.i.i, align 8
  br label %r5c_calculate_new_cp.exit.i

if.end12.i.i:                                     ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %log_start.i.i = getelementptr i8, ptr %58, i32 -8
  %61 = ptrtoint ptr %log_start.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %log_start.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i.i, i32 noundef %call4.i.i) #12
  br label %r5c_calculate_new_cp.exit.i

r5c_calculate_new_cp.exit.i:                      ; preds = %if.end12.i.i, %if.then9.i.i, %if.then.i.i
  %retval.0.i.i = phi i64 [ %54, %if.then.i.i ], [ %60, %if.then9.i.i ], [ %62, %if.end12.i.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i, i64 %48)
  %cmp.not.i.i30 = icmp ult i64 %retval.0.i.i, %48
  br i1 %cmp.not.i.i30, label %if.else.i.i, label %r5c_calculate_new_cp.exit.i.r5l_reclaimable_space.exit_crit_edge

r5c_calculate_new_cp.exit.i.r5l_reclaimable_space.exit_crit_edge: ; preds = %r5c_calculate_new_cp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_reclaimable_space.exit

if.else.i.i:                                      ; preds = %r5c_calculate_new_cp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %device_size.i.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %device_size.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %device_size.i.i, align 8
  %add.i.i = add i64 %64, %retval.0.i.i
  br label %r5l_reclaimable_space.exit

r5l_reclaimable_space.exit:                       ; preds = %if.else.i.i, %r5c_calculate_new_cp.exit.i.r5l_reclaimable_space.exit_crit_edge
  %end.pn.i.i = phi i64 [ %add.i.i, %if.else.i.i ], [ %retval.0.i.i, %r5c_calculate_new_cp.exit.i.r5l_reclaimable_space.exit_crit_edge ]
  %retval.0.i4.i = sub i64 %end.pn.i.i, %48
  %max_free_space = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %max_free_space to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %max_free_space, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i4.i, i64 %66)
  %cmp9 = icmp ugt i64 %retval.0.i4.i, %66
  br i1 %cmp9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %r5l_reclaimable_space.exit
  %cache_state = getelementptr inbounds %struct.r5conf, ptr %7, i32 0, i32 62
  %67 = ptrtoint ptr %cache_state to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %cache_state, align 4
  %69 = and i32 %68, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not = icmp eq i32 %69, 0
  %tobool.not.i31 = icmp eq ptr %1, null
  %or.cond = or i1 %tobool.not.i31, %tobool.not
  br i1 %or.cond, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.do.body.preheader.i_crit_edge

lor.lhs.false.do.body.preheader.i_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader.i

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %r5l_reclaimable_space.exit
  %tobool.not.i31.old = icmp eq ptr %1, null
  br i1 %tobool.not.i31.old, label %if.then12.if.end13_crit_edge, label %if.then12.do.body.preheader.i_crit_edge

if.then12.do.body.preheader.i_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader.i

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.body.preheader.i:                              ; preds = %if.then12.do.body.preheader.i_crit_edge, %lor.lhs.false.do.body.preheader.i_crit_edge
  %reclaim_target.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 23
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %70 = ptrtoint ptr %reclaim_target.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reclaim_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.not = icmp eq i32 %71, 0
  br i1 %cmp.i.not, label %do.cond.i, label %do.body.i.if.end13_crit_edge

do.body.i.if.end13_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.cond.i:                                        ; preds = %do.body.i
  %call.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reclaim_target.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %reclaim_target.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.cond.i
  %72 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %reclaim_target.i, i32 0, i32 0) #12, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %72, 0
  %tobool.not.i.i33 = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i33, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %72, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  %cmp21.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %cmp21.not.i, label %do.end23.i, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end23.i:                                       ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %reclaim_thread.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 22
  %73 = ptrtoint ptr %reclaim_thread.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reclaim_thread.i, align 8
  tail call void @md_wakeup_thread(ptr noundef %74) #12
  br label %if.end13

if.end13:                                         ; preds = %do.end23.i, %do.body.i.if.end13_crit_edge, %if.then12.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_list_lock, i32 noundef %call3) #12
  %iounit_wait = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %iounit_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5l_flush_stripe_to_raid(ptr noundef %log) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %log, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %need_cache_flush = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 27
  %0 = ptrtoint ptr %need_cache_flush to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %need_cache_flush, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %io_list_lock = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %io_list_lock) #12
  %flushing_ios = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 14
  %2 = ptrtoint ptr %flushing_ios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %flushing_ios, align 4
  %cmp.i.not = icmp eq ptr %3, %flushing_ios
  br i1 %cmp.i.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %io_end_ios = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 13
  %4 = ptrtoint ptr %io_end_ios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %io_end_ios, align 4
  %cmp.i.not.i = icmp eq ptr %5, %io_end_ios
  br i1 %cmp.i.not.i, label %if.end5.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end5.list_splice_tail_init.exit_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %7, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %flushing_ios, ptr %9, align 4
  store ptr %9, ptr %prev.i, align 4
  %13 = ptrtoint ptr %io_end_ios to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %io_end_ios, ptr %io_end_ios, align 4
  store ptr %io_end_ios, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end5.list_splice_tail_init.exit_crit_edge
  %14 = ptrtoint ptr %flushing_ios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %flushing_ios, align 4
  %cmp.i32.not = icmp eq ptr %15, %flushing_ios
  tail call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock) #12
  br i1 %cmp.i32.not, label %list_splice_tail_init.exit.cleanup_crit_edge, label %if.end13

list_splice_tail_init.exit.cleanup_crit_edge:     ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %list_splice_tail_init.exit
  %flush_bio = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 16
  tail call void @bio_reset(ptr noundef %flush_bio) #12
  %16 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log, align 8
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 16, i32 3
  %20 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %21, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 16, i32 1
  %22 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %23, %19
  br i1 %cmp.not.i, label %if.end13.bio_set_dev.exit_crit_edge, label %if.then.i34

if.end13.bio_set_dev.exit_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit

if.then.i34:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i = and i16 %21, -2177
  %24 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i34, %if.end13.bio_set_dev.exit_crit_edge
  %25 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %flush_bio) #12
  %bi_end_io = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 16, i32 10
  %26 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @r5l_log_flush_endio, ptr %bi_end_io, align 8
  %bi_opf = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 16, i32 2
  %27 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 262145, ptr %bi_opf, align 8
  tail call void @submit_bio(ptr noundef %flush_bio) #12
  br label %cleanup

cleanup:                                          ; preds = %bio_set_dev.exit, %list_splice_tail_init.exit.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r5l_log_flush_endio(ptr noundef %bio) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %0 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.body2_crit_edge, label %if.then

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %bio, i32 -240
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %mddev = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mddev, align 8
  tail call void @md_error(ptr noundef %5, ptr noundef %3) #12
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry.do.body2_crit_edge
  %io_list_lock = getelementptr i8, ptr %bio, i32 -80
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_list_lock) #12
  %flushing_ios = getelementptr i8, ptr %bio, i32 -20
  %6 = ptrtoint ptr %flushing_ios to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn30 = load ptr, ptr %flushing_ios, align 4
  %cmp11.not31 = icmp eq ptr %.pn30, %flushing_ios
  br i1 %cmp11.not31, label %do.body2.for.end_crit_edge, label %do.body2.for.body_crit_edge

do.body2.for.body_crit_edge:                      ; preds = %do.body2
  br label %for.body

do.body2.for.end_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body2.for.body_crit_edge
  %.pn32 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn30, %do.body2.for.body_crit_edge ]
  %io.0 = getelementptr i8, ptr %.pn32, i32 -48
  tail call fastcc void @r5l_io_run_stripes(ptr noundef %io.0)
  %7 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp11.not = icmp eq ptr %.pn, %flushing_ios
  br i1 %cmp11.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body2.for.end_crit_edge
  %8 = ptrtoint ptr %flushing_ios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %flushing_ios, align 4
  %cmp.i.not.i = icmp eq ptr %9, %flushing_ios
  br i1 %cmp.i.not.i, label %for.end.list_splice_tail_init.exit_crit_edge, label %if.then.i

for.end.list_splice_tail_init.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %finished_ios = getelementptr i8, ptr %bio, i32 -12
  %prev.i = getelementptr i8, ptr %bio, i32 -8
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %bio, i32 -16
  %12 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %11, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %finished_ios, ptr %13, align 4
  store ptr %13, ptr %prev.i, align 4
  %17 = ptrtoint ptr %flushing_ios to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %flushing_ios, ptr %flushing_ios, align 4
  store ptr %flushing_ios, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %for.end.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_list_lock, i32 noundef %call4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5c_flush_cache(ptr noundef %conf, i32 noundef %num) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 65, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !139

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1402, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %log = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 73
  %1 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %log, align 8
  %tobool24.not = icmp eq ptr %2, null
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %r5c_full_stripe_list = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 52
  %3 = ptrtoint ptr %r5c_full_stripe_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %r5c_full_stripe_list, align 8
  %cmp35.not97 = icmp eq ptr %4, %r5c_full_stripe_list
  br i1 %cmp35.not97, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end26.for.body_crit_edge
  %count.099 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %.pn.in98 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %4, %if.end26.for.body_crit_edge ]
  %sh.0 = getelementptr i8, ptr %.pn.in98, i32 -8
  %5 = ptrtoint ptr %.pn.in98 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in98, align 8
  tail call fastcc void @r5c_flush_stripe(ptr noundef %conf, ptr noundef %sh.0)
  %inc = add i32 %count.099, 1
  %cmp35.not = icmp eq ptr %.pn, %r5c_full_stripe_list
  br i1 %cmp35.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end26.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end26.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %num)
  %cmp43.not = icmp slt i32 %count.0.lcssa, %num
  br i1 %cmp43.not, label %if.end45, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %for.end
  %r5c_partial_stripe_list = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 54
  %6 = ptrtoint ptr %r5c_partial_stripe_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r5c_partial_stripe_list, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.body61.for.cond55_crit_edge, %if.end45
  %.pn94.in = phi ptr [ %7, %if.end45 ], [ %.pn94, %for.body61.for.cond55_crit_edge ]
  %count.1 = phi i32 [ %count.0.lcssa, %if.end45 ], [ %inc62, %for.body61.for.cond55_crit_edge ]
  %cmp58.not = icmp eq ptr %.pn94.in, %r5c_partial_stripe_list
  br i1 %cmp58.not, label %for.cond55.cleanup_crit_edge, label %for.body61

for.cond55.cleanup_crit_edge:                     ; preds = %for.cond55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body61:                                       ; preds = %for.cond55
  %8 = ptrtoint ptr %.pn94.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn94 = load ptr, ptr %.pn94.in, align 8
  %sh.1 = getelementptr i8, ptr %.pn94.in, i32 -8
  tail call fastcc void @r5c_flush_stripe(ptr noundef %conf, ptr noundef %sh.1)
  %inc62 = add i32 %count.1, 1
  %exitcond.not = icmp eq i32 %inc62, %num
  br i1 %exitcond.not, label %for.body61.cleanup_crit_edge, label %for.body61.for.cond55_crit_edge

for.body61.for.cond55_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond55

for.body61.cleanup_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body61.cleanup_crit_edge, %for.cond55.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5c_flush_stripe(ptr noundef %conf, ptr noundef %sh) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lru = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 1
  %0 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %lru, align 4
  %cmp.i.not = icmp eq ptr %1, %lru
  br i1 %cmp.i.not, label %do.body3, label %do.body7, !prof !139

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1366, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

do.body7:                                         ; preds = %entry
  %state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %do.body19, label %do.body25, !prof !139

do.body19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1367, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

do.body25:                                        ; preds = %do.body7
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool28.not = icmp eq i32 %7, 0
  br i1 %tobool28.not, label %do.body42, label %do.body36, !prof !137

do.body36:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !153
  unreachable

do.body42:                                        ; preds = %do.body25
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool45.not = icmp eq i32 %10, 0
  br i1 %tobool45.not, label %do.body59, label %do.body53, !prof !137

do.body53:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1374, 0\0A.popsection", ""() #12, !srcloc !154
  unreachable

do.body59:                                        ; preds = %do.body42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool60.not = icmp eq i32 %11, 0
  br i1 %tobool60.not, label %do.body59.if.end84_crit_edge, label %land.rhs

do.body59.if.end84_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

land.rhs:                                         ; preds = %do.body59
  %dep_map = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 65, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end78, label %land.rhs.if.end84_crit_edge, !prof !139

land.rhs.if.end84_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

do.end78:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1375, i32 noundef 9, ptr noundef null) #12
  br label %if.end84

if.end84:                                         ; preds = %do.end78, %land.rhs.if.end84_crit_edge, %do.body59.if.end84_crit_edge
  %call.i.i122 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru) #12
  br i1 %call.i.i122, label %if.end.i.i, label %if.end84.list_del_init.exit_crit_edge

if.end84.list_del_init.exit_crit_edge:            ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lru, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end84.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %lru, ptr %lru, align 4
  %prev.i3.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %lru, ptr %prev.i3.i, align 4
  %count = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #12, !srcloc !140
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #12
  %active_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 49
  %call.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_stripes, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %active_stripes, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_stripes, ptr %active_stripes, i32 1, ptr elementtype(i32) %active_stripes) #12, !srcloc !140
  tail call void @r5c_make_stripe_write_out(ptr noundef %sh)
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state, align 4
  %24 = and i32 %23, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool97.not = icmp eq i32 %24, 0
  br i1 %tobool97.not, label %if.else, label %if.then98

if.then98:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %r5c_flushing_partial_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 56
  %call.i.i120 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r5c_flushing_partial_stripes, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r5c_flushing_partial_stripes, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r5c_flushing_partial_stripes, ptr %r5c_flushing_partial_stripes, i32 1, ptr elementtype(i32) %r5c_flushing_partial_stripes) #12, !srcloc !140
  br label %if.end99

if.else:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %r5c_flushing_full_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 55
  %call.i.i121 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r5c_flushing_full_stripes, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r5c_flushing_full_stripes, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r5c_flushing_full_stripes, ptr %r5c_flushing_full_stripes, i32 1, ptr elementtype(i32) %r5c_flushing_full_stripes) #12, !srcloc !140
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then98
  tail call void @raid5_release_stripe(ptr noundef %sh) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_wakeup_thread(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5l_quiesce(ptr noundef %log, i32 noundef %quiesce) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiesce)
  %tobool.not = icmp eq i32 %quiesce, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %mddev1 = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mddev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mddev1, align 8
  %sb_wait = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 77
  tail call void @__wake_up(ptr noundef %sb_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %reclaim_thread = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 22
  %4 = ptrtoint ptr %reclaim_thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reclaim_thread, align 8
  %tsk = getelementptr inbounds %struct.md_thread, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %tsk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsk, align 4
  %call = tail call i32 @kthread_park(ptr noundef %7) #12
  %tobool.not.i = icmp eq ptr %log, null
  br i1 %tobool.not.i, label %if.then.r5l_wake_reclaim.exit_crit_edge, label %do.body.preheader.i

if.then.r5l_wake_reclaim.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_wake_reclaim.exit

do.body.preheader.i:                              ; preds = %if.then
  %reclaim_target.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 23
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %8 = ptrtoint ptr %reclaim_target.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reclaim_target.i, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reclaim_target.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %reclaim_target.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i
  %10 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %reclaim_target.i, i32 %9, i32 -1) #12, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  %cmp21.not.i = icmp eq i32 %asmresult1.i.i, %9
  br i1 %cmp21.not.i, label %do.end23.i, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end23.i:                                       ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %reclaim_thread to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reclaim_thread, align 8
  tail call void @md_wakeup_thread(ptr noundef %12) #12
  br label %r5l_wake_reclaim.exit

r5l_wake_reclaim.exit:                            ; preds = %do.end23.i, %if.then.r5l_wake_reclaim.exit_crit_edge
  tail call fastcc void @r5l_do_reclaim(ptr noundef %log)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %reclaim_thread2 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 22
  %13 = ptrtoint ptr %reclaim_thread2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reclaim_thread2, align 8
  %tsk3 = getelementptr inbounds %struct.md_thread, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %tsk3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tsk3, align 4
  tail call void @kthread_unpark(ptr noundef %16) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %r5l_wake_reclaim.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5l_do_reclaim(ptr noundef %log) unnamed_addr #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %mddev = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mddev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %reclaim_target1 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 23
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reclaim_target1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %reclaim_target1, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %reclaim_target1) #12, !srcloc !156
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !157
  %conv = zext i32 %asmresult.i to i64
  %io_list_lock = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %io_list_lock) #12
  %7 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log, align 8
  %mddev.i = getelementptr inbounds %struct.md_rdev, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mddev.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %last_checkpoint.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 4
  %13 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %last_checkpoint.i, align 8
  %log1.i.i = getelementptr inbounds %struct.r5conf, ptr %12, i32 0, i32 73
  %15 = ptrtoint ptr %log1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %log1.i.i, align 8
  %r5c_journal_mode.i.i = getelementptr inbounds %struct.r5l_log, ptr %16, i32 0, i32 28
  %17 = ptrtoint ptr %r5c_journal_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r5c_journal_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body2.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %next_checkpoint.i.i = getelementptr inbounds %struct.r5l_log, ptr %16, i32 0, i32 8
  %19 = ptrtoint ptr %next_checkpoint.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %next_checkpoint.i.i, align 8
  br label %r5c_calculate_new_cp.exit.i

do.body2.i.i:                                     ; preds = %entry
  %stripe_in_journal_lock.i.i = getelementptr inbounds %struct.r5l_log, ptr %16, i32 0, i32 30
  %call4.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stripe_in_journal_lock.i.i) #12
  %21 = ptrtoint ptr %log1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log1.i.i, align 8
  %stripe_in_journal_list.i.i = getelementptr inbounds %struct.r5l_log, ptr %22, i32 0, i32 29
  %23 = ptrtoint ptr %stripe_in_journal_list.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %stripe_in_journal_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %24, %stripe_in_journal_list.i.i
  br i1 %cmp.i.not.i.i, label %if.then9.i.i, label %if.end12.i.i

if.then9.i.i:                                     ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i.i, i32 noundef %call4.i.i) #12
  %next_checkpoint11.i.i = getelementptr inbounds %struct.r5l_log, ptr %16, i32 0, i32 8
  %25 = ptrtoint ptr %next_checkpoint11.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %next_checkpoint11.i.i, align 8
  br label %r5c_calculate_new_cp.exit.i

if.end12.i.i:                                     ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %log_start.i.i = getelementptr i8, ptr %24, i32 -8
  %27 = ptrtoint ptr %log_start.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %log_start.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i.i, i32 noundef %call4.i.i) #12
  br label %r5c_calculate_new_cp.exit.i

r5c_calculate_new_cp.exit.i:                      ; preds = %if.end12.i.i, %if.then9.i.i, %if.then.i.i
  %retval.0.i.i = phi i64 [ %20, %if.then.i.i ], [ %26, %if.then9.i.i ], [ %28, %if.end12.i.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i, i64 %14)
  %cmp.not.i.i = icmp ult i64 %retval.0.i.i, %14
  br i1 %cmp.not.i.i, label %if.else.i.i, label %r5c_calculate_new_cp.exit.i.r5l_reclaimable_space.exit_crit_edge

r5c_calculate_new_cp.exit.i.r5l_reclaimable_space.exit_crit_edge: ; preds = %r5c_calculate_new_cp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_reclaimable_space.exit

if.else.i.i:                                      ; preds = %r5c_calculate_new_cp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %device_size.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %29 = ptrtoint ptr %device_size.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %device_size.i.i, align 8
  %add.i.i = add i64 %30, %retval.0.i.i
  br label %r5l_reclaimable_space.exit

r5l_reclaimable_space.exit:                       ; preds = %if.else.i.i, %r5c_calculate_new_cp.exit.i.r5l_reclaimable_space.exit_crit_edge
  %end.pn.i.i = phi i64 [ %add.i.i, %if.else.i.i ], [ %retval.0.i.i, %r5c_calculate_new_cp.exit.i.r5l_reclaimable_space.exit_crit_edge ]
  %retval.0.i4.i = sub i64 %end.pn.i.i, %14
  %max_free_space = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 3
  %31 = ptrtoint ptr %max_free_space to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %max_free_space, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i4.i, i64 %32)
  %cmp = icmp ule i64 %retval.0.i4.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp18.not = icmp eq i32 %asmresult.i, 0
  %or.cond = select i1 %cmp, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %lor.rhs, label %r5l_reclaimable_space.exit.lor.end_crit_edge

r5l_reclaimable_space.exit.lor.end_crit_edge:     ; preds = %r5l_reclaimable_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %r5l_reclaimable_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  %no_space_stripes = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 25
  %33 = ptrtoint ptr %no_space_stripes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %no_space_stripes, align 4
  %cmp.i = icmp eq ptr %34, %no_space_stripes
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %r5l_reclaimable_space.exit.lor.end_crit_edge
  %35 = phi i1 [ false, %r5l_reclaimable_space.exit.lor.end_crit_edge ], [ %cmp.i, %lor.rhs ]
  %finished_ios = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 15
  %device_size.i.i121 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %running_ios = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 12
  %io_end_ios = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 13
  %flushing_ios = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 14
  %iounit_wait = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 24
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %lor.end
  %36 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %log, align 8
  %mddev.i102 = getelementptr inbounds %struct.md_rdev, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %mddev.i102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mddev.i102, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %42 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %last_checkpoint.i, align 8
  %log1.i.i104 = getelementptr inbounds %struct.r5conf, ptr %41, i32 0, i32 73
  %44 = ptrtoint ptr %log1.i.i104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %log1.i.i104, align 8
  %r5c_journal_mode.i.i105 = getelementptr inbounds %struct.r5l_log, ptr %45, i32 0, i32 28
  %46 = ptrtoint ptr %r5c_journal_mode.i.i105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %r5c_journal_mode.i.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i106 = icmp eq i32 %47, 0
  br i1 %cmp.i.i106, label %if.then.i.i108, label %do.body2.i.i113

if.then.i.i108:                                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %next_checkpoint.i.i107 = getelementptr inbounds %struct.r5l_log, ptr %45, i32 0, i32 8
  %48 = ptrtoint ptr %next_checkpoint.i.i107 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %next_checkpoint.i.i107, align 8
  br label %r5c_calculate_new_cp.exit.i120

do.body2.i.i113:                                  ; preds = %while.cond
  %stripe_in_journal_lock.i.i109 = getelementptr inbounds %struct.r5l_log, ptr %45, i32 0, i32 30
  %call4.i.i110 = call i32 @_raw_spin_lock_irqsave(ptr noundef %stripe_in_journal_lock.i.i109) #12
  %50 = ptrtoint ptr %log1.i.i104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %log1.i.i104, align 8
  %stripe_in_journal_list.i.i111 = getelementptr inbounds %struct.r5l_log, ptr %51, i32 0, i32 29
  %52 = ptrtoint ptr %stripe_in_journal_list.i.i111 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %stripe_in_journal_list.i.i111, align 4
  %cmp.i.not.i.i112 = icmp eq ptr %53, %stripe_in_journal_list.i.i111
  br i1 %cmp.i.not.i.i112, label %if.then9.i.i115, label %if.end12.i.i117

if.then9.i.i115:                                  ; preds = %do.body2.i.i113
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i.i109, i32 noundef %call4.i.i110) #12
  %next_checkpoint11.i.i114 = getelementptr inbounds %struct.r5l_log, ptr %45, i32 0, i32 8
  %54 = ptrtoint ptr %next_checkpoint11.i.i114 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %next_checkpoint11.i.i114, align 8
  br label %r5c_calculate_new_cp.exit.i120

if.end12.i.i117:                                  ; preds = %do.body2.i.i113
  call void @__sanitizer_cov_trace_pc() #14
  %log_start.i.i116 = getelementptr i8, ptr %53, i32 -8
  %56 = ptrtoint ptr %log_start.i.i116 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %log_start.i.i116, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i.i109, i32 noundef %call4.i.i110) #12
  br label %r5c_calculate_new_cp.exit.i120

r5c_calculate_new_cp.exit.i120:                   ; preds = %if.end12.i.i117, %if.then9.i.i115, %if.then.i.i108
  %retval.0.i.i118 = phi i64 [ %49, %if.then.i.i108 ], [ %55, %if.then9.i.i115 ], [ %57, %if.end12.i.i117 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i118, i64 %43)
  %cmp.not.i.i119 = icmp ult i64 %retval.0.i.i118, %43
  br i1 %cmp.not.i.i119, label %if.else.i.i123, label %r5c_calculate_new_cp.exit.i120.r5l_reclaimable_space.exit126_crit_edge

r5c_calculate_new_cp.exit.i120.r5l_reclaimable_space.exit126_crit_edge: ; preds = %r5c_calculate_new_cp.exit.i120
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_reclaimable_space.exit126

if.else.i.i123:                                   ; preds = %r5c_calculate_new_cp.exit.i120
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %device_size.i.i121 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %device_size.i.i121, align 8
  %add.i.i122 = add i64 %59, %retval.0.i.i118
  br label %r5l_reclaimable_space.exit126

r5l_reclaimable_space.exit126:                    ; preds = %if.else.i.i123, %r5c_calculate_new_cp.exit.i120.r5l_reclaimable_space.exit126_crit_edge
  %end.pn.i.i124 = phi i64 [ %add.i.i122, %if.else.i.i123 ], [ %retval.0.i.i118, %r5c_calculate_new_cp.exit.i120.r5l_reclaimable_space.exit126_crit_edge ]
  %retval.0.i4.i125 = sub i64 %end.pn.i.i124, %43
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i4.i125, i64 %conv)
  %cmp22.not = icmp ult i64 %retval.0.i4.i125, %conv
  br i1 %cmp22.not, label %lor.lhs.false24, label %r5l_reclaimable_space.exit126.while.end_crit_edge

r5l_reclaimable_space.exit126.while.end_crit_edge: ; preds = %r5l_reclaimable_space.exit126
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

lor.lhs.false24:                                  ; preds = %r5l_reclaimable_space.exit126
  %60 = ptrtoint ptr %running_ios to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %running_ios, align 4
  %cmp.i127.not = icmp eq ptr %61, %running_ios
  br i1 %cmp.i127.not, label %land.lhs.true, label %lor.lhs.false24.if.end_crit_edge

lor.lhs.false24.if.end_crit_edge:                 ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false24
  %62 = ptrtoint ptr %io_end_ios to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %io_end_ios, align 4
  %cmp.i129.not = icmp eq ptr %63, %io_end_ios
  br i1 %cmp.i129.not, label %land.lhs.true29, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true29:                                  ; preds = %land.lhs.true
  %64 = ptrtoint ptr %flushing_ios to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %flushing_ios, align 4
  %cmp.i131.not = icmp eq ptr %65, %flushing_ios
  br i1 %cmp.i131.not, label %land.lhs.true32, label %land.lhs.true29.if.end_crit_edge

land.lhs.true29.if.end_crit_edge:                 ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %66 = ptrtoint ptr %finished_ios to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %finished_ios, align 4
  %cmp.i133.not = icmp eq ptr %67, %finished_ios
  br i1 %cmp.i133.not, label %land.lhs.true32.while.end_crit_edge, label %land.lhs.true32.if.end_crit_edge

land.lhs.true32.if.end_crit_edge:                 ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true32.while.end_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %land.lhs.true32.if.end_crit_edge, %land.lhs.true29.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %lor.lhs.false24.if.end_crit_edge
  %68 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %log, align 8
  %mddev36 = getelementptr inbounds %struct.md_rdev, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %mddev36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mddev36, align 8
  %thread = getelementptr inbounds %struct.mddev, ptr %71, i32 0, i32 40
  %72 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %thread, align 4
  call void @md_wakeup_thread(ptr noundef %73) #12
  %74 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %log, align 8
  %mddev.i135 = getelementptr inbounds %struct.md_rdev, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %mddev.i135 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mddev.i135, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %80 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %last_checkpoint.i, align 8
  %log1.i.i137 = getelementptr inbounds %struct.r5conf, ptr %79, i32 0, i32 73
  %82 = ptrtoint ptr %log1.i.i137 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %log1.i.i137, align 8
  %r5c_journal_mode.i.i138 = getelementptr inbounds %struct.r5l_log, ptr %83, i32 0, i32 28
  %84 = ptrtoint ptr %r5c_journal_mode.i.i138 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %r5c_journal_mode.i.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i.i139 = icmp eq i32 %85, 0
  br i1 %cmp.i.i139, label %if.then.i.i141, label %do.body2.i.i146

if.then.i.i141:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %next_checkpoint.i.i140 = getelementptr inbounds %struct.r5l_log, ptr %83, i32 0, i32 8
  %86 = ptrtoint ptr %next_checkpoint.i.i140 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %next_checkpoint.i.i140, align 8
  br label %r5c_calculate_new_cp.exit.i153

do.body2.i.i146:                                  ; preds = %if.end
  %stripe_in_journal_lock.i.i142 = getelementptr inbounds %struct.r5l_log, ptr %83, i32 0, i32 30
  %call4.i.i143 = call i32 @_raw_spin_lock_irqsave(ptr noundef %stripe_in_journal_lock.i.i142) #12
  %88 = ptrtoint ptr %log1.i.i137 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %log1.i.i137, align 8
  %stripe_in_journal_list.i.i144 = getelementptr inbounds %struct.r5l_log, ptr %89, i32 0, i32 29
  %90 = ptrtoint ptr %stripe_in_journal_list.i.i144 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %stripe_in_journal_list.i.i144, align 4
  %cmp.i.not.i.i145 = icmp eq ptr %91, %stripe_in_journal_list.i.i144
  br i1 %cmp.i.not.i.i145, label %if.then9.i.i148, label %if.end12.i.i150

if.then9.i.i148:                                  ; preds = %do.body2.i.i146
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i.i142, i32 noundef %call4.i.i143) #12
  %next_checkpoint11.i.i147 = getelementptr inbounds %struct.r5l_log, ptr %83, i32 0, i32 8
  %92 = ptrtoint ptr %next_checkpoint11.i.i147 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %next_checkpoint11.i.i147, align 8
  br label %r5c_calculate_new_cp.exit.i153

if.end12.i.i150:                                  ; preds = %do.body2.i.i146
  call void @__sanitizer_cov_trace_pc() #14
  %log_start.i.i149 = getelementptr i8, ptr %91, i32 -8
  %94 = ptrtoint ptr %log_start.i.i149 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %log_start.i.i149, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i.i142, i32 noundef %call4.i.i143) #12
  br label %r5c_calculate_new_cp.exit.i153

r5c_calculate_new_cp.exit.i153:                   ; preds = %if.end12.i.i150, %if.then9.i.i148, %if.then.i.i141
  %retval.0.i.i151 = phi i64 [ %87, %if.then.i.i141 ], [ %93, %if.then9.i.i148 ], [ %95, %if.end12.i.i150 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i151, i64 %81)
  %cmp.not.i.i152 = icmp ult i64 %retval.0.i.i151, %81
  br i1 %cmp.not.i.i152, label %if.else.i.i156, label %r5c_calculate_new_cp.exit.i153.r5l_reclaimable_space.exit159_crit_edge

r5c_calculate_new_cp.exit.i153.r5l_reclaimable_space.exit159_crit_edge: ; preds = %r5c_calculate_new_cp.exit.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_reclaimable_space.exit159

if.else.i.i156:                                   ; preds = %r5c_calculate_new_cp.exit.i153
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %device_size.i.i121 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %device_size.i.i121, align 8
  %add.i.i155 = add i64 %97, %retval.0.i.i151
  br label %r5l_reclaimable_space.exit159

r5l_reclaimable_space.exit159:                    ; preds = %if.else.i.i156, %r5c_calculate_new_cp.exit.i153.r5l_reclaimable_space.exit159_crit_edge
  %end.pn.i.i157 = phi i64 [ %add.i.i155, %if.else.i.i156 ], [ %retval.0.i.i151, %r5c_calculate_new_cp.exit.i153.r5l_reclaimable_space.exit159_crit_edge ]
  %retval.0.i4.i158 = sub i64 %end.pn.i.i157, %81
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i4.i158, i64 %retval.0.i4.i125)
  %cmp39 = icmp ugt i64 %retval.0.i4.i158, %retval.0.i4.i125
  br i1 %cmp39, label %r5l_reclaimable_space.exit159.while.cond.backedge_crit_edge, label %if.end42

r5l_reclaimable_space.exit159.while.cond.backedge_crit_edge: ; preds = %r5l_reclaimable_space.exit159
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.end, %r5l_reclaimable_space.exit159.while.cond.backedge_crit_edge
  br label %while.cond

if.end42:                                         ; preds = %r5l_reclaimable_space.exit159
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %98 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end42
  %call44 = call i32 @prepare_to_wait_event(ptr noundef %iounit_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %99 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %log, align 8
  %mddev.i160 = getelementptr inbounds %struct.md_rdev, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %mddev.i160 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mddev.i160, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  %105 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %last_checkpoint.i, align 8
  %log1.i.i162 = getelementptr inbounds %struct.r5conf, ptr %104, i32 0, i32 73
  %107 = ptrtoint ptr %log1.i.i162 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %log1.i.i162, align 8
  %r5c_journal_mode.i.i163 = getelementptr inbounds %struct.r5l_log, ptr %108, i32 0, i32 28
  %109 = ptrtoint ptr %r5c_journal_mode.i.i163 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %r5c_journal_mode.i.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i.i164 = icmp eq i32 %110, 0
  br i1 %cmp.i.i164, label %if.then.i.i166, label %do.body2.i.i171

if.then.i.i166:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %next_checkpoint.i.i165 = getelementptr inbounds %struct.r5l_log, ptr %108, i32 0, i32 8
  %111 = ptrtoint ptr %next_checkpoint.i.i165 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %next_checkpoint.i.i165, align 8
  br label %r5c_calculate_new_cp.exit.i178

do.body2.i.i171:                                  ; preds = %for.cond
  %stripe_in_journal_lock.i.i167 = getelementptr inbounds %struct.r5l_log, ptr %108, i32 0, i32 30
  %call4.i.i168 = call i32 @_raw_spin_lock_irqsave(ptr noundef %stripe_in_journal_lock.i.i167) #12
  %113 = ptrtoint ptr %log1.i.i162 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %log1.i.i162, align 8
  %stripe_in_journal_list.i.i169 = getelementptr inbounds %struct.r5l_log, ptr %114, i32 0, i32 29
  %115 = ptrtoint ptr %stripe_in_journal_list.i.i169 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile ptr, ptr %stripe_in_journal_list.i.i169, align 4
  %cmp.i.not.i.i170 = icmp eq ptr %116, %stripe_in_journal_list.i.i169
  br i1 %cmp.i.not.i.i170, label %if.then9.i.i173, label %if.end12.i.i175

if.then9.i.i173:                                  ; preds = %do.body2.i.i171
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i.i167, i32 noundef %call4.i.i168) #12
  %next_checkpoint11.i.i172 = getelementptr inbounds %struct.r5l_log, ptr %108, i32 0, i32 8
  %117 = ptrtoint ptr %next_checkpoint11.i.i172 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %next_checkpoint11.i.i172, align 8
  br label %r5c_calculate_new_cp.exit.i178

if.end12.i.i175:                                  ; preds = %do.body2.i.i171
  call void @__sanitizer_cov_trace_pc() #14
  %log_start.i.i174 = getelementptr i8, ptr %116, i32 -8
  %119 = ptrtoint ptr %log_start.i.i174 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %log_start.i.i174, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i.i167, i32 noundef %call4.i.i168) #12
  br label %r5c_calculate_new_cp.exit.i178

r5c_calculate_new_cp.exit.i178:                   ; preds = %if.end12.i.i175, %if.then9.i.i173, %if.then.i.i166
  %retval.0.i.i176 = phi i64 [ %112, %if.then.i.i166 ], [ %118, %if.then9.i.i173 ], [ %120, %if.end12.i.i175 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i176, i64 %106)
  %cmp.not.i.i177 = icmp ult i64 %retval.0.i.i176, %106
  br i1 %cmp.not.i.i177, label %if.else.i.i181, label %r5c_calculate_new_cp.exit.i178.r5l_reclaimable_space.exit184_crit_edge

r5c_calculate_new_cp.exit.i178.r5l_reclaimable_space.exit184_crit_edge: ; preds = %r5c_calculate_new_cp.exit.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_reclaimable_space.exit184

if.else.i.i181:                                   ; preds = %r5c_calculate_new_cp.exit.i178
  call void @__sanitizer_cov_trace_pc() #14
  %121 = ptrtoint ptr %device_size.i.i121 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %device_size.i.i121, align 8
  %add.i.i180 = add i64 %122, %retval.0.i.i176
  br label %r5l_reclaimable_space.exit184

r5l_reclaimable_space.exit184:                    ; preds = %if.else.i.i181, %r5c_calculate_new_cp.exit.i178.r5l_reclaimable_space.exit184_crit_edge
  %end.pn.i.i182 = phi i64 [ %add.i.i180, %if.else.i.i181 ], [ %retval.0.i.i176, %r5c_calculate_new_cp.exit.i178.r5l_reclaimable_space.exit184_crit_edge ]
  %retval.0.i4.i183 = sub i64 %end.pn.i.i182, %106
  %cmp46 = icmp ugt i64 %retval.0.i4.i183, %retval.0.i4.i125
  br i1 %cmp46, label %for.end, label %cleanup

cleanup:                                          ; preds = %r5l_reclaimable_space.exit184
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock) #12
  call void @schedule() #12
  call void @_raw_spin_lock_irq(ptr noundef %io_list_lock) #12
  br label %for.cond

for.end:                                          ; preds = %r5l_reclaimable_space.exit184
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %iounit_wait, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %while.cond.backedge

while.end:                                        ; preds = %land.lhs.true32.while.end_crit_edge, %r5l_reclaimable_space.exit126.while.end_crit_edge
  %log1.i = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 73
  %123 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %log1.i, align 8
  %r5c_journal_mode.i = getelementptr inbounds %struct.r5l_log, ptr %124, i32 0, i32 28
  %125 = ptrtoint ptr %r5c_journal_mode.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %r5c_journal_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i185 = icmp eq i32 %126, 0
  br i1 %cmp.i185, label %if.then.i, label %do.body2.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %next_checkpoint.i = getelementptr inbounds %struct.r5l_log, ptr %124, i32 0, i32 8
  %127 = ptrtoint ptr %next_checkpoint.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %next_checkpoint.i, align 8
  br label %r5c_calculate_new_cp.exit

do.body2.i:                                       ; preds = %while.end
  %stripe_in_journal_lock.i = getelementptr inbounds %struct.r5l_log, ptr %124, i32 0, i32 30
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %stripe_in_journal_lock.i) #12
  %129 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %log1.i, align 8
  %stripe_in_journal_list.i = getelementptr inbounds %struct.r5l_log, ptr %130, i32 0, i32 29
  %131 = ptrtoint ptr %stripe_in_journal_list.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %stripe_in_journal_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %132, %stripe_in_journal_list.i
  br i1 %cmp.i.not.i, label %if.then9.i, label %if.end12.i

if.then9.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i, i32 noundef %call4.i) #12
  %next_checkpoint11.i = getelementptr inbounds %struct.r5l_log, ptr %124, i32 0, i32 8
  %133 = ptrtoint ptr %next_checkpoint11.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %next_checkpoint11.i, align 8
  br label %r5c_calculate_new_cp.exit

if.end12.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  %log_start.i = getelementptr i8, ptr %132, i32 -8
  %135 = ptrtoint ptr %log_start.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %log_start.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i, i32 noundef %call4.i) #12
  br label %r5c_calculate_new_cp.exit

r5c_calculate_new_cp.exit:                        ; preds = %if.end12.i, %if.then9.i, %if.then.i
  %retval.0.i = phi i64 [ %128, %if.then.i ], [ %134, %if.then9.i ], [ %136, %if.end12.i ]
  call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %end.pn.i.i124, i64 %43)
  %cmp58 = icmp eq i64 %end.pn.i.i124, %43
  %brmerge = select i1 %cmp58, i1 true, i1 %35
  br i1 %brmerge, label %r5c_calculate_new_cp.exit.cleanup65_crit_edge, label %if.end63

r5c_calculate_new_cp.exit.cleanup65_crit_edge:    ; preds = %r5c_calculate_new_cp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65

if.end63:                                         ; preds = %r5c_calculate_new_cp.exit
  %137 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %log, align 8
  %bdev1.i = getelementptr inbounds %struct.md_rdev, ptr %138, i32 0, i32 5
  %139 = ptrtoint ptr %bdev1.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bdev1.i, align 4
  %mddev1.i.i = getelementptr inbounds %struct.md_rdev, ptr %138, i32 0, i32 2
  %141 = ptrtoint ptr %mddev1.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mddev1.i.i, align 8
  %143 = getelementptr inbounds %struct.md_rdev, ptr %138, i32 0, i32 22
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %retval.0.i, ptr %143, align 8
  %sb_flags.i.i = getelementptr inbounds %struct.mddev, ptr %142, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %sb_flags.i.i) #12
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %140, i32 0, i32 18
  %145 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bd_queue.i.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %146, i32 0, i32 11
  %147 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %queue_flags.i, align 4
  %149 = and i32 %148, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i = icmp eq i32 %149, 0
  br i1 %tobool.not.i, label %if.end63.r5l_write_super_and_discard_space.exit_crit_edge, label %if.end.i

if.end63.r5l_write_super_and_discard_space.exit_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_write_super_and_discard_space.exit

if.end.i:                                         ; preds = %if.end63
  %150 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %log, align 8
  %mddev4.i = getelementptr inbounds %struct.md_rdev, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %mddev4.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mddev4.i, align 8
  %sb_flags.i = getelementptr inbounds %struct.mddev, ptr %153, i32 0, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %if.end.i
  %154 = ptrtoint ptr %sb_flags.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %sb_flags.i, align 4
  %or.i = or i32 %155, 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sb_flags.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  call void @llvm.prefetch.p0(ptr %sb_flags.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i
  %156 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %sb_flags.i, i32 %155, i32 %or.i) #12, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %156, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %156, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !159
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, %155
  br i1 %cmp.not.i, label %do.end27.i, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end27.i:                                       ; preds = %__cmpxchg.exit.i
  %reconfig_mutex.i.i = getelementptr inbounds %struct.mddev, ptr %153, i32 0, i32 60
  %call.i76.i = call i32 @mutex_trylock(ptr noundef %reconfig_mutex.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool30.not.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool30.not.i, label %do.end27.i.r5l_write_super_and_discard_space.exit_crit_edge, label %if.end32.i

do.end27.i.r5l_write_super_and_discard_space.exit_crit_edge: ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_write_super_and_discard_space.exit

if.end32.i:                                       ; preds = %do.end27.i
  call void @md_update_sb(ptr noundef %153, i32 noundef 1) #12
  call void @mddev_unlock(ptr noundef %153) #12
  %157 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %last_checkpoint.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %158)
  %cmp33.i = icmp ugt i64 %retval.0.i, %158
  %159 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %log, align 8
  %data_offset.i = getelementptr inbounds %struct.md_rdev, ptr %160, i32 0, i32 10
  %161 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %data_offset.i, align 8
  %add.i = add i64 %162, %158
  br i1 %cmp33.i, label %if.then34.i, label %if.else.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i64 %retval.0.i, %158
  %call38.i = call i32 @blkdev_issue_discard(ptr noundef %140, i64 noundef %add.i, i64 noundef %sub.i, i32 noundef 3072, i32 noundef 0) #12
  br label %r5l_write_super_and_discard_space.exit

if.else.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %163 = ptrtoint ptr %device_size.i.i121 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %device_size.i.i121, align 8
  %sub44.i = sub i64 %164, %158
  %call45.i = call i32 @blkdev_issue_discard(ptr noundef %140, i64 noundef %add.i, i64 noundef %sub44.i, i32 noundef 3072, i32 noundef 0) #12
  %165 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %log, align 8
  %data_offset47.i = getelementptr inbounds %struct.md_rdev, ptr %166, i32 0, i32 10
  %167 = ptrtoint ptr %data_offset47.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %data_offset47.i, align 8
  %call48.i = call i32 @blkdev_issue_discard(ptr noundef %140, i64 noundef %168, i64 noundef %retval.0.i, i32 noundef 3072, i32 noundef 0) #12
  br label %r5l_write_super_and_discard_space.exit

r5l_write_super_and_discard_space.exit:           ; preds = %if.else.i, %if.then34.i, %do.end27.i.r5l_write_super_and_discard_space.exit_crit_edge, %if.end63.r5l_write_super_and_discard_space.exit_crit_edge
  %io_mutex = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %169 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %retval.0.i, ptr %last_checkpoint.i, align 8
  call fastcc void @r5c_update_log_state(ptr noundef %log)
  call void @mutex_unlock(ptr noundef %io_mutex) #12
  %no_space_stripes_lock.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 26
  call void @_raw_spin_lock(ptr noundef %no_space_stripes_lock.i) #12
  %no_space_stripes.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 25
  %170 = ptrtoint ptr %no_space_stripes.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile ptr, ptr %no_space_stripes.i, align 4
  %cmp.i.not8.i = icmp eq ptr %171, %no_space_stripes.i
  br i1 %cmp.i.not8.i, label %r5l_write_super_and_discard_space.exit.r5l_run_no_space_stripes.exit_crit_edge, label %r5l_write_super_and_discard_space.exit.while.body.i_crit_edge

r5l_write_super_and_discard_space.exit.while.body.i_crit_edge: ; preds = %r5l_write_super_and_discard_space.exit
  br label %while.body.i

r5l_write_super_and_discard_space.exit.r5l_run_no_space_stripes.exit_crit_edge: ; preds = %r5l_write_super_and_discard_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_run_no_space_stripes.exit

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %r5l_write_super_and_discard_space.exit.while.body.i_crit_edge
  %172 = phi ptr [ %182, %list_del_init.exit.i.while.body.i_crit_edge ], [ %171, %r5l_write_super_and_discard_space.exit.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %172, i32 -188
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %172) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev.i.i.i, align 4
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %172, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %174, ptr %prev1.i.i.i.i, align 4
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %176, ptr %174, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %179 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %172, ptr %172, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %180 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %172, ptr %prev.i3.i.i, align 4
  %state.i = getelementptr i8, ptr %172, i32 -140
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #12
  call void @raid5_release_stripe(ptr noundef %add.ptr.i) #12
  %181 = ptrtoint ptr %no_space_stripes.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile ptr, ptr %no_space_stripes.i, align 4
  %cmp.i.not.i187 = icmp eq ptr %182, %no_space_stripes.i
  br i1 %cmp.i.not.i187, label %list_del_init.exit.i.r5l_run_no_space_stripes.exit_crit_edge, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

list_del_init.exit.i.r5l_run_no_space_stripes.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_run_no_space_stripes.exit

r5l_run_no_space_stripes.exit:                    ; preds = %list_del_init.exit.i.r5l_run_no_space_stripes.exit_crit_edge, %r5l_write_super_and_discard_space.exit.r5l_run_no_space_stripes.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %no_space_stripes_lock.i) #12
  br label %cleanup65

cleanup65:                                        ; preds = %r5l_run_no_space_stripes.exit, %r5c_calculate_new_cp.exit.cleanup65_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @r5l_log_disk_error(ptr noundef %conf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %log1 = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 73
  %4 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %log1, align 8
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @r5l_log_disk_error.__warned, align 1
  br i1 %.b22, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @r5l_log_disk_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1597, ptr noundef nonnull @.str.1) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %mddev = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 2
  %6 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mddev, align 4
  %flags = getelementptr inbounds %struct.mddev, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %9, 3
  br label %if.end18

if.else:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %flags14 = getelementptr inbounds %struct.md_rdev, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags14, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then11
  %ret.0.in.in.in = phi i32 [ %13, %if.else ], [ %shr.i, %if.then11 ]
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i24, label %if.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

if.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %if.end18
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %if.end18.rcu_read_unlock.exit_crit_edge
  %ret.0.in.in = and i32 %ret.0.in.in.in, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.in.in)
  %ret.0.in = icmp ne i32 %ret.0.in.in, 0
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %14 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i31 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i32, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i1 %ret.0.in
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r5c_journal_mode_set(ptr noundef %mddev, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %0 = icmp ugt i32 %mode, 1
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mddev, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %if.end
  %log = getelementptr inbounds %struct.r5conf, ptr %2, i32 0, i32 73
  %3 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log, align 8
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end5

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false2
  %call = tail call i32 @raid5_calc_degraded(ptr noundef nonnull %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp sgt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp7 = icmp eq i32 %mode, 1
  %or.cond29 = and i1 %cmp7, %cmp6
  br i1 %or.cond29, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mddev_suspend(ptr noundef %mddev) #12
  %5 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %log, align 8
  %r5c_journal_mode = getelementptr inbounds %struct.r5l_log, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mode, ptr %r5c_journal_mode, align 4
  tail call void @mddev_resume(ptr noundef %mddev) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r5c_journal_mode_set.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r5c_journal_mode_set, %if.then15)) #12
          to label %cleanup [label %if.then15], !srcloc !162

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %8 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.29, ptr %disk_name.i
  %arrayidx = getelementptr [2 x ptr], ptr @r5c_journal_mode_str, i32 0, i32 %mode
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r5c_journal_mode_set.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.4, ptr noundef %spec.select.i, i32 noundef %mode, ptr noundef %11) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end9, %if.end5.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false2.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raid5_calc_degraded(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r5c_journal_mode_show(ptr noundef %mddev, ptr nocapture noundef writeonly %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %log = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %r5c_journal_mode = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r5c_journal_mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb4
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %if.end.sw.epilog.sink.split_crit_edge
  %.str.33.sink = phi ptr [ @.str.33, %sw.bb4 ], [ @.str.32, %if.end.sw.epilog.sink.split_crit_edge ]
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull %.str.33.sink, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call5, %sw.epilog.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r5c_journal_mode_store(ptr noundef %mddev, ptr nocapture noundef readonly %page, i32 noundef %length) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length)
  %cmp = icmp ult i32 %length, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %length, -1
  %arrayidx = getelementptr i8, ptr %page, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp1 = icmp eq i8 %1, 10
  %spec.select = select i1 %cmp1, i32 %sub, i32 %length
  %2 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %spec.select, label %if.end.if.end13.1_crit_edge [
    i32 10, label %land.lhs.true
    i32 13, label %land.lhs.true.1
  ]

if.end.if.end13.1_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.1

land.lhs.true:                                    ; preds = %if.end
  %call10 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull @.str.31, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.while.end_crit_edge, label %land.lhs.true.if.end13.1_crit_edge

land.lhs.true.if.end13.1_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.1

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.lhs.true.1:                                  ; preds = %if.end
  %call10.1 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull @.str.30, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %tobool11.not.1 = icmp eq i32 %call10.1, 0
  br i1 %tobool11.not.1, label %land.lhs.true.1.while.end_crit_edge, label %land.lhs.true.1.if.end13.1_crit_edge

land.lhs.true.1.if.end13.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.1

land.lhs.true.1.while.end_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end13.1:                                       ; preds = %land.lhs.true.1.if.end13.1_crit_edge, %land.lhs.true.if.end13.1_crit_edge, %if.end.if.end13.1_crit_edge
  br label %while.end

while.end:                                        ; preds = %if.end13.1, %land.lhs.true.1.while.end_crit_edge, %land.lhs.true.while.end_crit_edge
  %dec5.lcssa = phi i32 [ 1, %land.lhs.true.while.end_crit_edge ], [ 0, %land.lhs.true.1.while.end_crit_edge ], [ -1, %if.end13.1 ]
  %reconfig_mutex.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 60
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %reconfig_mutex.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end17, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 @r5c_journal_mode_set(ptr noundef %mddev, i32 noundef %dec5.lcssa)
  tail call void @mddev_unlock(ptr noundef %mddev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %spec.select35 = select i1 %tobool19.not, i32 %length, i32 %call18
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select35, %if.end17 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r5c_try_caching_write(ptr noundef %conf, ptr noundef %sh, ptr noundef %s, i32 noundef %disks) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %log1 = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 73
  %0 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log1, align 8
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %entry.do.body4_crit_edge, label %r5c_is_writeback.exit, !prof !136

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4

r5c_is_writeback.exit:                            ; preds = %entry
  %r5c_journal_mode.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %r5c_journal_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r5c_journal_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp eq i32 %3, 1
  br i1 %cmp1.i, label %do.end9, label %r5c_is_writeback.exit.do.body4_crit_edge, !prof !137

r5c_is_writeback.exit.do.body4_crit_edge:         ; preds = %r5c_is_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4

do.body4:                                         ; preds = %r5c_is_writeback.exit.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2650, 0\0A.popsection", ""() #12, !srcloc !163
  unreachable

do.end9:                                          ; preds = %r5c_is_writeback.exit
  %state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.then12, label %do.end9.if.end17_crit_edge

do.end9.if.end17_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %do.end9
  %injournal = getelementptr inbounds %struct.stripe_head_state, ptr %s, i32 0, i32 14
  %7 = ptrtoint ptr %injournal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %injournal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then12.cleanup_crit_edge, label %lor.lhs.false

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then12
  %written = getelementptr inbounds %struct.stripe_head_state, ptr %s, i32 0, i32 9
  %9 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %written, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13 = icmp sgt i32 %10, 0
  br i1 %cmp13, label %lor.lhs.false.cleanup_crit_edge, label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 24, ptr noundef %state) #12
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %do.end9.if.end17_crit_edge
  %failed = getelementptr inbounds %struct.stripe_head_state, ptr %s, i32 0, i32 8
  %11 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %failed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.end17.if.then23_crit_edge

if.end17.if.then23_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

lor.lhs.false19:                                  ; preds = %if.end17
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %for.cond.preheader, label %lor.lhs.false19.if.then23_crit_edge

lor.lhs.false19.if.then23_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

for.cond.preheader:                               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disks)
  %tobool25.not140 = icmp eq i32 %disks, 0
  br i1 %tobool25.not140, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then23:                                        ; preds = %lor.lhs.false19.if.then23_crit_edge, %if.end17.if.then23_crit_edge
  tail call void @r5c_make_stripe_write_out(ptr noundef %sh)
  br label %cleanup

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %dec141.in = phi i32 [ %dec141, %if.end35.for.body_crit_edge ], [ %disks, %for.cond.preheader.for.body_crit_edge ]
  %dec141 = add i32 %dec141.in, -1
  %towrite = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec141, i32 9
  %16 = ptrtoint ptr %towrite to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %towrite, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %for.body.if.end35_crit_edge, label %land.lhs.true

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec141, i32 12
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool29.not = icmp eq i32 %20, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true30:                                  ; preds = %land.lhs.true
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool33.not = icmp eq i32 %23, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true30.if.end35_crit_edge

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @r5c_make_stripe_write_out(ptr noundef %sh)
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true30.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %for.body.if.end35_crit_edge
  %tobool25.not = icmp eq i32 %dec141, 0
  br i1 %tobool25.not, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state, align 4
  %26 = and i32 %25, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool38.not = icmp eq i32 %26, 0
  br i1 %tobool38.not, label %land.lhs.true39, label %for.end.if.end61_crit_edge

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

land.lhs.true39:                                  ; preds = %for.end
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state, align 4
  %29 = and i32 %28, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool42.not = icmp eq i32 %29, 0
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true39.if.end61_crit_edge

land.lhs.true39.if.end61_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then43:                                        ; preds = %land.lhs.true39
  %sector = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 5
  %30 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %sector, align 8
  %chunk_sectors.i = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 3
  %32 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chunk_sectors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %31)
  %cmp164.i = icmp ult i64 %31, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !137

if.then168.i:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i = trunc i64 %31 to i32
  %div172.i = udiv i32 %conv169.i, %33
  br label %r5c_tree_index.exit

if.else174.i:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %31) #15, !srcloc !164
  %asmresult1.i.i = extractvalue { i64, i64 } %34, 1
  %extract.t137 = trunc i64 %asmresult1.i.i to i32
  br label %r5c_tree_index.exit

r5c_tree_index.exit:                              ; preds = %if.else174.i, %if.then168.i
  %sect.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t137, %if.else174.i ]
  %tree_lock = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 34
  tail call void @_raw_spin_lock(ptr noundef %tree_lock) #12
  %big_stripe_tree = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 35
  %call45 = tail call ptr @radix_tree_lookup_slot(ptr noundef %big_stripe_tree, i32 noundef %sect.addr.0.i.off0) #12
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %r5c_tree_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call fastcc ptr @radix_tree_deref_slot_protected(ptr noundef nonnull %call45, ptr noundef %tree_lock)
  %35 = ptrtoint ptr %call49 to i32
  %36 = add i32 %35, 4
  %shl = and i32 %36, -4
  %37 = inttoptr i32 %shl to ptr
  tail call void @radix_tree_replace_slot(ptr noundef %big_stripe_tree, ptr noundef nonnull %call45, ptr noundef %37) #12
  br label %if.end58

if.else:                                          ; preds = %r5c_tree_index.exit
  %call53 = tail call i32 @radix_tree_insert(ptr noundef %big_stripe_tree, i32 noundef %sect.addr.0.i.off0, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else.if.end58_crit_edge, label %if.then55

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %tree_lock) #12
  tail call void @r5c_make_stripe_write_out(ptr noundef %sh)
  br label %cleanup

if.end58:                                         ; preds = %if.else.if.end58_crit_edge, %if.then47
  tail call void @_raw_spin_unlock(ptr noundef %tree_lock) #12
  tail call void @_set_bit(i32 noundef 25, ptr noundef %state) #12
  %r5c_cached_partial_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 53
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r5c_cached_partial_stripes, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r5c_cached_partial_stripes, i32 1, i32 3, i32 1) #12
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r5c_cached_partial_stripes, ptr %r5c_cached_partial_stripes, i32 1, ptr elementtype(i32) %r5c_cached_partial_stripes) #12, !srcloc !140
  br label %if.end61

if.end61:                                         ; preds = %if.end58, %land.lhs.true39.if.end61_crit_edge, %for.end.if.end61_crit_edge
  br i1 %tobool25.not140, label %if.end61.cleanup_crit_edge, label %if.end61.for.body65_crit_edge

if.end61.for.body65_crit_edge:                    ; preds = %if.end61
  br label %for.body65

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body65:                                       ; preds = %if.end74.for.body65_crit_edge, %if.end61.for.body65_crit_edge
  %dec63145.in = phi i32 [ %dec63145, %if.end74.for.body65_crit_edge ], [ %disks, %if.end61.for.body65_crit_edge ]
  %to_cache.0144 = phi i32 [ %to_cache.1, %if.end74.for.body65_crit_edge ], [ 0, %if.end61.for.body65_crit_edge ]
  %dec63145 = add i32 %dec63145.in, -1
  %towrite68 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec63145, i32 9
  %39 = ptrtoint ptr %towrite68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %towrite68, align 4
  %tobool69.not = icmp eq ptr %40, null
  br i1 %tobool69.not, label %for.body65.if.end74_crit_edge, label %if.then70

for.body65.if.end74_crit_edge:                    ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then70:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #14
  %flags71 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec63145, i32 12
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags71) #12
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags71) #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags71) #12
  %inc = add i32 %to_cache.0144, 1
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %for.body65.if.end74_crit_edge
  %to_cache.1 = phi i32 [ %inc, %if.then70 ], [ %to_cache.0144, %for.body65.if.end74_crit_edge ]
  %tobool64.not = icmp eq i32 %dec63145, 0
  br i1 %tobool64.not, label %for.end75, label %if.end74.for.body65_crit_edge

if.end74.for.body65_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body65

for.end75:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_cache.1)
  %tobool76.not = icmp eq i32 %to_cache.1, 0
  br i1 %tobool76.not, label %for.end75.cleanup_crit_edge, label %if.then77

for.end75.cleanup_crit_edge:                      ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then77:                                        ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #14
  %ops_request = getelementptr inbounds %struct.stripe_head_state, ptr %s, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 3, ptr noundef %ops_request) #12
  tail call void @_set_bit(i32 noundef 23, ptr noundef %state) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %for.end75.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then55, %if.then34, %if.then23, %lor.lhs.false.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then23 ], [ -11, %if.then34 ], [ -11, %if.then55 ], [ -11, %lor.lhs.false.cleanup_crit_edge ], [ -11, %if.then12.cleanup_crit_edge ], [ 0, %if.then77 ], [ 0, %for.end75.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup_slot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @radix_tree_deref_slot_protected(ptr nocapture noundef readonly %slot, ptr noundef %treelock) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.anon, ptr %treelock, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b5 = load i1, ptr @radix_tree_deref_slot_protected.__warned, align 1
  br i1 %.b5, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @radix_tree_deref_slot_protected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 194, ptr noundef nonnull @.str.35) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_replace_slot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5c_release_extra_page(ptr noundef %sh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_conf = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 3
  %0 = ptrtoint ptr %raid_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_conf, align 4
  %orig_page = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 0, i32 5
  %2 = ptrtoint ptr %orig_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_page, align 4
  %disks = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 66
  %4 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disks, align 8
  %extra_page = getelementptr inbounds %struct.disk_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %extra_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra_page, align 4
  %cmp = icmp eq ptr %3, %7
  %disks2 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 13
  %8 = ptrtoint ptr %disks2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disks2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not45 = icmp eq i32 %9, 0
  br i1 %tobool.not45, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %entry.for.body_crit_edge
  %dec46.in = phi i32 [ %dec46, %if.end22.for.body_crit_edge ], [ %9, %entry.for.body_crit_edge ]
  %dec46 = add i32 %dec46.in, -1
  %page = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec46, i32 4
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page, align 8
  %orig_page7 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec46, i32 5
  %12 = ptrtoint ptr %orig_page7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %orig_page7, align 4
  %cmp8.not = icmp eq ptr %11, %13
  br i1 %cmp8.not, label %for.body.if.end22_crit_edge, label %if.then

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then:                                          ; preds = %for.body
  %14 = ptrtoint ptr %orig_page7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %orig_page7, align 4
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec46, i32 12
  tail call void @_clear_bit(i32 noundef 26, ptr noundef %flags) #12
  br i1 %cmp, label %if.then.if.end22_crit_edge, label %if.then21

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %if.then
  %15 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !137

if.then.i.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %13 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !139

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.36) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !165
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !148
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@r5c_release_extra_page, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !162

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end22_crit_edge

folio_put_testzero.exit.i.i.if.end22_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %19) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end22_crit_edge, %if.then.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %tobool.not = icmp eq i32 %dec46, 0
  br i1 %tobool.not, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %entry.for.end_crit_edge
  br i1 %cmp, label %if.then24, label %for.end.if.end25_crit_edge

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %cache_state = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 62
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %cache_state) #12
  %mddev = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mddev, align 4
  %thread = getelementptr inbounds %struct.mddev, ptr %25, i32 0, i32 40
  %26 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %thread, align 4
  tail call void @md_wakeup_thread(ptr noundef %27) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.end.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5c_use_extra_page(ptr nocapture noundef %sh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %disks = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 13
  %0 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not14 = icmp eq i32 %1, 0
  br i1 %tobool.not14, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %raid_conf = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 3
  %2 = ptrtoint ptr %raid_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raid_conf, align 4
  %disks3 = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 66
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %dec15.in = phi i32 [ %1, %for.body.lr.ph ], [ %dec15, %if.end.for.body_crit_edge ]
  %dec15 = add i32 %dec15.in, -1
  %orig_page = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec15, i32 5
  %4 = ptrtoint ptr %orig_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_page, align 4
  %page = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec15, i32 4
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 8
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  %8 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !137

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !139

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.36) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !165
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !148
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@r5c_use_extra_page, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !162

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %12, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %12) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %17 = ptrtoint ptr %disks3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disks3, align 8
  %extra_page = getelementptr %struct.disk_info, ptr %18, i32 %dec15, i32 2
  %19 = ptrtoint ptr %extra_page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extra_page, align 4
  %21 = ptrtoint ptr %orig_page to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %orig_page, align 4
  %tobool.not = icmp eq i32 %dec15, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5c_finish_stripe_write_out(ptr noundef %conf, ptr noundef %sh, ptr nocapture noundef writeonly %s) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %log1 = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 73
  %0 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  %2 = ptrtoint ptr %pd_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pd_idx, align 8
  %idxprom = sext i16 %3 to i32
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %idxprom, i32 12
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end.if.end19_crit_edge, label %do.end, !prof !137

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2818, i32 noundef 9, ptr noundef null) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %10 = ptrtoint ptr %pd_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pd_idx, align 8
  %idxprom28 = sext i16 %11 to i32
  %flags30 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %idxprom28, i32 12
  tail call void @_clear_bit(i32 noundef 25, ptr noundef %flags30) #12
  %r5c_journal_mode = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r5c_journal_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end32

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  %disks = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 13
  %14 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool33.not233 = icmp eq i32 %15, 0
  br i1 %tobool33.not233, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end32.for.body_crit_edge
  %do_wakeup.0235 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end32.for.body_crit_edge ]
  %i.0234 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %15, %if.end32.for.body_crit_edge ]
  %dec = add i32 %i.0234, -1
  %flags36 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec, i32 12
  tail call void @_clear_bit(i32 noundef 25, ptr noundef %flags36) #12
  %call40 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  %spec.select = select i1 %tobool41.not, i32 %do_wakeup.0235, i32 1
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end32.for.end_crit_edge
  %do_wakeup.0.lcssa = phi i32 [ 0, %if.end32.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %injournal = getelementptr inbounds %struct.stripe_head_state, ptr %s, i32 0, i32 14
  %16 = ptrtoint ptr %injournal to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %injournal, align 4
  %call45 = tail call i32 @_test_and_clear_bit(i32 noundef 14, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.end.if.end51_crit_edge, label %if.then47

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then47:                                        ; preds = %for.end
  %pending_full_writes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_full_writes, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %pending_full_writes, i32 1, i32 3, i32 1) #12
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_full_writes, ptr %pending_full_writes, i32 1, ptr elementtype(i32) %pending_full_writes) #12, !srcloc !148
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then49, label %if.then47.if.end51_crit_edge

if.then47.if.end51_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %mddev = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 2
  %18 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mddev, align 4
  %thread = getelementptr inbounds %struct.mddev, ptr %19, i32 0, i32 40
  %20 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %thread, align 4
  tail call void @md_wakeup_thread(ptr noundef %21) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then47.if.end51_crit_edge, %for.end.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_wakeup.0.lcssa)
  %tobool52.not = icmp eq i32 %do_wakeup.0.lcssa, 0
  br i1 %tobool52.not, label %if.end51.if.end54_crit_edge, label %if.then53

if.end51.if.end54_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %wait_for_overlap = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 61
  tail call void @__wake_up(ptr noundef %wait_for_overlap, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51.if.end54_crit_edge
  %stripe_in_journal_lock = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 30
  tail call void @_raw_spin_lock_irq(ptr noundef %stripe_in_journal_lock) #12
  %r5c = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 26
  %call.i.i223 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r5c) #12
  br i1 %call.i.i223, label %if.end.i.i, label %if.end54.list_del_init.exit_crit_edge

if.end54.list_del_init.exit_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 26, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %r5c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %r5c, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end54.list_del_init.exit_crit_edge
  %28 = ptrtoint ptr %r5c to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %r5c, ptr %r5c, align 4
  %prev.i3.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 26, i32 1
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %r5c, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %stripe_in_journal_lock) #12
  %log_start = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 25
  %30 = ptrtoint ptr %log_start to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %log_start, align 8
  %stripe_in_journal_count = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 31
  %call.i.i210 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripe_in_journal_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %stripe_in_journal_count, i32 1, i32 3, i32 1) #12
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stripe_in_journal_count, ptr %stripe_in_journal_count, i32 1, ptr elementtype(i32) %stripe_in_journal_count) #12, !srcloc !166
  tail call fastcc void @r5c_update_log_state(ptr noundef nonnull %1)
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state, align 4
  %34 = and i32 %33, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool58.not = icmp eq i32 %34, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %list_del_init.exit.if.then63_crit_edge

list_del_init.exit.if.then63_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

lor.lhs.false59:                                  ; preds = %list_del_init.exit
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state, align 4
  %37 = and i32 %36, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool62.not = icmp eq i32 %37, 0
  br i1 %tobool62.not, label %lor.lhs.false59.if.end96_crit_edge, label %lor.lhs.false59.if.then63_crit_edge

lor.lhs.false59.if.then63_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

lor.lhs.false59.if.end96_crit_edge:               ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then63:                                        ; preds = %lor.lhs.false59.if.then63_crit_edge, %list_del_init.exit.if.then63_crit_edge
  %sector = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 5
  %38 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sector, align 8
  %chunk_sectors.i = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 3
  %40 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chunk_sectors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %39)
  %cmp164.i = icmp ult i64 %39, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !137

if.then168.i:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i = trunc i64 %39 to i32
  %div172.i = udiv i32 %conv169.i, %41
  br label %r5c_tree_index.exit

if.else174.i:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %39) #15, !srcloc !164
  %asmresult1.i.i = extractvalue { i64, i64 } %42, 1
  %extract.t231 = trunc i64 %asmresult1.i.i to i32
  br label %r5c_tree_index.exit

r5c_tree_index.exit:                              ; preds = %if.else174.i, %if.then168.i
  %sect.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t231, %if.else174.i ]
  %tree_lock = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 34
  tail call void @_raw_spin_lock(ptr noundef %tree_lock) #12
  %big_stripe_tree = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 35
  %call65 = tail call ptr @radix_tree_lookup_slot(ptr noundef %big_stripe_tree, i32 noundef %sect.addr.0.i.off0) #12
  %cmp67 = icmp eq ptr %call65, null
  br i1 %cmp67, label %do.body76, label %do.end84, !prof !139

do.body76:                                        ; preds = %r5c_tree_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2858, 0\0A.popsection", ""() #12, !srcloc !167
  unreachable

do.end84:                                         ; preds = %r5c_tree_index.exit
  %dep_map.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 34, i32 0, i32 0, i32 4
  %call.i.i225 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i225)
  %tobool.not.i226 = icmp eq i32 %call.i.i225, 0
  br i1 %tobool.not.i226, label %land.lhs.true.i, label %do.end84.radix_tree_deref_slot_protected.exit_crit_edge

do.end84.radix_tree_deref_slot_protected.exit_crit_edge: ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %radix_tree_deref_slot_protected.exit

land.lhs.true.i:                                  ; preds = %do.end84
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.radix_tree_deref_slot_protected.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.radix_tree_deref_slot_protected.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %radix_tree_deref_slot_protected.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b5.i = load i1, ptr @radix_tree_deref_slot_protected.__warned, align 1
  br i1 %.b5.i, label %land.lhs.true3.i.radix_tree_deref_slot_protected.exit_crit_edge, label %if.then.i

land.lhs.true3.i.radix_tree_deref_slot_protected.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %radix_tree_deref_slot_protected.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @radix_tree_deref_slot_protected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 194, ptr noundef nonnull @.str.35) #12
  br label %radix_tree_deref_slot_protected.exit

radix_tree_deref_slot_protected.exit:             ; preds = %if.then.i, %land.lhs.true3.i.radix_tree_deref_slot_protected.exit_crit_edge, %land.lhs.true.i.radix_tree_deref_slot_protected.exit_crit_edge, %do.end84.radix_tree_deref_slot_protected.exit_crit_edge
  %43 = ptrtoint ptr %call65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call65, align 4
  %45 = ptrtoint ptr %44 to i32
  %shr.mask = and i32 %45, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.mask)
  %cmp87 = icmp eq i32 %shr.mask, 4
  br i1 %cmp87, label %if.then89, label %if.else

if.then89:                                        ; preds = %radix_tree_deref_slot_protected.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call92 = tail call ptr @radix_tree_delete(ptr noundef %big_stripe_tree, i32 noundef %sect.addr.0.i.off0) #12
  br label %if.end94

if.else:                                          ; preds = %radix_tree_deref_slot_protected.exit
  call void @__sanitizer_cov_trace_pc() #14
  %46 = add i32 %45, -4
  %shl = and i32 %46, -4
  %47 = inttoptr i32 %shl to ptr
  tail call void @radix_tree_replace_slot(ptr noundef %big_stripe_tree, ptr noundef nonnull %call65, ptr noundef %47) #12
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then89
  tail call void @_raw_spin_unlock(ptr noundef %tree_lock) #12
  br label %if.end96

if.end96:                                         ; preds = %if.end94, %lor.lhs.false59.if.end96_crit_edge
  %call98 = tail call i32 @_test_and_clear_bit(i32 noundef 25, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end96.if.end122_crit_edge, label %do.body101

if.end96.if.end122_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

do.body101:                                       ; preds = %if.end96
  %r5c_cached_partial_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 53
  %call.i.i215 = tail call zeroext i1 @__kasan_check_read(ptr noundef %r5c_cached_partial_stripes, i32 noundef 4) #12
  %48 = ptrtoint ptr %r5c_cached_partial_stripes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %r5c_cached_partial_stripes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp103 = icmp eq i32 %49, 0
  br i1 %cmp103, label %do.body112, label %do.end120, !prof !139

do.body112:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2872, 0\0A.popsection", ""() #12, !srcloc !168
  unreachable

do.end120:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #14
  %r5c_flushing_partial_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 56
  %call.i.i216 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r5c_flushing_partial_stripes, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r5c_flushing_partial_stripes, i32 1, i32 3, i32 1) #12
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r5c_flushing_partial_stripes, ptr %r5c_flushing_partial_stripes, i32 1, ptr elementtype(i32) %r5c_flushing_partial_stripes) #12, !srcloc !166
  %call.i.i217 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r5c_cached_partial_stripes, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r5c_cached_partial_stripes, i32 1, i32 3, i32 1) #12
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r5c_cached_partial_stripes, ptr %r5c_cached_partial_stripes, i32 1, ptr elementtype(i32) %r5c_cached_partial_stripes) #12, !srcloc !166
  br label %if.end122

if.end122:                                        ; preds = %do.end120, %if.end96.if.end122_crit_edge
  %call124 = tail call i32 @_test_and_clear_bit(i32 noundef 26, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end122.if.end148_crit_edge, label %do.body127

if.end122.if.end148_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

do.body127:                                       ; preds = %if.end122
  %r5c_cached_full_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 51
  %call.i.i218 = tail call zeroext i1 @__kasan_check_read(ptr noundef %r5c_cached_full_stripes, i32 noundef 4) #12
  %52 = ptrtoint ptr %r5c_cached_full_stripes to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %r5c_cached_full_stripes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp129 = icmp eq i32 %53, 0
  br i1 %cmp129, label %do.body138, label %do.end146, !prof !139

do.body138:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2878, 0\0A.popsection", ""() #12, !srcloc !169
  unreachable

do.end146:                                        ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #14
  %r5c_flushing_full_stripes = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 55
  %call.i.i219 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r5c_flushing_full_stripes, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r5c_flushing_full_stripes, i32 1, i32 3, i32 1) #12
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r5c_flushing_full_stripes, ptr %r5c_flushing_full_stripes, i32 1, ptr elementtype(i32) %r5c_flushing_full_stripes) #12, !srcloc !166
  %call.i.i220 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r5c_cached_full_stripes, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r5c_cached_full_stripes, i32 1, i32 3, i32 1) #12
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r5c_cached_full_stripes, ptr %r5c_cached_full_stripes, i32 1, ptr elementtype(i32) %r5c_cached_full_stripes) #12, !srcloc !166
  br label %if.end148

if.end148:                                        ; preds = %do.end146, %if.end122.if.end148_crit_edge
  %sector149 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 5
  %56 = ptrtoint ptr %sector149 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %sector149, align 8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %mddev1.i = getelementptr inbounds %struct.md_rdev, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %mddev1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mddev1.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %quiesce.i = getelementptr inbounds %struct.r5conf, ptr %63, i32 0, i32 42
  %64 = ptrtoint ptr %quiesce.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %quiesce.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i227 = icmp eq i32 %65, 0
  br i1 %tobool.not.i227, label %if.end.i, label %if.end148.r5l_append_flush_payload.exit_crit_edge

if.end148.r5l_append_flush_payload.exit_crit_edge: ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_append_flush_payload.exit

if.end.i:                                         ; preds = %if.end148
  %io_mutex.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i, i32 noundef 0) #12
  %call.i = tail call fastcc i32 @r5l_get_meta(ptr noundef nonnull %1, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i228 = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i228, label %if.end5.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  %current_io.i = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 10
  %66 = ptrtoint ptr %current_io.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %current_io.i, align 4
  %meta_page.i = getelementptr inbounds %struct.r5l_io_unit, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %meta_page.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %meta_page.i, align 4
  %call6.i = tail call ptr @page_address(ptr noundef %69) #12
  %meta_offset.i = getelementptr inbounds %struct.r5l_io_unit, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %meta_offset.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %meta_offset.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call6.i, i32 %71
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 512, ptr %add.ptr.i, align 1
  %flags.i = getelementptr inbounds %struct.r5l_payload_header, ptr %add.ptr.i, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 0, ptr %flags.i, align 1
  %size.i = getelementptr inbounds %struct.r5l_payload_flush, ptr %add.ptr.i, i32 0, i32 1
  %74 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 134217728, ptr %size.i, align 1
  %75 = tail call i64 @llvm.bswap.i64(i64 %57) #12
  %flush_stripes.i = getelementptr inbounds %struct.r5l_payload_flush, ptr %add.ptr.i, i32 0, i32 2
  %76 = ptrtoint ptr %flush_stripes.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %75, ptr %flush_stripes.i, align 1
  %77 = ptrtoint ptr %meta_offset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %meta_offset.i, align 8
  %add.i229 = add i32 %78, 16
  store i32 %add.i229, ptr %meta_offset.i, align 8
  %has_flush_payload.i = getelementptr inbounds %struct.r5l_io_unit, ptr %67, i32 0, i32 13
  %79 = ptrtoint ptr %has_flush_payload.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i = load i8, ptr %has_flush_payload.i, align 4
  %80 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool9.not.i = icmp eq i8 %80, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end5.i.cleanup.sink.split.i_crit_edge

if.end5.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then10.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i = or i8 %bf.load.i, 16
  %81 = ptrtoint ptr %has_flush_payload.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %bf.set.i, ptr %has_flush_payload.i, align 4
  %pending_stripe.i = getelementptr inbounds %struct.r5l_io_unit, ptr %67, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_stripe.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %pending_stripe.i, i32 1, i32 3, i32 1) #12
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_stripe.i, ptr %pending_stripe.i, i32 1, ptr elementtype(i32) %pending_stripe.i) #12, !srcloc !140
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then10.i, %if.end5.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex.i) #12
  br label %r5l_append_flush_payload.exit

r5l_append_flush_payload.exit:                    ; preds = %cleanup.sink.split.i, %if.end148.r5l_append_flush_payload.exit_crit_edge
  %83 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %state, align 4
  %85 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool152.not = icmp eq i32 %85, 0
  br i1 %tobool152.not, label %r5l_append_flush_payload.exit.cleanup_crit_edge, label %if.then153

r5l_append_flush_payload.exit.cleanup_crit_edge:  ; preds = %r5l_append_flush_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then153:                                       ; preds = %r5l_append_flush_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then153, %r5l_append_flush_payload.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5c_update_log_state(ptr noundef %log) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %mddev = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mddev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %cmp.not.i = icmp eq ptr %log, null
  br i1 %cmp.not.i, label %entry.cleanup_crit_edge, label %r5c_is_writeback.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

r5c_is_writeback.exit:                            ; preds = %entry
  %r5c_journal_mode.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 28
  %6 = ptrtoint ptr %r5c_journal_mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r5c_journal_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i = icmp eq i32 %7, 1
  br i1 %cmp1.i, label %if.end, label %r5c_is_writeback.exit.cleanup_crit_edge

r5c_is_writeback.exit.cleanup_crit_edge:          ; preds = %r5c_is_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %r5c_is_writeback.exit
  %log_start = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 6
  %8 = ptrtoint ptr %log_start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %log_start, align 8
  %last_checkpoint = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 4
  %10 = ptrtoint ptr %last_checkpoint to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %last_checkpoint, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %9)
  %cmp.not.i35 = icmp ult i64 %11, %9
  br i1 %cmp.not.i35, label %if.else.i, label %if.end.r5l_ring_distance.exit_crit_edge

if.end.r5l_ring_distance.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_ring_distance.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device_size.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %12 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %device_size.i, align 8
  %add.i = add i64 %13, %11
  br label %r5l_ring_distance.exit

r5l_ring_distance.exit:                           ; preds = %if.else.i, %if.end.r5l_ring_distance.exit_crit_edge
  %end.pn.i = phi i64 [ %add.i, %if.else.i ], [ %11, %if.end.r5l_ring_distance.exit_crit_edge ]
  %retval.0.i = sub i64 %end.pn.i, %9
  %log1.i = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 73
  %14 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log1.i, align 8
  %cmp.not.i.i = icmp eq ptr %15, null
  br i1 %cmp.not.i.i, label %r5l_ring_distance.exit.r5c_log_required_to_flush_cache.exit_crit_edge, label %r5c_is_writeback.exit.i

r5l_ring_distance.exit.r5c_log_required_to_flush_cache.exit_crit_edge: ; preds = %r5l_ring_distance.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_log_required_to_flush_cache.exit

r5c_is_writeback.exit.i:                          ; preds = %r5l_ring_distance.exit
  %r5c_journal_mode.i.i = getelementptr inbounds %struct.r5l_log, ptr %15, i32 0, i32 28
  %16 = ptrtoint ptr %r5c_journal_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %r5c_journal_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp1.i.i = icmp eq i32 %17, 1
  br i1 %cmp1.i.i, label %if.end.i, label %r5c_is_writeback.exit.i.r5c_log_required_to_flush_cache.exit_crit_edge

r5c_is_writeback.exit.i.r5c_log_required_to_flush_cache.exit_crit_edge: ; preds = %r5c_is_writeback.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_log_required_to_flush_cache.exit

if.end.i:                                         ; preds = %r5c_is_writeback.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_degraded.i = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 7
  %18 = ptrtoint ptr %max_degraded.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_degraded.i, align 8
  %add.i36 = add i32 %19, 1
  %stripe_in_journal_count.i = getelementptr inbounds %struct.r5l_log, ptr %15, i32 0, i32 31
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stripe_in_journal_count.i, i32 noundef 4) #12
  %20 = ptrtoint ptr %stripe_in_journal_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %stripe_in_journal_count.i, align 4
  %mul.i = mul i32 %21, %add.i36
  %raid_disks.i = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %raid_disks.i, align 4
  %24 = ptrtoint ptr %max_degraded.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_degraded.i, align 8
  %sub.i = sub i32 %23, %25
  %group_cnt.i = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 71
  %26 = ptrtoint ptr %group_cnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %group_cnt.i, align 8
  %add4.i = add i32 %27, 1
  %mul5.i = mul i32 %add4.i, %sub.i
  %add6.i = add i32 %mul5.i, %mul.i
  %mul7.i = shl i32 %add6.i, 3
  %conv.i = sext i32 %mul7.i to i64
  br label %r5c_log_required_to_flush_cache.exit

r5c_log_required_to_flush_cache.exit:             ; preds = %if.end.i, %r5c_is_writeback.exit.i.r5c_log_required_to_flush_cache.exit_crit_edge, %r5l_ring_distance.exit.r5c_log_required_to_flush_cache.exit_crit_edge
  %retval.0.i37 = phi i64 [ %conv.i, %if.end.i ], [ 0, %r5c_is_writeback.exit.i.r5c_log_required_to_flush_cache.exit_crit_edge ], [ 0, %r5l_ring_distance.exit.r5c_log_required_to_flush_cache.exit_crit_edge ]
  %mul = shl nsw i64 %retval.0.i37, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %mul)
  %cmp = icmp ult i64 %retval.0.i, %mul
  %cache_state = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 62
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %r5c_log_required_to_flush_cache.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 4, ptr noundef %cache_state) #12
  br label %if.end9

if.else:                                          ; preds = %r5c_log_required_to_flush_cache.exit
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %cache_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %cache_state, align 4
  %30 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp ne i32 %30, 0
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %cache_state) #12
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %wake_reclaim.1.off0 = phi i1 [ false, %if.then3 ], [ %tobool.not, %if.else ]
  %mul10 = mul nsw i64 %retval.0.i37, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %mul10)
  %cmp11 = icmp ult i64 %retval.0.i, %mul10
  %cache_state13 = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 62
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cache_state13) #12
  br label %if.end16

if.else14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %cache_state13) #12
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then12
  br i1 %wake_reclaim.1.off0, label %do.body.preheader.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.preheader.i:                              ; preds = %if.end16
  %reclaim_target.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 23
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %31 = ptrtoint ptr %reclaim_target.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reclaim_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.not = icmp eq i32 %32, 0
  br i1 %cmp.i.not, label %do.cond.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond.i:                                        ; preds = %do.body.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reclaim_target.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %reclaim_target.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.cond.i
  %33 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %reclaim_target.i, i32 0, i32 0) #12, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %33, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %33, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  %cmp21.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %cmp21.not.i, label %do.end23.i, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end23.i:                                       ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %reclaim_thread.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 22
  %34 = ptrtoint ptr %reclaim_thread.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reclaim_thread.i, align 8
  tail call void @md_wakeup_thread(ptr noundef %35) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end23.i, %do.body.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %r5c_is_writeback.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r5c_cache_data(ptr noundef %log, ptr noundef %sh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_conf = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 3
  %0 = ptrtoint ptr %raid_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_conf, align 4
  %tobool.not = icmp eq ptr %log, null
  br i1 %tobool.not, label %do.body4, label %for.cond.preheader, !prof !139

for.cond.preheader:                               ; preds = %entry
  %disks = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 13
  %2 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp131 = icmp sgt i32 %3, 0
  br i1 %cmp131, label %for.body.lr.ph, label %for.cond.preheader.do.end42_crit_edge

for.cond.preheader.do.end42_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %uuid_checksum = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 1
  br label %for.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2897, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc25, %cleanup.for.body_crit_edge ]
  %pages.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %pages.1, %cleanup.for.body_crit_edge ]
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0133, i32 12
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %for.body.cleanup_crit_edge, label %if.end12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %page = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0133, i32 4
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %9 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %9, 512
  %10 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %14 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 213
  %18 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %19, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %call.i.i121 = tail call ptr @__kmap_local_page_prot(ptr noundef %8, i32 noundef %or.i) #12
  %20 = ptrtoint ptr %uuid_checksum to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uuid_checksum, align 4
  %call16 = tail call i32 @crc32c(i32 noundef %21, ptr noundef %call.i.i121, i32 noundef 4096) #12
  %log_checksum = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0133, i32 13
  %22 = ptrtoint ptr %log_checksum to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call16, ptr %log_checksum, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i121) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %23 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %29 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %inc = add i32 %pages.0132, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.body.cleanup_crit_edge
  %pages.1 = phi i32 [ %inc, %if.end12 ], [ %pages.0132, %for.body.cleanup_crit_edge ]
  %inc25 = add nuw nsw i32 %i.0133, 1
  %33 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %disks, align 4
  %cmp = icmp slt i32 %inc25, %34
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages.1)
  %cmp26 = icmp eq i32 %pages.1, 0
  br i1 %cmp26, label %for.end.do.end42_crit_edge, label %for.end.if.end48_crit_edge, !prof !139

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

for.end.do.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42

do.end42:                                         ; preds = %for.end.do.end42_crit_edge, %for.cond.preheader.do.end42_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2910, i32 noundef 9, ptr noundef null) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %for.end.if.end48_crit_edge
  %pages.0.lcssa137 = phi i32 [ 0, %do.end42 ], [ %pages.1, %for.end.if.end48_crit_edge ]
  %state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #12
  %count = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #12
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #12, !srcloc !140
  %io_mutex = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %add = shl i32 %pages.0.lcssa137, 3
  %shl = add i32 %add, 8
  %cache_state = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 62
  %36 = ptrtoint ptr %cache_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %cache_state, align 4
  %38 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool56.not = icmp eq i32 %38, 0
  br i1 %tobool56.not, label %if.end48.if.else_crit_edge, label %land.lhs.true

if.end48.if.else_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end48
  %log_start = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 25
  %39 = ptrtoint ptr %log_start to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %log_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %40)
  %cmp57 = icmp eq i64 %40, -1
  br i1 %cmp57, label %if.then58, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then58:                                        ; preds = %land.lhs.true
  %no_space_stripes_lock.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %no_space_stripes_lock.i) #12
  %log_list.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24
  %no_space_stripes.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 25
  %prev.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 25, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list.i, ptr noundef %42, ptr noundef %no_space_stripes.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then58.r5l_add_no_space_stripe.exit_crit_edge

if.then58.r5l_add_no_space_stripe.exit_crit_edge: ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_add_no_space_stripe.exit

if.end.i.i.i:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %log_list.i, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %log_list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %no_space_stripes.i, ptr %log_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %log_list.i, ptr %42, align 4
  br label %r5l_add_no_space_stripe.exit

r5l_add_no_space_stripe.exit:                     ; preds = %if.end.i.i.i, %if.then58.r5l_add_no_space_stripe.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %no_space_stripes_lock.i) #12
  br label %if.end80

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end48.if.else_crit_edge
  %conv = sext i32 %shl to i64
  %last_checkpoint.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 4
  %47 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %last_checkpoint.i, align 8
  %log_start.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 6
  %49 = ptrtoint ptr %log_start.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %log_start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %48)
  %cmp.not.i.i = icmp ult i64 %50, %48
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.else.r5l_has_free_space.exit_crit_edge

if.else.r5l_has_free_space.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_has_free_space.exit

if.else.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %device_size.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %51 = ptrtoint ptr %device_size.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %device_size.i.i, align 8
  %add.i.i = add i64 %52, %50
  br label %r5l_has_free_space.exit

r5l_has_free_space.exit:                          ; preds = %if.else.i.i, %if.else.r5l_has_free_space.exit_crit_edge
  %end.pn.i.i = phi i64 [ %add.i.i, %if.else.i.i ], [ %50, %if.else.r5l_has_free_space.exit_crit_edge ]
  %device_size.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %53 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %device_size.i, align 8
  %retval.0.i.i = sub i64 %conv, %48
  %add.i = add i64 %retval.0.i.i, %end.pn.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %add.i)
  %cmp.i = icmp ugt i64 %54, %add.i
  br i1 %cmp.i, label %if.else73, label %if.then60

if.then60:                                        ; preds = %r5l_has_free_space.exit
  %log_start61 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 25
  %55 = ptrtoint ptr %log_start61 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %log_start61, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %48)
  %cmp62 = icmp eq i64 %56, %48
  br i1 %cmp62, label %do.body65, label %if.else71

do.body65:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2928, 0\0A.popsection", ""() #12, !srcloc !171
  unreachable

if.else71:                                        ; preds = %if.then60
  %no_space_stripes_lock.i122 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %no_space_stripes_lock.i122) #12
  %log_list.i123 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24
  %no_space_stripes.i124 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 25
  %prev.i.i125 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 25, i32 1
  %57 = ptrtoint ptr %prev.i.i125 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i125, align 4
  %call.i.i.i126 = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list.i123, ptr noundef %58, ptr noundef %no_space_stripes.i124) #12
  br i1 %call.i.i.i126, label %if.end.i.i.i128, label %if.else71.r5l_add_no_space_stripe.exit129_crit_edge

if.else71.r5l_add_no_space_stripe.exit129_crit_edge: ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_add_no_space_stripe.exit129

if.end.i.i.i128:                                  ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %prev.i.i125 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %log_list.i123, ptr %prev.i.i125, align 4
  %60 = ptrtoint ptr %log_list.i123 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %no_space_stripes.i124, ptr %log_list.i123, align 4
  %prev3.i.i.i127 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i127, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %log_list.i123, ptr %58, align 4
  br label %r5l_add_no_space_stripe.exit129

r5l_add_no_space_stripe.exit129:                  ; preds = %if.end.i.i.i128, %if.else71.r5l_add_no_space_stripe.exit129_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %no_space_stripes_lock.i122) #12
  br label %if.end80

if.else73:                                        ; preds = %r5l_has_free_space.exit
  %call74 = tail call fastcc i32 @r5l_log_stripe(ptr noundef nonnull %log, ptr noundef %sh, i32 noundef %pages.0.lcssa137, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.else73.if.end80_crit_edge, label %if.then76

if.else73.if.end80_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then76:                                        ; preds = %if.else73
  %io_list_lock = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %io_list_lock) #12
  %log_list = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24
  %no_mem_stripes = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 17, i32 1
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i, align 4
  %call.i.i130 = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list, ptr noundef %64, ptr noundef %no_mem_stripes) #12
  br i1 %call.i.i130, label %if.end.i.i, label %if.then76.list_add_tail.exit_crit_edge

if.then76.list_add_tail.exit_crit_edge:           ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %log_list, ptr %prev.i, align 4
  %66 = ptrtoint ptr %log_list to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %no_mem_stripes, ptr %log_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24, i32 1
  %67 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %log_list, ptr %64, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then76.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock) #12
  br label %if.end80

if.end80:                                         ; preds = %list_add_tail.exit, %if.else73.if.end80_crit_edge, %r5l_add_no_space_stripe.exit129, %r5l_add_no_space_stripe.exit
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @r5c_big_stripe_cached(ptr nocapture noundef readonly %conf, i64 noundef %sect) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %log1 = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 73
  %0 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.rhs, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.rhs:                                         ; preds = %if.end
  %.b50 = load i1, ptr @r5c_big_stripe_cached.__already_done, align 1
  br i1 %.b50, label %land.rhs.if.end33_crit_edge, label %if.then11, !prof !137

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @r5c_big_stripe_cached.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2954, i32 noundef 9, ptr noundef null) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then11, %land.rhs.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %chunk_sectors.i = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 3
  %2 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chunk_sectors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sect)
  %cmp164.i = icmp ult i64 %sect, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !137

if.then168.i:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i = trunc i64 %sect to i32
  %div172.i = udiv i32 %conv169.i, %3
  br label %r5c_tree_index.exit

if.else174.i:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sect) #15, !srcloc !164
  %asmresult1.i.i = extractvalue { i64, i64 } %4, 1
  %extract.t52 = trunc i64 %asmresult1.i.i to i32
  br label %r5c_tree_index.exit

r5c_tree_index.exit:                              ; preds = %if.else174.i, %if.then168.i
  %sect.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t52, %if.else174.i ]
  %big_stripe_tree = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 35
  %call42 = tail call ptr @radix_tree_lookup(ptr noundef %big_stripe_tree, i32 noundef %sect.addr.0.i.off0) #12
  %cmp = icmp ne ptr %call42, null
  br label %cleanup

cleanup:                                          ; preds = %r5c_tree_index.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %r5c_tree_index.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r5l_start(ptr noundef %log) local_unnamed_addr #1 align 64 {
entry:
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %log, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %2 = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %sectors.i = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp.not.i = icmp ult i64 %4, %6
  %and.i = and i64 %4, -8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %4)
  %cmp3.not.i = icmp eq i64 %and.i, %4
  %or.cond.i = and i1 %cmp.not.i, %cmp3.not.i
  %cp.0.i = select i1 %or.cond.i, i64 %4, i64 0
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then2_crit_edge, label %if.end5.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.end5.i:                                        ; preds = %if.end
  %call6.i = tail call i32 @sync_page_io(ptr noundef %1, i64 noundef %cp.0.i, i32 noundef 4096, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #12
  br label %if.then2

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #12
  %7 = ptrtoint ptr %call10.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %call10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 163918692, i32 %8)
  %cmp11.not.i = icmp eq i32 %8, 163918692
  br i1 %cmp11.not.i, label %lor.lhs.false12.i, label %if.end9.i.if.then28.i_crit_edge

if.end9.i.if.then28.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.lhs.false12.i:                                ; preds = %if.end9.i
  %version.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call10.i, i32 0, i32 2
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp13.not.i = icmp eq i8 %10, 1
  br i1 %cmp13.not.i, label %if.end16.i, label %lor.lhs.false12.i.if.then28.i_crit_edge

lor.lhs.false12.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

if.end16.i:                                       ; preds = %lor.lhs.false12.i
  %checksum.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call10.i, i32 0, i32 1
  %11 = ptrtoint ptr %checksum.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %checksum.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %14 = ptrtoint ptr %checksum.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %checksum.i, align 1
  %uuid_checksum.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 1
  %15 = ptrtoint ptr %uuid_checksum.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %uuid_checksum.i, align 4
  %call18.i = tail call i32 @crc32c(i32 noundef %16, ptr noundef %call10.i, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %13, %call18.i
  br i1 %cmp19.not.i, label %create.i, label %if.end16.i.if.then28.i_crit_edge

if.end16.i.if.then28.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

create.i:                                         ; preds = %if.end16.i
  %position.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call10.i, i32 0, i32 7
  %17 = ptrtoint ptr %position.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %position.i, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %cp.0.i)
  %cmp23.not.not.i = icmp eq i64 %19, %cp.0.i
  br i1 %cmp23.not.not.i, label %if.else.i, label %create.i.if.then28.i_crit_edge

create.i.if.then28.i_crit_edge:                   ; preds = %create.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

if.then28.i:                                      ; preds = %create.i.if.then28.i_crit_edge, %if.end16.i.if.then28.i_crit_edge, %lor.lhs.false12.i.if.then28.i_crit_edge, %if.end9.i.if.then28.i_crit_edge
  %call29.i = tail call i32 @prandom_u32() #12
  %conv30.i = zext i32 %call29.i to i64
  %last_cp_seq.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 5
  %20 = ptrtoint ptr %last_cp_seq.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv30.i, ptr %last_cp_seq.i, align 8
  tail call fastcc void @r5l_log_write_empty_meta_block(ptr noundef nonnull %log, i64 noundef 0, i64 noundef %conv30.i) #12
  %21 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log, align 8
  %mddev1.i.i = getelementptr inbounds %struct.md_rdev, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %mddev1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mddev1.i.i, align 8
  %25 = getelementptr inbounds %struct.md_rdev, ptr %22, i32 0, i32 22
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %25, align 8
  %sb_flags.i.i = getelementptr inbounds %struct.mddev, ptr %24, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sb_flags.i.i) #12
  br label %if.end34.i

if.else.i:                                        ; preds = %create.i
  call void @__sanitizer_cov_trace_pc() #14
  %seq.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call10.i, i32 0, i32 6
  %27 = ptrtoint ptr %seq.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %seq.i, align 1
  %29 = tail call i64 @llvm.bswap.i64(i64 %28) #12
  %last_cp_seq33.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 5
  %30 = ptrtoint ptr %last_cp_seq33.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %last_cp_seq33.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.then28.i
  %create_super.0.off0114.i = phi i1 [ true, %if.then28.i ], [ false, %if.else.i ]
  %cp.1.i = phi i64 [ 0, %if.then28.i ], [ %cp.0.i, %if.else.i ]
  %31 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sectors.i, align 8
  %and36.i = and i64 %32, -8
  %device_size.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %33 = ptrtoint ptr %device_size.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %and36.i, ptr %device_size.i, align 8
  %shr.i = lshr exact i64 %and36.i, 2
  %max_free_space.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 83886080, i64 %and36.i)
  %cmp39.i = icmp ugt i64 %and36.i, 83886080
  %spec.select102.i = select i1 %cmp39.i, i64 20971520, i64 %shr.i
  %34 = ptrtoint ptr %max_free_space.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %spec.select102.i, ptr %max_free_space.i, align 8
  %last_checkpoint.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 4
  %35 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %cp.1.i, ptr %last_checkpoint.i, align 8
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #12
  br i1 %create_super.0.off0114.i, label %r5l_load_log.exit.thread31, label %if.else49.i

r5l_load_log.exit.thread31:                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i.i = add i64 %cp.1.i, 8
  %36 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %37)
  %cmp.not.i.i = icmp ult i64 %add.i.i, %37
  %sub.i.i = select i1 %cmp.not.i.i, i64 0, i64 %37
  %spec.select.i.i = sub i64 %add.i.i, %sub.i.i
  %log_start.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 6
  %38 = ptrtoint ptr %log_start.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %spec.select.i.i, ptr %log_start.i, align 8
  %last_cp_seq47.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 5
  %39 = ptrtoint ptr %last_cp_seq47.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %last_cp_seq47.i, align 8
  %add.i = add i64 %40, 1
  %seq48.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 7
  %41 = ptrtoint ptr %seq48.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %add.i, ptr %seq48.i, align 8
  %next_checkpoint.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 8
  %42 = ptrtoint ptr %next_checkpoint.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %cp.1.i, ptr %next_checkpoint.i, align 8
  tail call fastcc void @r5c_update_log_state(ptr noundef nonnull %log) #12
  br label %cleanup

if.else49.i:                                      ; preds = %if.end34.i
  %43 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %log, align 8
  %mddev1.i103.i = getelementptr inbounds %struct.md_rdev, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %mddev1.i103.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mddev1.i103.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 1096) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %r5l_load_log.exit.thread34, label %if.end.i.i

r5l_load_log.exit.thread34:                       ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @r5c_update_log_state(ptr noundef nonnull %log) #12
  br label %if.then2

if.end.i.i:                                       ; preds = %if.else49.i
  %48 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %last_checkpoint.i, align 8
  %pos2.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %pos2.i.i, align 8
  %last_cp_seq.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 5
  %51 = ptrtoint ptr %last_cp_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %last_cp_seq.i.i, align 8
  %seq.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %seq.i.i, align 8
  %cached_list.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %cached_list.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %cached_list.i.i, ptr %cached_list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cached_list.i.i, ptr %prev.i.i.i, align 4
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %56 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call38.i.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.r5l_load_log.exit_crit_edge, label %if.end7.i.i

if.end.i.i.r5l_load_log.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_load_log.exit

if.end7.i.i:                                      ; preds = %if.end.i.i
  %bs.i.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 20
  %call.i.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext 256, ptr noundef %bs.i.i.i) #12
  %ra_bio.i.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 11
  %57 = ptrtoint ptr %ra_bio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i.i.i, ptr %ra_bio.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end7.i.i.ra_pool.i.i_crit_edge, label %if.end.i.i.i

if.end7.i.i.ra_pool.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ra_pool.i.i

if.end.i.i.i:                                     ; preds = %if.end7.i.i
  %valid_pages.i.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 10
  %58 = ptrtoint ptr %valid_pages.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %valid_pages.i.i.i, align 4
  %total_pages.i.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 9
  %59 = ptrtoint ptr %total_pages.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %total_pages.i.i.i, align 8
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end6.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.i
  %call38.i.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool4.not.i.i.i = icmp eq ptr %call38.i.i.i.i.i.i, null
  %60 = ptrtoint ptr %total_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr.i.i.i = load i32, ptr %total_pages.i.i.i, align 8
  br i1 %tobool4.not.i.i.i, label %while.end.i.i.i, label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %while.body.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 7, i32 %.pr.i.i.i
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call38.i.i.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %62 = ptrtoint ptr %total_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %total_pages.i.i.i, align 8
  %add.i.i.i = add i32 %63, 1
  store i32 %add.i.i.i, ptr %total_pages.i.i.i, align 8
  %cmp.i.i.i = icmp slt i32 %add.i.i.i, 256
  br i1 %cmp.i.i.i, label %if.end6.i.i.i.while.body.i.i.i_crit_edge, label %if.end6.i.i.i.if.end10.i.i_crit_edge

if.end6.i.i.i.if.end10.i.i_crit_edge:             ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.end6.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i.i)
  %cmp10.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %cmp10.i.i.i, label %if.then11.i.i.i, label %while.end.i.i.i.if.end10.i.i_crit_edge

while.end.i.i.i.if.end10.i.i_crit_edge:           ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.then11.i.i.i:                                  ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %ra_bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ra_bio.i.i.i, align 8
  tail call void @bio_put(ptr noundef %65) #12
  br label %ra_pool.i.i

if.end10.i.i:                                     ; preds = %while.end.i.i.i.if.end10.i.i_crit_edge, %if.end6.i.i.i.if.end10.i.i_crit_edge
  %pool_offset.i.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 8
  %66 = ptrtoint ptr %pool_offset.i.i.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 0, ptr %pool_offset.i.i.i, align 8
  %67 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call7.i.i.i.i, align 8
  %69 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %pos2.i.i, align 8
  %call.i91.i.i.i = tail call fastcc i32 @r5l_recovery_read_page(ptr noundef %log, ptr noundef %call7.i.i.i.i, ptr noundef %68, i64 noundef %70) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i.i.i)
  %cmp.not.i92.i.i.i = icmp eq i32 %call.i91.i.i.i, 0
  br i1 %cmp.not.i92.i.i.i, label %if.end.i.lr.ph.i.i.i, label %if.end10.i.i.if.end10.i.i.i_crit_edge

if.end10.i.i.if.end10.i.i.i_crit_edge:            ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

if.end.i.lr.ph.i.i.i:                             ; preds = %if.end10.i.i
  %uuid_checksum.i.i.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 1
  %meta_total_blocks.i.i.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 1
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i.i.i.if.end.i.i.i.i_crit_edge, %if.end.i.lr.ph.i.i.i
  %71 = phi ptr [ %68, %if.end.i.lr.ph.i.i.i ], [ %107, %if.end4.i.i.i.if.end.i.i.i.i_crit_edge ]
  %call1.i.i.i.i = tail call ptr @page_address(ptr noundef %71) #12
  %checksum.i.i.i.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call1.i.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %checksum.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %checksum.i.i.i.i, align 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #12
  %75 = ptrtoint ptr %checksum.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 0, ptr %checksum.i.i.i.i, align 1
  %76 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %call1.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 163918692, i32 %77)
  %cmp3.not.i.i.i.i = icmp eq i32 %77, 163918692
  br i1 %cmp3.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.end.i.i.i.i.if.end10.i.i.i_crit_edge

if.end.i.i.i.i.if.end10.i.i.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %seq.i.i.i.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call1.i.i.i.i, i32 0, i32 6
  %78 = ptrtoint ptr %seq.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %seq.i.i.i.i, align 1
  %80 = tail call i64 @llvm.bswap.i64(i64 %79) #12
  %81 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %seq.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %82)
  %cmp5.not.i.i.i.i = icmp eq i64 %80, %82
  br i1 %cmp5.not.i.i.i.i, label %lor.lhs.false6.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.end10.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end10.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

lor.lhs.false6.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i.i
  %version.i.i.i.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call1.i.i.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %version.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %version.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp7.not.i.i.i.i = icmp eq i8 %84, 1
  br i1 %cmp7.not.i.i.i.i, label %lor.lhs.false9.i.i.i.i, label %lor.lhs.false6.i.i.i.i.if.end10.i.i.i_crit_edge

lor.lhs.false6.i.i.i.i.if.end10.i.i.i_crit_edge:  ; preds = %lor.lhs.false6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

lor.lhs.false9.i.i.i.i:                           ; preds = %lor.lhs.false6.i.i.i.i
  %position.i.i.i.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call1.i.i.i.i, i32 0, i32 7
  %85 = ptrtoint ptr %position.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 8)
  %86 = load i64, ptr %position.i.i.i.i, align 1
  %87 = tail call i64 @llvm.bswap.i64(i64 %86) #12
  %88 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %pos2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %89)
  %cmp11.not.i.i.i.i = icmp eq i64 %87, %89
  br i1 %cmp11.not.i.i.i.i, label %if.end14.i.i.i.i, label %lor.lhs.false9.i.i.i.i.if.end10.i.i.i_crit_edge

lor.lhs.false9.i.i.i.i.if.end10.i.i.i_crit_edge:  ; preds = %lor.lhs.false9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

if.end14.i.i.i.i:                                 ; preds = %lor.lhs.false9.i.i.i.i
  %90 = ptrtoint ptr %uuid_checksum.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %uuid_checksum.i.i.i.i, align 4
  %call15.i.i.i.i = tail call i32 @crc32c(i32 noundef %91, ptr noundef %call1.i.i.i.i, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %call15.i.i.i.i)
  %cmp16.not.i.i.i.i = icmp eq i32 %74, %call15.i.i.i.i
  br i1 %cmp16.not.i.i.i.i, label %if.end19.i.i.i.i, label %if.end14.i.i.i.i.if.end10.i.i.i_crit_edge

if.end14.i.i.i.i.if.end10.i.i.i_crit_edge:        ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

if.end19.i.i.i.i:                                 ; preds = %if.end14.i.i.i.i
  %meta_size.i.i.i.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call1.i.i.i.i, i32 0, i32 5
  %92 = ptrtoint ptr %meta_size.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %meta_size.i.i.i.i, align 1
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %94)
  %cmp20.i.i.i.i = icmp ugt i32 %94, 4096
  br i1 %cmp20.i.i.i.i, label %if.end19.i.i.i.i.if.end10.i.i.i_crit_edge, label %if.end.i106.i.i

if.end19.i.i.i.i.if.end10.i.i.i_crit_edge:        ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

if.end.i106.i.i:                                  ; preds = %if.end19.i.i.i.i
  %95 = ptrtoint ptr %meta_total_blocks.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 8, ptr %meta_total_blocks.i.i.i.i, align 8
  %call1.i.i.i = tail call fastcc i32 @r5c_recovery_analyze_meta_block(ptr noundef %log, ptr noundef %call7.i.i.i.i, ptr noundef %cached_list.i.i) #12
  %96 = zext i32 %call1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call1.i.i.i, label %if.end.i106.i.i.if.end10.i.i.i_crit_edge [
    i32 0, label %if.end.i106.i.i.if.end4.i.i.i_crit_edge
    i32 -11, label %if.end.i106.i.i.if.end4.i.i.i_crit_edge43
    i32 -12, label %if.then8.i.i.i
  ]

if.end.i106.i.i.if.end4.i.i.i_crit_edge43:        ; preds = %if.end.i106.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end.i106.i.i.if.end4.i.i.i_crit_edge:          ; preds = %if.end.i106.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end.i106.i.i.if.end10.i.i.i_crit_edge:         ; preds = %if.end.i106.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i106.i.i.if.end4.i.i.i_crit_edge, %if.end.i106.i.i.if.end4.i.i.i_crit_edge43
  %97 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %seq.i.i, align 8
  %inc.i.i.i = add i64 %98, 1
  store i64 %inc.i.i.i, ptr %seq.i.i, align 8
  %99 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %pos2.i.i, align 8
  %101 = ptrtoint ptr %meta_total_blocks.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %meta_total_blocks.i.i.i.i, align 8
  %add.i.i.i.i = add i64 %102, %100
  %103 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i.i, i64 %104)
  %cmp.not.i71.i.i.i = icmp ult i64 %add.i.i.i.i, %104
  %sub.i.i.i.i = select i1 %cmp.not.i71.i.i.i, i64 0, i64 %104
  %spec.select.i.i.i.i = sub i64 %add.i.i.i.i, %sub.i.i.i.i
  %105 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %spec.select.i.i.i.i, ptr %pos2.i.i, align 8
  %106 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call7.i.i.i.i, align 8
  %call.i.i.i.i = tail call fastcc i32 @r5l_recovery_read_page(ptr noundef %log, ptr noundef %call7.i.i.i.i, ptr noundef %107, i64 noundef %spec.select.i.i.i.i) #12
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end4.i.i.i.if.end.i.i.i.i_crit_edge, label %if.end4.i.i.i.if.end10.i.i.i_crit_edge

if.end4.i.i.i.if.end10.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

if.end4.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i106.i.i
  %108 = ptrtoint ptr %cached_list.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cached_list.i.i, align 8
  %cmp.not2.i.i.i.i = icmp eq ptr %109, %cached_list.i.i
  br i1 %cmp.not2.i.i.i.i, label %if.then8.i.i.i.error.i.i_crit_edge, label %if.then8.i.i.i.for.body.i.i.i.i_crit_edge

if.then8.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.then8.i.i.i
  br label %for.body.i.i.i.i

if.then8.i.i.i.error.i.i_crit_edge:               ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i.i

for.body.i.i.i.i:                                 ; preds = %list_del_init.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then8.i.i.i.for.body.i.i.i.i_crit_edge
  %.pn.in3.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %list_del_init.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %109, %if.then8.i.i.i.for.body.i.i.i.i_crit_edge ]
  %sh.0.i.i.i.i = getelementptr i8, ptr %.pn.in3.i.i.i.i, i32 -8
  %110 = ptrtoint ptr %.pn.in3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pn.i.i.i.i = load ptr, ptr %.pn.in3.i.i.i.i, align 8
  %state.i.i.i.i.i = getelementptr i8, ptr %.pn.in3.i.i.i.i, i32 40
  %111 = ptrtoint ptr %state.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %state.i.i.i.i.i, align 8
  %log_start.i.i.i.i.i = getelementptr i8, ptr %.pn.in3.i.i.i.i, i32 192
  %112 = ptrtoint ptr %log_start.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 -1, ptr %log_start.i.i.i.i.i, align 8
  %disks.i.i.i.i.i = getelementptr i8, ptr %.pn.in3.i.i.i.i, i32 52
  %113 = ptrtoint ptr %disks.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %disks.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not5.i.i.i.i.i = icmp eq i32 %114, 0
  br i1 %tobool.not5.i.i.i.i.i, label %for.body.i.i.i.i.r5l_recovery_reset_stripe.exit.i.i.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i.i_crit_edge:    ; preds = %for.body.i.i.i.i
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.r5l_recovery_reset_stripe.exit.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_recovery_reset_stripe.exit.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.body.i.i.i.i.i_crit_edge
  %i.06.i.i.i.i.i = phi i32 [ %dec.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %114, %for.body.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %dec.i.i.i.i.i = add i32 %i.06.i.i.i.i.i, -1
  %flags.i.i.i.i.i = getelementptr %struct.stripe_head, ptr %sh.0.i.i.i.i, i32 0, i32 29, i32 %dec.i.i.i.i.i, i32 12
  %115 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %flags.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq i32 %dec.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %for.body.i.i.i.i.i.r5l_recovery_reset_stripe.exit.i.i.i.i_crit_edge, label %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i.r5l_recovery_reset_stripe.exit.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_recovery_reset_stripe.exit.i.i.i.i

r5l_recovery_reset_stripe.exit.i.i.i.i:           ; preds = %for.body.i.i.i.i.i.r5l_recovery_reset_stripe.exit.i.i.i.i_crit_edge, %for.body.i.i.i.i.r5l_recovery_reset_stripe.exit.i.i.i.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in3.i.i.i.i) #12
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %r5l_recovery_reset_stripe.exit.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge

r5l_recovery_reset_stripe.exit.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge: ; preds = %r5l_recovery_reset_stripe.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %r5l_recovery_reset_stripe.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3.i.i.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %118 = ptrtoint ptr %.pn.in3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %.pn.in3.i.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev1.i.i.i.i.i.i.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %117, align 4
  br label %list_del_init.exit.i.i.i.i

list_del_init.exit.i.i.i.i:                       ; preds = %if.end.i.i.i.i.i.i, %r5l_recovery_reset_stripe.exit.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge
  %122 = ptrtoint ptr %.pn.in3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %.pn.in3.i.i.i.i, ptr %.pn.in3.i.i.i.i, align 4
  %prev.i3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3.i.i.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %.pn.in3.i.i.i.i, ptr %prev.i3.i.i.i.i.i, align 4
  tail call void @raid5_release_stripe(ptr noundef %sh.0.i.i.i.i) #12
  %cmp.not.i72.i.i.i = icmp eq ptr %.pn.i.i.i.i, %cached_list.i.i
  br i1 %cmp.not.i72.i.i.i, label %list_del_init.exit.i.i.i.i.error.i.i_crit_edge, label %list_del_init.exit.i.i.i.i.for.body.i.i.i.i_crit_edge

list_del_init.exit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

list_del_init.exit.i.i.i.i.error.i.i_crit_edge:   ; preds = %list_del_init.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i.i

if.end10.i.i.i:                                   ; preds = %if.end4.i.i.i.if.end10.i.i.i_crit_edge, %if.end.i106.i.i.if.end10.i.i.i_crit_edge, %if.end19.i.i.i.i.if.end10.i.i.i_crit_edge, %if.end14.i.i.i.i.if.end10.i.i.i_crit_edge, %lor.lhs.false9.i.i.i.i.if.end10.i.i.i_crit_edge, %lor.lhs.false6.i.i.i.i.if.end10.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end10.i.i.i_crit_edge, %if.end.i.i.i.i.if.end10.i.i.i_crit_edge, %if.end10.i.i.if.end10.i.i.i_crit_edge
  %124 = ptrtoint ptr %cached_list.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cached_list.i.i, align 8
  %cmp.not24.i.i.i.i = icmp eq ptr %125, %cached_list.i.i
  br i1 %cmp.not24.i.i.i.i, label %if.end10.i.i.i.r5c_recovery_replay_stripes.exit.i.i.i_crit_edge, label %if.end10.i.i.i.for.body.i73.i.i.i_crit_edge

if.end10.i.i.i.for.body.i73.i.i.i_crit_edge:      ; preds = %if.end10.i.i.i
  br label %for.body.i73.i.i.i

if.end10.i.i.i.r5c_recovery_replay_stripes.exit.i.i.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_recovery_replay_stripes.exit.i.i.i

for.body.i73.i.i.i:                               ; preds = %for.inc.i.i.i.i.for.body.i73.i.i.i_crit_edge, %if.end10.i.i.i.for.body.i73.i.i.i_crit_edge
  %.pn.in25.i.i.i.i = phi ptr [ %.pn28.i.i.i.i, %for.inc.i.i.i.i.for.body.i73.i.i.i_crit_edge ], [ %125, %if.end10.i.i.i.for.body.i73.i.i.i_crit_edge ]
  %sh.027.i.i.i.i = getelementptr i8, ptr %.pn.in25.i.i.i.i, i32 -8
  %126 = ptrtoint ptr %.pn.in25.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pn28.i.i.i.i = load ptr, ptr %.pn.in25.i.i.i.i, align 8
  %state.i.i.i.i = getelementptr i8, ptr %.pn.in25.i.i.i.i, i32 40
  %127 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %state.i.i.i.i, align 4
  %129 = and i32 %128, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i.i.i.i = icmp eq i32 %129, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %for.body.i73.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i73.i.i.i.for.inc.i.i.i.i_crit_edge:     ; preds = %for.body.i73.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i73.i.i.i
  %raid_conf.i.i.i.i = getelementptr i8, ptr %.pn.in25.i.i.i.i, i32 12
  %130 = ptrtoint ptr %raid_conf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %raid_conf.i.i.i.i, align 4
  tail call fastcc void @r5l_recovery_replay_one_stripe(ptr noundef %131, ptr noundef %sh.027.i.i.i.i, ptr noundef %call7.i.i.i.i) #12
  %call.i.i.i74.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i.i.i.i) #12
  br i1 %call.i.i.i74.i.i.i, label %if.end.i.i.i77.i.i.i, label %if.then.i.i.i.i.list_del_init.exit.i79.i.i.i_crit_edge

if.then.i.i.i.i.list_del_init.exit.i79.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i79.i.i.i

if.end.i.i.i77.i.i.i:                             ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i75.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %prev.i.i.i75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %prev.i.i.i75.i.i.i, align 4
  %134 = ptrtoint ptr %.pn.in25.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %.pn.in25.i.i.i.i, align 4
  %prev1.i.i.i.i76.i.i.i = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %prev1.i.i.i.i76.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %133, ptr %prev1.i.i.i.i76.i.i.i, align 4
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %135, ptr %133, align 4
  br label %list_del_init.exit.i79.i.i.i

list_del_init.exit.i79.i.i.i:                     ; preds = %if.end.i.i.i77.i.i.i, %if.then.i.i.i.i.list_del_init.exit.i79.i.i.i_crit_edge
  %138 = ptrtoint ptr %.pn.in25.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %.pn.in25.i.i.i.i, ptr %.pn.in25.i.i.i.i, align 4
  %prev.i3.i.i78.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i.i.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %prev.i3.i.i78.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %.pn.in25.i.i.i.i, ptr %prev.i3.i.i78.i.i.i, align 4
  tail call void @raid5_release_stripe(ptr noundef %sh.027.i.i.i.i) #12
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %list_del_init.exit.i79.i.i.i, %for.body.i73.i.i.i.for.inc.i.i.i.i_crit_edge
  %cmp.not.i80.i.i.i = icmp eq ptr %.pn28.i.i.i.i, %cached_list.i.i
  br i1 %cmp.not.i80.i.i.i, label %for.inc.i.i.i.i.r5c_recovery_replay_stripes.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i73.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i73.i.i.i_crit_edge:     ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i73.i.i.i

for.inc.i.i.i.i.r5c_recovery_replay_stripes.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_recovery_replay_stripes.exit.i.i.i

r5c_recovery_replay_stripes.exit.i.i.i:           ; preds = %for.inc.i.i.i.i.r5c_recovery_replay_stripes.exit.i.i.i_crit_edge, %if.end10.i.i.i.r5c_recovery_replay_stripes.exit.i.i.i_crit_edge
  %140 = ptrtoint ptr %cached_list.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %.pn93.i.i.i = load ptr, ptr %cached_list.i.i, align 8
  %cmp14.not94.i.i.i = icmp eq ptr %.pn93.i.i.i, %cached_list.i.i
  br i1 %cmp14.not94.i.i.i, label %r5c_recovery_replay_stripes.exit.i.i.i.if.end14.i.i_crit_edge, label %for.body.lr.ph.i.i.i

r5c_recovery_replay_stripes.exit.i.i.i.if.end14.i.i_crit_edge: ; preds = %r5c_recovery_replay_stripes.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i

for.body.lr.ph.i.i.i:                             ; preds = %r5c_recovery_replay_stripes.exit.i.i.i
  %data_only_stripes.i.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 5
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %r5c_recovery_load_one_stripe.exit.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %.pn95.i.i.i = phi ptr [ %.pn93.i.i.i, %for.body.lr.ph.i.i.i ], [ %.pn.i.i.i, %r5c_recovery_load_one_stripe.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %state.i.i.i = getelementptr i8, ptr %.pn95.i.i.i, i32 40
  %141 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %state.i.i.i, align 4
  %143 = and i32 %142, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool16.not.i.i.i = icmp eq i32 %143, 0
  br i1 %tobool16.not.i.i.i, label %do.end.i.i.i, label %for.body.i.i.i.if.end33.i.i.i_crit_edge, !prof !139

for.body.i.i.i.if.end33.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2274, i32 noundef 9, ptr noundef null) #12
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %do.end.i.i.i, %for.body.i.i.i.if.end33.i.i.i_crit_edge
  %disks.i.i.i.i = getelementptr i8, ptr %.pn95.i.i.i, i32 52
  %144 = ptrtoint ptr %disks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %disks.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not2.i.i.i.i = icmp eq i32 %145, 0
  br i1 %tobool.not2.i.i.i.i, label %if.end33.i.i.i.r5c_recovery_load_one_stripe.exit.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.end33.i.i.i.r5c_recovery_load_one_stripe.exit.i.i.i_crit_edge: ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_recovery_load_one_stripe.exit.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.end33.i.i.i
  %dev1.i.i.i.i = getelementptr i8, ptr %.pn95.i.i.i, i32 224
  br label %for.body.i82.i.i.i

for.body.i82.i.i.i:                               ; preds = %if.end.i85.i.i.i.for.body.i82.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %dec3.in.i.i.i.i = phi i32 [ %145, %for.body.lr.ph.i.i.i.i ], [ %dec3.i.i.i.i, %if.end.i85.i.i.i.for.body.i82.i.i.i_crit_edge ]
  %dec3.i.i.i.i = add i32 %dec3.in.i.i.i.i, -1
  %flags.i.i.i.i = getelementptr %struct.r5dev, ptr %dev1.i.i.i.i, i32 %dec3.i.i.i.i, i32 12
  %call.i81.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call.i81.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %for.body.i82.i.i.i.if.end.i85.i.i.i_crit_edge, label %if.then.i83.i.i.i

for.body.i82.i.i.i.if.end.i85.i.i.i_crit_edge:    ; preds = %for.body.i82.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i85.i.i.i

if.then.i83.i.i.i:                                ; preds = %for.body.i82.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 25, ptr noundef %flags.i.i.i.i) #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i.i.i) #12
  br label %if.end.i85.i.i.i

if.end.i85.i.i.i:                                 ; preds = %if.then.i83.i.i.i, %for.body.i82.i.i.i.if.end.i85.i.i.i_crit_edge
  %tobool.not.i84.i.i.i = icmp eq i32 %dec3.i.i.i.i, 0
  br i1 %tobool.not.i84.i.i.i, label %if.end.i85.i.i.i.r5c_recovery_load_one_stripe.exit.i.i.i_crit_edge, label %if.end.i85.i.i.i.for.body.i82.i.i.i_crit_edge

if.end.i85.i.i.i.for.body.i82.i.i.i_crit_edge:    ; preds = %if.end.i85.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i82.i.i.i

if.end.i85.i.i.i.r5c_recovery_load_one_stripe.exit.i.i.i_crit_edge: ; preds = %if.end.i85.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_recovery_load_one_stripe.exit.i.i.i

r5c_recovery_load_one_stripe.exit.i.i.i:          ; preds = %if.end.i85.i.i.i.r5c_recovery_load_one_stripe.exit.i.i.i_crit_edge, %if.end33.i.i.i.r5c_recovery_load_one_stripe.exit.i.i.i_crit_edge
  %146 = ptrtoint ptr %data_only_stripes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %data_only_stripes.i.i.i, align 4
  %inc41.i.i.i = add i32 %147, 1
  store i32 %inc41.i.i.i, ptr %data_only_stripes.i.i.i, align 4
  %148 = ptrtoint ptr %.pn95.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %.pn.i.i.i = load ptr, ptr %.pn95.i.i.i, align 8
  %cmp14.not.i.i.i = icmp eq ptr %.pn.i.i.i, %cached_list.i.i
  br i1 %cmp14.not.i.i.i, label %r5c_recovery_load_one_stripe.exit.i.i.i.if.end14.i.i_crit_edge, label %r5c_recovery_load_one_stripe.exit.i.i.i.for.body.i.i.i_crit_edge

r5c_recovery_load_one_stripe.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %r5c_recovery_load_one_stripe.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

r5c_recovery_load_one_stripe.exit.i.i.i.if.end14.i.i_crit_edge: ; preds = %r5c_recovery_load_one_stripe.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %r5c_recovery_load_one_stripe.exit.i.i.i.if.end14.i.i_crit_edge, %r5c_recovery_replay_stripes.exit.i.i.i.if.end14.i.i_crit_edge
  %149 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %pos2.i.i, align 8
  %151 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %seq.i.i, align 8
  %add.i104.i = add i64 %152, 10000
  store i64 %add.i104.i, ptr %seq.i.i, align 8
  %data_only_stripes.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 5
  %153 = ptrtoint ptr %data_only_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %data_only_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp17.i.i = icmp eq i32 %154, 0
  br i1 %cmp17.i.i, label %land.lhs.true.i.i, label %if.end14.i.i.do.end24.i.i_crit_edge

if.end14.i.i.do.end24.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24.i.i

land.lhs.true.i.i:                                ; preds = %if.end14.i.i
  %data_parity_stripes.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 4
  %155 = ptrtoint ptr %data_parity_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %data_parity_stripes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp18.i.i = icmp eq i32 %156, 0
  br i1 %cmp18.i.i, label %do.end.i.i, label %land.lhs.true.i.i.do.end24.i.i_crit_edge

land.lhs.true.i.i.do.end24.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i.i.i = getelementptr inbounds %struct.mddev, ptr %46, i32 0, i32 11
  %157 = ptrtoint ptr %gendisk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %gendisk.i.i.i, align 8
  %tobool.not.i108.i.i = icmp eq ptr %158, null
  %disk_name.i.i.i = getelementptr inbounds %struct.gendisk, ptr %158, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i108.i.i, ptr @.str.29, ptr %disk_name.i.i.i
  %call21.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %spec.select.i.i.i) #17
  br label %if.end30.i.i

do.end24.i.i:                                     ; preds = %land.lhs.true.i.i.do.end24.i.i_crit_edge, %if.end14.i.i.do.end24.i.i_crit_edge
  %gendisk.i109.i.i = getelementptr inbounds %struct.mddev, ptr %46, i32 0, i32 11
  %159 = ptrtoint ptr %gendisk.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %gendisk.i109.i.i, align 8
  %tobool.not.i110.i.i = icmp eq ptr %160, null
  %disk_name.i111.i.i = getelementptr inbounds %struct.gendisk, ptr %160, i32 0, i32 3
  %spec.select.i112.i.i = select i1 %tobool.not.i110.i.i, ptr @.str.29, ptr %disk_name.i111.i.i
  %data_parity_stripes28.i.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %call7.i.i.i.i, i32 0, i32 4
  %161 = ptrtoint ptr %data_parity_stripes28.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %data_parity_stripes28.i.i, align 8
  %call29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %spec.select.i112.i.i, i32 noundef %154, i32 noundef %162) #17
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %do.end24.i.i, %do.end.i.i
  %163 = ptrtoint ptr %data_only_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %data_only_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp32.i.i = icmp eq i32 %164, 0
  br i1 %cmp32.i.i, label %if.then33.i.i, label %if.else41.i.i

if.then33.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %165 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %pos2.i.i, align 8
  %next_checkpoint.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 8
  %167 = ptrtoint ptr %next_checkpoint.i.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %next_checkpoint.i.i, align 8
  %168 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %seq.i.i, align 8
  %inc.i.i = add i64 %169, 1
  store i64 %inc.i.i, ptr %seq.i.i, align 8
  tail call fastcc void @r5l_log_write_empty_meta_block(ptr noundef %log, i64 noundef %166, i64 noundef %169) #12
  %170 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %pos2.i.i, align 8
  %add.i113.i.i = add i64 %171, 8
  %172 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i113.i.i, i64 %173)
  %cmp.not.i.i.i = icmp ult i64 %add.i113.i.i, %173
  %sub.i.i.i = select i1 %cmp.not.i.i.i, i64 0, i64 %173
  %spec.select.i114.i.i = sub i64 %add.i113.i.i, %sub.i.i.i
  %174 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %spec.select.i114.i.i, ptr %pos2.i.i, align 8
  br label %if.end52.i.i

if.else41.i.i:                                    ; preds = %if.end30.i.i
  %175 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %log, align 8
  %mddev1.i = getelementptr inbounds %struct.md_rdev, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %mddev1.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %mddev1.i, align 8
  %call38.i.i.i.i8 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool.not.i9 = icmp eq ptr %call38.i.i.i.i8, null
  br i1 %tobool.not.i9, label %do.end47.i.i, label %if.end.i

if.end.i:                                         ; preds = %if.else41.i.i
  %179 = ptrtoint ptr %cached_list.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile ptr, ptr %cached_list.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %180, %cached_list.i.i
  br i1 %cmp.i.not.i, label %do.end17.i, label %if.end.i.if.end23.i_crit_edge, !prof !139

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2367, i32 noundef 9, ptr noundef null) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end17.i, %if.end.i.if.end23.i_crit_edge
  %181 = ptrtoint ptr %cached_list.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %.pn184.i = load ptr, ptr %cached_list.i.i, align 8
  %cmp.not186.i = icmp eq ptr %.pn184.i, %cached_list.i.i
  br i1 %cmp.not186.i, label %if.end23.i.r5c_recovery_rewrite_data_only_stripes.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end23.i.r5c_recovery_rewrite_data_only_stripes.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_recovery_rewrite_data_only_stripes.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end23.i
  %uuid_checksum.i13 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 1
  %stripe_in_journal_list.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 29
  %prev.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 29, i32 1
  %stripe_in_journal_count.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 31
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn187.i = phi ptr [ %.pn184.i, %for.body.lr.ph.i ], [ %.pn.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %sh.0188.i = getelementptr i8, ptr %.pn187.i, i32 -8
  %state.i = getelementptr i8, ptr %.pn187.i, i32 40
  %182 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %state.i, align 4
  %184 = and i32 %183, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool38.not.i = icmp eq i32 %184, 0
  br i1 %tobool38.not.i, label %do.end56.i, label %for.body.i.if.end62.i_crit_edge, !prof !139

for.body.i.if.end62.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

do.end56.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2375, i32 noundef 9, ptr noundef null) #12
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end56.i, %for.body.i.if.end62.i_crit_edge
  %185 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %pos2.i.i, align 8
  %187 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %seq.i.i, align 8
  %call.i.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i8) #12
  %189 = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %190 = call ptr @memset(ptr %189, i32 0, i32 4092)
  %191 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %191, i32 4)
  store i32 163918692, ptr %call.i.i, align 1
  %version.i.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call.i.i, i32 0, i32 2
  %192 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %version.i.i, align 1
  %meta_size.i.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call.i.i, i32 0, i32 5
  %193 = ptrtoint ptr %meta_size.i.i to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store i32 536870912, ptr %meta_size.i.i, align 1
  %194 = tail call i64 @llvm.bswap.i64(i64 %188) #12
  %seq1.i.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call.i.i, i32 0, i32 6
  %195 = ptrtoint ptr %seq1.i.i to i32
  call void @__asan_storeN_noabort(i32 %195, i32 8)
  store i64 %194, ptr %seq1.i.i, align 1
  %196 = tail call i64 @llvm.bswap.i64(i64 %186) #12
  %position.i.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call.i.i, i32 0, i32 7
  %197 = ptrtoint ptr %position.i.i to i32
  call void @__asan_storeN_noabort(i32 %197, i32 8)
  store i64 %196, ptr %position.i.i, align 1
  %call70.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i8) #12
  %meta_size.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call70.i, i32 0, i32 5
  %198 = ptrtoint ptr %meta_size.i to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %meta_size.i, align 1
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #12
  %201 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %pos2.i.i, align 8
  %add.i.i14 = add i64 %202, 8
  %203 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i14, i64 %204)
  %cmp.not.i.i15 = icmp ult i64 %add.i.i14, %204
  %sub.i.i16 = select i1 %cmp.not.i.i15, i64 0, i64 %204
  %spec.select.i170.i = sub i64 %add.i.i14, %sub.i.i16
  %disks.i = getelementptr i8, ptr %.pn187.i, i32 52
  %205 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %disks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool74.not179.i = icmp eq i32 %206, 0
  br i1 %tobool74.not179.i, label %if.end62.i.for.end.i_crit_edge, label %for.body75.lr.ph.i

if.end62.i.for.end.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body75.lr.ph.i:                               ; preds = %if.end62.i
  %dev76.i = getelementptr i8, ptr %.pn187.i, i32 224
  br label %for.body75.i

for.body75.i:                                     ; preds = %if.end96.i.for.body75.i_crit_edge, %for.body75.lr.ph.i
  %dec182.in.i = phi i32 [ %206, %for.body75.lr.ph.i ], [ %dec182.i, %if.end96.i.for.body75.i_crit_edge ]
  %write_pos.0181.i = phi i64 [ %spec.select.i170.i, %for.body75.lr.ph.i ], [ %write_pos.1.i, %if.end96.i.for.body75.i_crit_edge ]
  %offset.0180.i = phi i32 [ %200, %for.body75.lr.ph.i ], [ %offset.1.i, %if.end96.i.for.body75.i_crit_edge ]
  %dec182.i = add i32 %dec182.in.i, -1
  %arrayidx.i = getelementptr [1 x %struct.r5dev], ptr %dev76.i, i32 0, i32 %dec182.i
  %flags.i = getelementptr inbounds %struct.r5dev, ptr %arrayidx.i, i32 0, i32 12
  %207 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %flags.i, align 4
  %209 = and i32 %208, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool78.not.i = icmp eq i32 %209, 0
  br i1 %tobool78.not.i, label %for.body75.i.if.end96.i_crit_edge, label %if.then79.i

for.body75.i.if.end96.i_crit_edge:                ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.i

if.then79.i:                                      ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr80.i = getelementptr i8, ptr %call70.i, i32 %offset.0180.i
  %210 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 2)
  store i16 0, ptr %add.ptr80.i, align 1
  %size.i = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr80.i, i32 0, i32 1
  %211 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 4)
  store i32 134217728, ptr %size.i, align 1
  %call81.i = tail call i64 @raid5_compute_blocknr(ptr noundef %sh.0188.i, i32 noundef %dec182.i, i32 noundef 0) #12
  %212 = tail call i64 @llvm.bswap.i64(i64 %call81.i) #12
  %location.i = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr80.i, i32 0, i32 2
  %213 = ptrtoint ptr %location.i to i32
  call void @__asan_storeN_noabort(i32 %213, i32 8)
  store i64 %212, ptr %location.i, align 1
  %page82.i = getelementptr inbounds %struct.r5dev, ptr %arrayidx.i, i32 0, i32 4
  %214 = ptrtoint ptr %page82.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %page82.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %216 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %216, 512
  %217 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i.i = and i32 %217, -16384
  %218 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i17 = add i32 %220, 1
  store volatile i32 %add.i.i.i.i17, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %221 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i.i.i = and i32 %221, -16384
  %222 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %224, i32 0, i32 213
  %225 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %226, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %call.i.i171.i = tail call ptr @__kmap_local_page_prot(ptr noundef %215, i32 noundef %or.i.i) #12
  %227 = ptrtoint ptr %uuid_checksum.i13 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %uuid_checksum.i13, align 4
  %call84.i = tail call i32 @crc32c(i32 noundef %228, ptr noundef %call.i.i171.i, i32 noundef 4096) #12
  %229 = tail call i32 @llvm.bswap.i32(i32 %call84.i) #12
  %checksum.i18 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr80.i, i32 0, i32 3
  %230 = ptrtoint ptr %checksum.i18 to i32
  call void @__asan_storeN_noabort(i32 %230, i32 4)
  store i32 %229, ptr %checksum.i18, align 1
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i171.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %231 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i.i = and i32 %231, -16384
  %232 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %232, i32 0, i32 2
  %233 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %234, i32 0, i32 213
  %235 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %236, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %237 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i = and i32 %237, -16384
  %238 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i19 = add i32 %240, -1
  store volatile i32 %sub.i.i.i19, ptr %preempt_count.i.i.i.i, align 4
  %241 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %log, align 8
  %243 = ptrtoint ptr %page82.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %page82.i, align 8
  %call94.i = tail call i32 @sync_page_io(ptr noundef %242, i64 noundef %write_pos.0181.i, i32 noundef 4096, ptr noundef %244, i32 noundef 1, i32 noundef 0, i1 noundef zeroext false) #12
  %add.i172.i = add i64 %write_pos.0181.i, 8
  %245 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i172.i, i64 %246)
  %cmp.not.i174.i = icmp ult i64 %add.i172.i, %246
  %sub.i175.i = select i1 %cmp.not.i174.i, i64 0, i64 %246
  %spec.select.i176.i = sub i64 %add.i172.i, %sub.i175.i
  %add.i20 = add i32 %offset.0180.i, 20
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then79.i, %for.body75.i.if.end96.i_crit_edge
  %offset.1.i = phi i32 [ %add.i20, %if.then79.i ], [ %offset.0180.i, %for.body75.i.if.end96.i_crit_edge ]
  %write_pos.1.i = phi i64 [ %spec.select.i176.i, %if.then79.i ], [ %write_pos.0181.i, %for.body75.i.if.end96.i_crit_edge ]
  %tobool74.not.i = icmp eq i32 %dec182.i, 0
  br i1 %tobool74.not.i, label %if.end96.i.for.end.i_crit_edge, label %if.end96.i.for.body75.i_crit_edge

if.end96.i.for.body75.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body75.i

if.end96.i.for.end.i_crit_edge:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %if.end96.i.for.end.i_crit_edge, %if.end62.i.for.end.i_crit_edge
  %offset.0.lcssa.i = phi i32 [ %200, %if.end62.i.for.end.i_crit_edge ], [ %offset.1.i, %if.end96.i.for.end.i_crit_edge ]
  %write_pos.0.lcssa.i = phi i64 [ %spec.select.i170.i, %if.end62.i.for.end.i_crit_edge ], [ %write_pos.1.i, %if.end96.i.for.end.i_crit_edge ]
  %247 = tail call i32 @llvm.bswap.i32(i32 %offset.0.lcssa.i) #12
  %248 = ptrtoint ptr %meta_size.i to i32
  call void @__asan_storeN_noabort(i32 %248, i32 4)
  store i32 %247, ptr %meta_size.i, align 1
  %249 = ptrtoint ptr %uuid_checksum.i13 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %uuid_checksum.i13, align 4
  %call99.i = tail call i32 @crc32c(i32 noundef %250, ptr noundef %call70.i, i32 noundef 4096) #12
  %251 = tail call i32 @llvm.bswap.i32(i32 %call99.i) #12
  %checksum100.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call70.i, i32 0, i32 1
  %252 = ptrtoint ptr %checksum100.i to i32
  call void @__asan_storeN_noabort(i32 %252, i32 4)
  store i32 %251, ptr %checksum100.i, align 1
  %253 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %log, align 8
  %255 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %pos2.i.i, align 8
  %call103.i = tail call i32 @sync_page_io(ptr noundef %254, i64 noundef %256, i32 noundef 4096, ptr noundef nonnull %call38.i.i.i.i8, i32 noundef 1, i32 noundef 133120, i1 noundef zeroext false) #12
  %257 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %pos2.i.i, align 8
  %log_start.i21 = getelementptr i8, ptr %.pn187.i, i32 192
  %259 = ptrtoint ptr %log_start.i21 to i32
  call void @__asan_store8_noabort(i32 %259)
  store i64 %258, ptr %log_start.i21, align 8
  %r5c.i = getelementptr i8, ptr %.pn187.i, i32 200
  %260 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %prev.i.i, align 4
  %call.i.i177.i = tail call zeroext i1 @__list_add_valid(ptr noundef %r5c.i, ptr noundef %261, ptr noundef %stripe_in_journal_list.i) #12
  br i1 %call.i.i177.i, label %if.end.i.i.i22, label %for.end.i.list_add_tail.exit.i_crit_edge

for.end.i.list_add_tail.exit.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i22:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %262 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %r5c.i, ptr %prev.i.i, align 4
  %263 = ptrtoint ptr %r5c.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %stripe_in_journal_list.i, ptr %r5c.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %.pn187.i, i32 204
  %264 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %261, ptr %prev3.i.i.i, align 4
  %265 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %265)
  store volatile ptr %r5c.i, ptr %261, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i22, %for.end.i.list_add_tail.exit.i_crit_edge
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripe_in_journal_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %stripe_in_journal_count.i, i32 1, i32 3, i32 1) #12
  %266 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stripe_in_journal_count.i, ptr %stripe_in_journal_count.i, i32 1, ptr elementtype(i32) %stripe_in_journal_count.i) #12, !srcloc !140
  %267 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 %write_pos.0.lcssa.i, ptr %pos2.i.i, align 8
  %268 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %seq.i.i, align 8
  %add107.i = add i64 %269, 1
  store i64 %add107.i, ptr %seq.i.i, align 8
  %270 = ptrtoint ptr %.pn187.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %.pn.i = load ptr, ptr %.pn187.i, align 8
  %cmp.not.i24 = icmp eq ptr %.pn.i, %cached_list.i.i
  br i1 %cmp.not.i24, label %for.end114.loopexit.i, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end114.loopexit.i:                            ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %log_start.i21.le = getelementptr i8, ptr %.pn187.i, i32 192
  %271 = ptrtoint ptr %log_start.i21.le to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %log_start.i21.le, align 8
  br label %r5c_recovery_rewrite_data_only_stripes.exit.thread

r5c_recovery_rewrite_data_only_stripes.exit.thread: ; preds = %for.end114.loopexit.i, %if.end23.i.r5c_recovery_rewrite_data_only_stripes.exit.thread_crit_edge
  %next_checkpoint.0.lcssa.i = phi i64 [ -1, %if.end23.i.r5c_recovery_rewrite_data_only_stripes.exit.thread_crit_edge ], [ %272, %for.end114.loopexit.i ]
  %next_checkpoint115.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 8
  %273 = ptrtoint ptr %next_checkpoint115.i to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %next_checkpoint.0.lcssa.i, ptr %next_checkpoint115.i, align 8
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i8, i32 noundef 0) #12
  br label %if.end52.i.i

do.end47.i.i:                                     ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i.i = getelementptr inbounds %struct.mddev, ptr %178, i32 0, i32 11
  %274 = ptrtoint ptr %gendisk.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %gendisk.i.i, align 8
  %tobool.not.i.i10 = icmp eq ptr %275, null
  %disk_name.i.i = getelementptr inbounds %struct.gendisk, ptr %275, i32 0, i32 3
  %spec.select.i.i11 = select i1 %tobool.not.i.i10, ptr @.str.29, ptr %disk_name.i.i
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %spec.select.i.i11) #17
  %gendisk.i115.i.i = getelementptr inbounds %struct.mddev, ptr %46, i32 0, i32 11
  %276 = ptrtoint ptr %gendisk.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %gendisk.i115.i.i, align 8
  %tobool.not.i116.i.i = icmp eq ptr %277, null
  %disk_name.i117.i.i = getelementptr inbounds %struct.gendisk, ptr %277, i32 0, i32 3
  %spec.select.i118.i.i = select i1 %tobool.not.i116.i.i, ptr @.str.29, ptr %disk_name.i117.i.i
  %call50.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %spec.select.i118.i.i) #17
  br label %error.i.i

if.end52.i.i:                                     ; preds = %r5c_recovery_rewrite_data_only_stripes.exit.thread, %if.then33.i.i
  %278 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %pos2.i.i, align 8
  %log_start.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 6
  %280 = ptrtoint ptr %log_start.i.i to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 %279, ptr %log_start.i.i, align 8
  %281 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %seq.i.i, align 8
  %seq55.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 7
  %283 = ptrtoint ptr %seq55.i.i to i32
  call void @__asan_store8_noabort(i32 %283)
  store i64 %282, ptr %seq55.i.i, align 8
  %284 = ptrtoint ptr %last_checkpoint.i to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %150, ptr %last_checkpoint.i, align 8
  %285 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %log, align 8
  %mddev1.i.i.i = getelementptr inbounds %struct.md_rdev, ptr %286, i32 0, i32 2
  %287 = ptrtoint ptr %mddev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %mddev1.i.i.i, align 8
  %289 = getelementptr inbounds %struct.md_rdev, ptr %286, i32 0, i32 22
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store8_noabort(i32 %290)
  store i64 %150, ptr %289, align 8
  %sb_flags.i.i.i = getelementptr inbounds %struct.mddev, ptr %288, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sb_flags.i.i.i) #12
  %291 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %log, align 8
  %mddev1.i105.i = getelementptr inbounds %struct.md_rdev, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %mddev1.i105.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %mddev1.i105.i, align 8
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %294, align 8
  %297 = ptrtoint ptr %data_only_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %data_only_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %cmp.i.i = icmp eq i32 %298, 0
  br i1 %cmp.i.i, label %if.end52.i.i.error.i.i_crit_edge, label %if.end.i109.i

if.end52.i.i.error.i.i_crit_edge:                 ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i.i

if.end.i109.i:                                    ; preds = %if.end52.i.i
  %sb_flags.i107.i = getelementptr inbounds %struct.mddev, ptr %294, i32 0, i32 6
  %299 = ptrtoint ptr %sb_flags.i107.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load volatile i32, ptr %sb_flags.i107.i, align 4
  %301 = and i32 %300, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool.not.i108.i = icmp eq i32 %301, 0
  br i1 %tobool.not.i108.i, label %if.end.i109.i.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i109.i.if.end4.i.i_crit_edge:              ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %sb_flags.i107.i) #12
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i109.i.if.end4.i.i_crit_edge
  %r5c_journal_mode.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 28
  %302 = ptrtoint ptr %r5c_journal_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 1, ptr %r5c_journal_mode.i.i, align 4
  %303 = ptrtoint ptr %cached_list.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %cached_list.i.i, align 8
  %cmp12.not72.i.i = icmp eq ptr %304, %cached_list.i.i
  br i1 %cmp12.not72.i.i, label %if.end4.i.i.do.body19.i.i_crit_edge, label %if.end4.i.i.for.body.i.i_crit_edge

if.end4.i.i.for.body.i.i_crit_edge:               ; preds = %if.end4.i.i
  br label %for.body.i.i

if.end4.i.i.do.body19.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19.i.i

for.body.i.i:                                     ; preds = %list_del_init.exit.i.i.for.body.i.i_crit_edge, %if.end4.i.i.for.body.i.i_crit_edge
  %.pn.in73.i.i = phi ptr [ %.pn.i.i, %list_del_init.exit.i.i.for.body.i.i_crit_edge ], [ %304, %if.end4.i.i.for.body.i.i_crit_edge ]
  %sh.0.i.i = getelementptr i8, ptr %.pn.in73.i.i, i32 -8
  %305 = ptrtoint ptr %.pn.in73.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %.pn.i.i = load ptr, ptr %.pn.in73.i.i, align 8
  tail call void @r5c_make_stripe_write_out(ptr noundef %sh.0.i.i) #12
  %state.i.i = getelementptr i8, ptr %.pn.in73.i.i, i32 40
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #12
  %call.i.i69.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in73.i.i) #12
  br i1 %call.i.i69.i.i, label %if.end.i.i.i111.i, label %for.body.i.i.list_del_init.exit.i.i_crit_edge

for.body.i.i.list_del_init.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i.i111.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in73.i.i, i32 0, i32 1
  %306 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %prev.i.i.i.i, align 4
  %308 = ptrtoint ptr %.pn.in73.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %.pn.in73.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %309, i32 0, i32 1
  %310 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %307, ptr %prev1.i.i.i.i.i, align 4
  %311 = ptrtoint ptr %307 to i32
  call void @__asan_store4_noabort(i32 %311)
  store volatile ptr %309, ptr %307, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i111.i, %for.body.i.i.list_del_init.exit.i.i_crit_edge
  %312 = ptrtoint ptr %.pn.in73.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store volatile ptr %.pn.in73.i.i, ptr %.pn.in73.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in73.i.i, i32 0, i32 1
  %313 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %.pn.in73.i.i, ptr %prev.i3.i.i.i, align 4
  tail call void @raid5_release_stripe(ptr noundef %sh.0.i.i) #12
  %cmp12.not.i.i = icmp eq ptr %.pn.i.i, %cached_list.i.i
  br i1 %cmp12.not.i.i, label %list_del_init.exit.i.i.do.body19.i.i_crit_edge, label %list_del_init.exit.i.i.for.body.i.i_crit_edge

list_del_init.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

list_del_init.exit.i.i.do.body19.i.i_crit_edge:   ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19.i.i

do.body19.i.i:                                    ; preds = %list_del_init.exit.i.i.do.body19.i.i_crit_edge, %if.end4.i.i.do.body19.i.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2451) #12
  %active_stripes.i.i = getelementptr inbounds %struct.r5conf, ptr %296, i32 0, i32 49
  %call.i.i.i112.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_stripes.i.i, i32 noundef 4) #12
  %314 = ptrtoint ptr %active_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load volatile i32, ptr %active_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %cmp24.i.i = icmp eq i32 %315, 0
  br i1 %cmp24.i.i, label %do.body19.i.i.do.end38.i.i_crit_edge, label %if.end26.i.i

do.body19.i.i.do.end38.i.i_crit_edge:             ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38.i.i

if.end26.i.i:                                     ; preds = %do.body19.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #12
  %316 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #12
  %wait_for_quiescent.i.i = getelementptr inbounds %struct.r5conf, ptr %296, i32 0, i32 59
  %call2875.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait_for_quiescent.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #12
  %call.i.i6876.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_stripes.i.i, i32 noundef 4) #12
  %317 = ptrtoint ptr %active_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load volatile i32, ptr %active_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %cmp3177.i.i = icmp eq i32 %318, 0
  br i1 %cmp3177.i.i, label %if.end26.i.i.for.end34.i.i_crit_edge, label %if.end26.i.i.cleanup.i.i_crit_edge

if.end26.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end26.i.i
  br label %cleanup.i.i

if.end26.i.i.for.end34.i.i_crit_edge:             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.end26.i.i.cleanup.i.i_crit_edge
  call void @schedule() #12
  %call28.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait_for_quiescent.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #12
  %call.i.i68.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_stripes.i.i, i32 noundef 4) #12
  %319 = ptrtoint ptr %active_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load volatile i32, ptr %active_stripes.i.i, align 4
  %cmp31.i.i = icmp eq i32 %320, 0
  br i1 %cmp31.i.i, label %cleanup.i.i.for.end34.i.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

cleanup.i.i.for.end34.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34.i.i

for.end34.i.i:                                    ; preds = %cleanup.i.i.for.end34.i.i_crit_edge, %if.end26.i.i.for.end34.i.i_crit_edge
  call void @finish_wait(ptr noundef %wait_for_quiescent.i.i, ptr noundef nonnull %__wq_entry.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #12
  br label %do.end38.i.i

do.end38.i.i:                                     ; preds = %for.end34.i.i, %do.body19.i.i.do.end38.i.i_crit_edge
  %321 = ptrtoint ptr %r5c_journal_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 0, ptr %r5c_journal_mode.i.i, align 4
  br i1 %tobool.not.i108.i, label %do.end38.i.i.error.i.i_crit_edge, label %if.then41.i.i

do.end38.i.i.error.i.i_crit_edge:                 ; preds = %do.end38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i.i

if.then41.i.i:                                    ; preds = %do.end38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 2, ptr noundef %sb_flags.i107.i) #12
  br label %error.i.i

error.i.i:                                        ; preds = %if.then41.i.i, %do.end38.i.i.error.i.i_crit_edge, %if.end52.i.i.error.i.i_crit_edge, %do.end47.i.i, %list_del_init.exit.i.i.i.i.error.i.i_crit_edge, %if.then8.i.i.i.error.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -5, %do.end47.i.i ], [ -12, %if.then8.i.i.i.error.i.i_crit_edge ], [ 0, %if.end52.i.i.error.i.i_crit_edge ], [ 0, %do.end38.i.i.error.i.i_crit_edge ], [ 0, %if.then41.i.i ], [ -12, %list_del_init.exit.i.i.i.i.error.i.i_crit_edge ]
  call fastcc void @r5l_recovery_free_ra_pool(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %ra_pool.i.i

ra_pool.i.i:                                      ; preds = %error.i.i, %if.then11.i.i.i, %if.end7.i.i.ra_pool.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %ret.0.i.i, %error.i.i ], [ -12, %if.then11.i.i.i ], [ -12, %if.end7.i.i.ra_pool.i.i_crit_edge ]
  %322 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %call7.i.i.i.i, align 8
  call void @__free_pages(ptr noundef %323, i32 noundef 0) #12
  br label %r5l_load_log.exit

r5l_load_log.exit:                                ; preds = %ra_pool.i.i, %if.end.i.i.r5l_load_log.exit_crit_edge
  %ret.2.i.i = phi i32 [ %ret.1.i.i, %ra_pool.i.i ], [ -12, %if.end.i.i.r5l_load_log.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  call fastcc void @r5c_update_log_state(ptr noundef %log) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i.i)
  %tobool1.not = icmp eq i32 %ret.2.i.i, 0
  br i1 %tobool1.not, label %r5l_load_log.exit.cleanup_crit_edge, label %r5l_load_log.exit.if.then2_crit_edge

r5l_load_log.exit.if.then2_crit_edge:             ; preds = %r5l_load_log.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

r5l_load_log.exit.cleanup_crit_edge:              ; preds = %r5l_load_log.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %r5l_load_log.exit.if.then2_crit_edge, %r5l_load_log.exit.thread34, %if.then8.i, %if.end.if.then2_crit_edge
  %retval.0.i30 = phi i32 [ %ret.2.i.i, %r5l_load_log.exit.if.then2_crit_edge ], [ -12, %r5l_load_log.exit.thread34 ], [ -12, %if.end.if.then2_crit_edge ], [ -5, %if.then8.i ]
  %324 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %log, align 8
  %mddev3 = getelementptr inbounds %struct.md_rdev, ptr %325, i32 0, i32 2
  %326 = ptrtoint ptr %mddev3 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %mddev3, align 8
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %327, align 8
  %log1.i = getelementptr inbounds %struct.r5conf, ptr %329, i32 0, i32 73
  %330 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %log1.i, align 8
  store ptr null, ptr %log1.i, align 8
  call void @synchronize_rcu() #12
  %mddev.i = getelementptr inbounds %struct.r5conf, ptr %329, i32 0, i32 2
  %332 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %mddev.i, align 4
  %sb_wait.i = getelementptr inbounds %struct.mddev, ptr %333, i32 0, i32 77
  call void @__wake_up(ptr noundef %sb_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %disable_writeback_work.i = getelementptr inbounds %struct.r5l_log, ptr %331, i32 0, i32 33
  %call.i = call zeroext i1 @flush_work(ptr noundef %disable_writeback_work.i) #12
  %reclaim_thread.i = getelementptr inbounds %struct.r5l_log, ptr %331, i32 0, i32 22
  call void @md_unregister_thread(ptr noundef %reclaim_thread.i) #12
  %meta_pool.i = getelementptr inbounds %struct.r5l_log, ptr %331, i32 0, i32 21
  call void @mempool_exit(ptr noundef %meta_pool.i) #12
  %bs.i = getelementptr inbounds %struct.r5l_log, ptr %331, i32 0, i32 20
  call void @bioset_exit(ptr noundef %bs.i) #12
  %io_pool.i = getelementptr inbounds %struct.r5l_log, ptr %331, i32 0, i32 19
  call void @mempool_exit(ptr noundef %io_pool.i) #12
  %io_kc.i = getelementptr inbounds %struct.r5l_log, ptr %331, i32 0, i32 18
  %334 = ptrtoint ptr %io_kc.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %io_kc.i, align 8
  call void @kmem_cache_destroy(ptr noundef %335) #12
  call void @kfree(ptr noundef %331) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %r5l_load_log.exit.cleanup_crit_edge, %r5l_load_log.exit.thread31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i30, %if.then2 ], [ 0, %r5l_load_log.exit.cleanup_crit_edge ], [ 0, %r5l_load_log.exit.thread31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5l_exit_log(ptr nocapture noundef %conf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %log1 = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 73
  %0 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log1, align 8
  store ptr null, ptr %log1, align 8
  tail call void @synchronize_rcu() #12
  %mddev = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 2
  %2 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mddev, align 4
  %sb_wait = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 77
  tail call void @__wake_up(ptr noundef %sb_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %disable_writeback_work = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 33
  %call = tail call zeroext i1 @flush_work(ptr noundef %disable_writeback_work) #12
  %reclaim_thread = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 22
  tail call void @md_unregister_thread(ptr noundef %reclaim_thread) #12
  %meta_pool = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 21
  tail call void @mempool_exit(ptr noundef %meta_pool) #12
  %bs = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 20
  tail call void @bioset_exit(ptr noundef %bs) #12
  %io_pool = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 19
  tail call void @mempool_exit(ptr noundef %io_pool) #12
  %io_kc = getelementptr inbounds %struct.r5l_log, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %io_kc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_kc, align 8
  tail call void @kmem_cache_destroy(ptr noundef %5) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r5c_update_on_rdev_error(ptr nocapture noundef readonly %mddev, ptr noundef %rdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %log1 = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @raid5_calc_degraded(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.end.land.lhs.true_crit_edge, label %lor.lhs.false

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 16
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %7 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log1, align 8
  %r5c_journal_mode = getelementptr inbounds %struct.r5l_log, ptr %8, i32 0, i32 28
  %9 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r5c_journal_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %disable_writeback_work = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %disable_writeback_work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r5l_init_log(ptr noundef %conf, ptr noundef %rdev) local_unnamed_addr #1 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 5
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #12
  %4 = call ptr @memset(ptr %b, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r5l_init_log.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r5l_init_log, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !162

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mddev = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 2
  %5 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mddev, align 4
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.29, ptr %disk_name.i
  %9 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev, align 4
  %call6 = call ptr @bdevname(ptr noundef %10, ptr noundef nonnull %b) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r5l_init_log.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.7, ptr noundef %spec.select.i, ptr noundef %call6) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %raid_disks = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 8
  %11 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %raid_disks, align 4
  %mul = mul i32 %12, 20
  %13 = add i32 %mul, -4065
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %13)
  %cmp = icmp ult i32 %13, -4097
  br i1 %cmp, label %do.end10, label %if.end16

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %mddev12 = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 2
  %14 = ptrtoint ptr %mddev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mddev12, align 4
  %gendisk.i202 = getelementptr inbounds %struct.mddev, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %gendisk.i202 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gendisk.i202, align 8
  %tobool.not.i203 = icmp eq ptr %17, null
  %disk_name.i204 = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 3
  %spec.select.i205 = select i1 %tobool.not.i203, ptr @.str.29, ptr %disk_name.i204
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %spec.select.i205, i32 noundef %12) #17
  br label %cleanup

if.end16:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 1560) #16
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rdev, ptr %call7.i.i, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %queue_flags, align 4
  %need_cache_flush = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 27
  %22 = lshr i32 %21, 17
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = ptrtoint ptr %need_cache_flush to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %need_cache_flush, align 8
  %mddev25 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 2
  %26 = ptrtoint ptr %mddev25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mddev25, align 8
  %uuid = getelementptr inbounds %struct.mddev, ptr %27, i32 0, i32 33
  %call27 = call i32 @crc32c(i32 noundef -1, ptr noundef %uuid, i32 noundef 16) #12
  %uuid_checksum = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %uuid_checksum to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call27, ptr %uuid_checksum, align 4
  %io_mutex = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 9
  call void @__mutex_init(ptr noundef %io_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @r5l_init_log.__key) #12
  %io_list_lock = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %io_list_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @r5l_init_log.__key.10, i16 noundef signext 3) #12
  %running_ios = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 12
  %29 = ptrtoint ptr %running_ios to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %running_ios, ptr %running_ios, align 4
  %prev.i = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %running_ios, ptr %prev.i, align 8
  %io_end_ios = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 13
  %31 = ptrtoint ptr %io_end_ios to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %io_end_ios, ptr %io_end_ios, align 4
  %prev.i206 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 13, i32 1
  %32 = ptrtoint ptr %prev.i206 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %io_end_ios, ptr %prev.i206, align 8
  %flushing_ios = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 14
  %33 = ptrtoint ptr %flushing_ios to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %flushing_ios, ptr %flushing_ios, align 4
  %prev.i207 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %prev.i207 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %flushing_ios, ptr %prev.i207, align 8
  %finished_ios = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 15
  %35 = ptrtoint ptr %finished_ios to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %finished_ios, ptr %finished_ios, align 4
  %prev.i208 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %prev.i208 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %finished_ios, ptr %prev.i208, align 8
  %flush_bio = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 16
  call void @bio_init(ptr noundef %flush_bio, ptr noundef null, i16 noundef zeroext 0) #12
  %call35 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.12, i32 noundef 88, i32 noundef 8, i32 noundef 0, ptr noundef null) #12
  %io_kc = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 18
  %37 = ptrtoint ptr %io_kc to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call35, ptr %io_kc, align 8
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %if.end20.io_kc142_crit_edge, label %if.end39

if.end20.io_kc142_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %io_kc142

if.end39:                                         ; preds = %if.end20
  %io_pool = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 19
  %call.i = call i32 @mempool_init(ptr noundef %io_pool, i32 noundef 4, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool42.not = icmp eq i32 %call.i, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.io_pool140_crit_edge

if.end39.io_pool140_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %io_pool140

if.end44:                                         ; preds = %if.end39
  %bs = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 20
  %call45 = call i32 @bioset_init(ptr noundef %bs, i32 noundef 4, i32 noundef 0, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.io_bs_crit_edge

if.end44.io_bs_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %io_bs

if.end48:                                         ; preds = %if.end44
  %meta_pool = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 21
  %call.i209 = call i32 @mempool_init(ptr noundef %meta_pool, i32 noundef 4, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool50.not = icmp eq i32 %call.i209, 0
  br i1 %tobool50.not, label %do.body53, label %if.end48.out_mempool_crit_edge

if.end48.out_mempool_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_mempool

do.body53:                                        ; preds = %if.end48
  %tree_lock = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 34
  call void @__raw_spin_lock_init(ptr noundef %tree_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @r5l_init_log.__key.13, i16 noundef signext 3) #12
  %big_stripe_tree = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 35
  call void @__raw_spin_lock_init(ptr noundef %big_stripe_tree, ptr noundef nonnull @.str.55, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 35, i32 1
  %38 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10240, ptr %xa_flags.i, align 8
  %xa_head.i = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 35, i32 2
  %39 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %xa_head.i, align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  %mddev58 = getelementptr inbounds %struct.md_rdev, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %mddev58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mddev58, align 8
  %call59 = call ptr @md_register_thread(ptr noundef nonnull @r5l_reclaim_thread, ptr noundef %43, ptr noundef nonnull @.str.15) #12
  %reclaim_thread = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 22
  %44 = ptrtoint ptr %reclaim_thread to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call59, ptr %reclaim_thread, align 8
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %reclaim_thread136, label %if.end63

if.end63:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %timeout = getelementptr inbounds %struct.md_thread, ptr %call59, i32 0, i32 5
  %45 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3000, ptr %timeout, align 4
  %iounit_wait = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 24
  call void @__init_waitqueue_head(ptr noundef %iounit_wait, ptr noundef nonnull @.str.17, ptr noundef nonnull @r5l_init_log.__key.16) #12
  %no_mem_stripes = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 17
  %46 = ptrtoint ptr %no_mem_stripes to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %no_mem_stripes, ptr %no_mem_stripes, align 8
  %prev.i210 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 17, i32 1
  %47 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %no_mem_stripes, ptr %prev.i210, align 4
  %no_space_stripes = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 25
  %48 = ptrtoint ptr %no_space_stripes to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %no_space_stripes, ptr %no_space_stripes, align 4
  %prev.i211 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 25, i32 1
  %49 = ptrtoint ptr %prev.i211 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %no_space_stripes, ptr %prev.i211, align 8
  %no_space_stripes_lock = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 26
  call void @__raw_spin_lock_init(ptr noundef %no_space_stripes_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @r5l_init_log.__key.18, i16 noundef signext 3) #12
  %deferred_io_work = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 32
  call void @__init_work(ptr noundef %deferred_io_work, i32 noundef 0) #12
  %50 = ptrtoint ptr %deferred_io_work to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -64, ptr %deferred_io_work, align 8
  %lockdep_map = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 32, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @r5l_init_log.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry76 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 32, i32 1
  %51 = ptrtoint ptr %entry76 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry76, ptr %entry76, align 4
  %prev.i212 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 32, i32 1, i32 1
  %52 = ptrtoint ptr %prev.i212 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entry76, ptr %prev.i212, align 8
  %func = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 32, i32 2
  %53 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @r5l_submit_io_async, ptr %func, align 4
  %disable_writeback_work = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 33
  call void @__init_work(ptr noundef %disable_writeback_work, i32 noundef 0) #12
  %54 = ptrtoint ptr %disable_writeback_work to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -64, ptr %disable_writeback_work, align 4
  %lockdep_map86 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 33, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map86, ptr noundef nonnull @.str.23, ptr noundef nonnull @r5l_init_log.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry88 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 33, i32 1
  %55 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %entry88, ptr %entry88, align 8
  %prev.i213 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 33, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i213 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry88, ptr %prev.i213, align 4
  %func90 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 33, i32 2
  %57 = ptrtoint ptr %func90 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @r5c_disable_writeback_async, ptr %func90, align 8
  %r5c_journal_mode = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 28
  %58 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %r5c_journal_mode, align 4
  %stripe_in_journal_list = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 29
  %59 = ptrtoint ptr %stripe_in_journal_list to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %stripe_in_journal_list, ptr %stripe_in_journal_list, align 8
  %prev.i214 = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 29, i32 1
  %60 = ptrtoint ptr %prev.i214 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %stripe_in_journal_list, ptr %prev.i214, align 4
  %stripe_in_journal_lock = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 30
  call void @__raw_spin_lock_init(ptr noundef %stripe_in_journal_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @r5l_init_log.__key.24, i16 noundef signext 3) #12
  %stripe_in_journal_count = getelementptr inbounds %struct.r5l_log, ptr %call7.i.i, i32 0, i32 31
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %stripe_in_journal_count, i32 noundef 4) #12
  %61 = ptrtoint ptr %stripe_in_journal_count to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %stripe_in_journal_count, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !172
  %log123 = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 73
  %62 = ptrtoint ptr %log123 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call7.i.i, ptr %log123, align 8
  %mddev135 = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 2
  %63 = ptrtoint ptr %mddev135 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mddev135, align 4
  %flags = getelementptr inbounds %struct.mddev, ptr %64, i32 0, i32 5
  call void @_set_bit(i32 noundef 3, ptr noundef %flags) #12
  br label %cleanup

reclaim_thread136:                                ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  call void @mempool_exit(ptr noundef %meta_pool) #12
  br label %out_mempool

out_mempool:                                      ; preds = %reclaim_thread136, %if.end48.out_mempool_crit_edge
  call void @bioset_exit(ptr noundef %bs) #12
  br label %io_bs

io_bs:                                            ; preds = %out_mempool, %if.end44.io_bs_crit_edge
  call void @mempool_exit(ptr noundef %io_pool) #12
  br label %io_pool140

io_pool140:                                       ; preds = %io_bs, %if.end39.io_pool140_crit_edge
  %65 = ptrtoint ptr %io_kc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_kc, align 8
  call void @kmem_cache_destroy(ptr noundef %66) #12
  br label %io_kc142

io_kc142:                                         ; preds = %io_pool140, %if.end20.io_kc142_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %io_kc142, %if.end63, %if.end16.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ -22, %io_kc142 ], [ 0, %if.end63 ], [ -12, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @md_register_thread(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r5l_reclaim_thread(ptr nocapture noundef readonly %thread) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mddev1 = getelementptr inbounds %struct.md_thread, ptr %thread, i32 0, i32 1
  %0 = ptrtoint ptr %mddev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %log2 = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 73
  %4 = ptrtoint ptr %log2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log2, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %r5c_is_writeback.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

r5c_is_writeback.exit.i:                          ; preds = %entry
  %r5c_journal_mode.i.i = getelementptr inbounds %struct.r5l_log, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %r5c_journal_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r5c_journal_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i.i = icmp eq i32 %7, 1
  br i1 %cmp1.i.i, label %if.end.i, label %r5c_is_writeback.exit.i.r5c_do_reclaim.exit_crit_edge

r5c_is_writeback.exit.i.r5c_do_reclaim.exit_crit_edge: ; preds = %r5c_is_writeback.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_do_reclaim.exit

if.end.i:                                         ; preds = %r5c_is_writeback.exit.i
  %r5c_flushing_partial_stripes.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 56
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r5c_flushing_partial_stripes.i, i32 noundef 4) #12
  %8 = ptrtoint ptr %r5c_flushing_partial_stripes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %r5c_flushing_partial_stripes.i, align 4
  %r5c_flushing_full_stripes.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 55
  %call.i.i122.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r5c_flushing_full_stripes.i, i32 noundef 4) #12
  %10 = ptrtoint ptr %r5c_flushing_full_stripes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %r5c_flushing_full_stripes.i, align 4
  %r5c_cached_partial_stripes.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 53
  %call.i.i123.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r5c_cached_partial_stripes.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %r5c_cached_partial_stripes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %r5c_cached_partial_stripes.i, align 4
  %r5c_cached_full_stripes.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 51
  %call.i.i124.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r5c_cached_full_stripes.i, i32 noundef 4) #12
  %14 = ptrtoint ptr %r5c_cached_full_stripes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %r5c_cached_full_stripes.i, align 4
  %16 = add i32 %11, %9
  %add.i = sub i32 %13, %16
  %sub6.i = add i32 %add.i, %15
  %min_nr_stripes.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %min_nr_stripes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %min_nr_stripes.i, align 4
  %mul.i = mul i32 %18, 3
  %div.i = sdiv i32 %mul.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %div.i)
  %cmp.i = icmp sgt i32 %sub6.i, %div.i
  br i1 %cmp.i, label %if.end.i.do.body26.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.body26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %empty_inactive_list_nr.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 57
  %call.i.i125.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %empty_inactive_list_nr.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %empty_inactive_list_nr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %empty_inactive_list_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp8.i = icmp sgt i32 %20, 0
  br i1 %cmp8.i, label %lor.lhs.false.i.do.body26.i_crit_edge, label %if.else.i

lor.lhs.false.i.do.body26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %21 = ptrtoint ptr %min_nr_stripes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_nr_stripes.i, align 4
  %div12.i = sdiv i32 %22, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %div12.i)
  %cmp13.i = icmp sgt i32 %sub6.i, %div12.i
  br i1 %cmp13.i, label %if.else.i.do.body26.i_crit_edge, label %if.end23.i

if.else.i.do.body26.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26.i

if.end23.i:                                       ; preds = %if.else.i
  %call.i.i126.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r5c_cached_full_stripes.i, i32 noundef 4) #12
  %23 = ptrtoint ptr %r5c_cached_full_stripes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %r5c_cached_full_stripes.i, align 4
  %sub17.i = sub i32 %24, %11
  %max_nr_stripes.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %max_nr_stripes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_nr_stripes.i, align 8
  %div18.i = sdiv i32 %26, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17.i, i32 %div18.i)
  %cmp19.i = icmp sgt i32 %sub17.i, %div18.i
  br i1 %cmp19.i, label %if.end23.i.do.body26.i_crit_edge, label %if.end23.i.if.end33.i_crit_edge

if.end23.i.if.end33.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.end23.i.do.body26.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26.i

do.body26.i:                                      ; preds = %if.end23.i.do.body26.i_crit_edge, %if.else.i.do.body26.i_crit_edge, %lor.lhs.false.i.do.body26.i_crit_edge, %if.end.i.do.body26.i_crit_edge
  %stripes_to_flush.0134.i = phi i32 [ 0, %if.end23.i.do.body26.i_crit_edge ], [ 0, %if.else.i.do.body26.i_crit_edge ], [ 16, %if.end.i.do.body26.i_crit_edge ], [ 16, %lor.lhs.false.i.do.body26.i_crit_edge ]
  %device_lock.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 65
  %call29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %device_lock.i) #12
  tail call void @r5c_flush_cache(ptr noundef %3, i32 noundef %stripes_to_flush.0134.i) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %device_lock.i, i32 noundef %call29.i) #12
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.body26.i, %if.end23.i.if.end33.i_crit_edge
  %cache_state.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 62
  %27 = ptrtoint ptr %cache_state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %cache_state.i, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.end33.i.if.end76.i_crit_edge, label %do.body37.i

if.end33.i.if.end76.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

do.body37.i:                                      ; preds = %if.end33.i
  %stripe_in_journal_lock.i = getelementptr inbounds %struct.r5l_log, ptr %5, i32 0, i32 30
  %call44.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stripe_in_journal_lock.i) #12
  %device_lock49.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 65
  tail call void @_raw_spin_lock(ptr noundef %device_lock49.i) #12
  %stripe_in_journal_list.i = getelementptr inbounds %struct.r5l_log, ptr %5, i32 0, i32 29
  %30 = ptrtoint ptr %stripe_in_journal_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn137.i = load ptr, ptr %stripe_in_journal_list.i, align 8
  %cmp52.not139.i = icmp eq ptr %.pn137.i, %stripe_in_journal_list.i
  br i1 %cmp52.not139.i, label %do.body37.i.for.end.i_crit_edge, label %do.body37.i.for.body.i_crit_edge

do.body37.i.for.body.i_crit_edge:                 ; preds = %do.body37.i
  br label %for.body.i

do.body37.i.for.end.i_crit_edge:                  ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body37.i.for.body.i_crit_edge
  %.pn141.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn137.i, %do.body37.i.for.body.i_crit_edge ]
  %count.0140.i = phi i32 [ %count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.body37.i.for.body.i_crit_edge ]
  %sh.0142.i = getelementptr i8, ptr %.pn141.i, i32 -208
  %lru.i = getelementptr i8, ptr %.pn141.i, i32 -200
  %31 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %32, %lru.i
  br i1 %cmp.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %state.i = getelementptr i8, ptr %.pn141.i, i32 -160
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool57.not.i = icmp eq i32 %35, 0
  br i1 %tobool57.not.i, label %land.lhs.true58.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true58.i:                                ; preds = %land.lhs.true.i
  %count59.i = getelementptr i8, ptr %.pn141.i, i32 -156
  %call.i.i129.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count59.i, i32 noundef 4) #12
  %36 = ptrtoint ptr %count59.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %count59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp61.i = icmp eq i32 %37, 0
  br i1 %cmp61.i, label %if.then63.i, label %land.lhs.true58.i.for.inc.i_crit_edge

land.lhs.true58.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then63.i:                                      ; preds = %land.lhs.true58.i
  tail call fastcc void @r5c_flush_stripe(ptr noundef %3, ptr noundef %sh.0142.i) #12
  %inc.i = add i32 %count.0140.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count.0140.i)
  %cmp64.i = icmp sgt i32 %count.0140.i, 15
  br i1 %cmp64.i, label %if.then63.i.for.end.i_crit_edge, label %if.then63.i.for.inc.i_crit_edge

if.then63.i.for.inc.i_crit_edge:                  ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then63.i.for.end.i_crit_edge:                  ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then63.i.for.inc.i_crit_edge, %land.lhs.true58.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %count.0140.i, %for.body.i.for.inc.i_crit_edge ], [ %count.0140.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %inc.i, %if.then63.i.for.inc.i_crit_edge ], [ %count.0140.i, %land.lhs.true58.i.for.inc.i_crit_edge ]
  %38 = ptrtoint ptr %.pn141.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i = load ptr, ptr %.pn141.i, align 8
  %cmp52.not.i = icmp eq ptr %.pn.i, %stripe_in_journal_list.i
  br i1 %cmp52.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then63.i.for.end.i_crit_edge, %do.body37.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %device_lock49.i) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stripe_in_journal_lock.i, i32 noundef %call44.i) #12
  br label %if.end76.i

if.end76.i:                                       ; preds = %for.end.i, %if.end33.i.if.end76.i_crit_edge
  %39 = ptrtoint ptr %cache_state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %cache_state.i, align 4
  %41 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool79.not.i = icmp eq i32 %41, 0
  br i1 %tobool79.not.i, label %if.then80.i, label %if.end76.i.if.end81.i_crit_edge

if.end76.i.if.end81.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.then80.i:                                      ; preds = %if.end76.i
  %no_space_stripes_lock.i.i = getelementptr inbounds %struct.r5l_log, ptr %5, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %no_space_stripes_lock.i.i) #12
  %no_space_stripes.i.i = getelementptr inbounds %struct.r5l_log, ptr %5, i32 0, i32 25
  %42 = ptrtoint ptr %no_space_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %no_space_stripes.i.i, align 4
  %cmp.i.not8.i.i = icmp eq ptr %43, %no_space_stripes.i.i
  br i1 %cmp.i.not8.i.i, label %if.then80.i.r5l_run_no_space_stripes.exit.i_crit_edge, label %if.then80.i.while.body.i.i_crit_edge

if.then80.i.while.body.i.i_crit_edge:             ; preds = %if.then80.i
  br label %while.body.i.i

if.then80.i.r5l_run_no_space_stripes.exit.i_crit_edge: ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_run_no_space_stripes.exit.i

while.body.i.i:                                   ; preds = %list_del_init.exit.i.i.while.body.i.i_crit_edge, %if.then80.i.while.body.i.i_crit_edge
  %44 = phi ptr [ %54, %list_del_init.exit.i.i.while.body.i.i_crit_edge ], [ %43, %if.then80.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 -188
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del_init.exit.i.i_crit_edge

while.body.i.i.list_del_init.exit.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del_init.exit.i.i_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %44, ptr %44, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %44, ptr %prev.i3.i.i.i, align 4
  %state.i.i = getelementptr i8, ptr %44, i32 -140
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #12
  tail call void @raid5_release_stripe(ptr noundef %add.ptr.i.i) #12
  %53 = ptrtoint ptr %no_space_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %no_space_stripes.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %54, %no_space_stripes.i.i
  br i1 %cmp.i.not.i.i, label %list_del_init.exit.i.i.r5l_run_no_space_stripes.exit.i_crit_edge, label %list_del_init.exit.i.i.while.body.i.i_crit_edge

list_del_init.exit.i.i.while.body.i.i_crit_edge:  ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

list_del_init.exit.i.i.r5l_run_no_space_stripes.exit.i_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_run_no_space_stripes.exit.i

r5l_run_no_space_stripes.exit.i:                  ; preds = %list_del_init.exit.i.i.r5l_run_no_space_stripes.exit.i_crit_edge, %if.then80.i.r5l_run_no_space_stripes.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %no_space_stripes_lock.i.i) #12
  br label %if.end81.i

if.end81.i:                                       ; preds = %r5l_run_no_space_stripes.exit.i, %if.end76.i.if.end81.i_crit_edge
  %mddev.i = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 2
  %55 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mddev.i, align 4
  %thread.i = getelementptr inbounds %struct.mddev, ptr %56, i32 0, i32 40
  %57 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %thread.i, align 4
  tail call void @md_wakeup_thread(ptr noundef %58) #12
  br label %r5c_do_reclaim.exit

r5c_do_reclaim.exit:                              ; preds = %if.end81.i, %r5c_is_writeback.exit.i.r5c_do_reclaim.exit_crit_edge
  tail call fastcc void @r5l_do_reclaim(ptr noundef nonnull %5)
  br label %cleanup

cleanup:                                          ; preds = %r5c_do_reclaim.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r5l_submit_io_async(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1376
  %io_list_lock = getelementptr i8, ptr %work, i32 -1216
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_list_lock) #12
  %running_ios = getelementptr i8, ptr %work, i32 -1172
  %0 = ptrtoint ptr %running_ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %running_ios, align 4
  %cmp.i.not = icmp eq ptr %1, %running_ios
  br i1 %cmp.i.not, label %entry.if.end16.thread_crit_edge, label %if.then

entry.if.end16.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.thread

if.then:                                          ; preds = %entry
  %io_deferred = getelementptr i8, ptr %1, i32 28
  %2 = ptrtoint ptr %io_deferred to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %io_deferred, align 4
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool11.not = icmp eq i8 %3, 0
  br i1 %tobool11.not, label %if.then.if.end16.thread_crit_edge, label %if.end16

if.then.if.end16.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %if.then.if.end16.thread_crit_edge, %entry.if.end16.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_list_lock, i32 noundef %call3) #12
  br label %if.end20

if.end16:                                         ; preds = %if.then
  %add.ptr10 = getelementptr i8, ptr %1, i32 -48
  %bf.clear15 = and i8 %bf.load, -9
  %4 = ptrtoint ptr %io_deferred to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear15, ptr %io_deferred, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_list_lock, i32 noundef %call3) #12
  %tobool18.not = icmp eq ptr %add.ptr10, null
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @r5l_do_submit_io(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr10)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge, %if.end16.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r5c_disable_writeback_async(ptr nocapture noundef %work) #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1420
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %mddev1 = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mddev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mddev1, align 8
  %r5c_journal_mode = getelementptr i8, ptr %work, i32 -104
  %4 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r5c_journal_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup38_crit_edge, label %do.end

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup38

do.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.29, ptr %disk_name.i
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %spec.select.i) #17
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 697) #12
  %log11 = getelementptr inbounds %struct.r5conf, ptr %7, i32 0, i32 73
  %10 = ptrtoint ptr %log11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log11, align 8
  %cmp12 = icmp eq ptr %11, null
  br i1 %cmp12, label %do.end.cleanup38_crit_edge, label %lor.lhs.false

do.end.cleanup38_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup38

lor.lhs.false:                                    ; preds = %do.end
  %sb_flags = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %sb_flags, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %lor.lhs.false
  %reconfig_mutex.i = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 60
  %call.i = tail call i32 @mutex_trylock(ptr noundef %reconfig_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.if.then35_crit_edge

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %sb_wait = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 77
  %call1874 = call i32 @prepare_to_wait_event(ptr noundef %sb_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %16 = ptrtoint ptr %log11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log11, align 8
  %cmp2075 = icmp eq ptr %17, null
  br i1 %cmp2075, label %if.end17.do.end33_crit_edge, label %lor.lhs.false21.lr.ph

if.end17.do.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

lor.lhs.false21.lr.ph:                            ; preds = %if.end17
  %reconfig_mutex.i59 = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 60
  br label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %cleanup.lor.lhs.false21_crit_edge, %lor.lhs.false21.lr.ph
  %18 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sb_flags, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool24.not = icmp eq i32 %20, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %lor.lhs.false21.cleanup_crit_edge

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true25:                                  ; preds = %lor.lhs.false21
  %call.i60 = call i32 @mutex_trylock(ptr noundef %reconfig_mutex.i59) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool27.not = icmp eq i32 %call.i60, 0
  br i1 %tobool27.not, label %land.lhs.true25.cleanup_crit_edge, label %do.end33.thread70

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end33.thread70:                                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %sb_wait, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.then35

cleanup:                                          ; preds = %land.lhs.true25.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge
  call void @schedule() #12
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %sb_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %21 = ptrtoint ptr %log11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log11, align 8
  %cmp20 = icmp eq ptr %22, null
  br i1 %cmp20, label %cleanup.do.end33_crit_edge, label %cleanup.lor.lhs.false21_crit_edge

cleanup.lor.lhs.false21_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false21

cleanup.do.end33_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

do.end33:                                         ; preds = %cleanup.do.end33_crit_edge, %if.end17.do.end33_crit_edge
  call void @finish_wait(ptr noundef %sb_wait, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %cleanup38

if.then35:                                        ; preds = %do.end33.thread70, %land.lhs.true.if.then35_crit_edge
  call void @mddev_suspend(ptr noundef %3) #12
  %23 = ptrtoint ptr %r5c_journal_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %r5c_journal_mode, align 4
  call void @mddev_resume(ptr noundef %3) #12
  call void @mddev_unlock(ptr noundef %3) #12
  br label %cleanup38

cleanup38:                                        ; preds = %if.then35, %do.end33, %do.end.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_unregister_thread(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_write_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @raid5_compute_blocknr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5l_append_payload_page(ptr noundef %log, ptr noundef %page) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %current_io = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 10
  %0 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_io, align 4
  %need_split_bio = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %need_split_bio to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_split_bio, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %do.body

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.body:                                          ; preds = %entry
  %split_bio = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %split_bio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %split_bio, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %do.end10, label %do.body5, !prof !137

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 849, 0\0A.popsection", ""() #12, !srcloc !173
  unreachable

do.end10:                                         ; preds = %do.body
  %current_bio = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %current_bio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_bio, align 4
  %8 = ptrtoint ptr %split_bio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %split_bio, align 8
  %bs.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 20
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 256, ptr noundef %bs.i) #12
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %bi_opf.i.i, align 8
  %10 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log, align 8
  %bdev.i = getelementptr inbounds %struct.md_rdev, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev.i, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %15, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %17, %13
  br i1 %cmp.not.i.i, label %do.end10.r5l_bio_alloc.exit_crit_edge, label %if.then.i.i

do.end10.r5l_bio_alloc.exit_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_bio_alloc.exit

if.then.i.i:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i = and i16 %15, -2177
  %18 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %r5l_bio_alloc.exit

r5l_bio_alloc.exit:                               ; preds = %if.then.i.i, %do.end10.r5l_bio_alloc.exit_crit_edge
  %19 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %13, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #12
  %20 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log, align 8
  %data_offset.i = getelementptr inbounds %struct.md_rdev, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %data_offset.i, align 8
  %log_start.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 6
  %24 = ptrtoint ptr %log_start.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %log_start.i, align 8
  %add.i = add i64 %25, %23
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add.i, ptr %bi_iter.i, align 8
  %27 = ptrtoint ptr %current_bio to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %current_bio, align 4
  %28 = ptrtoint ptr %split_bio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %split_bio, align 8
  tail call void @bio_chain(ptr noundef %call.i, ptr noundef %29) #12
  %30 = ptrtoint ptr %need_split_bio to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %need_split_bio, align 4
  br label %if.end16

if.end16:                                         ; preds = %r5l_bio_alloc.exit, %entry.if.end16_crit_edge
  %current_bio17 = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %current_bio17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %current_bio17, align 4
  %call18 = tail call i32 @bio_add_page(ptr noundef %32, ptr noundef %page, i32 noundef 4096, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body21, label %if.end27

do.body21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 857, 0\0A.popsection", ""() #12, !srcloc !174
  unreachable

if.end27:                                         ; preds = %if.end16
  %log_start.i39 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 6
  %33 = ptrtoint ptr %log_start.i39 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %log_start.i39, align 8
  %add.i.i = add i64 %34, 8
  %device_size.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %35 = ptrtoint ptr %device_size.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %device_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %36)
  %cmp.not.i.i40 = icmp ult i64 %add.i.i, %36
  %sub.i.i = select i1 %cmp.not.i.i40, i64 0, i64 %36
  %spec.select.i.i = sub i64 %add.i.i, %sub.i.i
  %37 = ptrtoint ptr %log_start.i39 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %spec.select.i.i, ptr %log_start.i39, align 8
  tail call fastcc void @r5c_update_log_state(ptr noundef %log) #12
  %38 = ptrtoint ptr %log_start.i39 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %log_start.i39, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp.i = icmp eq i64 %39, 0
  br i1 %cmp.i, label %if.then.i, label %if.end27.r5_reserve_log_entry.exit_crit_edge

if.end27.r5_reserve_log_entry.exit_crit_edge:     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5_reserve_log_entry.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %need_split_bio to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %need_split_bio, align 4
  br label %r5_reserve_log_entry.exit

r5_reserve_log_entry.exit:                        ; preds = %if.then.i, %if.end27.r5_reserve_log_entry.exit_crit_edge
  %41 = ptrtoint ptr %log_start.i39 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %log_start.i39, align 8
  %log_end.i = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %log_end.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %log_end.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5l_do_submit_io(ptr noundef %log, ptr nocapture noundef %io) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_list_lock = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_list_lock) #12
  %state1.i = getelementptr inbounds %struct.r5l_io_unit, ptr %io, i32 0, i32 10
  %0 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end22.critedge.i, label %do.end.i, !prof !137

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 286, i32 noundef 9, ptr noundef null) #12
  br label %__r5l_set_io_unit_state.exit

if.end22.critedge.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state1.i, align 8
  br label %__r5l_set_io_unit_state.exit

__r5l_set_io_unit_state.exit:                     ; preds = %if.end22.critedge.i, %do.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_list_lock, i32 noundef %call2) #12
  %split_bio = getelementptr inbounds %struct.r5l_io_unit, ptr %io, i32 0, i32 12
  %3 = ptrtoint ptr %split_bio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %split_bio, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %__r5l_set_io_unit_state.exit.if.end23_crit_edge, label %if.then

__r5l_set_io_unit_state.exit.if.end23_crit_edge:  ; preds = %__r5l_set_io_unit_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then:                                          ; preds = %__r5l_set_io_unit_state.exit
  %has_flush = getelementptr inbounds %struct.r5l_io_unit, ptr %io, i32 0, i32 13
  %5 = ptrtoint ptr %has_flush to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %has_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %bi_opf = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_opf, align 8
  %8 = or i32 %7, 262144
  store i32 %8, ptr %bi_opf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %has_flush to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load11 = load i8, ptr %has_flush, align 4
  %10 = and i8 %bf.load11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp eq i8 %10, 0
  br i1 %tobool14.not, label %if.end.if.end21_crit_edge, label %if.then15

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %split_bio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %split_bio, align 8
  %bi_opf17 = getelementptr inbounds %struct.bio, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bi_opf17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_opf17, align 8
  %15 = or i32 %14, 131072
  store i32 %15, ptr %bi_opf17, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end.if.end21_crit_edge
  %16 = ptrtoint ptr %split_bio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %split_bio, align 8
  tail call void @submit_bio(ptr noundef %17) #12
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %__r5l_set_io_unit_state.exit.if.end23_crit_edge
  %has_flush24 = getelementptr inbounds %struct.r5l_io_unit, ptr %io, i32 0, i32 13
  %18 = ptrtoint ptr %has_flush24 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load25 = load i8, ptr %has_flush24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load25)
  %tobool28.not = icmp sgt i8 %bf.load25, -1
  br i1 %tobool28.not, label %if.end23.if.end34_crit_edge, label %if.then29

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %current_bio = getelementptr inbounds %struct.r5l_io_unit, ptr %io, i32 0, i32 3
  %19 = ptrtoint ptr %current_bio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %current_bio, align 4
  %bi_opf30 = getelementptr inbounds %struct.bio, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %bi_opf30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bi_opf30, align 8
  %23 = or i32 %22, 262144
  store i32 %23, ptr %bi_opf30, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end23.if.end34_crit_edge
  %24 = ptrtoint ptr %has_flush24 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load36 = load i8, ptr %has_flush24, align 4
  %25 = and i8 %bf.load36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool40.not = icmp eq i8 %25, 0
  br i1 %tobool40.not, label %if.end34.if.end47_crit_edge, label %if.then41

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %current_bio42 = getelementptr inbounds %struct.r5l_io_unit, ptr %io, i32 0, i32 3
  %26 = ptrtoint ptr %current_bio42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %current_bio42, align 4
  %bi_opf43 = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %bi_opf43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bi_opf43, align 8
  %30 = or i32 %29, 131072
  store i32 %30, ptr %bi_opf43, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end34.if.end47_crit_edge
  %current_bio48 = getelementptr inbounds %struct.r5l_io_unit, ptr %io, i32 0, i32 3
  %31 = ptrtoint ptr %current_bio48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %current_bio48, align 4
  tail call void @submit_bio(ptr noundef %32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r5l_log_endio(ptr noundef %bio) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %mddev = getelementptr inbounds %struct.md_rdev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mddev, align 8
  tail call void @md_error(ptr noundef %9, ptr noundef %7) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #12
  %meta_page = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %meta_page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %meta_page, align 4
  %meta_pool = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 21
  tail call void @mempool_free(ptr noundef %11, ptr noundef %meta_pool) #12
  %io_list_lock = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_list_lock) #12
  %state1.i = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.not.i = icmp ult i32 %13, 2
  br i1 %cmp.not.i, label %if.end22.critedge.i, label %do.end.i, !prof !137

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 286, i32 noundef 9, ptr noundef null) #12
  br label %__r5l_set_io_unit_state.exit

if.end22.critedge.i:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %state1.i, align 8
  br label %__r5l_set_io_unit_state.exit

__r5l_set_io_unit_state.exit:                     ; preds = %if.end22.critedge.i, %do.end.i
  %has_null_flush7 = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %has_null_flush7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %has_null_flush7, align 4
  %16 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  %17 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  %need_cache_flush = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 27
  %18 = ptrtoint ptr %need_cache_flush to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %need_cache_flush, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool16.not = icmp eq i8 %19, 0
  br i1 %tobool16.not, label %__r5l_set_io_unit_state.exit.if.else_crit_edge, label %land.lhs.true

__r5l_set_io_unit_state.exit.if.else_crit_edge:   ; preds = %__r5l_set_io_unit_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %__r5l_set_io_unit_state.exit
  %stripe_list = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %stripe_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %stripe_list, align 4
  %cmp.i.not = icmp eq ptr %21, %stripe_list
  br i1 %cmp.i.not, label %land.lhs.true.if.else_crit_edge, label %if.then20

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then20:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.then20.if.end.i_crit_edge, label %land.rhs.i

if.then20.if.end.i_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then20
  %dep_map.i = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 11, i32 0, i32 0, i32 4
  %call.i.i125 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %cmp.not.i126 = icmp eq i32 %call.i.i125, 0
  br i1 %cmp.not.i126, label %do.end.i127, label %land.rhs.i.if.end.i_crit_edge, !prof !139

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i127:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 547, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i127, %land.rhs.i.if.end.i_crit_edge, %if.then20.if.end.i_crit_edge
  %running_ios.i = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 12
  %23 = ptrtoint ptr %running_ios.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %running_ios.i, align 4
  %cmp32.not54.i = icmp eq ptr %24, %running_ios.i
  br i1 %cmp32.not54.i, label %if.end.i.if.end21_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %io_end_ios.i = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 13
  %prev.i2.i.i = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 13, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_move_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in55.i = phi ptr [ %24, %for.body.lr.ph.i ], [ %.pn57.i, %list_move_tail.exit.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %.pn.in55.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn57.i = load ptr, ptr %.pn.in55.i, align 8
  %state.i = getelementptr i8, ptr %.pn.in55.i, i32 16
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp35.i = icmp slt i32 %27, 2
  br i1 %cmp35.i, label %for.body.i.if.end21_crit_edge, label %if.end37.i

for.body.i.if.end21_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end37.i:                                       ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in55.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end37.i.__list_del_entry.exit.i.i_crit_edge

if.end37.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in55.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %.pn.in55.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in55.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end37.i.__list_del_entry.exit.i.i_crit_edge
  %34 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in55.i, ptr noundef %35, ptr noundef %io_end_ios.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %.pn.in55.i, ptr %prev.i2.i.i, align 4
  %37 = ptrtoint ptr %.pn.in55.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %io_end_ios.i, ptr %.pn.in55.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in55.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %.pn.in55.i, ptr %35, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %cmp32.not.i = icmp eq ptr %.pn57.i, %running_ios.i
  br i1 %cmp32.not.i, label %list_move_tail.exit.i.if.end21_crit_edge, label %list_move_tail.exit.i.for.body.i_crit_edge

list_move_tail.exit.i.for.body.i_crit_edge:       ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_move_tail.exit.i.if.end21_crit_edge:         ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %__r5l_set_io_unit_state.exit.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %40 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i128 = icmp eq i32 %40, 0
  br i1 %tobool.not.i128, label %if.else.if.end.i135_crit_edge, label %land.rhs.i132

if.else.if.end.i135_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i135

land.rhs.i132:                                    ; preds = %if.else
  %dep_map.i129 = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 11, i32 0, i32 0, i32 4
  %call.i.i130 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i129, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %cmp.not.i131 = icmp eq i32 %call.i.i130, 0
  br i1 %cmp.not.i131, label %do.end.i133, label %land.rhs.i132.if.end.i135_crit_edge, !prof !139

land.rhs.i132.if.end.i135_crit_edge:              ; preds = %land.rhs.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i135

do.end.i133:                                      ; preds = %land.rhs.i132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 531, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i135

if.end.i135:                                      ; preds = %do.end.i133, %land.rhs.i132.if.end.i135_crit_edge, %if.else.if.end.i135_crit_edge
  %running_ios.i134 = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 12
  %41 = ptrtoint ptr %running_ios.i134 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %running_ios.i134, align 4
  %cmp32.not56.i = icmp eq ptr %42, %running_ios.i134
  br i1 %cmp32.not56.i, label %if.end.i135.if.end21_crit_edge, label %for.body.lr.ph.i137

if.end.i135.if.end21_crit_edge:                   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

for.body.lr.ph.i137:                              ; preds = %if.end.i135
  %finished_ios.i = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 15
  %prev.i2.i.i136 = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 15, i32 1
  br label %for.body.i140

for.body.i140:                                    ; preds = %list_move_tail.exit.i151.for.body.i140_crit_edge, %for.body.lr.ph.i137
  %.pn.in57.i = phi ptr [ %42, %for.body.lr.ph.i137 ], [ %.pn60.i, %list_move_tail.exit.i151.for.body.i140_crit_edge ]
  %io.059.i = getelementptr i8, ptr %.pn.in57.i, i32 -48
  %43 = ptrtoint ptr %.pn.in57.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn60.i = load ptr, ptr %.pn.in57.i, align 8
  %state.i138 = getelementptr i8, ptr %.pn.in57.i, i32 16
  %44 = ptrtoint ptr %state.i138 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i138, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp35.i139 = icmp slt i32 %45, 2
  br i1 %cmp35.i139, label %for.body.i140.if.end21_crit_edge, label %if.end37.i142

for.body.i140.if.end21_crit_edge:                 ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end37.i142:                                    ; preds = %for.body.i140
  %call.i.i.i141 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in57.i) #12
  br i1 %call.i.i.i141, label %if.end.i.i.i145, label %if.end37.i142.__list_del_entry.exit.i.i147_crit_edge

if.end37.i142.__list_del_entry.exit.i.i147_crit_edge: ; preds = %if.end37.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i147

if.end.i.i.i145:                                  ; preds = %if.end37.i142
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i143 = getelementptr inbounds %struct.list_head, ptr %.pn.in57.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i143, align 4
  %48 = ptrtoint ptr %.pn.in57.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %.pn.in57.i, align 4
  %prev1.i.i.i.i144 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i144 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i144, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %__list_del_entry.exit.i.i147

__list_del_entry.exit.i.i147:                     ; preds = %if.end.i.i.i145, %if.end37.i142.__list_del_entry.exit.i.i147_crit_edge
  %52 = ptrtoint ptr %prev.i2.i.i136 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i2.i.i136, align 4
  %call.i.i.i.i146 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in57.i, ptr noundef %53, ptr noundef %finished_ios.i) #12
  br i1 %call.i.i.i.i146, label %if.end.i.i.i.i149, label %__list_del_entry.exit.i.i147.list_move_tail.exit.i151_crit_edge

__list_del_entry.exit.i.i147.list_move_tail.exit.i151_crit_edge: ; preds = %__list_del_entry.exit.i.i147
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit.i151

if.end.i.i.i.i149:                                ; preds = %__list_del_entry.exit.i.i147
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %prev.i2.i.i136 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %.pn.in57.i, ptr %prev.i2.i.i136, align 4
  %55 = ptrtoint ptr %.pn.in57.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %finished_ios.i, ptr %.pn.in57.i, align 4
  %prev3.i.i.i.i148 = getelementptr inbounds %struct.list_head, ptr %.pn.in57.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i.i148 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i.i.i148, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %.pn.in57.i, ptr %53, align 4
  br label %list_move_tail.exit.i151

list_move_tail.exit.i151:                         ; preds = %if.end.i.i.i.i149, %__list_del_entry.exit.i.i147.list_move_tail.exit.i151_crit_edge
  tail call fastcc void @r5l_io_run_stripes(ptr noundef %io.059.i) #12
  %cmp32.not.i150 = icmp eq ptr %.pn60.i, %running_ios.i134
  br i1 %cmp32.not.i150, label %list_move_tail.exit.i151.if.end21_crit_edge, label %list_move_tail.exit.i151.for.body.i140_crit_edge

list_move_tail.exit.i151.for.body.i140_crit_edge: ; preds = %list_move_tail.exit.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i140

list_move_tail.exit.i151.if.end21_crit_edge:      ; preds = %list_move_tail.exit.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %list_move_tail.exit.i151.if.end21_crit_edge, %for.body.i140.if.end21_crit_edge, %if.end.i135.if.end21_crit_edge, %list_move_tail.exit.i.if.end21_crit_edge, %for.body.i.if.end21_crit_edge, %if.end.i.if.end21_crit_edge
  %running_ios = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 12
  %58 = ptrtoint ptr %running_ios to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %running_ios, align 4
  %cmp.i152.not = icmp eq ptr %59, %running_ios
  br i1 %cmp.i152.not, label %if.end21.if.end36_crit_edge, label %if.then24

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then24:                                        ; preds = %if.end21
  %io_deferred27 = getelementptr i8, ptr %59, i32 28
  %60 = ptrtoint ptr %io_deferred27 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load28 = load i8, ptr %io_deferred27, align 4
  %61 = and i8 %bf.load28, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool32.not = icmp eq i8 %61, 0
  br i1 %tobool32.not, label %if.then24.if.end36_crit_edge, label %if.then33

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then33:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %deferred_io_work = getelementptr inbounds %struct.r5l_log, ptr %3, i32 0, i32 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %62 = load ptr, ptr @system_wq, align 4
  %call.i.i154 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %deferred_io_work) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then24.if.end36_crit_edge, %if.end21.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_list_lock, i32 noundef %call4) #12
  %63 = ptrtoint ptr %need_cache_flush to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %need_cache_flush, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool39.not = icmp eq i8 %64, 0
  br i1 %tobool39.not, label %if.end36.if.end43_crit_edge, label %if.then40

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 8
  %mddev42 = getelementptr inbounds %struct.md_rdev, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %mddev42 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mddev42, align 8
  %thread = getelementptr inbounds %struct.mddev, ptr %68, i32 0, i32 40
  %69 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %thread, align 4
  tail call void @md_wakeup_thread(ptr noundef %70) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end36.if.end43_crit_edge
  br i1 %tobool8.not, label %if.end43.if.end80_crit_edge, label %if.then45

if.end43.if.end80_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then45:                                        ; preds = %if.end43
  %flush_barriers = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 14
  %71 = ptrtoint ptr %flush_barriers to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %flush_barriers, align 4
  %cmp.i155.not = icmp eq ptr %72, null
  br i1 %cmp.i155.not, label %do.end59, label %if.then45.if.end65_crit_edge, !prof !139

if.then45.if.end65_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

do.end59:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 609, i32 noundef 9, ptr noundef null) #12
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %if.then45.if.end65_crit_edge
  %tail.i = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 14, i32 1
  %pending_stripe = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end65
  %73 = ptrtoint ptr %flush_barriers to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %flush_barriers, align 4
  %tobool.not.i157 = icmp eq ptr %74, null
  br i1 %tobool.not.i157, label %while.cond.if.end80_crit_edge, label %if.then.i

while.cond.if.end80_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then.i:                                        ; preds = %while.cond
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %77 = ptrtoint ptr %flush_barriers to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %flush_barriers, align 4
  %tobool4.not.i = icmp eq ptr %76, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %tail.i, align 4
  br label %while.body

while.body:                                       ; preds = %if.then5.i, %if.then.i.while.body_crit_edge
  %79 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %74, align 8
  tail call void @bio_endio(ptr noundef nonnull %74) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_stripe, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %pending_stripe, i32 1, i32 3, i32 1) #12
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_stripe, ptr %pending_stripe, i32 1, ptr elementtype(i32) %pending_stripe) #12, !srcloc !148
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %80, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %while.body.cleanup88.sink.split_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.body.cleanup88.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88.sink.split

if.end80:                                         ; preds = %while.cond.if.end80_crit_edge, %if.end43.if.end80_crit_edge
  br i1 %tobool14.not, label %if.end80.cleanup88_crit_edge, label %if.then82

if.end80.cleanup88_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88

if.then82:                                        ; preds = %if.end80
  %pending_stripe83 = getelementptr inbounds %struct.r5l_io_unit, ptr %1, i32 0, i32 4
  %call.i.i122 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_stripe83, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %pending_stripe83, i32 1, i32 3, i32 1) #12
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_stripe83, ptr %pending_stripe83, i32 1, ptr elementtype(i32) %pending_stripe83) #12, !srcloc !148
  %asmresult.i.i.i.i.i123 = extractvalue { i32, i32 } %81, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i123)
  %cmp.i.i124 = icmp eq i32 %asmresult.i.i.i.i.i123, 0
  br i1 %cmp.i.i124, label %if.then82.cleanup88.sink.split_crit_edge, label %if.then82.cleanup88_crit_edge

if.then82.cleanup88_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88

if.then82.cleanup88.sink.split_crit_edge:         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88.sink.split

cleanup88.sink.split:                             ; preds = %if.then82.cleanup88.sink.split_crit_edge, %while.body.cleanup88.sink.split_crit_edge
  tail call fastcc void @__r5l_stripe_write_finished(ptr noundef %1)
  br label %cleanup88

cleanup88:                                        ; preds = %cleanup88.sink.split, %if.then82.cleanup88_crit_edge, %if.end80.cleanup88_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5l_io_run_stripes(ptr noundef readonly %io) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stripe_list = getelementptr inbounds %struct.r5l_io_unit, ptr %io, i32 0, i32 9
  %0 = ptrtoint ptr %stripe_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stripe_list, align 8
  %cmp.not24 = icmp eq ptr %1, %stripe_list
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %r5c_finish_cache_stripe.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn, %r5c_finish_cache_stripe.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %sh.0 = getelementptr i8, ptr %.pn.in25, i32 -188
  %2 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in25, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in25, ptr %.pn.in25, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in25, ptr %prev.i3.i, align 4
  %raid_conf.i = getelementptr i8, ptr %.pn.in25, i32 -168
  %11 = ptrtoint ptr %raid_conf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raid_conf.i, align 4
  %log1.i = getelementptr inbounds %struct.r5conf, ptr %12, i32 0, i32 73
  %13 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log1.i, align 8
  %r5c_journal_mode.i = getelementptr inbounds %struct.r5l_log, ptr %14, i32 0, i32 28
  %15 = ptrtoint ptr %r5c_journal_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r5c_journal_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  %state.i = getelementptr i8, ptr %.pn.in25, i32 -140
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %list_del_init.exit
  br i1 %tobool.not.i, label %do.end10.i, label %do.body5.i, !prof !137

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 497, 0\0A.popsection", ""() #12, !srcloc !175
  unreachable

do.end10.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %pd_idx.i = getelementptr i8, ptr %.pn.in25, i32 -148
  %20 = ptrtoint ptr %pd_idx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pd_idx.i, align 8
  %idxprom.i = sext i16 %21 to i32
  %flags.i = getelementptr %struct.stripe_head, ptr %sh.0, i32 0, i32 29, i32 %idxprom.i, i32 12
  tail call void @_set_bit(i32 noundef 25, ptr noundef %flags.i) #12
  br label %r5c_finish_cache_stripe.exit

if.else.i:                                        ; preds = %list_del_init.exit
  %disks.i33.i = getelementptr i8, ptr %.pn.in25, i32 -128
  %22 = ptrtoint ptr %disks.i33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %disks.i33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not10.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.else15.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  br i1 %tobool.not10.i.i, label %if.then14.i.r5c_handle_data_cached.exit.i_crit_edge, label %if.then14.i.for.body.i.i_crit_edge

if.then14.i.for.body.i.i_crit_edge:               ; preds = %if.then14.i
  br label %for.body.i.i

if.then14.i.r5c_handle_data_cached.exit.i_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_handle_data_cached.exit.i

for.body.i.i:                                     ; preds = %if.end.i.i23.for.body.i.i_crit_edge, %if.then14.i.for.body.i.i_crit_edge
  %dec17.in.i.i = phi i32 [ %dec17.i.i, %if.end.i.i23.for.body.i.i_crit_edge ], [ %23, %if.then14.i.for.body.i.i_crit_edge ]
  %dec17.i.i = add i32 %dec17.in.i.i, -1
  %flags.i.i = getelementptr %struct.stripe_head, ptr %sh.0, i32 0, i32 29, i32 %dec17.i.i, i32 12
  %call.i.i22 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool1.not.i.i = icmp eq i32 %call.i.i22, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.if.end.i.i23_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i23_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i23

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 25, ptr noundef %flags.i.i) #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i.i) #12
  br label %if.end.i.i23

if.end.i.i23:                                     ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i23_crit_edge
  %tobool.not.i.i = icmp eq i32 %dec17.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i23.r5c_handle_data_cached.exit.i_crit_edge, label %if.end.i.i23.for.body.i.i_crit_edge

if.end.i.i23.for.body.i.i_crit_edge:              ; preds = %if.end.i.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end.i.i23.r5c_handle_data_cached.exit.i_crit_edge: ; preds = %if.end.i.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_handle_data_cached.exit.i

r5c_handle_data_cached.exit.i:                    ; preds = %if.end.i.i23.r5c_handle_data_cached.exit.i_crit_edge, %if.then14.i.r5c_handle_data_cached.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef 23, ptr noundef %state.i) #12
  br label %r5c_finish_cache_stripe.exit

if.else15.i:                                      ; preds = %if.else.i
  br i1 %tobool.not10.i.i, label %if.else15.i.r5c_handle_parity_cached.exit.i_crit_edge, label %if.else15.i.for.body.i36.i_crit_edge

if.else15.i.for.body.i36.i_crit_edge:             ; preds = %if.else15.i
  br label %for.body.i36.i

if.else15.i.r5c_handle_parity_cached.exit.i_crit_edge: ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_handle_parity_cached.exit.i

for.body.i36.i:                                   ; preds = %if.end.i39.i.for.body.i36.i_crit_edge, %if.else15.i.for.body.i36.i_crit_edge
  %dec11.in.i.i = phi i32 [ %dec11.i.i, %if.end.i39.i.for.body.i36.i_crit_edge ], [ %23, %if.else15.i.for.body.i36.i_crit_edge ]
  %dec11.i.i = add i32 %dec11.in.i.i, -1
  %flags.i34.i = getelementptr %struct.stripe_head, ptr %sh.0, i32 0, i32 29, i32 %dec11.i.i, i32 12
  %24 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i34.i, align 4
  %26 = and i32 %25, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i35.i = icmp eq i32 %26, 0
  br i1 %tobool1.not.i35.i, label %for.body.i36.i.if.end.i39.i_crit_edge, label %if.then.i37.i

for.body.i36.i.if.end.i39.i_crit_edge:            ; preds = %for.body.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i39.i

if.then.i37.i:                                    ; preds = %for.body.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i34.i) #12
  br label %if.end.i39.i

if.end.i39.i:                                     ; preds = %if.then.i37.i, %for.body.i36.i.if.end.i39.i_crit_edge
  %tobool.not.i38.i = icmp eq i32 %dec11.i.i, 0
  br i1 %tobool.not.i38.i, label %if.end.i39.i.r5c_handle_parity_cached.exit.i_crit_edge, label %if.end.i39.i.for.body.i36.i_crit_edge

if.end.i39.i.for.body.i36.i_crit_edge:            ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i36.i

if.end.i39.i.r5c_handle_parity_cached.exit.i_crit_edge: ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_handle_parity_cached.exit.i

r5c_handle_parity_cached.exit.i:                  ; preds = %if.end.i39.i.r5c_handle_parity_cached.exit.i_crit_edge, %if.else15.i.r5c_handle_parity_cached.exit.i_crit_edge
  %pd_idx17.i = getelementptr i8, ptr %.pn.in25, i32 -148
  %27 = ptrtoint ptr %pd_idx17.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pd_idx17.i, align 8
  %idxprom18.i = sext i16 %28 to i32
  %flags20.i = getelementptr %struct.stripe_head, ptr %sh.0, i32 0, i32 29, i32 %idxprom18.i, i32 12
  tail call void @_set_bit(i32 noundef 25, ptr noundef %flags20.i) #12
  br label %r5c_finish_cache_stripe.exit

r5c_finish_cache_stripe.exit:                     ; preds = %r5c_handle_parity_cached.exit.i, %r5c_handle_data_cached.exit.i, %do.end10.i
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #12
  tail call void @raid5_release_stripe(ptr noundef %sh.0) #12
  %cmp.not = icmp eq ptr %.pn, %stripe_list
  br i1 %cmp.not, label %r5c_finish_cache_stripe.exit.for.end_crit_edge, label %r5c_finish_cache_stripe.exit.for.body_crit_edge

r5c_finish_cache_stripe.exit.for.body_crit_edge:  ; preds = %r5c_finish_cache_stripe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

r5c_finish_cache_stripe.exit.for.end_crit_edge:   ; preds = %r5c_finish_cache_stripe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %r5c_finish_cache_stripe.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid5_release_stripe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_update_sb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_page_io(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5l_log_write_empty_meta_block(ptr nocapture noundef readonly %log, i64 noundef %pos, i64 noundef %seq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #12
  %0 = getelementptr inbounds i8, ptr %call.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 4092)
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 163918692, ptr %call.i, align 1
  %version.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %version.i, align 1
  %meta_size.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %meta_size.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 536870912, ptr %meta_size.i, align 1
  %5 = tail call i64 @llvm.bswap.i64(i64 %seq) #12
  %seq1.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %seq1.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %seq1.i, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %pos) #12
  %position.i = getelementptr inbounds %struct.r5l_meta_block, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %position.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %position.i, align 1
  %call1 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #12
  %uuid_checksum = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 1
  %9 = ptrtoint ptr %uuid_checksum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uuid_checksum, align 4
  %call2 = tail call i32 @crc32c(i32 noundef %10, ptr noundef %call1, i32 noundef 4096) #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %checksum = getelementptr inbounds %struct.r5l_meta_block, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %checksum, align 1
  %13 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log, align 8
  %call3 = tail call i32 @sync_page_io(ptr noundef %14, i64 noundef %pos, i32 noundef 4096, ptr noundef nonnull %call38.i.i.i, i32 noundef 1, i32 noundef 133120, i1 noundef zeroext false) #12
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5l_recovery_free_ra_pool(ptr nocapture noundef readonly %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %total_pages = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %total_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.02 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 7, i32 %i.02
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !137

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !139

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.36) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !165
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !148
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@r5l_recovery_free_ra_pool, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !162

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %8) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw nsw i32 %i.02, 1
  %13 = ptrtoint ptr %total_pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_pages, align 8
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ra_bio = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 11
  %15 = ptrtoint ptr %ra_bio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ra_bio, align 8
  tail call void @bio_put(ptr noundef %16) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r5c_recovery_analyze_meta_block(ptr nocapture noundef readonly %log, ptr nocapture noundef %ctx, ptr noundef %cached_stripe_list) unnamed_addr #1 align 64 {
entry:
  %dd_idx.i = alloca i32, align 4
  %dd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %mddev1 = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mddev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mddev1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call = tail call fastcc i32 @r5l_recovery_verify_data_checksum_for_mb(ptr noundef %log, ptr noundef %ctx)
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call, label %if.then2 [
    i32 -22, label %entry.cleanup137_crit_edge
    i32 0, label %if.end3
  ]

entry.cleanup137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup137

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup137

if.end3:                                          ; preds = %entry
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 8
  %call4 = tail call ptr @page_address(ptr noundef %8) #12
  %device_size.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %meta_size = getelementptr inbounds %struct.r5l_meta_block, ptr %call4, i32 0, i32 5
  %9 = ptrtoint ptr %meta_size to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %meta_size, align 1
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp6353 = icmp ugt i32 %11, 32
  br i1 %cmp6353, label %while.body.lr.ph, label %if.end3.cleanup137_crit_edge

if.end3.cleanup137_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup137

while.body.lr.ph:                                 ; preds = %if.end3
  %pos = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 2
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %add.i = add i64 %13, 8
  %14 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %15)
  %cmp.not.i = icmp ult i64 %add.i, %15
  %sub.i = select i1 %cmp.not.i, i64 0, i64 %15
  %spec.select.i = sub i64 %add.i, %sub.i
  %min_nr_stripes = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 10
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cached_stripe_list, i32 0, i32 1
  %meta_total_blocks.i297 = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup134.while.body_crit_edge, %while.body.lr.ph
  %log_offset.0355 = phi i64 [ %spec.select.i, %while.body.lr.ph ], [ %log_offset.1, %cleanup134.while.body_crit_edge ]
  %mb_offset.0354 = phi i32 [ 32, %while.body.lr.ph ], [ %mb_offset.1, %cleanup134.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd) #12
  %16 = ptrtoint ptr %dd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %dd, align 4, !annotation !176
  %add.ptr = getelementptr i8, ptr %call4, i32 %mb_offset.0354
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %add.ptr, align 1
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %18, label %cond.false [
    i16 512, label %if.then10
    i16 0, label %cond.true
  ]

if.then10:                                        ; preds = %while.body
  %size = getelementptr inbounds %struct.r5l_payload_flush, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %size, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %22)
  %cmp11351.not = icmp ult i32 %22, 8
  br i1 %cmp11351.not, label %if.then10.for.end_crit_edge, label %for.body.lr.ph

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then10
  %div224 = lshr i32 %22, 3
  %flush_stripes = getelementptr inbounds %struct.r5l_payload_flush, ptr %add.ptr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0352 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x i64], ptr %flush_stripes, i32 0, i32 %i.0352
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %arrayidx, align 1
  %25 = call i64 @llvm.bswap.i64(i64 %24)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %.pn.in.i = phi ptr [ %cached_stripe_list, %for.body ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %26 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i229 = icmp eq ptr %.pn.i, %cached_stripe_list
  br i1 %cmp.not.i229, label %for.cond.i.for.inc_crit_edge, label %for.body.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.body.i:                                       ; preds = %for.cond.i
  %sector.i = getelementptr i8, ptr %.pn.i, i32 24
  %27 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sector.i, align 8
  %cmp1.i = icmp eq i64 %28, %25
  br i1 %cmp1.i, label %r5c_recovery_lookup_stripe.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

r5c_recovery_lookup_stripe.exit:                  ; preds = %for.body.i
  %sh.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool14.not = icmp eq ptr %sh.0.le.i, null
  br i1 %tobool14.not, label %r5c_recovery_lookup_stripe.exit.for.inc_crit_edge, label %if.then15

r5c_recovery_lookup_stripe.exit.for.inc_crit_edge: ; preds = %r5c_recovery_lookup_stripe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then15:                                        ; preds = %r5c_recovery_lookup_stripe.exit
  %state = getelementptr i8, ptr %.pn.i, i32 40
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state, align 4
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not = icmp eq i32 %31, 0
  br i1 %tobool17.not, label %if.then15.if.end32_crit_edge, label %do.end, !prof !137

if.then15.if.end32_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2121, i32 noundef 9, ptr noundef null) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.then15.if.end32_crit_edge
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %state, align 8
  %log_start.i = getelementptr i8, ptr %.pn.i, i32 192
  %33 = ptrtoint ptr %log_start.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 -1, ptr %log_start.i, align 8
  %disks.i = getelementptr i8, ptr %.pn.i, i32 52
  %34 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %disks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not5.i = icmp eq i32 %35, 0
  br i1 %tobool.not5.i, label %if.end32.r5l_recovery_reset_stripe.exit_crit_edge, label %if.end32.for.body.i231_crit_edge

if.end32.for.body.i231_crit_edge:                 ; preds = %if.end32
  br label %for.body.i231

if.end32.r5l_recovery_reset_stripe.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_recovery_reset_stripe.exit

for.body.i231:                                    ; preds = %for.body.i231.for.body.i231_crit_edge, %if.end32.for.body.i231_crit_edge
  %i.06.i = phi i32 [ %dec.i, %for.body.i231.for.body.i231_crit_edge ], [ %35, %if.end32.for.body.i231_crit_edge ]
  %dec.i = add i32 %i.06.i, -1
  %flags.i = getelementptr %struct.stripe_head, ptr %sh.0.le.i, i32 0, i32 29, i32 %dec.i, i32 12
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %flags.i, align 8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i231.r5l_recovery_reset_stripe.exit_crit_edge, label %for.body.i231.for.body.i231_crit_edge

for.body.i231.for.body.i231_crit_edge:            ; preds = %for.body.i231
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i231

for.body.i231.r5l_recovery_reset_stripe.exit_crit_edge: ; preds = %for.body.i231
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_recovery_reset_stripe.exit

r5l_recovery_reset_stripe.exit:                   ; preds = %for.body.i231.r5l_recovery_reset_stripe.exit_crit_edge, %if.end32.r5l_recovery_reset_stripe.exit_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %r5l_recovery_reset_stripe.exit.list_del_init.exit_crit_edge

r5l_recovery_reset_stripe.exit.list_del_init.exit_crit_edge: ; preds = %r5l_recovery_reset_stripe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %r5l_recovery_reset_stripe.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %r5l_recovery_reset_stripe.exit.list_del_init.exit_crit_edge
  %43 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %.pn.i, ptr %.pn.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.pn.i, ptr %prev.i3.i, align 4
  call void @raid5_release_stripe(ptr noundef nonnull %sh.0.le.i) #12
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %r5c_recovery_lookup_stripe.exit.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0352, 1
  %exitcond.not = icmp eq i32 %inc, %div224
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then10.for.end_crit_edge
  %45 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %size, align 1
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %add = add i32 %47, 8
  br label %cleanup134

cond.true:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %location = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr, i32 0, i32 2
  %48 = ptrtoint ptr %location to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %location, align 1
  %50 = call i64 @llvm.bswap.i64(i64 %49)
  %call48 = call i64 @raid5_compute_sector(ptr noundef %5, i64 noundef %50, i32 noundef 0, ptr noundef nonnull %dd, ptr noundef null) #12
  br label %cond.end

cond.false:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %location49 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr, i32 0, i32 2
  %51 = ptrtoint ptr %location49 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %location49, align 1
  %53 = call i64 @llvm.bswap.i64(i64 %52)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call48, %cond.true ], [ %53, %cond.false ]
  br label %for.cond.i235

for.cond.i235:                                    ; preds = %for.body.i238.for.cond.i235_crit_edge, %cond.end
  %.pn.in.i232 = phi ptr [ %cached_stripe_list, %cond.end ], [ %.pn.i233, %for.body.i238.for.cond.i235_crit_edge ]
  %54 = ptrtoint ptr %.pn.in.i232 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i233 = load ptr, ptr %.pn.in.i232, align 4
  %cmp.not.i234 = icmp eq ptr %.pn.i233, %cached_stripe_list
  br i1 %cmp.not.i234, label %for.cond.i235.if.then52_crit_edge, label %for.body.i238

for.cond.i235.if.then52_crit_edge:                ; preds = %for.cond.i235
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

for.body.i238:                                    ; preds = %for.cond.i235
  %sector.i236 = getelementptr i8, ptr %.pn.i233, i32 24
  %55 = ptrtoint ptr %sector.i236 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %sector.i236, align 8
  %cmp1.i237 = icmp eq i64 %56, %cond
  br i1 %cmp1.i237, label %r5c_recovery_lookup_stripe.exit242, label %for.body.i238.for.cond.i235_crit_edge

for.body.i238.for.cond.i235_crit_edge:            ; preds = %for.body.i238
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i235

r5c_recovery_lookup_stripe.exit242:               ; preds = %for.body.i238
  %sh.0.le.i239 = getelementptr i8, ptr %.pn.i233, i32 -8
  %tobool51.not = icmp eq ptr %sh.0.le.i239, null
  br i1 %tobool51.not, label %r5c_recovery_lookup_stripe.exit242.if.then52_crit_edge, label %r5c_recovery_lookup_stripe.exit242.if.end101_crit_edge

r5c_recovery_lookup_stripe.exit242.if.end101_crit_edge: ; preds = %r5c_recovery_lookup_stripe.exit242
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

r5c_recovery_lookup_stripe.exit242.if.then52_crit_edge: ; preds = %r5c_recovery_lookup_stripe.exit242
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

if.then52:                                        ; preds = %r5c_recovery_lookup_stripe.exit242.if.then52_crit_edge, %for.cond.i235.if.then52_crit_edge
  %call.i = call ptr @raid5_get_active_stripe(ptr noundef %5, i64 noundef %cond, i32 noundef 0, i32 noundef 1, i32 noundef 0) #12
  %tobool.not.i243 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i243, label %if.then55, label %if.end.i

if.end.i:                                         ; preds = %if.then52
  %state.i.i = getelementptr inbounds %struct.stripe_head, ptr %call.i, i32 0, i32 10
  %57 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %state.i.i, align 8
  %log_start.i.i = getelementptr inbounds %struct.stripe_head, ptr %call.i, i32 0, i32 25
  %58 = ptrtoint ptr %log_start.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -1, ptr %log_start.i.i, align 8
  %disks.i.i = getelementptr inbounds %struct.stripe_head, ptr %call.i, i32 0, i32 13
  %59 = ptrtoint ptr %disks.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %disks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not5.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not5.i.i, label %if.end.i.if.end99_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.if.end99_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %60, %if.end.i.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %i.06.i.i, -1
  %flags.i.i = getelementptr %struct.stripe_head, ptr %call.i, i32 0, i32 29, i32 %dec.i.i, i32 12
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %flags.i.i, align 8
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end99_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.if.end99_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then55:                                        ; preds = %if.then52
  %62 = ptrtoint ptr %cached_stripe_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cached_stripe_list, align 4
  %cmp.not24.i = icmp eq ptr %63, %cached_stripe_list
  br i1 %cmp.not24.i, label %if.then55.r5c_recovery_replay_stripes.exit_crit_edge, label %if.then55.for.body.i246_crit_edge

if.then55.for.body.i246_crit_edge:                ; preds = %if.then55
  br label %for.body.i246

if.then55.r5c_recovery_replay_stripes.exit_crit_edge: ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_recovery_replay_stripes.exit

for.body.i246:                                    ; preds = %for.inc.i.for.body.i246_crit_edge, %if.then55.for.body.i246_crit_edge
  %.pn.in25.i = phi ptr [ %.pn28.i, %for.inc.i.for.body.i246_crit_edge ], [ %63, %if.then55.for.body.i246_crit_edge ]
  %sh.027.i = getelementptr i8, ptr %.pn.in25.i, i32 -8
  %64 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn28.i = load ptr, ptr %.pn.in25.i, align 8
  %state.i244 = getelementptr i8, ptr %.pn.in25.i, i32 40
  %65 = ptrtoint ptr %state.i244 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state.i244, align 4
  %67 = and i32 %66, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i245 = icmp eq i32 %67, 0
  br i1 %tobool.not.i245, label %if.then.i, label %for.body.i246.for.inc.i_crit_edge

for.body.i246.for.inc.i_crit_edge:                ; preds = %for.body.i246
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i246
  %raid_conf.i = getelementptr i8, ptr %.pn.in25.i, i32 12
  %68 = ptrtoint ptr %raid_conf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %raid_conf.i, align 4
  call fastcc void @r5l_recovery_replay_one_stripe(ptr noundef %69, ptr noundef %sh.027.i, ptr noundef %ctx) #12
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i, align 4
  %72 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %76 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %.pn.in25.i, ptr %.pn.in25.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %.pn.in25.i, ptr %prev.i3.i.i, align 4
  call void @raid5_release_stripe(ptr noundef %sh.027.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del_init.exit.i, %for.body.i246.for.inc.i_crit_edge
  %cmp.not.i247 = icmp eq ptr %.pn28.i, %cached_stripe_list
  br i1 %cmp.not.i247, label %for.inc.i.r5c_recovery_replay_stripes.exit_crit_edge, label %for.inc.i.for.body.i246_crit_edge

for.inc.i.for.body.i246_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i246

for.inc.i.r5c_recovery_replay_stripes.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5c_recovery_replay_stripes.exit

r5c_recovery_replay_stripes.exit:                 ; preds = %for.inc.i.r5c_recovery_replay_stripes.exit_crit_edge, %if.then55.r5c_recovery_replay_stripes.exit_crit_edge
  %call.i248 = call ptr @raid5_get_active_stripe(ptr noundef %5, i64 noundef %cond, i32 noundef 0, i32 noundef 1, i32 noundef 0) #12
  %tobool.not.i249 = icmp eq ptr %call.i248, null
  br i1 %tobool.not.i249, label %if.then59, label %if.end.i254

if.end.i254:                                      ; preds = %r5c_recovery_replay_stripes.exit
  %state.i.i250 = getelementptr inbounds %struct.stripe_head, ptr %call.i248, i32 0, i32 10
  %78 = ptrtoint ptr %state.i.i250 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %state.i.i250, align 8
  %log_start.i.i251 = getelementptr inbounds %struct.stripe_head, ptr %call.i248, i32 0, i32 25
  %79 = ptrtoint ptr %log_start.i.i251 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 -1, ptr %log_start.i.i251, align 8
  %disks.i.i252 = getelementptr inbounds %struct.stripe_head, ptr %call.i248, i32 0, i32 13
  %80 = ptrtoint ptr %disks.i.i252 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %disks.i.i252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not5.i.i253 = icmp eq i32 %81, 0
  br i1 %tobool.not5.i.i253, label %if.end.i254.if.end99_crit_edge, label %if.end.i254.for.body.i.i259_crit_edge

if.end.i254.for.body.i.i259_crit_edge:            ; preds = %if.end.i254
  br label %for.body.i.i259

if.end.i254.if.end99_crit_edge:                   ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

for.body.i.i259:                                  ; preds = %for.body.i.i259.for.body.i.i259_crit_edge, %if.end.i254.for.body.i.i259_crit_edge
  %i.06.i.i255 = phi i32 [ %dec.i.i256, %for.body.i.i259.for.body.i.i259_crit_edge ], [ %81, %if.end.i254.for.body.i.i259_crit_edge ]
  %dec.i.i256 = add i32 %i.06.i.i255, -1
  %flags.i.i257 = getelementptr %struct.stripe_head, ptr %call.i248, i32 0, i32 29, i32 %dec.i.i256, i32 12
  %82 = ptrtoint ptr %flags.i.i257 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %flags.i.i257, align 8
  %tobool.not.i.i258 = icmp eq i32 %dec.i.i256, 0
  br i1 %tobool.not.i.i258, label %for.body.i.i259.if.end99_crit_edge, label %for.body.i.i259.for.body.i.i259_crit_edge

for.body.i.i259.for.body.i.i259_crit_edge:        ; preds = %for.body.i.i259
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i259

for.body.i.i259.if.end99_crit_edge:               ; preds = %for.body.i.i259
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then59:                                        ; preds = %r5c_recovery_replay_stripes.exit
  %83 = ptrtoint ptr %min_nr_stripes to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %min_nr_stripes, align 4
  %mul = shl i32 %84, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r5c_recovery_analyze_meta_block.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r5c_recovery_analyze_meta_block, %if.then70)) #12
          to label %do.end74 [label %if.then70], !srcloc !162

if.then70:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i261 = icmp eq ptr %86, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %86, i32 0, i32 3
  %spec.select.i262 = select i1 %tobool.not.i261, ptr @.str.29, ptr %disk_name.i
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r5c_recovery_analyze_meta_block.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.47, ptr noundef %spec.select.i262, i32 noundef %mul) #12
  br label %do.end74

do.end74:                                         ; preds = %if.then70, %if.then59
  %call75 = call i32 @raid5_set_cache_size(ptr noundef %3, i32 noundef %mul) #12
  %87 = ptrtoint ptr %min_nr_stripes to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %min_nr_stripes, align 4
  %div77 = sdiv i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %div77)
  %cmp78.not = icmp sgt i32 %88, %div77
  br i1 %cmp78.not, label %if.end88, label %cleanup.thread325

cleanup.thread325:                                ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i264 = icmp eq ptr %90, null
  %disk_name.i265 = getelementptr inbounds %struct.gendisk, ptr %90, i32 0, i32 3
  %spec.select.i266 = select i1 %tobool.not.i264, ptr @.str.29, ptr %disk_name.i265
  %max_nr_stripes = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 9
  %91 = ptrtoint ptr %max_nr_stripes to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_nr_stripes, align 8
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %spec.select.i266, i32 noundef %call75, i32 noundef %mul, i32 noundef %88, i32 noundef %92) #17
  br label %cleanup134.thread

if.end88:                                         ; preds = %do.end74
  %call.i267 = call ptr @raid5_get_active_stripe(ptr noundef %5, i64 noundef %cond, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %tobool.not.i268 = icmp eq ptr %call.i267, null
  br i1 %tobool.not.i268, label %do.end95, label %if.end.i273

if.end.i273:                                      ; preds = %if.end88
  %state.i.i269 = getelementptr inbounds %struct.stripe_head, ptr %call.i267, i32 0, i32 10
  %93 = ptrtoint ptr %state.i.i269 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %state.i.i269, align 8
  %log_start.i.i270 = getelementptr inbounds %struct.stripe_head, ptr %call.i267, i32 0, i32 25
  %94 = ptrtoint ptr %log_start.i.i270 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 -1, ptr %log_start.i.i270, align 8
  %disks.i.i271 = getelementptr inbounds %struct.stripe_head, ptr %call.i267, i32 0, i32 13
  %95 = ptrtoint ptr %disks.i.i271 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %disks.i.i271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not5.i.i272 = icmp eq i32 %96, 0
  br i1 %tobool.not5.i.i272, label %if.end.i273.if.end99_crit_edge, label %if.end.i273.for.body.i.i278_crit_edge

if.end.i273.for.body.i.i278_crit_edge:            ; preds = %if.end.i273
  br label %for.body.i.i278

if.end.i273.if.end99_crit_edge:                   ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

for.body.i.i278:                                  ; preds = %for.body.i.i278.for.body.i.i278_crit_edge, %if.end.i273.for.body.i.i278_crit_edge
  %i.06.i.i274 = phi i32 [ %dec.i.i275, %for.body.i.i278.for.body.i.i278_crit_edge ], [ %96, %if.end.i273.for.body.i.i278_crit_edge ]
  %dec.i.i275 = add i32 %i.06.i.i274, -1
  %flags.i.i276 = getelementptr %struct.stripe_head, ptr %call.i267, i32 0, i32 29, i32 %dec.i.i275, i32 12
  %97 = ptrtoint ptr %flags.i.i276 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %flags.i.i276, align 8
  %tobool.not.i.i277 = icmp eq i32 %dec.i.i275, 0
  br i1 %tobool.not.i.i277, label %for.body.i.i278.if.end99_crit_edge, label %for.body.i.i278.for.body.i.i278_crit_edge

for.body.i.i278.for.body.i.i278_crit_edge:        ; preds = %for.body.i.i278
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i278

for.body.i.i278.if.end99_crit_edge:               ; preds = %for.body.i.i278
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

do.end95:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i281 = icmp eq ptr %99, null
  %disk_name.i282 = getelementptr inbounds %struct.gendisk, ptr %99, i32 0, i32 3
  %spec.select.i283 = select i1 %tobool.not.i281, ptr @.str.29, ptr %disk_name.i282
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %spec.select.i283) #17
  br label %cleanup134.thread

if.end99:                                         ; preds = %for.body.i.i278.if.end99_crit_edge, %if.end.i273.if.end99_crit_edge, %for.body.i.i259.if.end99_crit_edge, %if.end.i254.if.end99_crit_edge, %for.body.i.i.if.end99_crit_edge, %if.end.i.if.end99_crit_edge
  %sh.2331 = phi ptr [ %call.i248, %if.end.i254.if.end99_crit_edge ], [ %call.i, %if.end.i.if.end99_crit_edge ], [ %call.i267, %if.end.i273.if.end99_crit_edge ], [ %call.i267, %for.body.i.i278.if.end99_crit_edge ], [ %call.i248, %for.body.i.i259.if.end99_crit_edge ], [ %call.i, %for.body.i.i.if.end99_crit_edge ]
  %lru100 = getelementptr inbounds %struct.stripe_head, ptr %sh.2331, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i, align 4
  %call.i.i284 = call zeroext i1 @__list_add_valid(ptr noundef %lru100, ptr noundef %101, ptr noundef %cached_stripe_list) #12
  br i1 %call.i.i284, label %if.end.i.i285, label %if.end99.if.end101_crit_edge

if.end99.if.end101_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.end.i.i285:                                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %lru100, ptr %prev.i, align 4
  %103 = ptrtoint ptr %lru100 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %cached_stripe_list, ptr %lru100, align 4
  %prev3.i.i = getelementptr inbounds %struct.stripe_head, ptr %sh.2331, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %lru100, ptr %101, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.end.i.i285, %if.end99.if.end101_crit_edge, %r5c_recovery_lookup_stripe.exit242.if.end101_crit_edge
  %sh.3 = phi ptr [ %sh.0.le.i239, %r5c_recovery_lookup_stripe.exit242.if.end101_crit_edge ], [ %sh.2331, %if.end99.if.end101_crit_edge ], [ %sh.2331, %if.end.i.i285 ]
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %add.ptr, align 1
  %108 = zext i16 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %107, label %if.end101.cleanup134.thread_crit_edge [
    i16 0, label %if.then107
    i16 256, label %if.then123
  ]

if.end101.cleanup134.thread_crit_edge:            ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup134.thread

if.then107:                                       ; preds = %if.end101
  %state108 = getelementptr inbounds %struct.stripe_head, ptr %sh.3, i32 0, i32 10
  %109 = ptrtoint ptr %state108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %state108, align 4
  %111 = and i32 %110, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool110.not = icmp eq i32 %111, 0
  br i1 %tobool110.not, label %land.lhs.true, label %if.then107.if.end116_crit_edge

if.then107.if.end116_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

land.lhs.true:                                    ; preds = %if.then107
  %pd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh.3, i32 0, i32 6
  %112 = ptrtoint ptr %pd_idx to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %pd_idx, align 8
  %idxprom = sext i16 %113 to i32
  %flags = getelementptr %struct.stripe_head, ptr %sh.3, i32 0, i32 29, i32 %idxprom, i32 12
  %114 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %flags, align 4
  %116 = and i32 %115, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool113.not = icmp eq i32 %116, 0
  br i1 %tobool113.not, label %land.lhs.true.if.end116_crit_edge, label %if.then114

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then114:                                       ; preds = %land.lhs.true
  call fastcc void @r5l_recovery_replay_one_stripe(ptr noundef %5, ptr noundef nonnull %sh.3, ptr noundef %ctx)
  %lru115 = getelementptr inbounds %struct.stripe_head, ptr %sh.3, i32 0, i32 1
  %call.i.i286 = call zeroext i1 @__list_del_entry_valid(ptr noundef %lru115) #12
  br i1 %call.i.i286, label %if.end.i.i289, label %if.then114.__list_del_entry.exit.i_crit_edge

if.then114.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i289:                                    ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i287 = getelementptr inbounds %struct.stripe_head, ptr %sh.3, i32 0, i32 1, i32 1
  %117 = ptrtoint ptr %prev.i.i287 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i287, align 4
  %119 = ptrtoint ptr %lru115 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %lru115, align 4
  %prev1.i.i.i288 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %prev1.i.i.i288 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev1.i.i.i288, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %120, ptr %118, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i289, %if.then114.__list_del_entry.exit.i_crit_edge
  %123 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i, align 4
  %call.i.i.i290 = call zeroext i1 @__list_add_valid(ptr noundef %lru115, ptr noundef %124, ptr noundef %cached_stripe_list) #12
  br i1 %call.i.i.i290, label %if.end.i.i.i291, label %__list_del_entry.exit.i.if.end116_crit_edge

__list_del_entry.exit.i.if.end116_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.end.i.i.i291:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %lru115, ptr %prev.i, align 4
  %126 = ptrtoint ptr %lru115 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %cached_stripe_list, ptr %lru115, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.stripe_head, ptr %sh.3, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev3.i.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %lru115, ptr %124, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.end.i.i.i291, %__list_del_entry.exit.i.if.end116_crit_edge, %land.lhs.true.if.end116_crit_edge, %if.then107.if.end116_crit_edge
  %129 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %log, align 8
  %mddev1.i = getelementptr inbounds %struct.md_rdev, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %mddev1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mddev1.i, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd_idx.i) #12
  %135 = ptrtoint ptr %dd_idx.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %dd_idx.i, align 4, !annotation !176
  %location.i = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr, i32 0, i32 2
  %136 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %location.i, align 1
  %138 = call i64 @llvm.bswap.i64(i64 %137) #12
  %call.i292 = call i64 @raid5_compute_sector(ptr noundef %134, i64 noundef %138, i32 noundef 0, ptr noundef nonnull %dd_idx.i, ptr noundef nonnull %sh.3) #12
  %139 = ptrtoint ptr %dd_idx.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dd_idx.i, align 4
  %page.i = getelementptr %struct.stripe_head, ptr %sh.3, i32 0, i32 29, i32 %140, i32 4
  %141 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %page.i, align 8
  %call2.i = call fastcc i32 @r5l_recovery_read_page(ptr noundef %log, ptr noundef %ctx, ptr noundef %142, i64 noundef %log_offset.0355) #12
  %checksum.i = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr, i32 0, i32 3
  %143 = ptrtoint ptr %checksum.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %checksum.i, align 1
  %145 = call i32 @llvm.bswap.i32(i32 %144) #12
  %146 = ptrtoint ptr %dd_idx.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dd_idx.i, align 4
  %log_checksum.i = getelementptr %struct.stripe_head, ptr %sh.3, i32 0, i32 29, i32 %147, i32 13
  %148 = ptrtoint ptr %log_checksum.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %145, ptr %log_checksum.i, align 4
  %149 = ptrtoint ptr %meta_total_blocks.i297 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %meta_total_blocks.i297, align 8
  %add.i293 = add i64 %150, 8
  store i64 %add.i293, ptr %meta_total_blocks.i297, align 8
  %flags.i294 = getelementptr %struct.stripe_head, ptr %sh.3, i32 0, i32 29, i32 %147, i32 12
  call void @_set_bit(i32 noundef 6, ptr noundef %flags.i294) #12
  call void @_set_bit(i32 noundef 24, ptr noundef %state108) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd_idx.i) #12
  br label %if.end126

if.then123:                                       ; preds = %if.end101
  %151 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %log, align 8
  %mddev1.i296 = getelementptr inbounds %struct.md_rdev, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %mddev1.i296 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mddev1.i296, align 8
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %max_degraded.i = getelementptr inbounds %struct.r5conf, ptr %156, i32 0, i32 7
  %157 = ptrtoint ptr %max_degraded.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %max_degraded.i, align 8
  %mul.i = shl i32 %158, 3
  %conv.i = sext i32 %mul.i to i64
  %159 = ptrtoint ptr %meta_total_blocks.i297 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %meta_total_blocks.i297, align 8
  %add.i298 = add i64 %160, %conv.i
  store i64 %add.i298, ptr %meta_total_blocks.i297, align 8
  %pd_idx.i = getelementptr inbounds %struct.stripe_head, ptr %sh.3, i32 0, i32 6
  %161 = ptrtoint ptr %pd_idx.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %pd_idx.i, align 8
  %idxprom.i = sext i16 %162 to i32
  %page.i299 = getelementptr %struct.stripe_head, ptr %sh.3, i32 0, i32 29, i32 %idxprom.i, i32 4
  %163 = ptrtoint ptr %page.i299 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %page.i299, align 8
  %call.i300 = call fastcc i32 @r5l_recovery_read_page(ptr noundef %log, ptr noundef %ctx, ptr noundef %164, i64 noundef %log_offset.0355) #12
  %checksum.i301 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr, i32 0, i32 3
  %165 = ptrtoint ptr %checksum.i301 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %checksum.i301, align 1
  %167 = call i32 @llvm.bswap.i32(i32 %166) #12
  %168 = ptrtoint ptr %pd_idx.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %pd_idx.i, align 8
  %idxprom5.i = sext i16 %169 to i32
  %log_checksum.i302 = getelementptr %struct.stripe_head, ptr %sh.3, i32 0, i32 29, i32 %idxprom5.i, i32 13
  %170 = ptrtoint ptr %log_checksum.i302 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %167, ptr %log_checksum.i302, align 4
  %flags.i303 = getelementptr %struct.stripe_head, ptr %sh.3, i32 0, i32 29, i32 %idxprom5.i, i32 12
  call void @_set_bit(i32 noundef 6, ptr noundef %flags.i303) #12
  %qd_idx.i = getelementptr inbounds %struct.stripe_head, ptr %sh.3, i32 0, i32 7
  %171 = ptrtoint ptr %qd_idx.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %qd_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %172)
  %cmp.i = icmp sgt i16 %172, -1
  br i1 %cmp.i, label %if.then.i304, label %if.then123.r5l_recovery_load_parity.exit_crit_edge

if.then123.r5l_recovery_load_parity.exit_crit_edge: ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_recovery_load_parity.exit

if.then.i304:                                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  %conv1152.i = zext i16 %172 to i32
  %page17.i = getelementptr %struct.stripe_head, ptr %sh.3, i32 0, i32 29, i32 %conv1152.i, i32 4
  %173 = ptrtoint ptr %page17.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %page17.i, align 8
  %add.i.i = add i64 %log_offset.0355, 8
  %175 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %176)
  %cmp.not.i.i = icmp ult i64 %add.i.i, %176
  %sub.i.i = select i1 %cmp.not.i.i, i64 0, i64 %176
  %spec.select.i.i = sub i64 %add.i.i, %sub.i.i
  %call19.i = call fastcc i32 @r5l_recovery_read_page(ptr noundef %log, ptr noundef %ctx, ptr noundef %174, i64 noundef %spec.select.i.i) #12
  %arrayidx21.i = getelementptr %struct.r5l_payload_data_parity, ptr %add.ptr, i32 1, i32 1
  %177 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %arrayidx21.i, align 1
  %179 = call i32 @llvm.bswap.i32(i32 %178) #12
  %180 = ptrtoint ptr %qd_idx.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %qd_idx.i, align 2
  %idxprom24.i = sext i16 %181 to i32
  %log_checksum26.i = getelementptr %struct.stripe_head, ptr %sh.3, i32 0, i32 29, i32 %idxprom24.i, i32 13
  %182 = ptrtoint ptr %log_checksum26.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %179, ptr %log_checksum26.i, align 4
  %flags31.i = getelementptr %struct.stripe_head, ptr %sh.3, i32 0, i32 29, i32 %idxprom24.i, i32 12
  call void @_set_bit(i32 noundef 6, ptr noundef %flags31.i) #12
  br label %r5l_recovery_load_parity.exit

r5l_recovery_load_parity.exit:                    ; preds = %if.then.i304, %if.then123.r5l_recovery_load_parity.exit_crit_edge
  %state.i305 = getelementptr inbounds %struct.stripe_head, ptr %sh.3, i32 0, i32 10
  call void @_clear_bit(i32 noundef 24, ptr noundef %state.i305) #12
  br label %if.end126

if.end126:                                        ; preds = %r5l_recovery_load_parity.exit, %if.end116
  %size127 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr, i32 0, i32 1
  %183 = ptrtoint ptr %size127 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %size127, align 1
  %185 = call i32 @llvm.bswap.i32(i32 %184)
  %conv128 = zext i32 %185 to i64
  %add.i307 = add i64 %log_offset.0355, %conv128
  %186 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i307, i64 %187)
  %cmp.not.i309 = icmp ult i64 %add.i307, %187
  %sub.i310 = select i1 %cmp.not.i309, i64 0, i64 %187
  %spec.select.i311 = sub i64 %add.i307, %sub.i310
  %188 = lshr i32 %185, 1
  %mul131 = and i32 %188, 2147483644
  %add132 = add nuw i32 %mul131, 16
  br label %cleanup134

cleanup134.thread:                                ; preds = %if.end101.cleanup134.thread_crit_edge, %do.end95, %cleanup.thread325
  %retval.4.ph = phi i32 [ -12, %cleanup.thread325 ], [ -12, %do.end95 ], [ -22, %if.end101.cleanup134.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd) #12
  br label %cleanup137

cleanup134:                                       ; preds = %if.end126, %for.end
  %add.pn = phi i32 [ %add, %for.end ], [ %add132, %if.end126 ]
  %log_offset.1 = phi i64 [ %log_offset.0355, %for.end ], [ %spec.select.i311, %if.end126 ]
  %mb_offset.1 = add i32 %add.pn, %mb_offset.0354
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd) #12
  %189 = ptrtoint ptr %meta_size to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %meta_size, align 1
  %191 = call i32 @llvm.bswap.i32(i32 %190)
  %cmp6 = icmp ult i32 %mb_offset.1, %191
  br i1 %cmp6, label %cleanup134.while.body_crit_edge, label %cleanup134.cleanup137_crit_edge

cleanup134.cleanup137_crit_edge:                  ; preds = %cleanup134
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup137

cleanup134.while.body_crit_edge:                  ; preds = %cleanup134
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup137:                                       ; preds = %cleanup134.cleanup137_crit_edge, %cleanup134.thread, %if.end3.cleanup137_crit_edge, %if.then2, %entry.cleanup137_crit_edge
  %retval.5 = phi i32 [ %call, %if.then2 ], [ -11, %entry.cleanup137_crit_edge ], [ %retval.4.ph, %cleanup134.thread ], [ 0, %if.end3.cleanup137_crit_edge ], [ 0, %cleanup134.cleanup137_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r5l_recovery_read_page(ptr nocapture noundef readonly %log, ptr nocapture noundef %ctx, ptr noundef %page, i64 noundef %offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pool_offset = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %pool_offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pool_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %offset)
  %cmp = icmp ugt i64 %1, %offset
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid_pages = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 10
  %2 = ptrtoint ptr %valid_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valid_pages, align 4
  %mul = shl i32 %3, 3
  %conv = sext i32 %mul to i64
  %add = add i64 %1, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset)
  %cmp2.not = icmp ugt i64 %add, %offset
  br i1 %cmp2.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %ra_bio.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 11
  %4 = ptrtoint ptr %ra_bio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ra_bio.i, align 8
  tail call void @bio_reset(ptr noundef %5) #12
  %6 = ptrtoint ptr %ra_bio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ra_bio.i, align 8
  %8 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %log, align 8
  %bdev.i = getelementptr inbounds %struct.md_rdev, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdev.i, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %13, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %15, %11
  br i1 %cmp.not.i.i, label %if.then.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.then.bio_set_dev.exit.i_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i = and i16 %13, -2177
  %16 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.then.bio_set_dev.exit.i_crit_edge
  %17 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %7) #12
  %18 = ptrtoint ptr %ra_bio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ra_bio.i, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bi_opf.i.i, align 8
  %21 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log, align 8
  %data_offset.i = getelementptr inbounds %struct.md_rdev, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %data_offset.i, align 8
  %add.i = add i64 %24, %offset
  %25 = load ptr, ptr %ra_bio.i, align 8
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add.i, ptr %bi_iter.i, align 8
  %valid_pages.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 10
  %27 = ptrtoint ptr %valid_pages.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %valid_pages.i, align 4
  %28 = ptrtoint ptr %pool_offset to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %offset, ptr %pool_offset, align 8
  %total_pages.i = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 9
  %device_size.i.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %bio_set_dev.exit.i
  %offset.addr.0.i = phi i64 [ %offset, %bio_set_dev.exit.i ], [ %spec.select.i.i, %while.body.i.while.cond.i_crit_edge ]
  %29 = ptrtoint ptr %valid_pages.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %valid_pages.i, align 4
  %31 = ptrtoint ptr %total_pages.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i = icmp slt i32 %30, %32
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.r5l_recovery_fetch_ra_pool.exit_crit_edge

while.cond.i.r5l_recovery_fetch_ra_pool.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_recovery_fetch_ra_pool.exit

while.body.i:                                     ; preds = %while.cond.i
  %33 = ptrtoint ptr %ra_bio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ra_bio.i, align 8
  %arrayidx.i = getelementptr %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 7, i32 %30
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @bio_add_page(ptr noundef %34, ptr noundef %36, i32 noundef 4096, i32 noundef 0) #12
  %37 = ptrtoint ptr %valid_pages.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %valid_pages.i, align 4
  %add9.i = add i32 %38, 1
  store i32 %add9.i, ptr %valid_pages.i, align 4
  %add.i.i = add i64 %offset.addr.0.i, 8
  %39 = ptrtoint ptr %device_size.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %device_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %40)
  %cmp.not.i31.i = icmp ult i64 %add.i.i, %40
  %sub.i.i = select i1 %cmp.not.i31.i, i64 0, i64 %40
  %spec.select.i.i = sub i64 %add.i.i, %sub.i.i
  %cmp11.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %cmp11.i, label %while.body.i.r5l_recovery_fetch_ra_pool.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.r5l_recovery_fetch_ra_pool.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_recovery_fetch_ra_pool.exit

r5l_recovery_fetch_ra_pool.exit:                  ; preds = %while.body.i.r5l_recovery_fetch_ra_pool.exit_crit_edge, %while.cond.i.r5l_recovery_fetch_ra_pool.exit_crit_edge
  %41 = ptrtoint ptr %ra_bio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ra_bio.i, align 8
  %call13.i = tail call i32 @submit_bio_wait(ptr noundef %42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not = icmp eq i32 %call13.i, 0
  br i1 %tobool.not, label %r5l_recovery_fetch_ra_pool.exit.do.body_crit_edge, label %r5l_recovery_fetch_ra_pool.exit.cleanup_crit_edge

r5l_recovery_fetch_ra_pool.exit.cleanup_crit_edge: ; preds = %r5l_recovery_fetch_ra_pool.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

r5l_recovery_fetch_ra_pool.exit.do.body_crit_edge: ; preds = %r5l_recovery_fetch_ra_pool.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %r5l_recovery_fetch_ra_pool.exit.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge
  %43 = ptrtoint ptr %pool_offset to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %pool_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %offset)
  %cmp7 = icmp ugt i64 %44, %offset
  br i1 %cmp7, label %do.body.do.body19_crit_edge, label %lor.rhs, !prof !139

do.body.do.body19_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19

lor.rhs:                                          ; preds = %do.body
  %valid_pages10 = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 10
  %45 = ptrtoint ptr %valid_pages10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %valid_pages10, align 4
  %mul11 = shl i32 %46, 3
  %conv12 = sext i32 %mul11 to i64
  %add13 = add i64 %44, %conv12
  call void @__sanitizer_cov_trace_cmp8(i64 %add13, i64 %offset)
  %cmp14.not = icmp ugt i64 %add13, %offset
  br i1 %cmp14.not, label %do.end25, label %lor.rhs.do.body19_crit_edge, !prof !137

lor.rhs.do.body19_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19

do.body19:                                        ; preds = %lor.rhs.do.body19_crit_edge, %do.body.do.body19_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1722, 0\0A.popsection", ""() #12, !srcloc !177
  unreachable

do.end25:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call ptr @page_address(ptr noundef %page) #12
  %47 = ptrtoint ptr %pool_offset to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %pool_offset, align 8
  %sub = sub i64 %offset, %48
  %shr = lshr i64 %sub, 3
  %idxprom = trunc i64 %shr to i32
  %arrayidx = getelementptr %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 7, i32 %idxprom
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %call28 = tail call ptr @page_address(ptr noundef %50) #12
  %51 = call ptr @memcpy(ptr %call26, ptr %call28, i32 4096)
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %r5l_recovery_fetch_ra_pool.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end25 ], [ %call13.i, %r5l_recovery_fetch_ra_pool.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r5l_recovery_verify_data_checksum_for_mb(ptr nocapture noundef readonly %log, ptr nocapture noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %mddev1 = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mddev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mddev1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 8
  %call = tail call ptr @page_address(ptr noundef %7) #12
  %pos = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  %add.i = add i64 %9, 8
  %device_size.i = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 2
  %10 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %11)
  %cmp.not.i = icmp ult i64 %add.i, %11
  %sub.i = select i1 %cmp.not.i, i64 0, i64 %11
  %spec.select.i = sub i64 %add.i, %sub.i
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %meta_size = getelementptr inbounds %struct.r5l_meta_block, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %meta_size to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %meta_size, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp180 = icmp ugt i32 %14, 32
  br i1 %cmp180, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %uuid_checksum.i116 = getelementptr inbounds %struct.r5l_log, ptr %log, i32 0, i32 1
  %max_degraded = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end66.while.body_crit_edge, %while.body.lr.ph
  %log_offset.0182 = phi i64 [ %spec.select.i, %while.body.lr.ph ], [ %log_offset.1, %if.end66.while.body_crit_edge ]
  %mb_offset.0181 = phi i64 [ 32, %while.body.lr.ph ], [ %mb_offset.1, %if.end66.while.body_crit_edge ]
  %idx.ext = trunc i64 %mb_offset.0181 to i32
  %add.ptr = getelementptr i8, ptr %call, i32 %idx.ext
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr, align 1
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %16, label %while.body.mismatch_crit_edge [
    i16 0, label %if.then10
    i16 256, label %if.then21
    i16 512, label %while.body.if.then55_crit_edge
  ]

while.body.if.then55_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

while.body.mismatch_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %mismatch

if.then10:                                        ; preds = %while.body
  %checksum = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr, i32 0, i32 3
  %18 = ptrtoint ptr %checksum to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %checksum, align 1
  %call.i = tail call fastcc i32 @r5l_recovery_read_page(ptr noundef %log, ptr noundef %ctx, ptr noundef nonnull %call38.i.i.i, i64 noundef %log_offset.0182) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %20 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %20, 512
  %21 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %25 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 213
  %29 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i.i) #12
  %31 = ptrtoint ptr %uuid_checksum.i116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uuid_checksum.i116, align 4
  %call2.i = tail call i32 @crc32c(i32 noundef %32, ptr noundef %call.i.i.i, i32 noundef 4096) #12
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %33 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %38, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %39 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %call2.i)
  %cmp.i = icmp eq i32 %43, %call2.i
  br i1 %cmp.i, label %if.then10.if.end49_crit_edge, label %if.then10.mismatch_crit_edge

if.then10.mismatch_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %mismatch

if.then10.if.end49_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then21:                                        ; preds = %while.body
  %checksum22 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr, i32 0, i32 3
  %44 = ptrtoint ptr %checksum22 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %checksum22, align 1
  %call.i106 = tail call fastcc i32 @r5l_recovery_read_page(ptr noundef %log, ptr noundef %ctx, ptr noundef nonnull %call38.i.i.i, i64 noundef %log_offset.0182) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %46 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i107 = or i32 %46, 512
  %47 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i.i108 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i.i109, align 4
  %add.i.i.i.i110 = add i32 %50, 1
  store volatile i32 %add.i.i.i.i110, ptr %preempt_count.i.i.i.i.i109, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %51 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i.i.i111 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i1.i.i.i111 to ptr
  %task.i.i.i.i.i112 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i.i.i112, align 8
  %pagefault_disabled.i.i.i.i.i113 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 213
  %55 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pagefault_disabled.i.i.i.i.i113, align 8
  %inc.i.i.i.i.i114 = add i32 %56, 1
  store i32 %inc.i.i.i.i.i114, ptr %pagefault_disabled.i.i.i.i.i113, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %call.i.i.i115 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i.i107) #12
  %57 = ptrtoint ptr %uuid_checksum.i116 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %uuid_checksum.i116, align 4
  %call2.i117 = tail call i32 @crc32c(i32 noundef %58, ptr noundef %call.i.i.i115, i32 noundef 4096) #12
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i115) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %59 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i.i118 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i1.i.i118 to ptr
  %task.i.i.i.i119 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i.i.i.i119, align 8
  %pagefault_disabled.i.i.i.i120 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 213
  %63 = ptrtoint ptr %pagefault_disabled.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pagefault_disabled.i.i.i.i120, align 8
  %dec.i.i.i.i121 = add i32 %64, -1
  store i32 %dec.i.i.i.i121, ptr %pagefault_disabled.i.i.i.i120, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %65 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i122 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i122 to ptr
  %preempt_count.i.i.i.i123 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i123, align 4
  %sub.i.i.i124 = add i32 %68, -1
  store volatile i32 %sub.i.i.i124, ptr %preempt_count.i.i.i.i123, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %call2.i117)
  %cmp.i125 = icmp eq i32 %69, %call2.i117
  br i1 %cmp.i125, label %if.end28, label %if.then21.mismatch_crit_edge

if.then21.mismatch_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %mismatch

if.end28:                                         ; preds = %if.then21
  %70 = ptrtoint ptr %max_degraded to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_degraded, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp29 = icmp eq i32 %71, 2
  br i1 %cmp29, label %land.lhs.true, label %if.end28.if.end49_crit_edge

if.end28.if.end49_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end28
  %add.i127 = add i64 %log_offset.0182, 8
  %72 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i127, i64 %73)
  %cmp.not.i129 = icmp ult i64 %add.i127, %73
  %sub.i130 = select i1 %cmp.not.i129, i64 0, i64 %73
  %spec.select.i131 = sub i64 %add.i127, %sub.i130
  %arrayidx33 = getelementptr [0 x i32], ptr %checksum22, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %arrayidx33, align 1
  %call.i132 = tail call fastcc i32 @r5l_recovery_read_page(ptr noundef %log, ptr noundef %ctx, ptr noundef nonnull %call38.i.i.i, i64 noundef %spec.select.i131) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %76 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i133 = or i32 %76, 512
  %77 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i.i134 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i134 to ptr
  %preempt_count.i.i.i.i.i135 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i.i135, align 4
  %add.i.i.i.i136 = add i32 %80, 1
  store volatile i32 %add.i.i.i.i136, ptr %preempt_count.i.i.i.i.i135, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %81 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i.i.i137 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i1.i.i.i137 to ptr
  %task.i.i.i.i.i138 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i.i.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i.i.i.i.i138, align 8
  %pagefault_disabled.i.i.i.i.i139 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 213
  %85 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pagefault_disabled.i.i.i.i.i139, align 8
  %inc.i.i.i.i.i140 = add i32 %86, 1
  store i32 %inc.i.i.i.i.i140, ptr %pagefault_disabled.i.i.i.i.i139, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %call.i.i.i141 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i.i133) #12
  %87 = ptrtoint ptr %uuid_checksum.i116 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %uuid_checksum.i116, align 4
  %call2.i143 = tail call i32 @crc32c(i32 noundef %88, ptr noundef %call.i.i.i141, i32 noundef 4096) #12
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i141) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %89 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i1.i.i144 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i1.i.i144 to ptr
  %task.i.i.i.i145 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i.i.i.i145, align 8
  %pagefault_disabled.i.i.i.i146 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 213
  %93 = ptrtoint ptr %pagefault_disabled.i.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pagefault_disabled.i.i.i.i146, align 8
  %dec.i.i.i.i147 = add i32 %94, -1
  store i32 %dec.i.i.i.i147, ptr %pagefault_disabled.i.i.i.i146, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %95 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i148 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i148 to ptr
  %preempt_count.i.i.i.i149 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i149, align 4
  %sub.i.i.i150 = add i32 %98, -1
  store volatile i32 %sub.i.i.i150, ptr %preempt_count.i.i.i.i149, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %75) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %call2.i143)
  %cmp.i151 = icmp eq i32 %99, %call2.i143
  br i1 %cmp.i151, label %land.lhs.true.if.end49_crit_edge, label %land.lhs.true.mismatch_crit_edge

land.lhs.true.mismatch_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %mismatch

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %if.end28.if.end49_crit_edge, %if.then10.if.end49_crit_edge
  %100 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %.pr = load i16, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %.pr)
  %cmp53 = icmp eq i16 %.pr, 512
  br i1 %cmp53, label %if.end49.if.then55_crit_edge, label %if.else58

if.end49.if.then55_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.then55:                                        ; preds = %if.end49.if.then55_crit_edge, %while.body.if.then55_crit_edge
  %size = getelementptr inbounds %struct.r5l_payload_flush, ptr %add.ptr, i32 0, i32 1
  %101 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %size, align 1
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %add = add i32 %103, 8
  br label %if.end66

if.else58:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %size59 = getelementptr inbounds %struct.r5l_payload_data_parity, ptr %add.ptr, i32 0, i32 1
  %104 = ptrtoint ptr %size59 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %size59, align 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %conv60 = zext i32 %106 to i64
  %add.i153 = add i64 %log_offset.0182, %conv60
  %107 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %device_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i153, i64 %108)
  %cmp.not.i155 = icmp ult i64 %add.i153, %108
  %sub.i156 = select i1 %cmp.not.i155, i64 0, i64 %108
  %spec.select.i157 = sub i64 %add.i153, %sub.i156
  %109 = lshr i32 %106, 1
  %mul = and i32 %109, 2147483644
  %add63 = add nuw i32 %mul, 16
  br label %if.end66

if.end66:                                         ; preds = %if.else58, %if.then55
  %conv56.pn.in = phi i32 [ %add, %if.then55 ], [ %add63, %if.else58 ]
  %log_offset.1 = phi i64 [ %log_offset.0182, %if.then55 ], [ %spec.select.i157, %if.else58 ]
  %conv56.pn = zext i32 %conv56.pn.in to i64
  %mb_offset.1 = add i64 %mb_offset.0181, %conv56.pn
  %110 = ptrtoint ptr %meta_size to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %meta_size, align 1
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %conv = zext i32 %112 to i64
  %cmp = icmp ult i64 %mb_offset.1, %conv
  br i1 %cmp, label %if.end66.while.body_crit_edge, label %if.end66.while.end_crit_edge

if.end66.while.end_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end66.while.body_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end66.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %113 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %113, align 4
  %and.i.i = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !137

if.then.i.i:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %115, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %116, %if.end.i.i ]
  %117 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %117, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %118 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp.i.i.i.i = icmp eq i32 %119, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !139

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %117, ptr noundef nonnull @.str.36) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !165
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %120 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !148
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %120, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@r5l_recovery_verify_data_checksum_for_mb, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !162

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %117, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

mismatch:                                         ; preds = %land.lhs.true.mismatch_crit_edge, %if.then21.mismatch_crit_edge, %if.then10.mismatch_crit_edge, %while.body.mismatch_crit_edge
  %121 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %121, align 4
  %and.i.i158 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i158)
  %tobool.not.i.i159 = icmp eq i32 %and.i.i158, 0
  br i1 %tobool.not.i.i159, label %if.end.i.i162, label %if.then.i.i161, !prof !137

if.then.i.i161:                                   ; preds = %mismatch
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i160 = add i32 %123, -1
  br label %_compound_head.exit.i167

if.end.i.i162:                                    ; preds = %mismatch
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i167

_compound_head.exit.i167:                         ; preds = %if.end.i.i162, %if.then.i.i161
  %retval.0.i.i163 = phi i32 [ %sub.i.i160, %if.then.i.i161 ], [ %124, %if.end.i.i162 ]
  %125 = inttoptr i32 %retval.0.i.i163 to ptr
  %_refcount.i.i.i.i.i164 = getelementptr inbounds %struct.page, ptr %125, i32 0, i32 3
  %call.i.i.i.i.i.i.i165 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i164, i32 noundef 4) #12
  %126 = ptrtoint ptr %_refcount.i.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %_refcount.i.i.i.i.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i.i.i.i166 = icmp eq i32 %127, 0
  br i1 %cmp.i.i.i.i166, label %if.then.i.i.i.i168, label %do.end5.i.i.i.i172, !prof !139

if.then.i.i.i.i168:                               ; preds = %_compound_head.exit.i167
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %125, ptr noundef nonnull @.str.36) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !165
  unreachable

do.end5.i.i.i.i172:                               ; preds = %_compound_head.exit.i167
  %call.i.i.i10.i.i.i.i169 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i164, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i164, i32 1, i32 3, i32 1) #12
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i164, ptr %_refcount.i.i.i.i.i164, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i164) #12, !srcloc !148
  %asmresult.i.i.i.i.i.i.i.i.i.i170 = extractvalue { i32, i32 } %128, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i170)
  %cmp.i.i.i.i.i.i.i171 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i170, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@r5l_recovery_verify_data_checksum_for_mb, %if.then.i.i.i.i.i174)) #12
          to label %folio_put_testzero.exit.i.i175 [label %if.then.i.i.i.i.i174], !srcloc !162

if.then.i.i.i.i.i174:                             ; preds = %do.end5.i.i.i.i172
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i173 = zext i1 %cmp.i.i.i.i.i.i.i171 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %125, i32 noundef -1, i32 noundef %conv.i.i.i.i.i173) #12
  br label %folio_put_testzero.exit.i.i175

folio_put_testzero.exit.i.i175:                   ; preds = %if.then.i.i.i.i.i174, %do.end5.i.i.i.i172
  br i1 %cmp.i.i.i.i.i.i.i171, label %folio_put_testzero.exit.i.i175.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i175.cleanup_crit_edge

folio_put_testzero.exit.i.i175.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i175
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

folio_put_testzero.exit.i.i175.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i175
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i175.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %117, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ %125, %folio_put_testzero.exit.i.i175.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ -22, %folio_put_testzero.exit.i.i175.cleanup.sink.split_crit_edge ]
  tail call void @__put_page(ptr noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i175.cleanup_crit_edge, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ -22, %folio_put_testzero.exit.i.i175.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @raid5_compute_sector(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raid5_set_cache_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r5l_recovery_replay_one_stripe(ptr nocapture noundef readonly %conf, ptr noundef %sh, ptr nocapture noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %disks = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 13
  %0 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp186 = icmp sgt i32 %1, 0
  br i1 %cmp186, label %for.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %qd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 7
  %pd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %disk_index.0188 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %for.inc.for.body_crit_edge ]
  %data_count.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %data_count.1, %for.inc.for.body_crit_edge ]
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %disk_index.0188, i32 12
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %qd_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %qd_idx, align 2
  %conv = sext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %disk_index.0188, i32 %conv)
  %cmp1 = icmp eq i32 %disk_index.0188, %conv
  br i1 %cmp1, label %if.end.for.inc_crit_edge, label %lor.lhs.false

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %pd_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pd_idx, align 8
  %conv3 = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %disk_index.0188, i32 %conv3)
  %cmp4 = icmp ne i32 %disk_index.0188, %conv3
  %inc = zext i1 %cmp4 to i32
  %spec.select = add i32 %data_count.0187, %inc
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %data_count.1 = phi i32 [ %data_count.0187, %if.end.for.inc_crit_edge ], [ %data_count.0187, %for.body.for.inc_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %inc8 = add nuw nsw i32 %disk_index.0188, 1
  %exitcond.not = icmp eq i32 %inc8, %1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_count.1)
  %cmp9 = icmp eq i32 %data_count.1, 0
  br i1 %cmp9, label %for.end.out_crit_edge, label %for.cond13.preheader

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond13.preheader:                             ; preds = %for.end
  %9 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15191 = icmp sgt i32 %10, 0
  br i1 %cmp15191, label %for.body17.lr.ph, label %for.cond13.preheader.for.end77_crit_edge

for.cond13.preheader.for.end77_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end77

for.body17.lr.ph:                                 ; preds = %for.cond13.preheader
  %disks25 = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 66
  %sector = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 5
  br label %for.body17

for.body17:                                       ; preds = %for.inc75.for.body17_crit_edge, %for.body17.lr.ph
  %disk_index.1192 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc76, %for.inc75.for.body17_crit_edge ]
  %flags20 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %disk_index.1192, i32 12
  %11 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags20, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %for.body17.for.inc75_crit_edge, label %if.end24

for.body17.for.inc75_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc75

if.end24:                                         ; preds = %for.body17
  %14 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end24.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end24.rcu_read_lock.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end24
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end24.rcu_read_lock.exit_crit_edge
  %18 = ptrtoint ptr %disks25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disks25, align 8
  %arrayidx26 = getelementptr %struct.disk_info, ptr %19, i32 %disk_index.1192
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx26, align 4
  %call29 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end38_crit_edge

rcu_read_lock.exit.do.end38_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call31 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true.do.end38_crit_edge, label %land.lhs.true33

land.lhs.true.do.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

land.lhs.true33:                                  ; preds = %land.lhs.true
  %.b113 = load i1, ptr @r5l_recovery_replay_one_stripe.__warned, align 1
  br i1 %.b113, label %land.lhs.true33.do.end38_crit_edge, label %if.then35

land.lhs.true33.do.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @r5l_recovery_replay_one_stripe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1899, ptr noundef nonnull @.str.1) #12
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %land.lhs.true33.do.end38_crit_edge, %land.lhs.true.do.end38_crit_edge, %rcu_read_lock.exit.do.end38_crit_edge
  %tobool40.not = icmp eq ptr %21, null
  br i1 %tobool40.not, label %do.end38.if.end45_crit_edge, label %if.then41

do.end38.if.end45_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then41:                                        ; preds = %do.end38
  %nr_pending = getelementptr inbounds %struct.md_rdev, ptr %21, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_pending, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nr_pending, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_pending, ptr %nr_pending, i32 1, ptr elementtype(i32) %nr_pending) #12, !srcloc !140
  %call.i139 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i139, label %if.then41.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i142

if.then41.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i142:                               ; preds = %if.then41
  %call1.i140 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i140)
  %tobool.not.i141 = icmp eq i32 %call1.i140, 0
  br i1 %tobool.not.i141, label %land.lhs.true.i142.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i144

land.lhs.true.i142.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i144:                              ; preds = %land.lhs.true.i142
  %.b4.i143 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i143, label %land.lhs.true2.i144.rcu_read_unlock.exit_crit_edge, label %if.then.i145

land.lhs.true2.i144.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i145:                                     ; preds = %land.lhs.true2.i144
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i145, %land.lhs.true2.i144.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i142.rcu_read_unlock.exit_crit_edge, %if.then41.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %23 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i146 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i146 to ptr
  %preempt_count.i.i.i.i147 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i147, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i147, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %27 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sector, align 8
  %page = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %disk_index.1192, i32 4
  %29 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page, align 8
  %call44 = tail call i32 @sync_page_io(ptr noundef nonnull %21, i64 noundef %28, i32 noundef 4096, ptr noundef %30, i32 noundef 1, i32 noundef 0, i1 noundef zeroext false) #12
  %mddev = getelementptr inbounds %struct.md_rdev, ptr %21, i32 0, i32 2
  %31 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mddev, align 8
  %flags.i = getelementptr inbounds %struct.md_rdev, ptr %21, i32 0, i32 16
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %34, 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_pending, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %nr_pending, i32 1, i32 3, i32 1) #12
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_pending, ptr %nr_pending, i32 1, ptr elementtype(i32) %nr_pending) #12, !srcloc !148
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i148 = icmp eq i32 %and1.i.i, 0
  %or.cond.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i148
  br i1 %or.cond.i, label %rcu_read_unlock.exit.rdev_dec_pending.exit_crit_edge, label %if.then.i149

rcu_read_unlock.exit.rdev_dec_pending.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rdev_dec_pending.exit

if.then.i149:                                     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %recovery.i = getelementptr inbounds %struct.mddev, ptr %32, i32 0, i32 56
  tail call void @_set_bit(i32 noundef 5, ptr noundef %recovery.i) #12
  %thread.i = getelementptr inbounds %struct.mddev, ptr %32, i32 0, i32 40
  %36 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %thread.i, align 4
  tail call void @md_wakeup_thread(ptr noundef %37) #12
  br label %rdev_dec_pending.exit

rdev_dec_pending.exit:                            ; preds = %if.then.i149, %rcu_read_unlock.exit.rdev_dec_pending.exit_crit_edge
  %38 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i116 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i116 to ptr
  %preempt_count.i.i.i.i117 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i117, align 4
  %add.i.i.i118 = add i32 %41, 1
  store volatile i32 %add.i.i.i118, ptr %preempt_count.i.i.i.i117, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i119 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i119, label %rdev_dec_pending.exit.if.end45_crit_edge, label %land.lhs.true.i122

rdev_dec_pending.exit.if.end45_crit_edge:         ; preds = %rdev_dec_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

land.lhs.true.i122:                               ; preds = %rdev_dec_pending.exit
  %call1.i120 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120)
  %tobool.not.i121 = icmp eq i32 %call1.i120, 0
  br i1 %tobool.not.i121, label %land.lhs.true.i122.if.end45_crit_edge, label %land.lhs.true2.i124

land.lhs.true.i122.if.end45_crit_edge:            ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

land.lhs.true2.i124:                              ; preds = %land.lhs.true.i122
  %.b4.i123 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i123, label %land.lhs.true2.i124.if.end45_crit_edge, label %if.then.i125

land.lhs.true2.i124.if.end45_crit_edge:           ; preds = %land.lhs.true2.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then.i125:                                     ; preds = %land.lhs.true2.i124
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then.i125, %land.lhs.true2.i124.if.end45_crit_edge, %land.lhs.true.i122.if.end45_crit_edge, %rdev_dec_pending.exit.if.end45_crit_edge, %do.end38.if.end45_crit_edge
  %42 = ptrtoint ptr %disks25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %disks25, align 8
  %replacement = getelementptr %struct.disk_info, ptr %43, i32 %disk_index.1192, i32 1
  %44 = ptrtoint ptr %replacement to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %replacement, align 4
  %call53 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true55, label %if.end45.do.end63_crit_edge

if.end45.do.end63_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

land.lhs.true55:                                  ; preds = %if.end45
  %call56 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true55.do.end63_crit_edge, label %land.lhs.true58

land.lhs.true55.do.end63_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %.b111112 = load i1, ptr @r5l_recovery_replay_one_stripe.__warned.52, align 1
  br i1 %.b111112, label %land.lhs.true58.do.end63_crit_edge, label %if.then60

land.lhs.true58.do.end63_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

if.then60:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @r5l_recovery_replay_one_stripe.__warned.52, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1909, ptr noundef nonnull @.str.1) #12
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %land.lhs.true58.do.end63_crit_edge, %land.lhs.true55.do.end63_crit_edge, %if.end45.do.end63_crit_edge
  %tobool65.not = icmp eq ptr %45, null
  br i1 %tobool65.not, label %do.end63.if.end74_crit_edge, label %if.then66

do.end63.if.end74_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then66:                                        ; preds = %do.end63
  %nr_pending67 = getelementptr inbounds %struct.md_rdev, ptr %45, i32 0, i32 23
  %call.i.i127 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_pending67, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nr_pending67, i32 1, i32 3, i32 1) #12
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_pending67, ptr %nr_pending67, i32 1, ptr elementtype(i32) %nr_pending67) #12, !srcloc !140
  %call.i150 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i150, label %if.then66.rcu_read_unlock.exit160_crit_edge, label %land.lhs.true.i153

if.then66.rcu_read_unlock.exit160_crit_edge:      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit160

land.lhs.true.i153:                               ; preds = %if.then66
  %call1.i151 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i151)
  %tobool.not.i152 = icmp eq i32 %call1.i151, 0
  br i1 %tobool.not.i152, label %land.lhs.true.i153.rcu_read_unlock.exit160_crit_edge, label %land.lhs.true2.i155

land.lhs.true.i153.rcu_read_unlock.exit160_crit_edge: ; preds = %land.lhs.true.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit160

land.lhs.true2.i155:                              ; preds = %land.lhs.true.i153
  %.b4.i154 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i154, label %land.lhs.true2.i155.rcu_read_unlock.exit160_crit_edge, label %if.then.i156

land.lhs.true2.i155.rcu_read_unlock.exit160_crit_edge: ; preds = %land.lhs.true2.i155
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit160

if.then.i156:                                     ; preds = %land.lhs.true2.i155
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_unlock.exit160

rcu_read_unlock.exit160:                          ; preds = %if.then.i156, %land.lhs.true2.i155.rcu_read_unlock.exit160_crit_edge, %land.lhs.true.i153.rcu_read_unlock.exit160_crit_edge, %if.then66.rcu_read_unlock.exit160_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %47 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i157 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i157 to ptr
  %preempt_count.i.i.i.i158 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i158, align 4
  %sub.i.i.i159 = add i32 %50, -1
  store volatile i32 %sub.i.i.i159, ptr %preempt_count.i.i.i.i158, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %51 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %sector, align 8
  %page71 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %disk_index.1192, i32 4
  %53 = ptrtoint ptr %page71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %page71, align 8
  %call72 = tail call i32 @sync_page_io(ptr noundef nonnull %45, i64 noundef %52, i32 noundef 4096, ptr noundef %54, i32 noundef 1, i32 noundef 0, i1 noundef zeroext false) #12
  %mddev73 = getelementptr inbounds %struct.md_rdev, ptr %45, i32 0, i32 2
  %55 = ptrtoint ptr %mddev73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mddev73, align 8
  %flags.i161 = getelementptr inbounds %struct.md_rdev, ptr %45, i32 0, i32 16
  %57 = ptrtoint ptr %flags.i161 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags.i161, align 4
  %and1.i.i162 = and i32 %58, 1
  %call.i.i.i164 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_pending67, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %nr_pending67, i32 1, i32 3, i32 1) #12
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_pending67, ptr %nr_pending67, i32 1, ptr elementtype(i32) %nr_pending67) #12, !srcloc !148
  %asmresult.i.i.i.i.i.i165 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i165)
  %cmp.i.i.i166 = icmp ne i32 %asmresult.i.i.i.i.i.i165, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i162)
  %tobool.not.i167 = icmp eq i32 %and1.i.i162, 0
  %or.cond.i168 = select i1 %cmp.i.i.i166, i1 true, i1 %tobool.not.i167
  br i1 %or.cond.i168, label %rcu_read_unlock.exit160.rdev_dec_pending.exit172_crit_edge, label %if.then.i171

rcu_read_unlock.exit160.rdev_dec_pending.exit172_crit_edge: ; preds = %rcu_read_unlock.exit160
  call void @__sanitizer_cov_trace_pc() #14
  br label %rdev_dec_pending.exit172

if.then.i171:                                     ; preds = %rcu_read_unlock.exit160
  call void @__sanitizer_cov_trace_pc() #14
  %recovery.i169 = getelementptr inbounds %struct.mddev, ptr %56, i32 0, i32 56
  tail call void @_set_bit(i32 noundef 5, ptr noundef %recovery.i169) #12
  %thread.i170 = getelementptr inbounds %struct.mddev, ptr %56, i32 0, i32 40
  %60 = ptrtoint ptr %thread.i170 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %thread.i170, align 4
  tail call void @md_wakeup_thread(ptr noundef %61) #12
  br label %rdev_dec_pending.exit172

rdev_dec_pending.exit172:                         ; preds = %if.then.i171, %rcu_read_unlock.exit160.rdev_dec_pending.exit172_crit_edge
  %62 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i128 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i128 to ptr
  %preempt_count.i.i.i.i129 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i129, align 4
  %add.i.i.i130 = add i32 %65, 1
  store volatile i32 %add.i.i.i130, ptr %preempt_count.i.i.i.i129, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i131 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i131, label %rdev_dec_pending.exit172.if.end74_crit_edge, label %land.lhs.true.i134

rdev_dec_pending.exit172.if.end74_crit_edge:      ; preds = %rdev_dec_pending.exit172
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

land.lhs.true.i134:                               ; preds = %rdev_dec_pending.exit172
  %call1.i132 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %tobool.not.i133 = icmp eq i32 %call1.i132, 0
  br i1 %tobool.not.i133, label %land.lhs.true.i134.if.end74_crit_edge, label %land.lhs.true2.i136

land.lhs.true.i134.if.end74_crit_edge:            ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

land.lhs.true2.i136:                              ; preds = %land.lhs.true.i134
  %.b4.i135 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i135, label %land.lhs.true2.i136.if.end74_crit_edge, label %if.then.i137

land.lhs.true2.i136.if.end74_crit_edge:           ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then.i137:                                     ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %if.end74

if.end74:                                         ; preds = %if.then.i137, %land.lhs.true2.i136.if.end74_crit_edge, %land.lhs.true.i134.if.end74_crit_edge, %rdev_dec_pending.exit172.if.end74_crit_edge, %do.end63.if.end74_crit_edge
  %call.i173 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i173, label %if.end74.rcu_read_unlock.exit183_crit_edge, label %land.lhs.true.i176

if.end74.rcu_read_unlock.exit183_crit_edge:       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit183

land.lhs.true.i176:                               ; preds = %if.end74
  %call1.i174 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i174)
  %tobool.not.i175 = icmp eq i32 %call1.i174, 0
  br i1 %tobool.not.i175, label %land.lhs.true.i176.rcu_read_unlock.exit183_crit_edge, label %land.lhs.true2.i178

land.lhs.true.i176.rcu_read_unlock.exit183_crit_edge: ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit183

land.lhs.true2.i178:                              ; preds = %land.lhs.true.i176
  %.b4.i177 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i177, label %land.lhs.true2.i178.rcu_read_unlock.exit183_crit_edge, label %if.then.i179

land.lhs.true2.i178.rcu_read_unlock.exit183_crit_edge: ; preds = %land.lhs.true2.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit183

if.then.i179:                                     ; preds = %land.lhs.true2.i178
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_unlock.exit183

rcu_read_unlock.exit183:                          ; preds = %if.then.i179, %land.lhs.true2.i178.rcu_read_unlock.exit183_crit_edge, %land.lhs.true.i176.rcu_read_unlock.exit183_crit_edge, %if.end74.rcu_read_unlock.exit183_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %66 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i.i180 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i180 to ptr
  %preempt_count.i.i.i.i181 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i181, align 4
  %sub.i.i.i182 = add i32 %69, -1
  store volatile i32 %sub.i.i.i182, ptr %preempt_count.i.i.i.i181, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %for.inc75

for.inc75:                                        ; preds = %rcu_read_unlock.exit183, %for.body17.for.inc75_crit_edge
  %inc76 = add nuw nsw i32 %disk_index.1192, 1
  %70 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %disks, align 4
  %cmp15 = icmp slt i32 %inc76, %71
  br i1 %cmp15, label %for.inc75.for.body17_crit_edge, label %for.inc75.for.end77_crit_edge

for.inc75.for.end77_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end77

for.inc75.for.body17_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17

for.end77:                                        ; preds = %for.inc75.for.end77_crit_edge, %for.cond13.preheader.for.end77_crit_edge
  %data_parity_stripes = getelementptr inbounds %struct.r5l_recovery_ctx, ptr %ctx, i32 0, i32 4
  %72 = ptrtoint ptr %data_parity_stripes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_parity_stripes, align 8
  %inc78 = add i32 %73, 1
  store i32 %inc78, ptr %data_parity_stripes, align 8
  %74 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr = load i32, ptr %disks, align 4
  br label %out

out:                                              ; preds = %for.end77, %for.end.out_crit_edge, %entry.out_crit_edge
  %75 = phi i32 [ %1, %for.end.out_crit_edge ], [ %.pr, %for.end77 ], [ %1, %entry.out_crit_edge ]
  %state.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  %76 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %state.i, align 8
  %log_start.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 25
  %77 = ptrtoint ptr %log_start.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 -1, ptr %log_start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not5.i = icmp eq i32 %75, 0
  br i1 %tobool.not5.i, label %out.r5l_recovery_reset_stripe.exit_crit_edge, label %out.for.body.i_crit_edge

out.for.body.i_crit_edge:                         ; preds = %out
  br label %for.body.i

out.r5l_recovery_reset_stripe.exit_crit_edge:     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_recovery_reset_stripe.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %out.for.body.i_crit_edge
  %i.06.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %75, %out.for.body.i_crit_edge ]
  %dec.i = add i32 %i.06.i, -1
  %flags.i184 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec.i, i32 12
  %78 = ptrtoint ptr %flags.i184 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %flags.i184, align 8
  %tobool.not.i185 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i185, label %for.body.i.r5l_recovery_reset_stripe.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.r5l_recovery_reset_stripe.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r5l_recovery_reset_stripe.exit

r5l_recovery_reset_stripe.exit:                   ; preds = %for.body.i.r5l_recovery_reset_stripe.exit_crit_edge, %out.r5l_recovery_reset_stripe.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @raid5_get_active_stripe(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !37, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114, !115, !117, !118, !120, !121, !122}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/raid5-cache.c", i32 456, i32 2}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../drivers/md/raid5-cache.c", i32 1597, i32 8}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/md/raid5-cache.c", i32 2593, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @r5c_journal_mode_set.__UNIQUE_ID_ddebug296, !6, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!10 = !{ptr @__ksymtab_r5c_journal_mode_set, !11, !"__ksymtab_r5c_journal_mode_set", i1 false, i1 false}
!11 = !{!"../drivers/md/raid5-cache.c", i32 2597, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/raid5-cache.c", i32 2625, i32 20}
!14 = !{ptr @r5c_journal_mode, !15, !"r5c_journal_mode", i1 false, i1 false}
!15 = !{!"../drivers/md/raid5-cache.c", i32 2625, i32 1}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/md/raid5-cache.c", i32 2954, i32 2}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/raid5-cache.c", i32 3073, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @r5l_init_log.__UNIQUE_ID_ddebug298, !19, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/raid5-cache.c", i32 3089, i32 3}
!24 = !{ptr @r5l_init_log._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @r5l_init_log._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @r5l_init_log.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/md/raid5-cache.c", i32 3104, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @r5l_init_log.__key.10, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/md/raid5-cache.c", i32 3106, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/raid5-cache.c", i32 3113, i32 15}
!34 = !{ptr @r5l_init_log.__key.13, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/md/raid5-cache.c", i32 3129, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/raid5-cache.c", i32 3133, i32 26}
!39 = !{ptr @r5l_init_log.__key.16, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/md/raid5-cache.c", i32 3138, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @r5l_init_log.__key.18, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/md/raid5-cache.c", i32 3143, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @r5l_init_log.__key.20, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/md/raid5-cache.c", i32 3145, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @r5l_init_log.__key.22, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/md/raid5-cache.c", i32 3146, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @r5l_init_log.__key.24, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/md/raid5-cache.c", i32 3150, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/md.h", i32 632, i32 54}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/raid5-cache.c", i32 49, i32 40}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/raid5-cache.c", i32 50, i32 12}
!67 = !{ptr @r5c_journal_mode_str, !68, !"r5c_journal_mode_str", i1 false, i1 false}
!68 = !{!"../drivers/md/raid5-cache.c", i32 49, i32 14}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/raid5-cache.c", i32 2550, i32 21}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/md/raid5-cache.c", i32 2556, i32 21}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/radix-tree.h", i32 194, i32 9}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/mm.h", i32 717, i32 2}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/md/raid5-cache.c", i32 2493, i32 3}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @r5l_recovery_log._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @r5l_recovery_log._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/md/raid5-cache.c", i32 2496, i32 3}
!88 = !{ptr @r5l_recovery_log._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @r5l_recovery_log._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/md/raid5-cache.c", i32 2505, i32 3}
!92 = !{ptr @r5l_recovery_log._entry.43, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @r5l_recovery_log._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/md/raid5-cache.c", i32 2157, i32 5}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @r5c_recovery_analyze_meta_block.__UNIQUE_ID_ddebug294, !95, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/md/raid5-cache.c", i32 2162, i32 6}
!100 = !{ptr @r5c_recovery_analyze_meta_block._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @r5c_recovery_analyze_meta_block._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/md/raid5-cache.c", i32 2174, i32 5}
!104 = !{ptr @r5c_recovery_analyze_meta_block._entry.49, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @r5c_recovery_analyze_meta_block._entry_ptr.51, !103, !"_entry_ptr", i1 false, i1 false}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../drivers/md/raid5-cache.c", i32 1899, i32 10}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../drivers/md/raid5-cache.c", i32 1909, i32 11}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/md/raid5-cache.c", i32 2362, i32 3}
!112 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @r5c_recovery_rewrite_data_only_stripes._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @r5c_recovery_rewrite_data_only_stripes._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @xa_init_flags.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/md/raid5-cache.c", i32 690, i32 2}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @r5c_disable_writeback_async._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @r5c_disable_writeback_async._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2155132406}
!134 = !{i64 807118, i64 807139, i64 807162, i64 807181, i64 807200}
!135 = !{i64 2155132814}
!136 = !{!"branch_weights", i32 1073205, i32 2146410443}
!137 = !{!"branch_weights", i32 2000, i32 1}
!138 = !{i64 2155030106, i64 2155030595, i64 2155030143, i64 2155030199, i64 2155030233, i64 2155030257, i64 2155030298, i64 2155030319, i64 2155030347, i64 2155030381}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{i64 2148297626, i64 2148297652, i64 2148297681, i64 2148297715, i64 2148297746, i64 2148297769}
!141 = !{i64 2153793211}
!142 = !{i64 2152342522}
!143 = !{i64 2152342729}
!144 = !{i64 2153795982}
!145 = !{i64 2155077315, i64 2155081866, i64 2155077352, i64 2155077408, i64 2155077442, i64 2155077466, i64 2155077507, i64 2155077528, i64 2155077556, i64 2155077590}
!146 = !{i64 2155072827, i64 2155073316, i64 2155072864, i64 2155072920, i64 2155072954, i64 2155072978, i64 2155073019, i64 2155073040, i64 2155073068, i64 2155073102}
!147 = !{i64 2148386078}
!148 = !{i64 2148300811, i64 2148300843, i64 2148300872, i64 2148300906, i64 2148300937, i64 2148300960}
!149 = !{i64 2148386307}
!150 = !{i8 0, i8 2}
!151 = !{i64 2155106640, i64 2155107130, i64 2155106677, i64 2155106733, i64 2155106767, i64 2155106791, i64 2155106832, i64 2155106853, i64 2155106881, i64 2155106915}
!152 = !{i64 2155108324, i64 2155108814, i64 2155108361, i64 2155108417, i64 2155108451, i64 2155108475, i64 2155108516, i64 2155108537, i64 2155108565, i64 2155108599}
!153 = !{i64 2155109994, i64 2155110484, i64 2155110031, i64 2155110087, i64 2155110121, i64 2155110145, i64 2155110186, i64 2155110207, i64 2155110235, i64 2155110269}
!154 = !{i64 2155111682, i64 2155112172, i64 2155111719, i64 2155111775, i64 2155111809, i64 2155111833, i64 2155111874, i64 2155111895, i64 2155111923, i64 2155111957}
!155 = !{i64 2155129542}
!156 = !{i64 804394, i64 804411, i64 804435, i64 804461, i64 804479}
!157 = !{i64 2155129885}
!158 = !{i64 2155105588}
!159 = !{i64 2155105997}
!160 = !{i64 2149513618}
!161 = !{i64 2149513884}
!162 = !{i64 2148779441, i64 2148779446, i64 2148779459, i64 2148779503, i64 2148779537, i64 2148779558}
!163 = !{i64 2155214861, i64 2155215351, i64 2155214898, i64 2155214954, i64 2155214988, i64 2155215012, i64 2155215053, i64 2155215074, i64 2155215102, i64 2155215136}
!164 = !{i64 2148688160, i64 2148688440, i64 2148688774, i64 2148689108}
!165 = !{i64 2153297201, i64 2153297684, i64 2153297238, i64 2153297294, i64 2153297328, i64 2153297352, i64 2153297393, i64 2153297414, i64 2153297442, i64 2153297476}
!166 = !{i64 2148300091, i64 2148300117, i64 2148300146, i64 2148300180, i64 2148300211, i64 2148300234}
!167 = !{i64 2155218994, i64 2155219484, i64 2155219031, i64 2155219087, i64 2155219121, i64 2155219145, i64 2155219186, i64 2155219207, i64 2155219235, i64 2155219269}
!168 = !{i64 2155220839, i64 2155221329, i64 2155220876, i64 2155220932, i64 2155220966, i64 2155220990, i64 2155221031, i64 2155221052, i64 2155221080, i64 2155221114}
!169 = !{i64 2155222668, i64 2155227219, i64 2155222705, i64 2155222761, i64 2155222795, i64 2155222819, i64 2155222860, i64 2155222881, i64 2155222909, i64 2155222943}
!170 = !{i64 2155228433, i64 2155228923, i64 2155228470, i64 2155228526, i64 2155228560, i64 2155228584, i64 2155228625, i64 2155228646, i64 2155228674, i64 2155228708}
!171 = !{i64 2155232399, i64 2155232889, i64 2155232436, i64 2155232492, i64 2155232526, i64 2155232550, i64 2155232591, i64 2155232612, i64 2155232640, i64 2155232674}
!172 = !{i64 2155248918}
!173 = !{i64 2155067372, i64 2155067861, i64 2155067409, i64 2155067465, i64 2155067499, i64 2155067523, i64 2155067564, i64 2155067585, i64 2155067613, i64 2155067647}
!174 = !{i64 2155068925, i64 2155069414, i64 2155068962, i64 2155069018, i64 2155069052, i64 2155069076, i64 2155069117, i64 2155069138, i64 2155069166, i64 2155069200}
!175 = !{i64 2155033259, i64 2155033748, i64 2155033296, i64 2155033352, i64 2155033386, i64 2155033410, i64 2155033451, i64 2155033472, i64 2155033500, i64 2155033534}
!176 = !{!"auto-init"}
!177 = !{i64 2155138032, i64 2155138522, i64 2155138069, i64 2155138125, i64 2155138159, i64 2155138183, i64 2155138224, i64 2155138245, i64 2155138273, i64 2155138307}
