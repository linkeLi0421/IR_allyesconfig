; ModuleID = '/llk/IR_all_yes/fs/verity/verify.c_pt.bc'
source_filename = "../fs/verity/verify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsverity_verify_page\22, \22a\22\09"
module asm "\09.weak\09__crc_fsverity_verify_page\09\09\09\09"
module asm "\09.long\09__crc_fsverity_verify_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsverity_verify_page:\09\09\09\09\09"
module asm "\09.asciz \09\22fsverity_verify_page\22\09\09\09\09\09"
module asm "__kstrtabns_fsverity_verify_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsverity_verify_bio\22, \22a\22\09"
module asm "\09.weak\09__crc_fsverity_verify_bio\09\09\09\09"
module asm "\09.long\09__crc_fsverity_verify_bio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsverity_verify_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22fsverity_verify_bio\22\09\09\09\09\09"
module asm "__kstrtabns_fsverity_verify_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsverity_enqueue_verify_work\22, \22a\22\09"
module asm "\09.weak\09__crc_fsverity_enqueue_verify_work\09\09\09\09"
module asm "\09.long\09__crc_fsverity_enqueue_verify_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsverity_enqueue_verify_work:\09\09\09\09\09"
module asm "\09.asciz \09\22fsverity_enqueue_verify_work\22\09\09\09\09\09"
module asm "__kstrtabns_fsverity_enqueue_verify_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.53 }
%union.anon.53 = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.70, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.merkle_tree_params = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, [8 x i64] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fsverity_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.43, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.cpumask = type { [1 x i32] }
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
%union.anon.43 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fsverity_hash_alg = type { ptr, ptr, i32, i32, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.fsverity_info = type { %struct.merkle_tree_params, [64 x i8], [64 x i8], ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.26, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.26 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_fsverity_verify_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsverity_verify_page = external dso_local constant [0 x i8], align 1
@__ksymtab_fsverity_verify_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsverity_verify_page to i32), ptr @__kstrtab_fsverity_verify_page, ptr @__kstrtabns_fsverity_verify_page }, section "___ksymtab_gpl+fsverity_verify_page", align 4
@__kstrtab_fsverity_verify_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsverity_verify_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_fsverity_verify_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsverity_verify_bio to i32), ptr @__kstrtab_fsverity_verify_bio, ptr @__kstrtabns_fsverity_verify_bio }, section "___ksymtab_gpl+fsverity_verify_bio", align 4
@fsverity_read_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fsverity_enqueue_verify_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsverity_enqueue_verify_work = external dso_local constant [0 x i8], align 1
@__ksymtab_fsverity_enqueue_verify_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsverity_enqueue_verify_work to i32), ptr @__kstrtab_fsverity_enqueue_verify_work, ptr @__kstrtabns_fsverity_enqueue_verify_work }, section "___ksymtab_gpl+fsverity_enqueue_verify_work", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsverity_read_queue\00", [44 x i8] zeroinitializer }, align 32
@verify_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/verity/verify.c\00", [45 x i8] zeroinitializer }, align 32
@verify_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@verify_page.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.5, i8 0, i8 26, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"verify\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"verify_page\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fs-verity: Verifying data page %lu...\0A\00", [57 x i8] zeroinitializer }, align 32
@verify_page._rs.6 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@verify_page.descriptor.7 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.8, i8 0, i8 29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fs-verity: Level %d: hindex=%lu, hoffset=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error %d reading Merkle tree page %lu\00", [58 x i8] zeroinitializer }, align 32
@verify_page._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@verify_page.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.13, i8 0, i8 34, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fs-verity: Hash page already checked, want %s:%*phN\0A\00", [43 x i8] zeroinitializer }, align 32
@verify_page._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@verify_page.descriptor.15 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.16, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fs-verity: Hash page not yet checked\0A\00", [58 x i8] zeroinitializer }, align 32
@verify_page.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.17, i8 0, i8 36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Want root hash: %s:%*phN\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fs-verity: Want root hash: %s:%*phN\0A\00", [59 x i8] zeroinitializer }, align 32
@verify_page.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.19, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Verified hash page at level %d, now want %s:%*phN\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"fs-verity: Verified hash page at level %d, now want %s:%*phN\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"FILE CORRUPTED! index=%lu, level=%d, want_hash=%s:%*phN, real_hash=%s:%*phN\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@bio_first_bvec_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/bio.h\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"fsverity_read_workqueue\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 14, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 289, i32 44 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 101, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 104, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 118, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 125, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 135, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 140, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 146, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 164, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 414, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 260, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 717, i32 2 }
@___asan_gen_.103 = private constant [22 x i8] c"../fs/verity/verify.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 61, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 430, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"../include/linux/bio.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 248, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 416, i32 1 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab_fsverity_enqueue_verify_work, ptr @__ksymtab_fsverity_verify_bio, ptr @__ksymtab_fsverity_verify_page, ptr @fsverity_read_workqueue, ptr @.str, ptr @.str.1, ptr @verify_page._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @verify_page._rs.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @verify_page._rs.11, ptr @.str.13, ptr @verify_page._rs.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsverity_read_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_page._rs.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_page._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_page._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fsverity_verify_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_verity_info = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %i_verity_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_verity_info, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call = tail call ptr @fsverity_alloc_hash_request(ptr noundef %7, i32 noundef 3136) #10
  %call1 = tail call fastcc zeroext i1 @verify_page(ptr noundef %3, ptr noundef %5, ptr noundef %call, ptr noundef %page, i32 noundef 0)
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  tail call void @fsverity_free_hash_request(ptr noundef %9, ptr noundef %call) #10
  ret i1 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsverity_alloc_hash_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @verify_page(ptr noundef %inode, ptr noundef %vi, ptr noundef %req, ptr noundef %data_page, i32 noundef %level0_ra_pages) unnamed_addr #0 align 64 {
entry:
  %_want_hash = alloca [64 x i8], align 1
  %real_hash = alloca [64 x i8], align 1
  %hpages = alloca [8 x ptr], align 4
  %hoffsets = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %digest_size = getelementptr inbounds %struct.merkle_tree_params, ptr %vi, i32 0, i32 2
  %0 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %digest_size, align 8
  %index1 = getelementptr inbounds %struct.page, ptr %data_page, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_want_hash) #10
  %4 = call ptr @memset(ptr %_want_hash, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %real_hash) #10
  %5 = call ptr @memset(ptr %real_hash, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hpages) #10
  %6 = call ptr @memset(ptr %hpages, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hoffsets) #10
  %7 = getelementptr inbounds %struct.page, ptr %data_page, i32 0, i32 1
  %8 = call ptr @memset(ptr %hoffsets, i32 255, i32 32)
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !71

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %data_page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %7, align 4
  %and.i16.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !72

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !71

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i = add i32 %16, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %data_page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %17, %if.end.i20.i ]
  %18 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.21) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #10, !srcloc !73
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !71

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i = add i32 %16, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %data_page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %19, %if.end.i27.i ]
  %20 = inttoptr i32 %retval.0.i28.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %PageLocked.exit.land.rhs_crit_edge, label %lor.rhs

