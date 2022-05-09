; ModuleID = '/llk/IR_all_yes/fs/lockd/clntlock.c_pt.bc'
source_filename = "../fs/lockd/clntlock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nlmclnt_init\22, \22a\22\09"
module asm "\09.weak\09__crc_nlmclnt_init\09\09\09\09"
module asm "\09.long\09__crc_nlmclnt_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmclnt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmclnt_init\22\09\09\09\09\09"
module asm "__kstrtabns_nlmclnt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nlmclnt_done\22, \22a\22\09"
module asm "\09.weak\09__crc_nlmclnt_done\09\09\09\09"
module asm "\09.long\09__crc_nlmclnt_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmclnt_done:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmclnt_done\22\09\09\09\09\09"
module asm "__kstrtabns_nlmclnt_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nlmclnt_initdata = type { ptr, ptr, i32, i16, i32, i32, ptr, ptr, ptr }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nlm_wait = type { %struct.list_head, %struct.wait_queue_head, ptr, ptr, i16, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.nlm_rqst = type { %struct.refcount_struct, i32, ptr, %struct.nlm_args, %struct.nlm_res, ptr, i32, [74 x i8], ptr }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.114 }
%union.anon.114 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.64 }
%union.anon.64 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.nlm_lockowner = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, i32 }
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.100, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.100 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_nlmclnt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmclnt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmclnt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmclnt_init to i32), ptr @__kstrtab_nlmclnt_init, ptr @__kstrtabns_nlmclnt_init }, section "___ksymtab_gpl+nlmclnt_init", align 4
@__kstrtab_nlmclnt_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmclnt_done = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmclnt_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmclnt_done to i32), ptr @__kstrtab_nlmclnt_done, ptr @__kstrtabns_nlmclnt_done }, section "___ksymtab_gpl+nlmclnt_done", align 4
@nlmclnt_prepare_block.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&block->b_wait\00", [17 x i8] zeroinitializer }, align 32
@nlm_blocked_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nlm_blocked = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nlm_blocked, ptr @nlm_blocked }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/lockd/clntlock.c\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-reclaim\00", [21 x i8] zeroinitializer }, align 32
@nlmclnt_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013lockd: unable to spawn reclaimer thread. Locks for %s won't be reclaimed! (%ld)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nlmclnt_recovery\00", [47 x i8] zeroinitializer }, align 32
@nlmclnt_recovery._entry_ptr = internal global ptr @nlmclnt_recovery._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nlm_blocked_lock\00", [47 x i8] zeroinitializer }, align 32
@nlm_debug = external dso_local local_unnamed_addr global i32, align 4
@reclaimer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lockd: reclaiming locks for host %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reclaimer\00", [22 x i8] zeroinitializer }, align 32
@reclaimer._entry_ptr = internal global ptr @reclaimer._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@reclaimer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.1, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NLM: done reclaiming locks for host %s\0A\00", [56 x i8] zeroinitializer }, align 32
@reclaimer._entry_ptr.10 = internal global ptr @reclaimer._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 108, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"nlm_blocked_lock\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"nlm_blocked\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 44, i32 8 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 149, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 220, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 222, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 45, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 247, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [23 x i8] c"../fs/lockd/clntlock.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 282, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_nlmclnt_done, ptr @__ksymtab_nlmclnt_init, ptr @nlmclnt_recovery._entry, ptr @nlmclnt_recovery._entry_ptr, ptr @reclaimer._entry, ptr @reclaimer._entry.8, ptr @reclaimer._entry_ptr, ptr @reclaimer._entry_ptr.10, ptr @nlmclnt_prepare_block.__key, ptr @.str, ptr @nlm_blocked_lock, ptr @nlm_blocked, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_prepare_block.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_blocked_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_blocked to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaimer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaimer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nlmclnt_init(ptr nocapture noundef readonly %nlm_init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nfs_version = getelementptr inbounds %struct.nlmclnt_initdata, ptr %nlm_init, i32 0, i32 4
  %0 = ptrtoint ptr %nfs_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfs_version, align 4
  %net = getelementptr inbounds %struct.nlmclnt_initdata, ptr %nlm_init, i32 0, i32 6
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %cred = getelementptr inbounds %struct.nlmclnt_initdata, ptr %nlm_init, i32 0, i32 8
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 4
  %call = tail call i32 @lockd_up(ptr noundef %3, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %cond = select i1 %cmp, i32 1, i32 4
  %address = getelementptr inbounds %struct.nlmclnt_initdata, ptr %nlm_init, i32 0, i32 1
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %address, align 4
  %addrlen = getelementptr inbounds %struct.nlmclnt_initdata, ptr %nlm_init, i32 0, i32 2
  %9 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addrlen, align 4
  %protocol = getelementptr inbounds %struct.nlmclnt_initdata, ptr %nlm_init, i32 0, i32 3
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %protocol, align 4
  %13 = ptrtoint ptr %nlm_init to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nlm_init, align 4
  %noresvport = getelementptr inbounds %struct.nlmclnt_initdata, ptr %nlm_init, i32 0, i32 5
  %15 = ptrtoint ptr %noresvport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %noresvport, align 4
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  %19 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cred, align 4
  %call5 = tail call ptr @nlmclnt_lookup_host(ptr noundef %8, i32 noundef %10, i16 noundef zeroext %12, i32 noundef %cond, ptr noundef %14, i32 noundef %16, ptr noundef %18, ptr noundef %20) #7
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.end.out_nohost_crit_edge, label %if.end8

if.end.out_nohost_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_nohost

if.end8:                                          ; preds = %if.end
  %h_rpcclnt = getelementptr inbounds %struct.nlm_host, ptr %call5, i32 0, i32 5
  %21 = ptrtoint ptr %h_rpcclnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %h_rpcclnt, align 4
  %cmp9 = icmp eq ptr %22, null
  br i1 %cmp9, label %land.lhs.true, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  %call10 = tail call ptr @nlm_bind_host(ptr noundef nonnull %call5) #7
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %out_nobind, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  %nlmclnt_ops = getelementptr inbounds %struct.nlmclnt_initdata, ptr %nlm_init, i32 0, i32 7
  %23 = ptrtoint ptr %nlmclnt_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nlmclnt_ops, align 4
  %h_nlmclnt_ops = getelementptr inbounds %struct.nlm_host, ptr %call5, i32 0, i32 28
  %25 = ptrtoint ptr %h_nlmclnt_ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %h_nlmclnt_ops, align 4
  br label %cleanup

out_nobind:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nlmclnt_release_host(ptr noundef nonnull %call5) #7
  br label %out_nohost

out_nohost:                                       ; preds = %out_nobind, %if.end.out_nohost_crit_edge
  %26 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net, align 4
  tail call void @lockd_down(ptr noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %out_nohost, %if.end13, %if.then
  %retval.0 = phi ptr [ %6, %if.then ], [ inttoptr (i32 -37 to ptr), %out_nohost ], [ %call5, %if.end13 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockd_up(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlmclnt_lookup_host(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_bind_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockd_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmclnt_done(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 25
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  tail call void @nlmclnt_release_host(ptr noundef %host) #7
  tail call void @lockd_down(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nlmclnt_prepare_block(ptr noundef %host, ptr noundef %fl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 76) #10
  %cmp.not = icmp eq ptr %call7.i, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %b_host = getelementptr inbounds %struct.nlm_wait, ptr %call7.i, i32 0, i32 2
  %1 = ptrtoint ptr %b_host to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %host, ptr %b_host, align 4
  %b_lock = getelementptr inbounds %struct.nlm_wait, ptr %call7.i, i32 0, i32 3
  %2 = ptrtoint ptr %b_lock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fl, ptr %b_lock, align 8
  %b_wait = getelementptr inbounds %struct.nlm_wait, ptr %call7.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %b_wait, ptr noundef nonnull @.str, ptr noundef nonnull @nlmclnt_prepare_block.__key) #7
  %b_status = getelementptr inbounds %struct.nlm_wait, ptr %call7.i, i32 0, i32 5
  %3 = ptrtoint ptr %b_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %b_status, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #7
  %4 = load ptr, ptr @nlm_blocked, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull @nlm_blocked, ptr noundef %4) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nlm_blocked, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i, ptr @nlm_blocked, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #7
  br label %if.end

if.end:                                           ; preds = %list_add.exit, %entry.if.end_crit_edge
  ret ptr %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmclnt_finish_block(ptr noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %block, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %block) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %block, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %block, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #7
  tail call void @kfree(ptr noundef nonnull %block) #7
  br label %return

return:                                           ; preds = %list_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmclnt_block(ptr noundef %block, ptr nocapture noundef writeonly %req, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %block, null
  br i1 %cmp, label %entry.cleanup49_crit_edge, label %if.end

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup49

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 151) #7
  %b_status = getelementptr inbounds %struct.nlm_wait, ptr %block, i32 0, i32 5
  %0 = ptrtoint ptr %b_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp4.not = icmp eq i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool5.not = icmp eq i32 %timeout, 0
  %spec.store.select = select i1 %tobool5.not, i32 1, i32 %timeout
  %__ret.0 = select i1 %cmp4.not, i32 %timeout, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool9.not = icmp ne i32 %__ret.0, 0
  %2 = and i1 %cmp4.not, %tobool9.not
  br i1 %2, label %if.then11, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %b_wait = getelementptr inbounds %struct.nlm_wait, ptr %block, i32 0, i32 1
  %call77 = call i32 @prepare_to_wait_event(ptr noundef %b_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %4 = ptrtoint ptr %b_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp15.not78 = icmp eq i32 %5, 3
  %__ret12.181 = select i1 %cmp15.not78, i32 %timeout, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.181)
  %tobool25.not82 = icmp ne i32 %__ret12.181, 0
  %6 = and i1 %cmp15.not78, %tobool25.not82
  br i1 %6, label %if.then11.if.end31_crit_edge, label %if.then11.for.end_crit_edge

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then11.if.end31_crit_edge:                     ; preds = %if.then11
  br label %if.end31

if.end31:                                         ; preds = %cleanup.if.end31_crit_edge, %if.then11.if.end31_crit_edge
  %__ret12.185 = phi i32 [ %__ret12.1, %cleanup.if.end31_crit_edge ], [ %__ret12.181, %if.then11.if.end31_crit_edge ]
  %call84 = phi i32 [ %call, %cleanup.if.end31_crit_edge ], [ %call77, %if.then11.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool32.not = icmp eq i32 %call84, 0
  br i1 %tobool32.not, label %cleanup, label %if.end31.__out_crit_edge

if.end31.__out_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end31
  %call35 = call i32 @schedule_timeout(i32 noundef %__ret12.185) #7
  %call = call i32 @prepare_to_wait_event(ptr noundef %b_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %7 = ptrtoint ptr %b_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp15.not = icmp eq i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool19.not = icmp eq i32 %call35, 0
  %spec.store.select50 = select i1 %tobool19.not, i32 1, i32 %call35
  %__ret12.1 = select i1 %cmp15.not, i32 %call35, i32 %spec.store.select50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1)
  %tobool25.not = icmp eq i32 %__ret12.1, 0
  %not.cmp15.not = xor i1 %cmp15.not, true
  %9 = select i1 %not.cmp15.not, i1 true, i1 %tobool25.not
  br i1 %9, label %cleanup.for.end_crit_edge, label %cleanup.if.end31_crit_edge

cleanup.if.end31_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then11.for.end_crit_edge
  %__ret12.1.lcssa = phi i32 [ %__ret12.181, %if.then11.for.end_crit_edge ], [ %__ret12.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %b_wait, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end31.__out_crit_edge
  %__ret12.269 = phi i32 [ %__ret12.1.lcssa, %for.end ], [ %call84, %if.end31.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end38

if.end38:                                         ; preds = %__out, %if.end.if.end38_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.end.if.end38_crit_edge ], [ %__ret12.269, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp40 = icmp slt i32 %__ret.1, 0
  br i1 %cmp40, label %if.end38.cleanup49_crit_edge, label %if.end42

if.end38.cleanup49_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup49

if.end42:                                         ; preds = %if.end38
  %10 = ptrtoint ptr %b_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp44 = icmp eq i32 %11, 4
  br i1 %cmp44, label %if.then45, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %b_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %b_status, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %13 = ptrtoint ptr %b_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_status, align 4
  %status = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %status, align 4
  br label %cleanup49

cleanup49:                                        ; preds = %if.end47, %if.end38.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -11, %entry.cleanup49_crit_edge ], [ -512, %if.end38.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmclnt_grant(ptr nocapture noundef readonly %addr, ptr nocapture noundef readonly %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fh2 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #7
  %block.044 = load ptr, ptr @nlm_blocked, align 4
  %cmp.not45 = icmp eq ptr %block.044, @nlm_blocked
  br i1 %cmp.not45, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fl_start3 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %fl_end5 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %svid = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 4
  %sin6_addr1.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %arrayidx6.i.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx11.i.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx17.i.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %sin6_scope_id5.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 4
  %sin_addr1.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %data4.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %block.047 = phi ptr [ %block.044, %for.body.lr.ph ], [ %block.0, %cleanup.for.body_crit_edge ]
  %res.046 = phi i32 [ 1, %for.body.lr.ph ], [ %res.1, %cleanup.for.body_crit_edge ]
  %b_lock = getelementptr inbounds %struct.nlm_wait, ptr %block.047, i32 0, i32 3
  %0 = ptrtoint ptr %b_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_lock, align 4
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fl_start, align 8
  %4 = ptrtoint ptr %fl_start3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %fl_start3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp4.not = icmp eq i64 %3, %5
  br i1 %cmp4.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fl_end, align 8
  %8 = ptrtoint ptr %fl_end5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fl_end5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp6.not = icmp eq i64 %7, %9
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %owner = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 19, i32 0, i32 1
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner, align 4
  %pid = getelementptr inbounds %struct.nlm_lockowner, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 4
  %14 = ptrtoint ptr %svid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %svid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9.not = icmp eq i32 %13, %15
  br i1 %cmp9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %b_host = getelementptr inbounds %struct.nlm_wait, ptr %block.047, i32 0, i32 2
  %16 = ptrtoint ptr %b_host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_host, align 4
  %h_addr.i = getelementptr inbounds %struct.nlm_host, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %h_addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %h_addr.i, align 2
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp.i = icmp eq i16 %19, %21
  br i1 %cmp.i, label %if.then.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end11
  %22 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i16 %19, label %if.then.i.cleanup_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb6.i
  ]

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sin_addr.i.i = getelementptr inbounds %struct.nlm_host, ptr %17, i32 0, i32 1, i32 0, i32 1
  br label %rpc_cmp_addr.exit

sw.bb6.i:                                         ; preds = %if.then.i
  %sin6_addr.i.i = getelementptr inbounds %struct.nlm_host, ptr %17, i32 0, i32 1, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sin6_addr.i.i, align 4
  %25 = ptrtoint ptr %sin6_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sin6_addr1.i.i, align 4
  %xor.i.i.i = xor i32 %26, %24
  %arrayidx4.i.i.i = getelementptr %struct.nlm_host, ptr %17, i32 0, i32 1, i32 0, i32 1, i32 8
  %27 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.i.i.i, align 4
  %29 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %30, %28
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.nlm_host, ptr %17, i32 0, i32 1, i32 0, i32 1, i32 12
  %31 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx9.i.i.i, align 4
  %33 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %34, %32
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.nlm_host, ptr %17, i32 0, i32 1, i32 0, i32 1, i32 16
  %35 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx15.i.i.i, align 4
  %37 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %38, %36
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.else.i.i, label %sw.bb6.i.cleanup_crit_edge

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i.i:                                      ; preds = %sw.bb6.i
  %call.i.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i) #7
  %and.i.i = and i32 %call.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i.if.end14_crit_edge, label %if.then4.i.i

if.else.i.i.if.end14_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sin6_scope_id.i.i = getelementptr inbounds %struct.nlm_host, ptr %17, i32 0, i32 1, i32 0, i32 1, i32 20
  br label %rpc_cmp_addr.exit

rpc_cmp_addr.exit:                                ; preds = %if.then4.i.i, %sw.bb.i
  %sin6_scope_id5.i.sink.i = phi ptr [ %sin6_scope_id5.i.i, %if.then4.i.i ], [ %sin_addr1.i.i, %sw.bb.i ]
  %.sink.in.i = phi ptr [ %sin6_scope_id.i.i, %if.then4.i.i ], [ %sin_addr.i.i, %sw.bb.i ]
  %39 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %40 = ptrtoint ptr %sin6_scope_id5.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sin6_scope_id5.i.sink.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i, i32 %41)
  %cmp.i13.i = icmp eq i32 %.sink.i, %41
  br i1 %cmp.i13.i, label %rpc_cmp_addr.exit.if.end14_crit_edge, label %rpc_cmp_addr.exit.cleanup_crit_edge

rpc_cmp_addr.exit.cleanup_crit_edge:              ; preds = %rpc_cmp_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rpc_cmp_addr.exit.if.end14_crit_edge:             ; preds = %rpc_cmp_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end14:                                         ; preds = %rpc_cmp_addr.exit.if.end14_crit_edge, %if.else.i.i.if.end14_crit_edge
  %fl_file = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %fl_file to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fl_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %f_inode.i, align 8
  %fh.i = getelementptr i8, ptr %45, i32 -440
  %46 = ptrtoint ptr %fh.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %fh.i, align 2
  %48 = ptrtoint ptr %fh2 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %fh2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %49)
  %cmp.not.i = icmp eq i16 %47, %49
  br i1 %cmp.not.i, label %nfs_compare_fh.exit, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nfs_compare_fh.exit:                              ; preds = %if.end14
  %conv.i = zext i16 %47 to i32
  %data.i = getelementptr i8, ptr %45, i32 -438
  %bcmp.i = tail call i32 @bcmp(ptr %data.i, ptr %data4.i, i32 %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp8.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %cmp8.i.not, label %if.end20, label %nfs_compare_fh.exit.cleanup_crit_edge

nfs_compare_fh.exit.cleanup_crit_edge:            ; preds = %nfs_compare_fh.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %nfs_compare_fh.exit
  call void @__sanitizer_cov_trace_pc() #9
  %b_status = getelementptr inbounds %struct.nlm_wait, ptr %block.047, i32 0, i32 5
  %50 = ptrtoint ptr %b_status to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %b_status, align 4
  %b_wait = getelementptr inbounds %struct.nlm_wait, ptr %block.047, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %b_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %nfs_compare_fh.exit.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %rpc_cmp_addr.exit.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %res.1 = phi i32 [ 0, %if.end20 ], [ %res.046, %for.body.cleanup_crit_edge ], [ %res.046, %if.end.cleanup_crit_edge ], [ %res.046, %if.end8.cleanup_crit_edge ], [ %res.046, %rpc_cmp_addr.exit.cleanup_crit_edge ], [ %res.046, %nfs_compare_fh.exit.cleanup_crit_edge ], [ %res.046, %if.then.i.cleanup_crit_edge ], [ %res.046, %if.end11.cleanup_crit_edge ], [ %res.046, %sw.bb6.i.cleanup_crit_edge ], [ %res.046, %if.end14.cleanup_crit_edge ]
  %51 = ptrtoint ptr %block.047 to i32
  call void @__asan_load4_noabort(i32 %51)
  %block.0 = load ptr, ptr %block.047, align 4
  %cmp.not = icmp eq ptr %block.0, @nlm_blocked
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %res.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %res.1, %cleanup.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #7
  ret i32 %res.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmclnt_recovery(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %h_reclaiming = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %h_reclaiming to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %h_reclaiming, align 2
  %bf.set = xor i8 %bf.load, -128
  store i8 %bf.set, ptr %h_reclaiming, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  %call = tail call ptr @nlm_get_host(ptr noundef %host) #7
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 6
  %1 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %h_name, align 4
  %call2 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @reclaimer, ptr noundef %host, i32 noundef -1, ptr noundef nonnull @.str.2, ptr noundef %2) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @wake_up_process(ptr noundef %call2) #7
  br label %if.end13

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %h_name, align 4
  %5 = ptrtoint ptr %call2 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %4, i32 noundef %5) #12
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_get_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reclaimer(ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.nlm_host, ptr %ptr, i32 0, i32 25
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 848) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kernel_sigaction(i32 noundef 9, ptr noundef nonnull inttoptr (i32 2 to ptr)) #7
  %h_rwsem = getelementptr inbounds %struct.nlm_host, ptr %ptr, i32 0, i32 11
  tail call void @down_write(ptr noundef %h_rwsem) #7
  %call2 = tail call i32 @lockd_up(ptr noundef %1, ptr noundef null) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %3 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.do.end11_crit_edge, label %do.end, !prof !40

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %ptr, i32 0, i32 6
  %4 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %h_name, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %5) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end, %if.end.do.end11_crit_edge
  %h_nsmstate = getelementptr inbounds %struct.nlm_host, ptr %ptr, i32 0, i32 13
  %h_nextrebind = getelementptr inbounds %struct.nlm_host, ptr %ptr, i32 0, i32 17
  %h_granted = getelementptr inbounds %struct.nlm_host, ptr %ptr, i32 0, i32 21
  %h_reclaim = getelementptr inbounds %struct.nlm_host, ptr %ptr, i32 0, i32 22
  %prev2.i.i = getelementptr inbounds %struct.nlm_host, ptr %ptr, i32 0, i32 21, i32 1
  br label %restart

restart:                                          ; preds = %list_add_tail.exit.restart_crit_edge, %do.end11
  %6 = ptrtoint ptr %h_nsmstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h_nsmstate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = ptrtoint ptr %h_nextrebind to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %h_nextrebind, align 4
  tail call void @nlm_rebind_host(ptr noundef %ptr) #7
  %10 = ptrtoint ptr %h_granted to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %h_granted, align 4
  %cmp.i.not.i = icmp eq ptr %11, %h_granted
  br i1 %cmp.i.not.i, label %restart.list_splice_init.exit_crit_edge, label %if.then.i

restart.list_splice_init.exit_crit_edge:          ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %h_reclaim to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %h_reclaim, align 4
  %14 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %h_reclaim, ptr %prev3.i.i, align 4
  store ptr %11, ptr %h_reclaim, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %13, ptr %15, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev6.i.i, align 4
  %19 = ptrtoint ptr %h_granted to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %h_granted, ptr %h_granted, align 4
  store ptr %h_granted, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %restart.list_splice_init.exit_crit_edge
  %20 = ptrtoint ptr %h_reclaim to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %h_reclaim, align 4
  %cmp.not129 = icmp eq ptr %21, %h_reclaim
  br i1 %cmp.not129, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %.pn.in130 = phi ptr [ %.pn132, %for.inc.for.body_crit_edge ], [ %21, %list_splice_init.exit.for.body_crit_edge ]
  %fl.0131 = getelementptr i8, ptr %.pn.in130, i32 -156
  %22 = ptrtoint ptr %.pn.in130 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn132 = load ptr, ptr %.pn.in130, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in130) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in130, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %.pn.in130 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in130, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %.pn.in130 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %.pn.in130, ptr %.pn.in130, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in130, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.pn.in130, ptr %prev.i3.i, align 4
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stack.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %39 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %list_del_init.exit.for.inc_crit_edge, !prof !40

list_del_init.exit.for.inc_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

signal_pending.exit:                              ; preds = %list_del_init.exit
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %and1.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool28.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool28.not, label %if.end30, label %signal_pending.exit.for.inc_crit_edge

signal_pending.exit.for.inc_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end30:                                         ; preds = %signal_pending.exit
  %call31 = tail call i32 @nlmclnt_reclaim(ptr noundef %ptr, ptr noundef %fl.0131, ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end34, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end34:                                         ; preds = %if.end30
  %42 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev2.i.i, align 4
  %call.i.i122 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in130, ptr noundef %43, ptr noundef %h_granted) #7
  br i1 %call.i.i122, label %if.end.i.i124, label %if.end34.list_add_tail.exit_crit_edge

if.end34.list_add_tail.exit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i124:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.pn.in130, ptr %prev2.i.i, align 4
  %45 = ptrtoint ptr %.pn.in130 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %h_granted, ptr %.pn.in130, align 4
  %46 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i3.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %.pn.in130, ptr %43, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i124, %if.end34.list_add_tail.exit_crit_edge
  %48 = ptrtoint ptr %h_nsmstate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %h_nsmstate, align 4
  %cmp39.not = icmp eq i32 %49, %7
  br i1 %cmp39.not, label %list_add_tail.exit.for.inc_crit_edge, label %list_add_tail.exit.restart_crit_edge

list_add_tail.exit.restart_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart

list_add_tail.exit.for.inc_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit.for.inc_crit_edge, %if.end30.for.inc_crit_edge, %signal_pending.exit.for.inc_crit_edge, %list_del_init.exit.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn132, %h_reclaim
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %h_reclaiming = getelementptr inbounds %struct.nlm_host, ptr %ptr, i32 0, i32 9
  %50 = ptrtoint ptr %h_reclaiming to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %h_reclaiming, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %h_reclaiming, align 2
  tail call void @up_write(ptr noundef %h_rwsem) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %51 = load i32, ptr @nlm_debug, align 4
  %and50 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %for.end.do.end67_crit_edge, label %do.end61, !prof !40

for.end.do.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

do.end61:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %h_name63 = getelementptr inbounds %struct.nlm_host, ptr %ptr, i32 0, i32 6
  %52 = ptrtoint ptr %h_name63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %h_name63, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %53) #12
  br label %do.end67

do.end67:                                         ; preds = %do.end61, %for.end.do.end67_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #7
  %block.0133 = load ptr, ptr @nlm_blocked, align 4
  %cmp72.not134 = icmp eq ptr %block.0133, @nlm_blocked
  br i1 %cmp72.not134, label %do.end67.for.end85_crit_edge, label %do.end67.for.body75_crit_edge

do.end67.for.body75_crit_edge:                    ; preds = %do.end67
  br label %for.body75

do.end67.for.end85_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end85

for.body75:                                       ; preds = %for.inc79.for.body75_crit_edge, %do.end67.for.body75_crit_edge
  %block.0135 = phi ptr [ %block.0, %for.inc79.for.body75_crit_edge ], [ %block.0133, %do.end67.for.body75_crit_edge ]
  %b_host = getelementptr inbounds %struct.nlm_wait, ptr %block.0135, i32 0, i32 2
  %54 = ptrtoint ptr %b_host to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_host, align 4
  %cmp76 = icmp eq ptr %55, %ptr
  br i1 %cmp76, label %if.then77, label %for.body75.for.inc79_crit_edge

for.body75.for.inc79_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc79

if.then77:                                        ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  %b_status = getelementptr inbounds %struct.nlm_wait, ptr %block.0135, i32 0, i32 5
  %56 = ptrtoint ptr %b_status to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %b_status, align 4
  %b_wait = getelementptr inbounds %struct.nlm_wait, ptr %block.0135, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %b_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %for.inc79

for.inc79:                                        ; preds = %if.then77, %for.body75.for.inc79_crit_edge
  %57 = ptrtoint ptr %block.0135 to i32
  call void @__asan_load4_noabort(i32 %57)
  %block.0 = load ptr, ptr %block.0135, align 4
  %cmp72.not = icmp eq ptr %block.0, @nlm_blocked
  br i1 %cmp72.not, label %for.inc79.for.end85_crit_edge, label %for.inc79.for.body75_crit_edge

for.inc79.for.body75_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75

for.inc79.for.end85_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end85

for.end85:                                        ; preds = %for.inc79.for.end85_crit_edge, %do.end67.for.end85_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #7
  tail call void @nlmclnt_release_host(ptr noundef %ptr) #7
  tail call void @lockd_down(ptr noundef %1) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end85, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_rebind_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmclnt_reclaim(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !18, !19, !21, !23, !24, !25, !26, !28, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab_nlmclnt_init, !1, !"__ksymtab_nlmclnt_init", i1 false, i1 false}
!1 = !{!"../fs/lockd/clntlock.c", i32 81, i32 1}
!2 = !{ptr @__ksymtab_nlmclnt_done, !3, !"__ksymtab_nlmclnt_done", i1 false, i1 false}
!3 = !{!"../fs/lockd/clntlock.c", i32 95, i32 1}
!4 = !{ptr @nlmclnt_prepare_block.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../fs/lockd/clntlock.c", i32 108, i32 3}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/lockd/clntlock.c", i32 149, i32 8}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/lockd/clntlock.c", i32 220, i32 10}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/lockd/clntlock.c", i32 222, i32 4}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nlmclnt_recovery._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @nlmclnt_recovery._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/lockd/clntlock.c", i32 45, i32 8}
!18 = !{ptr @nlm_blocked_lock, !17, !"nlm_blocked_lock", i1 false, i1 false}
!19 = !{ptr @nlm_blocked, !20, !"nlm_blocked", i1 false, i1 false}
!20 = !{!"../fs/lockd/clntlock.c", i32 44, i32 8}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/lockd/clntlock.c", i32 247, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @reclaimer._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @reclaimer._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/lockd/clntlock.c", i32 282, i32 2}
!28 = !{ptr @reclaimer._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @reclaimer._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