PageLocked.exit.land.rhs_crit_edge:               ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.rhs:                                          ; preds = %PageLocked.exit
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %7, align 4
  %and.i.i315 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i315)
  %tobool.not.i.i316 = icmp eq i32 %and.i.i315, 0
  br i1 %tobool.not.i.i316, label %if.end.i.i319, label %if.then.i.i318, !prof !71

if.then.i.i318:                                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i317 = add i32 %24, -1
  br label %_compound_head.exit.i321

if.end.i.i319:                                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %data_page to i32
  br label %_compound_head.exit.i321

_compound_head.exit.i321:                         ; preds = %if.end.i.i319, %if.then.i.i318
  %retval.0.i.i320 = phi i32 [ %sub.i.i317, %if.then.i.i318 ], [ %25, %if.end.i.i319 ]
  %26 = inttoptr i32 %retval.0.i.i320 to ptr
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !71

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i321
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !74
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i321
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i, label %do.body42, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  br label %land.rhs

land.rhs:                                         ; preds = %PageUptodate.exit, %PageLocked.exit.land.rhs_crit_edge
  %.b292 = load i1, ptr @verify_page.__already_done, align 1
  br i1 %.b292, label %land.rhs.cleanup223_crit_edge, label %if.then, !prof !71

land.rhs.cleanup223_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup223

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @verify_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 9, ptr noundef null) #10
  br label %cleanup223

do.body42:                                        ; preds = %folio_flags.exit.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @verify_page.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@verify_page, %do.end60)) #10
          to label %land.lhs.true [label %do.end60], !srcloc !76

land.lhs.true:                                    ; preds = %do.body42
  %call55 = tail call i32 @___ratelimit(ptr noundef nonnull @verify_page._rs, ptr noundef nonnull @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true.do.end60_crit_edge, label %if.then57

land.lhs.true.do.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @verify_page.descriptor, ptr noundef nonnull @.str.5, i32 noundef %3) #10
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %land.lhs.true.do.end60_crit_edge, %do.body42
  %num_levels = getelementptr inbounds %struct.merkle_tree_params, ptr %vi, i32 0, i32 7
  %33 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp453.not = icmp eq i32 %34, 0
  br i1 %cmp453.not, label %do.end60.for.end_crit_edge, label %for.body.lr.ph

do.end60.for.end_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end60
  %log_arity.i = getelementptr inbounds %struct.merkle_tree_params, ptr %vi, i32 0, i32 6
  %log_blocksize.i = getelementptr inbounds %struct.merkle_tree_params, ptr %vi, i32 0, i32 5
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %level.0454 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %log_arity.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %log_arity.i, align 8
  %mul.i = mul i32 %36, %level.0454
  %shr.i = lshr i32 %3, %mul.i
  %arrayidx.i = getelementptr %struct.merkle_tree_params, ptr %vi, i32 0, i32 10, i32 %level.0454
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i, align 8
  %shr2.i = lshr i32 %shr.i, %36
  %39 = trunc i64 %38 to i32
  %conv3.i = add i32 %shr2.i, %39
  %notmask.i = shl nsw i32 -1, %36
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %shr.i, %sub.i
  %40 = ptrtoint ptr %log_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %log_blocksize.i, align 4
  %sub6.i = sub i32 %41, %36
  %shl7.i = shl i32 %and.i, %sub6.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @verify_page.descriptor.7, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@verify_page, %do.end81)) #10
          to label %land.lhs.true75 [label %do.end81], !srcloc !76

land.lhs.true75:                                  ; preds = %for.body
  %call76 = tail call i32 @___ratelimit(ptr noundef nonnull @verify_page._rs.6, ptr noundef nonnull @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %land.lhs.true75.do.end81_crit_edge, label %if.then78

land.lhs.true75.do.end81_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @verify_page.descriptor.7, ptr noundef nonnull @.str.8, i32 noundef %level.0454, i32 noundef %conv3.i, i32 noundef %shl7.i) #10
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true75.do.end81_crit_edge, %for.body
  %42 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb, align 4
  %s_vop = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 21
  %44 = ptrtoint ptr %s_vop to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_vop, align 4
  %read_merkle_tree_page = getelementptr inbounds %struct.fsverity_operations, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %read_merkle_tree_page to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_merkle_tree_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0454)
  %cmp82 = icmp eq i32 %level.0454, 0
  %spec.select = select i1 %cmp82, i32 %level0_ra_pages, i32 0
  %call83 = tail call ptr %47(ptr noundef %inode, i32 noundef %conv3.i, i32 noundef %spec.select) #10
  %cmp.i = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out, label %if.end87

if.end87:                                         ; preds = %do.end81
  %48 = ptrtoint ptr %call83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %call83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i.not.i297 = icmp eq i32 %49, -1
  br i1 %cmp.i.not.i297, label %if.then.i298, label %PageChecked.exit, !prof !72

if.then.i298:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %call83, ptr noundef nonnull @.str.24) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !77
  unreachable

PageChecked.exit:                                 ; preds = %if.end87
  %50 = ptrtoint ptr %call83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %call83, align 4
  %52 = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool89.not = icmp eq i32 %52, 0
  br i1 %tobool89.not, label %do.body114, label %if.then90

if.then90:                                        ; preds = %PageChecked.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %53 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %53, 512
  %54 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %57, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !78
  %58 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i1.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 213
  %62 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %63, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call83, i32 noundef %or.i.i) #10
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %shl7.i
  %64 = call ptr @memcpy(ptr %_want_hash, ptr %add.ptr.i, i32 %1)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %65 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i1.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 213
  %69 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %70, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %71 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %75 = getelementptr inbounds %struct.page, ptr %call83, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 4
  %and.i.i322 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i322)
  %tobool.not.i.i323 = icmp eq i32 %and.i.i322, 0
  br i1 %tobool.not.i.i323, label %if.end.i.i326, label %if.then.i.i325, !prof !71

if.then.i.i325:                                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i324 = add i32 %77, -1
  br label %_compound_head.exit.i328

if.end.i.i326:                                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %call83 to i32
  br label %_compound_head.exit.i328

_compound_head.exit.i328:                         ; preds = %if.end.i.i326, %if.then.i.i325
  %retval.0.i.i327 = phi i32 [ %sub.i.i324, %if.then.i.i325 ], [ %78, %if.end.i.i326 ]
  %79 = inttoptr i32 %retval.0.i.i327 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %79, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %80 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i.i.i.i = icmp eq i32 %81, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i328
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %79, ptr noundef nonnull @.str.25) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i328
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !84
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %82, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@verify_page, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !76

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %79, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %79) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @verify_page.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@verify_page, %descend)) #10
          to label %land.lhs.true106 [label %descend], !srcloc !76

land.lhs.true106:                                 ; preds = %put_page.exit
  %call107 = tail call i32 @___ratelimit(ptr noundef nonnull @verify_page._rs.11, ptr noundef nonnull @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %land.lhs.true106.descend_crit_edge, label %if.then109

land.lhs.true106.descend_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  br label %descend

if.then109:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vi, align 8
  %name = getelementptr inbounds %struct.fsverity_hash_alg, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @verify_page.descriptor.12, ptr noundef nonnull @.str.13, ptr noundef %86, i32 noundef %1, ptr noundef nonnull %_want_hash) #10
  br label %descend

do.body114:                                       ; preds = %PageChecked.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @verify_page.descriptor.15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@verify_page, %for.inc)) #10
          to label %land.lhs.true128 [label %for.inc], !srcloc !76

land.lhs.true128:                                 ; preds = %do.body114
  %call129 = tail call i32 @___ratelimit(ptr noundef nonnull @verify_page._rs.14, ptr noundef nonnull @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %land.lhs.true128.for.inc_crit_edge, label %if.then131

land.lhs.true128.for.inc_crit_edge:               ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then131:                                       ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @verify_page.descriptor.15, ptr noundef nonnull @.str.16) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then131, %land.lhs.true128.for.inc_crit_edge, %do.body114
  %arrayidx = getelementptr [8 x ptr], ptr %hpages, i32 0, i32 %level.0454
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call83, ptr %arrayidx, align 4
  %arrayidx135 = getelementptr [8 x i32], ptr %hoffsets, i32 0, i32 %level.0454
  %88 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shl7.i, ptr %arrayidx135, align 4
  %inc = add nuw i32 %level.0454, 1
  %89 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_levels, align 4
  %cmp = icmp ult i32 %inc, %90
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end60.for.end_crit_edge
  %level.0.lcssa = phi i32 [ 0, %do.end60.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %root_hash = getelementptr inbounds %struct.fsverity_info, ptr %vi, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @verify_page.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@verify_page, %descend)) #10
          to label %if.then153 [label %descend], !srcloc !76

if.then153:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %vi, align 8
  %name155 = getelementptr inbounds %struct.fsverity_hash_alg, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %name155 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name155, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @verify_page.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.18, ptr noundef %94, i32 noundef %1, ptr noundef %root_hash) #10
  br label %descend

descend:                                          ; preds = %if.then153, %for.end, %if.then109, %land.lhs.true106.descend_crit_edge, %put_page.exit
  %level.0446 = phi i32 [ %level.0.lcssa, %if.then153 ], [ %level.0454, %if.then109 ], [ %level.0454, %land.lhs.true106.descend_crit_edge ], [ %level.0454, %put_page.exit ], [ %level.0.lcssa, %for.end ]
  %want_hash.2 = phi ptr [ %root_hash, %if.then153 ], [ %_want_hash, %if.then109 ], [ %_want_hash, %land.lhs.true106.descend_crit_edge ], [ %_want_hash, %put_page.exit ], [ %root_hash, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0446)
  %cmp160455 = icmp sgt i32 %level.0446, 0
  br i1 %cmp160455, label %descend.for.body161_crit_edge, label %descend.for.end206_crit_edge

descend.for.end206_crit_edge:                     ; preds = %descend
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end206

descend.for.body161_crit_edge:                    ; preds = %descend
  br label %for.body161

for.body161:                                      ; preds = %for.inc205.for.body161_crit_edge, %descend.for.body161_crit_edge
  %level.1457 = phi i32 [ %sub, %for.inc205.for.body161_crit_edge ], [ %level.0446, %descend.for.body161_crit_edge ]
  %want_hash.3456 = phi ptr [ %_want_hash, %for.inc205.for.body161_crit_edge ], [ %want_hash.2, %descend.for.body161_crit_edge ]
  %sub = add nsw i32 %level.1457, -1
  %arrayidx163 = getelementptr [8 x ptr], ptr %hpages, i32 0, i32 %sub
  %95 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx163, align 4
  %arrayidx166 = getelementptr [8 x i32], ptr %hoffsets, i32 0, i32 %sub
  %97 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx166, align 4
  %call168 = call i32 @fsverity_hash_page(ptr noundef %vi, ptr noundef %inode, ptr noundef %req, ptr noundef %96, ptr noundef nonnull %real_hash) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %for.body161.for.body216.preheader_crit_edge

for.body161.for.body216.preheader_crit_edge:      ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body216.preheader

if.end171:                                        ; preds = %for.body161
  %99 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %digest_size, align 8
  %bcmp.i = call i32 @bcmp(ptr %want_hash.3456, ptr nonnull %real_hash, i32 %100) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i329 = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i329, label %if.end177, label %cmp_hashes.exit

cmp_hashes.exit:                                  ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  %inode.i = getelementptr inbounds %struct.fsverity_info, ptr %vi, i32 0, i32 3
  %101 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %inode.i, align 8
  %103 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vi, align 8
  %name.i = getelementptr inbounds %struct.fsverity_hash_alg, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %102, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26, i32 noundef %3, i32 noundef %sub, ptr noundef %106, i32 noundef %100, ptr noundef %want_hash.3456, ptr noundef %106, i32 noundef %100, ptr noundef nonnull %real_hash) #14
  br label %for.body216.preheader

if.end177:                                        ; preds = %if.end171
  %107 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %96, align 4
  %109 = and i32 %108, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i.i309 = icmp eq i32 %109, 0
  br i1 %tobool.not.i.i309, label %PageCompound.exit.i, label %if.end177.if.then.i310_crit_edge

if.end177.if.then.i310_crit_edge:                 ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i310

PageCompound.exit.i:                              ; preds = %if.end177
  %110 = getelementptr inbounds %struct.page, ptr %96, i32 0, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %110, align 4
  %and.i.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i310_crit_edge, !prof !71

PageCompound.exit.i.if.then.i310_crit_edge:       ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i310

if.then.i310:                                     ; preds = %PageCompound.exit.i.if.then.i310_crit_edge, %if.end177.if.then.i310_crit_edge
  call void @dump_page(ptr noundef %96, ptr noundef nonnull @.str.27) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !86
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %113 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %114)
  %cmp.i.not.i311 = icmp eq i32 %114, -1
  br i1 %cmp.i.not.i311, label %if.then16.i, label %SetPageChecked.exit, !prof !72

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %96, ptr noundef nonnull @.str.24) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !87
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @_set_bit(i32 noundef 10, ptr noundef %96) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %115 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i331 = or i32 %115, 512
  %116 = call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i.i332 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i.i332 to ptr
  %preempt_count.i.i.i.i.i333 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %preempt_count.i.i.i.i.i333 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %preempt_count.i.i.i.i.i333, align 4
  %add.i.i.i.i334 = add i32 %119, 1
  store volatile i32 %add.i.i.i.i334, ptr %preempt_count.i.i.i.i.i333, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !78
  %120 = call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i1.i.i.i335 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i1.i.i.i335 to ptr
  %task.i.i.i.i.i336 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task.i.i.i.i.i336 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task.i.i.i.i.i336, align 8
  %pagefault_disabled.i.i.i.i.i337 = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 213
  %124 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i337 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pagefault_disabled.i.i.i.i.i337, align 8
  %inc.i.i.i.i.i338 = add i32 %125, 1
  store i32 %inc.i.i.i.i.i338, ptr %pagefault_disabled.i.i.i.i.i337, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %call.i.i.i339 = call ptr @__kmap_local_page_prot(ptr noundef %96, i32 noundef %or.i.i331) #10
  %add.ptr.i340 = getelementptr i8, ptr %call.i.i.i339, i32 %98
  %126 = call ptr @memcpy(ptr %_want_hash, ptr %add.ptr.i340, i32 %1)
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i339) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %127 = call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i1.i.i341 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i1.i.i341 to ptr
  %task.i.i.i.i342 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %task.i.i.i.i342 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %task.i.i.i.i342, align 8
  %pagefault_disabled.i.i.i.i343 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 213
  %131 = ptrtoint ptr %pagefault_disabled.i.i.i.i343 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pagefault_disabled.i.i.i.i343, align 8
  %dec.i.i.i.i344 = add i32 %132, -1
  store i32 %dec.i.i.i.i344, ptr %pagefault_disabled.i.i.i.i343, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %133 = call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i345 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i345 to ptr
  %preempt_count.i.i.i.i346 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i.i.i346 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i.i.i346, align 4
  %sub.i.i.i347 = add i32 %136, -1
  store volatile i32 %sub.i.i.i347, ptr %preempt_count.i.i.i.i346, align 4
  %137 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %110, align 4
  %and.i.i348 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i348)
  %tobool.not.i.i349 = icmp eq i32 %and.i.i348, 0
  br i1 %tobool.not.i.i349, label %if.end.i.i352, label %if.then.i.i351, !prof !71

if.then.i.i351:                                   ; preds = %SetPageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i350 = add i32 %138, -1
  br label %_compound_head.exit.i357

if.end.i.i352:                                    ; preds = %SetPageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %96 to i32
  br label %_compound_head.exit.i357

_compound_head.exit.i357:                         ; preds = %if.end.i.i352, %if.then.i.i351
  %retval.0.i.i353 = phi i32 [ %sub.i.i350, %if.then.i.i351 ], [ %139, %if.end.i.i352 ]
  %140 = inttoptr i32 %retval.0.i.i353 to ptr
  %_refcount.i.i.i.i.i354 = getelementptr inbounds %struct.page, ptr %140, i32 0, i32 3
  %call.i.i.i.i.i.i.i355 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i354, i32 noundef 4) #10
  %141 = ptrtoint ptr %_refcount.i.i.i.i.i354 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %_refcount.i.i.i.i.i354, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp.i.i.i.i356 = icmp eq i32 %142, 0
  br i1 %cmp.i.i.i.i356, label %if.then.i.i.i.i358, label %do.end5.i.i.i.i362, !prof !72

if.then.i.i.i.i358:                               ; preds = %_compound_head.exit.i357
  call void @__sanitizer_cov_trace_pc() #12
  %143 = inttoptr i32 %retval.0.i.i353 to ptr
  call void @dump_page(ptr noundef %143, ptr noundef nonnull @.str.25) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.end5.i.i.i.i362:                               ; preds = %_compound_head.exit.i357
  %call.i.i.i10.i.i.i.i359 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i354, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !83
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i354, i32 1, i32 3, i32 1) #10
  %144 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i354, ptr %_refcount.i.i.i.i.i354, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i354) #10, !srcloc !84
  %asmresult.i.i.i.i.i.i.i.i.i.i360 = extractvalue { i32, i32 } %144, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i360)
  %cmp.i.i.i.i.i.i.i361 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i360, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@verify_page, %if.then.i.i.i.i.i364)) #10
          to label %folio_put_testzero.exit.i.i365 [label %if.then.i.i.i.i.i364], !srcloc !76

if.then.i.i.i.i.i364:                             ; preds = %do.end5.i.i.i.i362
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i363 = zext i1 %cmp.i.i.i.i.i.i.i361 to i32
  call void @__page_ref_mod_and_test(ptr noundef %140, i32 noundef -1, i32 noundef %conv.i.i.i.i.i363) #10
  br label %folio_put_testzero.exit.i.i365

folio_put_testzero.exit.i.i365:                   ; preds = %if.then.i.i.i.i.i364, %do.end5.i.i.i.i362
  br i1 %cmp.i.i.i.i.i.i.i361, label %if.then.i4.i366, label %folio_put_testzero.exit.i.i365.put_page.exit367_crit_edge

folio_put_testzero.exit.i.i365.put_page.exit367_crit_edge: ; preds = %folio_put_testzero.exit.i.i365
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit367

if.then.i4.i366:                                  ; preds = %folio_put_testzero.exit.i.i365
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %140) #10
  br label %put_page.exit367

put_page.exit367:                                 ; preds = %if.then.i4.i366, %folio_put_testzero.exit.i.i365.put_page.exit367_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @verify_page.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@verify_page, %for.inc205)) #10
          to label %if.then194 [label %for.inc205], !srcloc !76

if.then194:                                       ; preds = %put_page.exit367
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vi, align 8
  %name197 = getelementptr inbounds %struct.fsverity_hash_alg, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name197, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @verify_page.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.20, i32 noundef %sub, ptr noundef %148, i32 noundef %1, ptr noundef nonnull %_want_hash) #10
  br label %for.inc205

for.inc205:                                       ; preds = %if.then194, %put_page.exit367
  %cmp160 = icmp ugt i32 %level.1457, 1
  br i1 %cmp160, label %for.inc205.for.body161_crit_edge, label %for.inc205.for.end206_crit_edge

for.inc205.for.end206_crit_edge:                  ; preds = %for.inc205
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end206

for.inc205.for.body161_crit_edge:                 ; preds = %for.inc205
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body161

for.end206:                                       ; preds = %for.inc205.for.end206_crit_edge, %descend.for.end206_crit_edge
  %want_hash.3.lcssa = phi ptr [ %want_hash.2, %descend.for.end206_crit_edge ], [ %_want_hash, %for.inc205.for.end206_crit_edge ]
  %call208 = call i32 @fsverity_hash_page(ptr noundef %vi, ptr noundef %inode, ptr noundef %req, ptr noundef %data_page, ptr noundef nonnull %real_hash) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end211, label %for.end206.for.end221_crit_edge

for.end206.for.end221_crit_edge:                  ; preds = %for.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end221

if.end211:                                        ; preds = %for.end206
  call void @__sanitizer_cov_trace_pc() #12
  %call213 = call fastcc i32 @cmp_hashes(ptr noundef %vi, ptr noundef %want_hash.3.lcssa, ptr noundef nonnull %real_hash, i32 noundef %3, i32 noundef -1)
  br label %for.end221

out:                                              ; preds = %do.end81
  %149 = ptrtoint ptr %call83 to i32
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %149, i32 noundef %conv3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0454)
  %cmp215460 = icmp sgt i32 %level.0454, 0
  br i1 %cmp215460, label %out.for.body216.preheader_crit_edge, label %out.for.end221_crit_edge

out.for.end221_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end221

out.for.body216.preheader_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body216.preheader

for.body216.preheader:                            ; preds = %out.for.body216.preheader_crit_edge, %cmp_hashes.exit, %for.body161.for.body216.preheader_crit_edge
  %level.3461.ph = phi i32 [ %level.1457, %cmp_hashes.exit ], [ %level.0454, %out.for.body216.preheader_crit_edge ], [ %level.1457, %for.body161.for.body216.preheader_crit_edge ]
  br label %for.body216

for.body216:                                      ; preds = %put_page.exit387.for.body216_crit_edge, %for.body216.preheader
  %level.3461 = phi i32 [ %sub217, %put_page.exit387.for.body216_crit_edge ], [ %level.3461.ph, %for.body216.preheader ]
  %sub217 = add nsw i32 %level.3461, -1
  %arrayidx218 = getelementptr [8 x ptr], ptr %hpages, i32 0, i32 %sub217
  %150 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx218, align 4
  %152 = getelementptr inbounds %struct.page, ptr %151, i32 0, i32 1
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %152, align 4
  %and.i.i368 = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i368)
  %tobool.not.i.i369 = icmp eq i32 %and.i.i368, 0
  br i1 %tobool.not.i.i369, label %if.end.i.i372, label %if.then.i.i371, !prof !71

if.then.i.i371:                                   ; preds = %for.body216
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i370 = add i32 %154, -1
  br label %_compound_head.exit.i377

if.end.i.i372:                                    ; preds = %for.body216
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %151 to i32
  br label %_compound_head.exit.i377

_compound_head.exit.i377:                         ; preds = %if.end.i.i372, %if.then.i.i371
  %retval.0.i.i373 = phi i32 [ %sub.i.i370, %if.then.i.i371 ], [ %155, %if.end.i.i372 ]
  %156 = inttoptr i32 %retval.0.i.i373 to ptr
  %_refcount.i.i.i.i.i374 = getelementptr inbounds %struct.page, ptr %156, i32 0, i32 3
  %call.i.i.i.i.i.i.i375 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i374, i32 noundef 4) #10
  %157 = ptrtoint ptr %_refcount.i.i.i.i.i374 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %_refcount.i.i.i.i.i374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp.i.i.i.i376 = icmp eq i32 %158, 0
  br i1 %cmp.i.i.i.i376, label %if.then.i.i.i.i378, label %do.end5.i.i.i.i382, !prof !72

if.then.i.i.i.i378:                               ; preds = %_compound_head.exit.i377
  call void @__sanitizer_cov_trace_pc() #12
  %159 = inttoptr i32 %retval.0.i.i373 to ptr
  call void @dump_page(ptr noundef %159, ptr noundef nonnull @.str.25) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.end5.i.i.i.i382:                               ; preds = %_compound_head.exit.i377
  %call.i.i.i10.i.i.i.i379 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i374, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !83
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i374, i32 1, i32 3, i32 1) #10
  %160 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i374, ptr %_refcount.i.i.i.i.i374, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i374) #10, !srcloc !84
  %asmresult.i.i.i.i.i.i.i.i.i.i380 = extractvalue { i32, i32 } %160, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i380)
  %cmp.i.i.i.i.i.i.i381 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i380, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@verify_page, %if.then.i.i.i.i.i384)) #10
          to label %folio_put_testzero.exit.i.i385 [label %if.then.i.i.i.i.i384], !srcloc !76

if.then.i.i.i.i.i384:                             ; preds = %do.end5.i.i.i.i382
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i383 = zext i1 %cmp.i.i.i.i.i.i.i381 to i32
  call void @__page_ref_mod_and_test(ptr noundef %156, i32 noundef -1, i32 noundef %conv.i.i.i.i.i383) #10
  br label %folio_put_testzero.exit.i.i385

folio_put_testzero.exit.i.i385:                   ; preds = %if.then.i.i.i.i.i384, %do.end5.i.i.i.i382
  br i1 %cmp.i.i.i.i.i.i.i381, label %if.then.i4.i386, label %folio_put_testzero.exit.i.i385.put_page.exit387_crit_edge

folio_put_testzero.exit.i.i385.put_page.exit387_crit_edge: ; preds = %folio_put_testzero.exit.i.i385
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit387

if.then.i4.i386:                                  ; preds = %folio_put_testzero.exit.i.i385
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %156) #10
  br label %put_page.exit387

put_page.exit387:                                 ; preds = %if.then.i4.i386, %folio_put_testzero.exit.i.i385.put_page.exit387_crit_edge
  %cmp215 = icmp ugt i32 %level.3461, 1
  br i1 %cmp215, label %put_page.exit387.for.body216_crit_edge, label %put_page.exit387.for.end221_crit_edge

put_page.exit387.for.end221_crit_edge:            ; preds = %put_page.exit387
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end221

put_page.exit387.for.body216_crit_edge:           ; preds = %put_page.exit387
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body216

for.end221:                                       ; preds = %put_page.exit387.for.end221_crit_edge, %out.for.end221_crit_edge, %if.end211, %for.end206.for.end221_crit_edge
  %err.3509 = phi i32 [ -74, %out.for.end221_crit_edge ], [ %call213, %if.end211 ], [ %call208, %for.end206.for.end221_crit_edge ], [ -74, %put_page.exit387.for.end221_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3509)
  %cmp222 = icmp eq i32 %err.3509, 0
  br label %cleanup223

cleanup223:                                       ; preds = %for.end221, %if.then, %land.rhs.cleanup223_crit_edge
  %retval.0 = phi i1 [ %cmp222, %for.end221 ], [ false, %if.then ], [ false, %land.rhs.cleanup223_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hoffsets) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hpages) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %real_hash) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_want_hash) #10
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsverity_free_hash_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsverity_verify_bio(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %0 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_flags.i.i.i, align 4
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i.not.i.i = icmp eq i16 %2, 0
  br i1 %cmp.i.not.i.i, label %entry.bio_first_page_all.exit_crit_edge, label %land.rhs.i.i

entry.bio_first_page_all.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_first_page_all.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b38.i.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.bio_first_page_all.exit_crit_edge, label %if.then.i.i42, !prof !71

land.rhs.i.i.bio_first_page_all.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_first_page_all.exit

if.then.i.i42:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 248, i32 noundef 9, ptr noundef null) #10
  br label %bio_first_page_all.exit

bio_first_page_all.exit:                          ; preds = %if.then.i.i42, %land.rhs.i.i.bio_first_page_all.exit_crit_edge, %entry.bio_first_page_all.exit_crit_edge
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %3 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_io_vec.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapping, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %i_verity_info = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %i_verity_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_verity_info, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %call1 = tail call ptr @fsverity_alloc_hash_request(ptr noundef %14, i32 noundef 3136) #10
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %15 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bi_opf, align 8
  %17 = and i32 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %bio_first_page_all.exit.if.end_crit_edge, label %for.cond.preheader

bio_first_page_all.exit.if.end_crit_edge:         ; preds = %bio_first_page_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader:                               ; preds = %bio_first_page_all.exit
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %18 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.not.i107.not = icmp eq i16 %19, 0
  br i1 %cmp.not.i107.not, label %for.cond.preheader.if.end_crit_edge, label %if.end.i.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.lr.ph:                                   ; preds = %for.cond.preheader
  %20 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bi_io_vec.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i49.if.end.i_crit_edge, %if.end.i.lr.ph
  %max_ra_pages.0111 = phi i32 [ 0, %if.end.i.lr.ph ], [ %inc, %if.end.i.i49.if.end.i_crit_edge ]
  %iter_all.sroa.0.0110 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %if.end.i.i49.if.end.i_crit_edge ]
  %iter_all.sroa.16.0109 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select97, %if.end.i.i49.if.end.i_crit_edge ]
  %iter_all.sroa.23.0108 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %if.end.i.i49.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.23.0108)
  %tobool.not.i.i44 = icmp eq i32 %iter_all.sroa.23.0108, 0
  br i1 %tobool.not.i.i44, label %if.else.i.i, label %if.then.i.i45

if.then.i.i45:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.0110, i32 1
  br label %if.end.i.i49

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %21, i32 %iter_all.sroa.16.0109
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %21, i32 %iter_all.sroa.16.0109, i32 2
  %24 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i46 = lshr i32 %25, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %23, i32 %shr.i.i46
  %and.i.i47 = and i32 %25, 4095
  br label %if.end.i.i49

if.end.i.i49:                                     ; preds = %if.else.i.i, %if.then.i.i45
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i45 ]
  %.sink.i.i = phi i32 [ %and.i.i47, %if.else.i.i ], [ 0, %if.then.i.i45 ]
  %sub.i.i48 = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %21, i32 %iter_all.sroa.16.0109, i32 1
  %26 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %27, %iter_all.sroa.23.0108
  %28 = tail call i32 @llvm.umin.i32(i32 %sub.i.i48, i32 %sub9.i.i) #10
  %add.i.i = add i32 %28, %iter_all.sroa.23.0108
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %27)
  %cmp15.i.i = icmp eq i32 %add.i.i, %27
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select97 = add nuw nsw i32 %iter_all.sroa.16.0109, %inc.i.i
  %inc = add i32 %max_ra_pages.0111, 1
  %cmp.not.i = icmp ult i32 %spec.select97, %conv.i
  br i1 %cmp.not.i, label %if.end.i.i49.if.end.i_crit_edge, label %for.end.loopexit

if.end.i.i49.if.end.i_crit_edge:                  ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.end.loopexit:                                 ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = lshr i32 %inc, 2
  br label %if.end

if.end:                                           ; preds = %for.end.loopexit, %for.cond.preheader.if.end_crit_edge, %bio_first_page_all.exit.if.end_crit_edge
  %iter_all.sroa.0.3 = phi ptr [ inttoptr (i32 -1 to ptr), %bio_first_page_all.exit.if.end_crit_edge ], [ inttoptr (i32 -1 to ptr), %for.cond.preheader.if.end_crit_edge ], [ %iter_all.sroa.0.1, %for.end.loopexit ]
  %max_ra_pages.1 = phi i32 [ 0, %bio_first_page_all.exit.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %bi_vcnt.i53 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %29 = ptrtoint ptr %bi_vcnt.i53 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bi_vcnt.i53, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.not.i55114.not = icmp eq i16 %30, 0
  br i1 %cmp.not.i55114.not, label %if.end.for.end14_crit_edge, label %if.end.i59.lr.ph

if.end.for.end14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end14

if.end.i59.lr.ph:                                 ; preds = %if.end
  %log_arity = getelementptr inbounds %struct.merkle_tree_params, ptr %12, i32 0, i32 6
  %level0_blocks = getelementptr inbounds %struct.merkle_tree_params, ptr %12, i32 0, i32 9
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.end13.if.end.i59_crit_edge, %if.end.i59.lr.ph
  %iter_all.sroa.0.4117 = phi ptr [ %iter_all.sroa.0.3, %if.end.i59.lr.ph ], [ %iter_all.sroa.0.5, %if.end13.if.end.i59_crit_edge ]
  %iter_all.sroa.16.2116 = phi i32 [ 0, %if.end.i59.lr.ph ], [ %spec.select99, %if.end13.if.end.i59_crit_edge ]
  %iter_all.sroa.23.2115 = phi i32 [ 0, %if.end.i59.lr.ph ], [ %spec.select98, %if.end13.if.end.i59_crit_edge ]
  %31 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bi_io_vec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.23.2115)
  %tobool.not.i.i58 = icmp eq i32 %iter_all.sroa.23.2115, 0
  br i1 %tobool.not.i.i58, label %if.else.i.i67, label %if.then.i.i61

if.then.i.i61:                                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i.i60 = getelementptr %struct.page, ptr %iter_all.sroa.0.4117, i32 1
  br label %if.end.i.i75

if.else.i.i67:                                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i62 = getelementptr %struct.bio_vec, ptr %32, i32 %iter_all.sroa.16.2116
  %33 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i62, align 4
  %bv_offset3.i.i63 = getelementptr %struct.bio_vec, ptr %32, i32 %iter_all.sroa.16.2116, i32 2
  %35 = ptrtoint ptr %bv_offset3.i.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bv_offset3.i.i63, align 4
  %shr.i.i64 = lshr i32 %36, 12
  %add.ptr.i.i65 = getelementptr %struct.page, ptr %34, i32 %shr.i.i64
  %and.i.i66 = and i32 %36, 4095
  br label %if.end.i.i75

if.end.i.i75:                                     ; preds = %if.else.i.i67, %if.then.i.i61
  %iter_all.sroa.0.5 = phi ptr [ %add.ptr.i.i65, %if.else.i.i67 ], [ %incdec.ptr.i.i60, %if.then.i.i61 ]
  %.sink.i.i68 = phi i32 [ %and.i.i66, %if.else.i.i67 ], [ 0, %if.then.i.i61 ]
  %sub.i.i69 = sub nuw nsw i32 4096, %.sink.i.i68
  %bv_len.i.i70 = getelementptr %struct.bio_vec, ptr %32, i32 %iter_all.sroa.16.2116, i32 1
  %37 = ptrtoint ptr %bv_len.i.i70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bv_len.i.i70, align 4
  %sub9.i.i71 = sub i32 %38, %iter_all.sroa.23.2115
  %39 = tail call i32 @llvm.umin.i32(i32 %sub.i.i69, i32 %sub9.i.i71) #10
  %add.i.i73 = add i32 %39, %iter_all.sroa.23.2115
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i73, i32 %38)
  %cmp15.i.i74 = icmp eq i32 %add.i.i73, %38
  %spec.select98 = select i1 %cmp15.i.i74, i32 0, i32 %add.i.i73
  %inc.i.i76 = zext i1 %cmp15.i.i74 to i32
  %spec.select99 = add nuw nsw i32 %iter_all.sroa.16.2116, %inc.i.i76
  %index = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.5, i32 0, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index, align 4
  %42 = ptrtoint ptr %log_arity to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %log_arity, align 8
  %shr = lshr i32 %41, %43
  %44 = ptrtoint ptr %level0_blocks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %level0_blocks, align 8
  %sub = sub i32 %45, %shr
  %46 = tail call i32 @llvm.umin.i32(i32 %max_ra_pages.1, i32 %sub)
  %47 = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.5, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !71

if.then.i.i:                                      ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %49, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %iter_all.sroa.0.5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %50, %if.end.i.i ]
  %51 = inttoptr i32 %retval.0.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i.not.i = icmp eq i32 %53, -1
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %47, align 4
  %and.i16.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !72

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !71

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i = add i32 %55, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %iter_all.sroa.0.5 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %56, %if.end.i20.i ]
  %57 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %57, ptr noundef nonnull @.str.21) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !71

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i = add i32 %55, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %iter_all.sroa.0.5 to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %58, %if.end.i27.i ]
  %59 = inttoptr i32 %retval.0.i28.i to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %62 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool10.not = icmp eq i32 %62, 0
  br i1 %tobool10.not, label %land.lhs.true, label %PageError.exit.if.end13_crit_edge

PageError.exit.if.end13_crit_edge:                ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %PageError.exit
  %call11 = tail call fastcc zeroext i1 @verify_page(ptr noundef %10, ptr noundef %12, ptr noundef %call1, ptr noundef %iter_all.sroa.0.5, i32 noundef %46)
  br i1 %call11, label %land.lhs.true.if.end13_crit_edge, label %if.then12

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  %63 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %47, align 4
  %and.i.i33 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33)
  %tobool.not.i = icmp eq i32 %and.i.i33, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i34, !prof !71

if.then.i34:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.5, ptr noundef nonnull @.str.29) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !89
  unreachable

do.body7.i:                                       ; preds = %if.then12
  %65 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %47, align 4
  %and.i31.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i35 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i35, label %if.end.i.i38, label %if.then.i.i37, !prof !71

if.then.i.i37:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i36 = add i32 %66, -1
  br label %_compound_head.exit.i41

if.end.i.i38:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %iter_all.sroa.0.5 to i32
  br label %_compound_head.exit.i41

_compound_head.exit.i41:                          ; preds = %if.end.i.i38, %if.then.i.i37
  %retval.0.i.i39 = phi i32 [ %sub.i.i36, %if.then.i.i37 ], [ %67, %if.end.i.i38 ]
  %68 = inttoptr i32 %retval.0.i.i39 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i.not.i40 = icmp eq i32 %70, -1
  %71 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %47, align 4
  %and.i32.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i40, label %if.then17.i, label %do.end24.i, !prof !72

if.then17.i:                                      ; preds = %_compound_head.exit.i41
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !71

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %72, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %iter_all.sroa.0.5 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %73, %if.end.i36.i ]
  %74 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %74, ptr noundef nonnull @.str.21) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i41
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !71

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %72, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %iter_all.sroa.0.5 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %75, %if.end.i43.i ]
  %76 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %76) #10
  br label %if.end13

if.end13:                                         ; preds = %SetPageError.exit, %land.lhs.true.if.end13_crit_edge, %PageError.exit.if.end13_crit_edge
  %77 = ptrtoint ptr %bi_vcnt.i53 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %bi_vcnt.i53, align 8
  %conv.i54 = zext i16 %78 to i32
  %cmp.not.i55 = icmp ult i32 %spec.select99, %conv.i54
  br i1 %cmp.not.i55, label %if.end13.if.end.i59_crit_edge, label %if.end13.for.end14_crit_edge

if.end13.for.end14_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end14

if.end13.if.end.i59_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i59

for.end14:                                        ; preds = %if.end13.for.end14_crit_edge, %if.end.for.end14_crit_edge
  %79 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %12, align 8
  tail call void @fsverity_free_hash_request(ptr noundef %80, ptr noundef %call1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsverity_enqueue_verify_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fsverity_read_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsverity_init_workqueue() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 18, i32 noundef %0) #10
  store ptr %call1, ptr @fsverity_read_workqueue, align 4
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fsverity_exit_workqueue() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fsverity_read_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #10
  store ptr null, ptr @fsverity_read_workqueue, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fsverity_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_hash_page(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cmp_hashes(ptr nocapture noundef readonly %vi, ptr noundef %want_hash, ptr noundef %real_hash, i32 noundef %index, i32 noundef %level) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %digest_size = getelementptr inbounds %struct.merkle_tree_params, ptr %vi, i32 0, i32 2
  %0 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %digest_size, align 8
  %bcmp = tail call i32 @bcmp(ptr %want_hash, ptr %real_hash, i32 %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %inode = getelementptr inbounds %struct.fsverity_info, ptr %vi, i32 0, i32 3
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 8
  %4 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vi, align 8
  %name = getelementptr inbounds %struct.fsverity_hash_alg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26, i32 noundef %index, i32 noundef %level, ptr noundef %7, i32 noundef %1, ptr noundef %want_hash, ptr noundef %7, i32 noundef %1, ptr noundef %real_hash) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__ksymtab_fsverity_verify_page, !1, !"__ksymtab_fsverity_verify_page", i1 false, i1 false}
!1 = !{!"../fs/verity/verify.c", i32 205, i32 1}
!2 = !{ptr @__ksymtab_fsverity_verify_bio, !3, !"__ksymtab_fsverity_verify_bio", i1 false, i1 false}
!3 = !{!"../fs/verity/verify.c", i32 264, i32 1}
!4 = !{ptr @__ksymtab_fsverity_enqueue_verify_work, !5, !"__ksymtab_fsverity_enqueue_verify_work", i1 false, i1 false}
!5 = !{!"../fs/verity/verify.c", i32 277, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/verity/verify.c", i32 289, i32 44}
!8 = !{ptr @fsverity_read_workqueue, !9, !"fsverity_read_workqueue", i1 false, i1 false}
!9 = !{!"../fs/verity/verify.c", i32 14, i32 33}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../fs/verity/verify.c", i32 101, i32 6}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/verity/verify.c", i32 104, i32 2}
!15 = !{ptr @verify_page._rs, !14, !"_rs", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @verify_page.descriptor, !14, !"descriptor", i1 false, i1 false}
!20 = !{ptr @verify_page._rs.6, !21, !"_rs", i1 false, i1 false}
!21 = !{!"../fs/verity/verify.c", i32 118, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @verify_page.descriptor.7, !21, !"descriptor", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/verity/verify.c", i32 125, i32 4}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @verify_page._rs.11, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../fs/verity/verify.c", i32 135, i32 4}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @verify_page.descriptor.12, !28, !"descriptor", i1 false, i1 false}
!31 = !{ptr @verify_page._rs.14, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../fs/verity/verify.c", i32 140, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @verify_page.descriptor.15, !32, !"descriptor", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/verity/verify.c", i32 146, i32 2}
!37 = !{ptr @verify_page.__UNIQUE_ID_ddebug257, !36, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/verity/verify.c", i32 164, i32 3}
!41 = !{ptr @verify_page.__UNIQUE_ID_ddebug258, !40, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!42 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/page-flags.h", i32 430, i32 1}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/mm.h", i32 717, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/verity/verify.c", i32 61, i32 2}
!55 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/bio.h", i32 248, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2150593037, i64 2150593528, i64 2150593074, i64 2150593130, i64 2150593164, i64 2150593188, i64 2150593229, i64 2150593250, i64 2150593278, i64 2150593312}
!74 = !{i64 2150585604, i64 2150586095, i64 2150585641, i64 2150585697, i64 2150585731, i64 2150585755, i64 2150585796, i64 2150585817, i64 2150585845, i64 2150585879}
!75 = !{i64 2151335496}
!76 = !{i64 2148501457, i64 2148501462, i64 2148501475, i64 2148501519, i64 2148501553, i64 2148501574}
!77 = !{i64 2150833943, i64 2150834434, i64 2150833980, i64 2150834036, i64 2150834070, i64 2150834094, i64 2150834135, i64 2150834156, i64 2150834184, i64 2150834218}
!78 = !{i64 2153797930}
!79 = !{i64 2152192155}
!80 = !{i64 2152192362}
!81 = !{i64 2153800701}
!82 = !{i64 2153347371, i64 2153347854, i64 2153347408, i64 2153347464, i64 2153347498, i64 2153347522, i64 2153347563, i64 2153347584, i64 2153347612, i64 2153347646}
!83 = !{i64 2148765335}
!84 = !{i64 2148680044, i64 2148680076, i64 2148680105, i64 2148680139, i64 2148680170, i64 2148680193}
!85 = !{i64 2148765564}
!86 = !{i64 2150841986, i64 2150842159, i64 2150842174, i64 2150842226, i64 2150842285, i64 2150842309, i64 2150842350, i64 2150842371, i64 2150842399, i64 2150842431}
!87 = !{i64 2150842757, i64 2150842930, i64 2150842945, i64 2150842997, i64 2150843056, i64 2150843080, i64 2150843121, i64 2150843142, i64 2150843170, i64 2150843202}
!88 = !{i64 2150638636, i64 2150639127, i64 2150638673, i64 2150638729, i64 2150638763, i64 2150638787, i64 2150638828, i64 2150638849, i64 2150638877, i64 2150638911}
!89 = !{i64 2150647194, i64 2150647367, i64 2150647382, i64 2150647434, i64 2150647493, i64 2150647517, i64 2150647558, i64 2150647579, i64 2150647607, i64 2150647639}
!90 = !{i64 2150648069, i64 2150648242, i64 2150648257, i64 2150648309, i64 2150648368, i64 2150648392, i64 2150648433, i64 2150648454, i64 2150648482, i64 2150648514}
