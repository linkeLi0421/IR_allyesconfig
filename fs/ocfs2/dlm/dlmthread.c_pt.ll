; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlm/dlmthread.c_pt.bc'
source_filename = "../fs/ocfs2/dlm/dlmthread.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { %struct.hlist_node, %struct.qstr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.atomic_t, %struct.spinlock, %struct.wait_queue_head, i8, i16, [64 x i8], i32, i32, [8 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dlm_ctxt = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i8, i32, i8, i8, %struct.wait_queue_head, [8 x i32], [8 x i32], [8 x i32], [8 x i32], %struct.dlm_recovery_ctxt, %struct.spinlock, ptr, %struct.list_head, [3 x %struct.atomic_t], [3 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, ptr, %struct.kref, i32, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.dlm_protocol_version, %struct.dlm_protocol_version }
%struct.dlm_recovery_ctxt = type { %struct.list_head, %struct.list_head, i8, i8, i16, [8 x i32], %struct.wait_queue_head }
%struct.o2hb_callback_func = type { i32, %struct.list_head, ptr, ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_protocol_version = type { i8, i8 }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/ocfs2/dlm/dlmthread.c\00", [39 x i8] zeroinitializer }, align 32
@__func__.__dlm_lockres_calc_usage = private unnamed_addr constant [25 x i8] c"__dlm_lockres_calc_usage\00", align 1
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Adding res %.*s to purge list\0A\00", [61 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Removing res %.*s from purge list\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.__dlm_do_purge_lockres = private unnamed_addr constant [23 x i8] c"__dlm_do_purge_lockres\00", align 1
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Removing res %.*s from purgelist\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: res %.*s in use after deref\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Resource %.*s not on the Tracking list\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.__dlm_dirty_lockres = private unnamed_addr constant [20 x i8] c"__dlm_dirty_lockres\00", align 1
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: res %.*s\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.dlm_launch_thread = private unnamed_addr constant [18 x i8] c"dlm_launch_thread\00", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Starting dlm_thread...\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dlm-%s\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.dlm_complete_thread = private unnamed_addr constant [20 x i8] c"dlm_complete_thread\00", align 1
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Waiting for dlm thread to exit\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.dlm_thread = private unnamed_addr constant [11 x i8] c"dlm_thread\00", align 1
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dlm thread running for %s...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: inprog %d, mig %d, reco %d, dirty %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: res %.*s, inprogress, delay list shuffle, state %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Throttling dlm thread\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"quitting DLM thread\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.dlm_run_purge_list = private unnamed_addr constant [19 x i8] c"dlm_run_purge_list\00", align 1
@.str.17 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s: res %.*s is in use or being remastered, used %d, state %d, assert master workers %u\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.dlm_purge_lockres = private unnamed_addr constant [18 x i8] c"dlm_purge_lockres\00", align 1
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Purging res %.*s, master %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: res %.*s already in DLM_LOCK_RES_DROPPING_REF state\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Removing res %.*s from purgelist, master %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: deref %.*s in progress\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Resource %.*s not on the Tracking list\0A\00", [56 x i8] zeroinitializer }, align 32
@dlm_domain_lock = external dso_local global %struct.spinlock, align 4
@__func__.dlm_shuffle_lists = private unnamed_addr constant [18 x i8] c"dlm_shuffle_lists\00", align 1
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: res %.*s has locks on the convert queue\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: res %.*s converting lock to invalid mode\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: res %.*s, AST for Converting lock %u:%llu, type %d => %d, node %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: res %.*s, AST for Blocked lock %u:%llu, type %d, node %u\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.dlm_flush_asts = private unnamed_addr constant [15 x i8] c"dlm_flush_asts\00", align 1
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: res %.*s, Flush AST for lock %u:%llu, type %d, node %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: res %.*s, AST queued while flushing last one\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: res %.*s, Flush BAST for lock %u:%llu, blocked %d, node %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: res %.*s, BAST queued while flushing last one\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 50, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 114, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 123, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 157, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 165, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 177, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 528, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 536, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 538, i32 25 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 541, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 552, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 686, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 730, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 750, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 786, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 807, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 316, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 201, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 206, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 233, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 241, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 260, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 361, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 366, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 409, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 471, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 583, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 609, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 642, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [28 x i8] c"../fs/ocfs2/dlm/dlmthread.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 661, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_wait_on_lockres_flags(ptr noundef %res, i32 noundef %flags) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #6
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !73) #6
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
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %13 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %14 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body7, label %do.end12, !prof !83

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 46, 0\0A.popsection", ""() #6, !srcloc !84
  unreachable

do.end12:                                         ; preds = %entry
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #6
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  br label %__here

__here:                                           ; preds = %if.then86, %do.end12
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@__dlm_wait_on_lockres_flags, %__here) to i32), ptr %task_state_change, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2, ptr %18, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !85
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %state, align 2
  %conv = zext i16 %21 to i32
  %and = and i32 %conv, %flags
  %tobool85.not = icmp eq i32 %and, 0
  br i1 %tobool85.not, label %if.end89, label %if.then86

if.then86:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  call void @schedule() #6
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  br label %__here

if.end89:                                         ; preds = %__here
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #6
  br label %__here142

__here142:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change146 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change146 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@__dlm_wait_on_lockres_flags, %__here142) to i32), ptr %task_state_change146, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %25, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__dlm_lockres_has_locks(ptr noundef %res) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %granted = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %0 = ptrtoint ptr %granted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %granted, align 4
  %cmp.i.not = icmp eq ptr %1, %granted
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %converting = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %2 = ptrtoint ptr %converting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %converting, align 4
  %cmp.i8.not = icmp eq ptr %3, %converting
  br i1 %cmp.i8.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %blocked = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %4 = ptrtoint ptr %blocked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %blocked, align 4
  %cmp.i10.not = icmp eq ptr %5, %blocked
  br i1 %cmp.i10.not, label %land.lhs.true3.return_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true3.return_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true3.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__dlm_lockres_unused(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !83

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end9:                                          ; preds = %entry
  %granted.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %2 = ptrtoint ptr %granted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %granted.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %granted.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end9
  %converting.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %4 = ptrtoint ptr %converting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %converting.i, align 4
  %cmp.i8.not.i = icmp eq ptr %5, %converting.i
  br i1 %cmp.i8.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %blocked.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %6 = ptrtoint ptr %blocked.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %blocked.i, align 4
  %cmp.i10.not.i = icmp eq ptr %7, %blocked.i
  br i1 %cmp.i10.not.i, label %if.end13, label %land.lhs.true3.i.cleanup_crit_edge

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true3.i
  %inflight_locks = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 19
  %8 = ptrtoint ptr %inflight_locks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inflight_locks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %dirty = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 7
  %10 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %dirty, align 4
  %cmp.i.not = icmp eq ptr %11, %dirty
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %state, align 2
  %14 = and i16 %13, 16394
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %if.end27, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %refmap = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  %call28 = tail call i32 @_find_first_bit_be(ptr noundef %refmap, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call28)
  %cmp = icmp sgt i32 %call28, 254
  %. = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %lor.lhs.false.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %land.lhs.true3.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ %., %if.end27 ], [ 0, %do.end9.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %land.lhs.true3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_lockres_calc_usage(ptr noundef %dlm, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i80 = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m48 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body8, !prof !83

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 109, 0\0A.popsection", ""() #6, !srcloc !87
  unreachable

do.body8:                                         ; preds = %entry
  %spinlock9 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i80)
  %2 = ptrtoint ptr %spinlock9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i81 = load volatile i32, ptr %spinlock9, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i80 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i81, ptr %agg.tmp.sroa.0.i80, align 4
  %lock.sroa.0.0.extract.shift.i.i82 = lshr i32 %agg.tmp.sroa.0.0.copyload.i81, 16
  %conv.i.i83 = and i32 %agg.tmp.sroa.0.0.copyload.i81, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i83, i32 %lock.sroa.0.0.extract.shift.i.i82)
  %cmp.i.i84.not = icmp eq i32 %conv.i.i83, %lock.sroa.0.0.extract.shift.i.i82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i80)
  br i1 %cmp.i.i84.not, label %do.body22, label %do.end27, !prof !83

do.body22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 110, 0\0A.popsection", ""() #6, !srcloc !88
  unreachable

do.end27:                                         ; preds = %do.body8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %4 = ptrtoint ptr %spinlock9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock9, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !83

do.body4.i:                                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end9.i:                                        ; preds = %do.end27
  %granted.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %6 = ptrtoint ptr %granted.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %granted.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %granted.i.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %do.end9.i.if.else_crit_edge

do.end9.i.if.else_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.i.i:                                ; preds = %do.end9.i
  %converting.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %8 = ptrtoint ptr %converting.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %converting.i.i, align 4
  %cmp.i8.not.i.i = icmp eq ptr %9, %converting.i.i
  br i1 %cmp.i8.not.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.if.else_crit_edge

land.lhs.true.i.i.if.else_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %blocked.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %10 = ptrtoint ptr %blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %blocked.i.i, align 4
  %cmp.i10.not.i.i = icmp eq ptr %11, %blocked.i.i
  br i1 %cmp.i10.not.i.i, label %if.end13.i, label %land.lhs.true3.i.i.if.else_crit_edge

land.lhs.true3.i.i.if.else_crit_edge:             ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end13.i:                                       ; preds = %land.lhs.true3.i.i
  %inflight_locks.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 19
  %12 = ptrtoint ptr %inflight_locks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inflight_locks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not.i = icmp eq i32 %13, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end13.i.if.else_crit_edge

if.end13.i.if.else_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end16.i:                                       ; preds = %if.end13.i
  %dirty.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 7
  %14 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %dirty.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %dirty.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %if.end16.i.if.else_crit_edge

if.end16.i.if.else_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %state.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %state.i, align 2
  %18 = and i16 %17, 16394
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %__dlm_lockres_unused.exit, label %lor.lhs.false.i.if.else_crit_edge

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

__dlm_lockres_unused.exit:                        ; preds = %lor.lhs.false.i
  %refmap.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  %call28.i = tail call i32 @_find_first_bit_be(ptr noundef %refmap.i, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call28.i)
  %cmp.i = icmp slt i32 %call28.i, 255
  br i1 %cmp.i, label %__dlm_lockres_unused.exit.if.else_crit_edge, label %if.then30

__dlm_lockres_unused.exit.if.else_crit_edge:      ; preds = %__dlm_lockres_unused.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then30:                                        ; preds = %__dlm_lockres_unused.exit
  %purge = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6
  %20 = ptrtoint ptr %purge to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %purge, align 4
  %cmp.i86.not = icmp eq ptr %21, %purge
  br i1 %cmp.i86.not, label %do.body34, label %if.then30.if.end62_crit_edge

if.then30.if.end62_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.body34:                                        ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %22 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 320, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %25 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lockname, align 8
  %name38 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %name38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name38, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_lockres_calc_usage, i32 noundef 115, ptr noundef nonnull @.str.2, ptr noundef %24, i32 noundef %26, ptr noundef %28) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 10
  %30 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %last_used, align 4
  %refs.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #6
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #6, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.body34.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !83

do.body34.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.body34
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !90

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_lockres_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.body34.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.body34.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %dlm_lockres_get.exit

dlm_lockres_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge
  %purge_list = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %purge, ptr noundef %34, ptr noundef %purge_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %dlm_lockres_get.exit.if.end62.sink.split_crit_edge

dlm_lockres_get.exit.if.end62.sink.split_crit_edge: ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.sink.split

if.end.i.i:                                       ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %purge, ptr %prev.i, align 4
  %36 = ptrtoint ptr %purge to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %purge_list, ptr %purge, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %purge, ptr %34, align 4
  br label %if.end62.sink.split

if.else:                                          ; preds = %__dlm_lockres_unused.exit.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge, %if.end16.i.if.else_crit_edge, %if.end13.i.if.else_crit_edge, %land.lhs.true3.i.i.if.else_crit_edge, %land.lhs.true.i.i.if.else_crit_edge, %do.end9.i.if.else_crit_edge
  %purge43 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6
  %39 = ptrtoint ptr %purge43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %purge43, align 4
  %cmp.i87.not = icmp eq ptr %40, %purge43
  br i1 %cmp.i87.not, label %if.else.if.end62_crit_edge, label %do.body47

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.body47:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m48) #6
  %41 = ptrtoint ptr %_m48 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 320, ptr %_m48, align 8
  %name52 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %42 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name52, align 4
  %lockname53 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %44 = ptrtoint ptr %lockname53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lockname53, align 8
  %name56 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %name56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name56, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m48, ptr noundef nonnull @__func__.__dlm_lockres_calc_usage, i32 noundef 124, ptr noundef nonnull @.str.3, ptr noundef %43, i32 noundef %45, ptr noundef %47) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m48) #6
  %call.i.i89 = call zeroext i1 @__list_del_entry_valid(ptr noundef %purge43) #6
  br i1 %call.i.i89, label %if.end.i.i90, label %do.body47.list_del_init.exit_crit_edge

do.body47.list_del_init.exit_crit_edge:           ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i90:                                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %purge43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %purge43, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i90, %do.body47.list_del_init.exit_crit_edge
  %54 = ptrtoint ptr %purge43 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %purge43, ptr %purge43, align 4
  %prev.i3.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %purge43, ptr %prev.i3.i, align 4
  call void @dlm_lockres_put(ptr noundef %res) #6
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %list_del_init.exit, %if.end.i.i, %dlm_lockres_get.exit.if.end62.sink.split_crit_edge
  %.sink93 = phi i32 [ -1, %list_del_init.exit ], [ 1, %dlm_lockres_get.exit.if.end62.sink.split_crit_edge ], [ 1, %if.end.i.i ]
  %purge_count = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 7
  %56 = ptrtoint ptr %purge_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %purge_count, align 4
  %dec = add i32 %57, %.sink93
  store i32 %dec, ptr %purge_count, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.else.if.end62_crit_edge, %if.then30.if.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lockres_calc_usage(ptr noundef %dlm, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %spinlock1 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock1) #6
  tail call void @__dlm_lockres_calc_usage(ptr noundef %dlm, ptr noundef %res)
  tail call void @_raw_spin_unlock(ptr noundef %spinlock1) #6
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_do_purge_lockres(ptr noundef %dlm, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i103 = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m44 = alloca i64, align 8
  %_m65 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body8, !prof !83

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #6, !srcloc !91
  unreachable

do.body8:                                         ; preds = %entry
  %spinlock9 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i103)
  %2 = ptrtoint ptr %spinlock9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i104 = load volatile i32, ptr %spinlock9, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i103 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i104, ptr %agg.tmp.sroa.0.i103, align 4
  %lock.sroa.0.0.extract.shift.i.i105 = lshr i32 %agg.tmp.sroa.0.0.copyload.i104, 16
  %conv.i.i106 = and i32 %agg.tmp.sroa.0.0.copyload.i104, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i106, i32 %lock.sroa.0.0.extract.shift.i.i105)
  %cmp.i.i107.not = icmp eq i32 %conv.i.i106, %lock.sroa.0.0.extract.shift.i.i105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i103)
  br i1 %cmp.i.i107.not, label %do.body22, label %do.end27, !prof !83

do.body22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 154, 0\0A.popsection", ""() #6, !srcloc !92
  unreachable

do.end27:                                         ; preds = %do.body8
  %purge = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6
  %4 = ptrtoint ptr %purge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %purge, align 4
  %cmp.i.not = icmp eq ptr %5, %purge
  br i1 %cmp.i.not, label %do.end27.if.end39_crit_edge, label %do.body31

do.end27.if.end39_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.body31:                                        ; preds = %do.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 320, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %9 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lockname, align 8
  %name35 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name35, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_do_purge_lockres, i32 noundef 158, ptr noundef nonnull @.str.4, ptr noundef %8, i32 noundef %10, ptr noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %purge) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.body31.list_del_init.exit_crit_edge

do.body31.list_del_init.exit_crit_edge:           ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %purge to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %purge, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body31.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %purge to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %purge, ptr %purge, align 4
  %prev.i3.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %purge, ptr %prev.i3.i, align 4
  call void @dlm_lockres_put(ptr noundef %res) #6
  %purge_count = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 7
  %21 = ptrtoint ptr %purge_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %purge_count, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %purge_count, align 4
  br label %if.end39

if.end39:                                         ; preds = %list_del_init.exit, %do.end27.if.end39_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %23 = ptrtoint ptr %spinlock9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock9, align 4
  %24 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !83

do.body4.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end9.i:                                        ; preds = %if.end39
  %granted.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %25 = ptrtoint ptr %granted.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %granted.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %26, %granted.i.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %do.end9.i.do.body43_crit_edge

do.end9.i.do.body43_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

land.lhs.true.i.i:                                ; preds = %do.end9.i
  %converting.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %27 = ptrtoint ptr %converting.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %converting.i.i, align 4
  %cmp.i8.not.i.i = icmp eq ptr %28, %converting.i.i
  br i1 %cmp.i8.not.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.do.body43_crit_edge

land.lhs.true.i.i.do.body43_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %blocked.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %29 = ptrtoint ptr %blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %blocked.i.i, align 4
  %cmp.i10.not.i.i = icmp eq ptr %30, %blocked.i.i
  br i1 %cmp.i10.not.i.i, label %if.end13.i, label %land.lhs.true3.i.i.do.body43_crit_edge

land.lhs.true3.i.i.do.body43_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

if.end13.i:                                       ; preds = %land.lhs.true3.i.i
  %inflight_locks.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 19
  %31 = ptrtoint ptr %inflight_locks.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %inflight_locks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool14.not.i = icmp eq i32 %32, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end13.i.do.body43_crit_edge

if.end13.i.do.body43_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

if.end16.i:                                       ; preds = %if.end13.i
  %dirty.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 7
  %33 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %dirty.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, %dirty.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %if.end16.i.do.body43_crit_edge

if.end16.i.do.body43_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %state.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %state.i, align 2
  %37 = and i16 %36, 16394
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %__dlm_lockres_unused.exit, label %lor.lhs.false.i.do.body43_crit_edge

lor.lhs.false.i.do.body43_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

__dlm_lockres_unused.exit:                        ; preds = %lor.lhs.false.i
  %refmap.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  %call28.i = call i32 @_find_first_bit_be(ptr noundef %refmap.i, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call28.i)
  %cmp.i109 = icmp slt i32 %call28.i, 255
  br i1 %cmp.i109, label %__dlm_lockres_unused.exit.do.body43_crit_edge, label %if.end59

__dlm_lockres_unused.exit.do.body43_crit_edge:    ; preds = %__dlm_lockres_unused.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

do.body43:                                        ; preds = %__dlm_lockres_unused.exit.do.body43_crit_edge, %lor.lhs.false.i.do.body43_crit_edge, %if.end16.i.do.body43_crit_edge, %if.end13.i.do.body43_crit_edge, %land.lhs.true3.i.i.do.body43_crit_edge, %land.lhs.true.i.i.do.body43_crit_edge, %do.end9.i.do.body43_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m44) #6
  %39 = ptrtoint ptr %_m44 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606847296, ptr %_m44, align 8
  %name48 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %40 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name48, align 4
  %lockname49 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %42 = ptrtoint ptr %lockname49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lockname49, align 8
  %name52 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name52, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m44, ptr noundef nonnull @__func__.__dlm_do_purge_lockres, i32 noundef 166, ptr noundef nonnull @.str.5, ptr noundef %41, i32 noundef %43, ptr noundef %45) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m44) #6
  call void @__dlm_print_one_lock_resource(ptr noundef %res) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 168, 0\0A.popsection", ""() #6, !srcloc !93
  unreachable

if.end59:                                         ; preds = %__dlm_lockres_unused.exit
  call void @__dlm_unhash_lockres(ptr noundef %dlm, ptr noundef %res) #6
  %track_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 10
  call void @_raw_spin_lock(ptr noundef %track_lock) #6
  %tracking = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 9
  %46 = ptrtoint ptr %tracking to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %tracking, align 4
  %cmp.i110.not = icmp eq ptr %47, %tracking
  br i1 %cmp.i110.not, label %do.body64, label %if.then62

if.then62:                                        ; preds = %if.end59
  %call.i.i112 = call zeroext i1 @__list_del_entry_valid(ptr noundef %tracking) #6
  br i1 %call.i.i112, label %if.end.i.i115, label %if.then62.list_del_init.exit117_crit_edge

if.then62.list_del_init.exit117_crit_edge:        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit117

if.end.i.i115:                                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i113 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i113, align 4
  %50 = ptrtoint ptr %tracking to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tracking, align 4
  %prev1.i.i.i114 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i114, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit117

list_del_init.exit117:                            ; preds = %if.end.i.i115, %if.then62.list_del_init.exit117_crit_edge
  %54 = ptrtoint ptr %tracking to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %tracking, ptr %tracking, align 4
  %prev.i3.i116 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %prev.i3.i116 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %tracking, ptr %prev.i3.i116, align 4
  br label %if.end76

do.body64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65) #6
  %56 = ptrtoint ptr %_m65 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1152921504606847296, ptr %_m65, align 8
  %name69 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %57 = ptrtoint ptr %name69 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name69, align 4
  %lockname70 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %59 = ptrtoint ptr %lockname70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %lockname70, align 8
  %name73 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %name73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name73, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65, ptr noundef nonnull @__func__.__dlm_do_purge_lockres, i32 noundef 178, ptr noundef nonnull @.str.6, ptr noundef %58, i32 noundef %60, ptr noundef %62) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65) #6
  call void @__dlm_print_one_lock_resource(ptr noundef %res) #6
  br label %if.end76

if.end76:                                         ; preds = %do.body64, %list_del_init.exit117
  call void @_raw_spin_unlock(ptr noundef %track_lock) #6
  %63 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %state.i, align 2
  %65 = and i16 %64, -65
  store i16 %65, ptr %state.i, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_print_one_lock_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_unhash_lockres(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_kick_thread(ptr noundef %dlm, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %spinlock1 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock1) #6
  tail call void @__dlm_dirty_lockres(ptr noundef %dlm, ptr noundef nonnull %res)
  tail call void @_raw_spin_unlock(ptr noundef %spinlock1) #6
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dlm_thread_wq = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 38
  tail call void @__wake_up(ptr noundef %dlm_thread_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_dirty_lockres(ptr noundef %dlm, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i63 = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body8, !prof !83

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 511, 0\0A.popsection", ""() #6, !srcloc !94
  unreachable

do.body8:                                         ; preds = %entry
  %spinlock9 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i63)
  %2 = ptrtoint ptr %spinlock9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i64 = load volatile i32, ptr %spinlock9, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i63 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i64, ptr %agg.tmp.sroa.0.i63, align 4
  %lock.sroa.0.0.extract.shift.i.i65 = lshr i32 %agg.tmp.sroa.0.0.copyload.i64, 16
  %conv.i.i66 = and i32 %agg.tmp.sroa.0.0.copyload.i64, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i66, i32 %lock.sroa.0.0.extract.shift.i.i65)
  %cmp.i.i67.not = icmp eq i32 %conv.i.i66, %lock.sroa.0.0.extract.shift.i.i65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i63)
  br i1 %cmp.i.i67.not, label %do.body22, label %do.end27, !prof !83

do.body22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 512, 0\0A.popsection", ""() #6, !srcloc !95
  unreachable

do.end27:                                         ; preds = %do.body8
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %owner, align 4
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %6 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp = icmp eq i8 %5, %7
  br i1 %cmp, label %if.then30, label %do.end27.do.body44_crit_edge

do.end27.do.body44_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

if.then30:                                        ; preds = %do.end27
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %state, align 2
  %10 = and i16 %9, 4128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool32.not = icmp eq i16 %10, 0
  br i1 %tobool32.not, label %if.end34, label %if.then30.do.end51_crit_edge

if.then30.do.end51_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

if.end34:                                         ; preds = %if.then30
  %dirty = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 7
  %11 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %dirty, align 4
  %cmp.i.not = icmp eq ptr %12, %dirty
  br i1 %cmp.i.not, label %if.then37, label %if.end34.do.body44_crit_edge

if.end34.do.body44_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

if.then37:                                        ; preds = %if.end34
  %refs.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #6, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then37.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !83

if.then37.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then37
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !90

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_lockres_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then37.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then37.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %dlm_lockres_get.exit

dlm_lockres_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge
  %dirty_list = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dirty, ptr noundef %16, ptr noundef %dirty_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %dlm_lockres_get.exit.list_add_tail.exit_crit_edge

dlm_lockres_get.exit.list_add_tail.exit_crit_edge: ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dirty, ptr %prev.i, align 4
  %18 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dirty_list, ptr %dirty, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %dirty, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %dlm_lockres_get.exit.list_add_tail.exit_crit_edge
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %state, align 2
  %23 = or i16 %22, 8
  store i16 %23, ptr %state, align 2
  br label %do.body44

do.body44:                                        ; preds = %list_add_tail.exit, %if.end34.do.body44_crit_edge, %do.end27.do.body44_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %24 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 320, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %27 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lockname, align 8
  %name49 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name49, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_dirty_lockres, i32 noundef 529, ptr noundef nonnull @.str.7, ptr noundef %26, i32 noundef %28, ptr noundef %30) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %do.end51

do.end51:                                         ; preds = %do.body44, %if.then30.do.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_launch_thread(ptr noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m19 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 320, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_launch_thread, i32 noundef 536, ptr noundef nonnull @.str.8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %call = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dlm_thread, ptr noundef %dlm, i32 noundef -1, ptr noundef nonnull @.str.9, ptr noundef %2) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end4

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @wake_up_process(ptr noundef %call) #6
  %dlm_thread_task = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 35
  %3 = ptrtoint ptr %dlm_thread_task to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dlm_thread_task, align 4
  br label %return

if.then7:                                         ; preds = %entry
  %dlm_thread_task43 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 35
  %4 = ptrtoint ptr %dlm_thread_task43 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %dlm_thread_task43, align 4
  %5 = ptrtoint ptr %call to i32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body18 [
    i32 -512, label %if.then7.if.end25_crit_edge
    i32 -4, label %if.then7.if.end25_crit_edge45
    i32 524289, label %if.then7.if.end25_crit_edge46
    i32 -28, label %if.then7.if.end25_crit_edge47
    i32 -122, label %if.then7.if.end25_crit_edge48
  ]

if.then7.if.end25_crit_edge48:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then7.if.end25_crit_edge47:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then7.if.end25_crit_edge46:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then7.if.end25_crit_edge45:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then7.if.end25_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.body18:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m19) #6
  %7 = ptrtoint ptr %_m19 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606847296, ptr %_m19, align 8
  %conv = sext i32 %5 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m19, ptr noundef nonnull @__func__.dlm_launch_thread, i32 noundef 541, ptr noundef nonnull @.str.10, i64 noundef %conv) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m19) #6
  br label %if.end25

if.end25:                                         ; preds = %do.body18, %if.then7.if.end25_crit_edge, %if.then7.if.end25_crit_edge45, %if.then7.if.end25_crit_edge46, %if.then7.if.end25_crit_edge47, %if.then7.if.end25_crit_edge48
  %8 = ptrtoint ptr %dlm_thread_task43 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dlm_thread_task43, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.end4
  %retval.0 = phi i32 [ -22, %if.end25 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_thread(ptr noundef %data) #0 align 64 {
entry:
  %_m.i337 = alloca i64, align 8
  %_m55.i = alloca i64, align 8
  %_m73.i = alloca i64, align 8
  %_m153.i = alloca i64, align 8
  %_m206.i = alloca i64, align 8
  %_m226.i = alloca i64, align 8
  %agg.tmp.sroa.0.i587.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i318 = alloca i64, align 8
  %_m69.i = alloca i64, align 8
  %_m216.i = alloca i64, align 8
  %_m419.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i233.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i57.i = alloca i32, align 4
  %_m.i.i = alloca i64, align 8
  %_m50.i.i = alloca i64, align 8
  %_m93.i.i = alloca i64, align 8
  %_m112.i.i = alloca i64, align 8
  %_m130.i.i = alloca i64, align 8
  %_m154.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m33 = alloca i64, align 8
  %_m129 = alloca i64, align 8
  %_m157 = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %_m242 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 320, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_thread, i32 noundef 686, ptr noundef nonnull @.str.12, ptr noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  %call1426 = call zeroext i1 @kthread_should_stop() #6
  br i1 %call1426, label %entry.do.body241_crit_edge, label %while.body.lr.ph

entry.do.body241_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body241

while.body.lr.ph:                                 ; preds = %entry
  %dlm_state.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 31
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  %purge_count.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 7
  %purge_list.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 3
  %node_num.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  %track_lock.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 10
  %prev.i2.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 3, i32 1
  %dirty_list = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 2
  %ast_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 9
  %pending_asts.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 4
  %pending_basts.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 5
  %ast_wq.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 40
  %dlm_thread_wq = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 38
  br label %while.body

while.body:                                       ; preds = %cleanup237.while.body_crit_edge, %while.body.lr.ph
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #6
  %3 = ptrtoint ptr %dlm_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlm_state.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #6
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  %5 = ptrtoint ptr %purge_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %purge_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not91.i = icmp eq i32 %6, 0
  br i1 %tobool.not91.i, label %while.body.dlm_run_purge_list.exit_crit_edge, label %land.rhs.lr.ph.i

while.body.dlm_run_purge_list.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_run_purge_list.exit

land.rhs.lr.ph.i:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.backedge.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %run_max.092.i = phi i32 [ %6, %land.rhs.lr.ph.i ], [ %dec.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %purge_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %purge_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %purge_list.i
  br i1 %cmp.i.not.i, label %land.rhs.i.dlm_run_purge_list.exit_crit_edge, label %while.body.i

land.rhs.i.dlm_run_purge_list.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_run_purge_list.exit

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add i32 %run_max.092.i, -1
  %add.ptr.i = getelementptr i8, ptr %8, i32 -52
  %spinlock3.i = getelementptr i8, ptr %8, i32 48
  call void @_raw_spin_lock(ptr noundef %spinlock3.i) #6
  br i1 %cmp.i.not, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %last_used.i = getelementptr i8, ptr %8, i32 32
  %9 = ptrtoint ptr %last_used.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_used.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -800, %10
  %sub.i = add i32 %add.neg.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i316 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i316, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %spinlock3.i) #6
  br label %dlm_run_purge_list.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %12 = ptrtoint ptr %spinlock3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock3.i, align 4
  %13 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !83

do.body4.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end9.i.i:                                      ; preds = %if.end.i
  %granted.i.i.i = getelementptr i8, ptr %8, i32 -24
  %14 = ptrtoint ptr %granted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %granted.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %15, %granted.i.i.i
  br i1 %cmp.i.not.i.i.i, label %land.lhs.true.i.i.i, label %do.end9.i.i.do.body.i_crit_edge

do.end9.i.i.do.body.i_crit_edge:                  ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

land.lhs.true.i.i.i:                              ; preds = %do.end9.i.i
  %converting.i.i.i = getelementptr i8, ptr %8, i32 -16
  %16 = ptrtoint ptr %converting.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %converting.i.i.i, align 4
  %cmp.i8.not.i.i.i = icmp eq ptr %17, %converting.i.i.i
  br i1 %cmp.i8.not.i.i.i, label %land.lhs.true3.i.i.i, label %land.lhs.true.i.i.i.do.body.i_crit_edge

land.lhs.true.i.i.i.do.body.i_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %blocked.i.i.i = getelementptr i8, ptr %8, i32 -8
  %18 = ptrtoint ptr %blocked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %blocked.i.i.i, align 4
  %cmp.i10.not.i.i.i = icmp eq ptr %19, %blocked.i.i.i
  br i1 %cmp.i10.not.i.i.i, label %if.end13.i.i, label %land.lhs.true3.i.i.i.do.body.i_crit_edge

land.lhs.true3.i.i.i.do.body.i_crit_edge:         ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end13.i.i:                                     ; preds = %land.lhs.true3.i.i.i
  %inflight_locks.i.i = getelementptr i8, ptr %8, i32 212
  %20 = ptrtoint ptr %inflight_locks.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inflight_locks.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end13.i.i.do.body.i_crit_edge

if.end13.i.i.do.body.i_crit_edge:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end16.i.i:                                     ; preds = %if.end13.i.i
  %dirty.i.i = getelementptr i8, ptr %8, i32 8
  %22 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %dirty.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, %dirty.i.i
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.i, label %if.end16.i.i.do.body.i_crit_edge

if.end16.i.i.do.body.i_crit_edge:                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i.i
  %state.i.i = getelementptr i8, ptr %8, i32 146
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %state.i.i, align 2
  %26 = and i16 %25, 16394
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %__dlm_lockres_unused.exit.i, label %lor.lhs.false.i.i.do.body.i_crit_edge

lor.lhs.false.i.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

__dlm_lockres_unused.exit.i:                      ; preds = %lor.lhs.false.i.i
  %refmap.i.i = getelementptr i8, ptr %8, i32 220
  %call28.i.i = call i32 @_find_first_bit_be(ptr noundef %refmap.i.i, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call28.i.i)
  %cmp.i56.i = icmp slt i32 %call28.i.i, 255
  br i1 %cmp.i56.i, label %__dlm_lockres_unused.exit.i.do.body.i_crit_edge, label %lor.lhs.false.i

__dlm_lockres_unused.exit.i.do.body.i_crit_edge:  ; preds = %__dlm_lockres_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %__dlm_lockres_unused.exit.i
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %state.i.i, align 2
  %30 = and i16 %29, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool9.not.i = icmp eq i16 %30, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %inflight_assert_workers.i = getelementptr i8, ptr %8, i32 216
  %31 = ptrtoint ptr %inflight_assert_workers.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %inflight_assert_workers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp11.not.i = icmp eq i32 %32, 0
  br i1 %cmp11.not.i, label %if.end27.i, label %lor.lhs.false10.i.do.body.i_crit_edge

lor.lhs.false10.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false10.i.do.body.i_crit_edge, %lor.lhs.false.i.do.body.i_crit_edge, %__dlm_lockres_unused.exit.i.do.body.i_crit_edge, %lor.lhs.false.i.i.do.body.i_crit_edge, %if.end16.i.i.do.body.i_crit_edge, %if.end13.i.i.do.body.i_crit_edge, %land.lhs.true3.i.i.i.do.body.i_crit_edge, %land.lhs.true.i.i.i.do.body.i_crit_edge, %do.end9.i.i.do.body.i_crit_edge
  %tobool8.not72.i = phi i32 [ 1, %__dlm_lockres_unused.exit.i.do.body.i_crit_edge ], [ 0, %lor.lhs.false.i.do.body.i_crit_edge ], [ 0, %lor.lhs.false10.i.do.body.i_crit_edge ], [ 1, %if.end13.i.i.do.body.i_crit_edge ], [ 1, %lor.lhs.false.i.i.do.body.i_crit_edge ], [ 1, %if.end16.i.i.do.body.i_crit_edge ], [ 1, %do.end9.i.i.do.body.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.do.body.i_crit_edge ], [ 1, %land.lhs.true3.i.i.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #6
  %33 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 320, ptr %_m.i, align 8
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %lockname.i = getelementptr i8, ptr %8, i32 -44
  %36 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lockname.i, align 8
  %name18.i = getelementptr i8, ptr %8, i32 -36
  %38 = ptrtoint ptr %name18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name18.i, align 8
  %state21.i = getelementptr i8, ptr %8, i32 146
  %40 = ptrtoint ptr %state21.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %state21.i, align 2
  %conv22.i = zext i16 %41 to i32
  %inflight_assert_workers23.i = getelementptr i8, ptr %8, i32 216
  %42 = ptrtoint ptr %inflight_assert_workers23.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inflight_assert_workers23.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_run_purge_list, i32 noundef 321, ptr noundef nonnull @.str.17, ptr noundef %35, i32 noundef %37, ptr noundef %39, i32 noundef %tobool8.not72.i, i32 noundef %conv22.i, i32 noundef %43) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #6
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.i.__list_del_entry.exit.i.i_crit_edge

do.body.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %do.body.i.__list_del_entry.exit.i.i_crit_edge
  %50 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %51, ptr noundef %purge_list.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %8, ptr %prev.i2.i.i, align 4
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %purge_list.i, ptr %8, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %8, ptr %51, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock3.i) #6
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %dlm_purge_lockres.exit.i, %list_move_tail.exit.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.dlm_run_purge_list.exit_crit_edge, label %while.cond.backedge.i.land.rhs.i_crit_edge

while.cond.backedge.i.land.rhs.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

while.cond.backedge.i.dlm_run_purge_list.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_run_purge_list.exit

if.end27.i:                                       ; preds = %lor.lhs.false10.i
  %refs.i.i = getelementptr i8, ptr %8, i32 -28
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %refs.i.i, i32 1, i32 3, i32 1) #6
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i.i, ptr %refs.i.i, i32 1, ptr elementtype(i32) %refs.i.i) #6, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end27.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !83

if.end27.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end27.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %57 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i.i.i.i = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dlm_lockres_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !90

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dlm_lockres_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_lockres_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end27.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end27.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i.i, i32 noundef %.sink.i.i.i.i.i.i) #6
  br label %dlm_lockres_get.exit.i

dlm_lockres_get.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dlm_lockres_get.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i57.i)
  %58 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %agg.tmp.sroa.0.0.copyload.i.i59.i = load volatile i32, ptr %spinlock.i, align 4
  %59 = ptrtoint ptr %agg.tmp.sroa.0.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i59.i, ptr %agg.tmp.sroa.0.i.i57.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i60.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i59.i, 16
  %conv.i.i.i61.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i59.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i61.i, i32 %lock.sroa.0.0.extract.shift.i.i.i60.i)
  %cmp.i.i.not.i62.i = icmp eq i32 %conv.i.i.i61.i, %lock.sroa.0.0.extract.shift.i.i.i60.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i57.i)
  br i1 %cmp.i.i.not.i62.i, label %do.body4.i63.i, label %do.body10.i.i, !prof !83

do.body4.i63.i:                                   ; preds = %dlm_lockres_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 196, 0\0A.popsection", ""() #6, !srcloc !96
  unreachable

do.body10.i.i:                                    ; preds = %dlm_lockres_get.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i233.i.i)
  %60 = ptrtoint ptr %spinlock3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %agg.tmp.sroa.0.0.copyload.i234.i.i = load volatile i32, ptr %spinlock3.i, align 4
  %61 = ptrtoint ptr %agg.tmp.sroa.0.i233.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i234.i.i, ptr %agg.tmp.sroa.0.i233.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i235.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i234.i.i, 16
  %conv.i.i236.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i234.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i236.i.i, i32 %lock.sroa.0.0.extract.shift.i.i235.i.i)
  %cmp.i.i237.not.i.i = icmp eq i32 %conv.i.i236.i.i, %lock.sroa.0.0.extract.shift.i.i235.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i233.i.i)
  br i1 %cmp.i.i237.not.i.i, label %do.body24.i.i, label %do.end32.i.i, !prof !83

do.body24.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 197, 0\0A.popsection", ""() #6, !srcloc !97
  unreachable

do.end32.i.i:                                     ; preds = %do.body10.i.i
  %owner.i.i = getelementptr i8, ptr %8, i32 144
  %62 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %owner.i.i, align 4
  %64 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %node_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %65)
  %cmp.i64.i = icmp eq i8 %63, %65
  %conv34.i.i = zext i1 %cmp.i64.i to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #6
  %66 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 320, ptr %_m.i.i, align 8
  %67 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name, align 4
  %lockname.i.i = getelementptr i8, ptr %8, i32 -44
  %69 = ptrtoint ptr %lockname.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lockname.i.i, align 8
  %name39.i.i = getelementptr i8, ptr %8, i32 -36
  %71 = ptrtoint ptr %name39.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name39.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_purge_lockres, i32 noundef 202, ptr noundef nonnull @.str.18, ptr noundef %68, i32 noundef %70, ptr noundef %72, i32 noundef %conv34.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #6
  br i1 %cmp.i64.i, label %do.end32.i.i.if.end88.i.i_crit_edge, label %if.then44.i.i

do.end32.i.i.if.end88.i.i_crit_edge:              ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i.i

if.then44.i.i:                                    ; preds = %do.end32.i.i
  %73 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %state.i.i, align 2
  %75 = and i16 %74, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool47.not.i.i = icmp eq i16 %75, 0
  br i1 %tobool47.not.i.i, label %if.end63.i.i, label %do.body49.i.i

do.body49.i.i:                                    ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m50.i.i) #6
  %76 = ptrtoint ptr %_m50.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 2305843009213694272, ptr %_m50.i.i, align 8
  %77 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name, align 4
  %79 = ptrtoint ptr %lockname.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lockname.i.i, align 8
  %81 = ptrtoint ptr %name39.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name39.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m50.i.i, ptr noundef nonnull @__func__.dlm_purge_lockres, i32 noundef 207, ptr noundef nonnull @.str.19, ptr noundef %78, i32 noundef %80, ptr noundef %82) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m50.i.i) #6
  call void @_raw_spin_unlock(ptr noundef %spinlock3.i) #6
  br label %dlm_purge_lockres.exit.i

if.end63.i.i:                                     ; preds = %if.then44.i.i
  %or.i.i = or i16 %74, 64
  %83 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %or.i.i, ptr %state.i.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock3.i) #6
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  call void @_raw_spin_lock(ptr noundef %spinlock3.i) #6
  call void @__dlm_wait_on_lockres_flags(ptr noundef %add.ptr.i, i32 noundef 8192) #6
  call void @_raw_spin_unlock(ptr noundef %spinlock3.i) #6
  %call71.i.i = call i32 @dlm_drop_lockres_ref(ptr noundef %data, ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %cmp72.i.i = icmp slt i32 %call71.i.i, 0
  br i1 %cmp72.i.i, label %if.then74.i.i, label %if.end63.i.i.if.end85.i.i_crit_edge

if.end63.i.i.if.end85.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85.i.i

if.then74.i.i:                                    ; preds = %if.end63.i.i
  %call75.i.i = call i32 @dlm_is_host_down(i32 noundef %call71.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i.i)
  %tobool76.not.i.i = icmp eq i32 %call75.i.i, 0
  br i1 %tobool76.not.i.i, label %do.body78.i.i, label %if.then74.i.i.if.end85.i.i_crit_edge

if.then74.i.i.if.end85.i.i_crit_edge:             ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85.i.i

do.body78.i.i:                                    ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #6, !srcloc !98
  unreachable

if.end85.i.i:                                     ; preds = %if.then74.i.i.if.end85.i.i_crit_edge, %if.end63.i.i.if.end85.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  call void @_raw_spin_lock(ptr noundef %spinlock3.i) #6
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.end85.i.i, %do.end32.i.i.if.end88.i.i_crit_edge
  %ret.0.i.i = phi i32 [ 0, %do.end32.i.i.if.end88.i.i_crit_edge ], [ %call71.i.i, %if.end85.i.i ]
  %84 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %8, align 4
  %cmp.i.not.i66.i = icmp eq ptr %85, %8
  br i1 %cmp.i.not.i66.i, label %if.end88.i.i.if.end106.i.i_crit_edge, label %do.body92.i.i

if.end88.i.i.if.end106.i.i_crit_edge:             ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.i.i

do.body92.i.i:                                    ; preds = %if.end88.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m93.i.i) #6
  %86 = ptrtoint ptr %_m93.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 320, ptr %_m93.i.i, align 8
  %87 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name, align 4
  %89 = ptrtoint ptr %lockname.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %lockname.i.i, align 8
  %91 = ptrtoint ptr %name39.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name39.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m93.i.i, ptr noundef nonnull @__func__.dlm_purge_lockres, i32 noundef 234, ptr noundef nonnull @.str.20, ptr noundef %88, i32 noundef %90, ptr noundef %92, i32 noundef %conv34.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m93.i.i) #6
  %call.i.i.i67.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #6
  br i1 %call.i.i.i67.i, label %if.end.i.i.i68.i, label %do.body92.i.i.list_del_init.exit.i.i_crit_edge

do.body92.i.i.list_del_init.exit.i.i_crit_edge:   ; preds = %do.body92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i.i

if.end.i.i.i68.i:                                 ; preds = %do.body92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr i8, ptr %8, i32 4
  %93 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i.i, align 4
  %95 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i68.i, %do.body92.i.i.list_del_init.exit.i.i_crit_edge
  %99 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %8, i32 4
  %100 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %8, ptr %prev.i3.i.i.i, align 4
  call void @dlm_lockres_put(ptr noundef %add.ptr.i) #6
  %101 = ptrtoint ptr %purge_count.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %purge_count.i, align 4
  %dec.i.i = add i32 %102, -1
  store i32 %dec.i.i, ptr %purge_count.i, align 4
  br label %if.end106.i.i

if.end106.i.i:                                    ; preds = %list_del_init.exit.i.i, %if.end88.i.i.if.end106.i.i_crit_edge
  %cmp.not.i.i = xor i1 %cmp.i64.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i.i)
  %cmp108.i.i = icmp eq i32 %ret.0.i.i, 1
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp108.i.i, i1 false
  br i1 %or.cond.i.i, label %do.body111.i.i, label %if.end125.i.i

do.body111.i.i:                                   ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m112.i.i) #6
  %103 = ptrtoint ptr %_m112.i.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 320, ptr %_m112.i.i, align 8
  %104 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name, align 4
  %106 = ptrtoint ptr %lockname.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lockname.i.i, align 8
  %108 = ptrtoint ptr %name39.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name39.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m112.i.i, ptr noundef nonnull @__func__.dlm_purge_lockres, i32 noundef 242, ptr noundef nonnull @.str.21, ptr noundef %105, i32 noundef %107, ptr noundef %109) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m112.i.i) #6
  call void @_raw_spin_unlock(ptr noundef %spinlock3.i) #6
  br label %dlm_purge_lockres.exit.i

if.end125.i.i:                                    ; preds = %if.end106.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  %110 = ptrtoint ptr %spinlock3.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %agg.tmp.sroa.0.0.copyload.i.i.i.i = load volatile i32, ptr %spinlock3.i, align 4
  %111 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, ptr %agg.tmp.sroa.0.i.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 16
  %conv.i.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.i)
  %cmp.i.i.not.i.i.i = icmp eq i32 %conv.i.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  br i1 %cmp.i.i.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !83

do.body4.i.i.i:                                   ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end9.i.i.i:                                    ; preds = %if.end125.i.i
  %112 = ptrtoint ptr %granted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %granted.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %113, %granted.i.i.i
  br i1 %cmp.i.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %do.end9.i.i.i.do.body129.i.i_crit_edge

do.end9.i.i.i.do.body129.i.i_crit_edge:           ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.end9.i.i.i
  %114 = ptrtoint ptr %converting.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %converting.i.i.i, align 4
  %cmp.i8.not.i.i.i.i = icmp eq ptr %115, %converting.i.i.i
  br i1 %cmp.i8.not.i.i.i.i, label %land.lhs.true3.i.i.i.i, label %land.lhs.true.i.i.i.i.do.body129.i.i_crit_edge

land.lhs.true.i.i.i.i.do.body129.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %116 = ptrtoint ptr %blocked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %blocked.i.i.i, align 4
  %cmp.i10.not.i.i.i.i = icmp eq ptr %117, %blocked.i.i.i
  br i1 %cmp.i10.not.i.i.i.i, label %if.end13.i.i.i, label %land.lhs.true3.i.i.i.i.do.body129.i.i_crit_edge

land.lhs.true3.i.i.i.i.do.body129.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129.i.i

if.end13.i.i.i:                                   ; preds = %land.lhs.true3.i.i.i.i
  %118 = ptrtoint ptr %inflight_locks.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %inflight_locks.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool14.not.i.i.i = icmp eq i32 %119, 0
  br i1 %tobool14.not.i.i.i, label %if.end16.i.i.i, label %if.end13.i.i.i.do.body129.i.i_crit_edge

if.end13.i.i.i.do.body129.i.i_crit_edge:          ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129.i.i

if.end16.i.i.i:                                   ; preds = %if.end13.i.i.i
  %120 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile ptr, ptr %dirty.i.i, align 4
  %cmp.i.not.i.i69.i = icmp eq ptr %121, %dirty.i.i
  br i1 %cmp.i.not.i.i69.i, label %lor.lhs.false.i.i.i, label %if.end16.i.i.i.do.body129.i.i_crit_edge

if.end16.i.i.i.do.body129.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end16.i.i.i
  %122 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %state.i.i, align 2
  %124 = and i16 %123, 16394
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %__dlm_lockres_unused.exit.i.i, label %lor.lhs.false.i.i.i.do.body129.i.i_crit_edge

lor.lhs.false.i.i.i.do.body129.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129.i.i

__dlm_lockres_unused.exit.i.i:                    ; preds = %lor.lhs.false.i.i.i
  %call28.i.i.i = call i32 @_find_first_bit_be(ptr noundef %refmap.i.i, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call28.i.i.i)
  %cmp.i239.i.i = icmp slt i32 %call28.i.i.i, 255
  br i1 %cmp.i239.i.i, label %__dlm_lockres_unused.exit.i.i.do.body129.i.i_crit_edge, label %if.end148.i.i

__dlm_lockres_unused.exit.i.i.do.body129.i.i_crit_edge: ; preds = %__dlm_lockres_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129.i.i

do.body129.i.i:                                   ; preds = %__dlm_lockres_unused.exit.i.i.do.body129.i.i_crit_edge, %lor.lhs.false.i.i.i.do.body129.i.i_crit_edge, %if.end16.i.i.i.do.body129.i.i_crit_edge, %if.end13.i.i.i.do.body129.i.i_crit_edge, %land.lhs.true3.i.i.i.i.do.body129.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.body129.i.i_crit_edge, %do.end9.i.i.i.do.body129.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m130.i.i) #6
  %126 = ptrtoint ptr %_m130.i.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 1152921504606847296, ptr %_m130.i.i, align 8
  %127 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name, align 4
  %129 = ptrtoint ptr %lockname.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %lockname.i.i, align 8
  %131 = ptrtoint ptr %name39.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %name39.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m130.i.i, ptr noundef nonnull @__func__.dlm_purge_lockres, i32 noundef 249, ptr noundef nonnull @.str.5, ptr noundef %128, i32 noundef %130, ptr noundef %132) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m130.i.i) #6
  call void @__dlm_print_one_lock_resource(ptr noundef %add.ptr.i) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #6, !srcloc !99
  unreachable

if.end148.i.i:                                    ; preds = %__dlm_lockres_unused.exit.i.i
  call void @__dlm_unhash_lockres(ptr noundef %data, ptr noundef %add.ptr.i) #6
  call void @_raw_spin_lock(ptr noundef %track_lock.i.i) #6
  %tracking.i.i = getelementptr i8, ptr %8, i32 24
  %133 = ptrtoint ptr %tracking.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile ptr, ptr %tracking.i.i, align 4
  %cmp.i240.not.i.i = icmp eq ptr %134, %tracking.i.i
  br i1 %cmp.i240.not.i.i, label %do.body153.i.i, label %if.then151.i.i

if.then151.i.i:                                   ; preds = %if.end148.i.i
  %call.i.i242.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tracking.i.i) #6
  br i1 %call.i.i242.i.i, label %if.end.i.i245.i.i, label %if.then151.i.i.list_del_init.exit247.i.i_crit_edge

if.then151.i.i.list_del_init.exit247.i.i_crit_edge: ; preds = %if.then151.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit247.i.i

if.end.i.i245.i.i:                                ; preds = %if.then151.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i243.i.i = getelementptr i8, ptr %8, i32 28
  %135 = ptrtoint ptr %prev.i.i243.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i.i243.i.i, align 4
  %137 = ptrtoint ptr %tracking.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tracking.i.i, align 4
  %prev1.i.i.i244.i.i = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %prev1.i.i.i244.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev1.i.i.i244.i.i, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %138, ptr %136, align 4
  br label %list_del_init.exit247.i.i

list_del_init.exit247.i.i:                        ; preds = %if.end.i.i245.i.i, %if.then151.i.i.list_del_init.exit247.i.i_crit_edge
  %141 = ptrtoint ptr %tracking.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %tracking.i.i, ptr %tracking.i.i, align 4
  %prev.i3.i246.i.i = getelementptr i8, ptr %8, i32 28
  %142 = ptrtoint ptr %prev.i3.i246.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %tracking.i.i, ptr %prev.i3.i246.i.i, align 4
  br label %if.end165.i.i

do.body153.i.i:                                   ; preds = %if.end148.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m154.i.i) #6
  %143 = ptrtoint ptr %_m154.i.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 1152921504606847296, ptr %_m154.i.i, align 8
  %144 = ptrtoint ptr %lockname.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %lockname.i.i, align 8
  %146 = ptrtoint ptr %name39.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %name39.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m154.i.i, ptr noundef nonnull @__func__.dlm_purge_lockres, i32 noundef 261, ptr noundef nonnull @.str.22, i32 noundef %145, ptr noundef %147) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m154.i.i) #6
  call void @__dlm_print_one_lock_resource(ptr noundef %add.ptr.i) #6
  br label %if.end165.i.i

if.end165.i.i:                                    ; preds = %do.body153.i.i, %list_del_init.exit247.i.i
  call void @_raw_spin_unlock(ptr noundef %track_lock.i.i) #6
  br i1 %cmp.i64.i, label %if.else174.i.i, label %if.then168.i.i

if.then168.i.i:                                   ; preds = %if.end165.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %state.i.i, align 2
  %150 = and i16 %149, -65
  store i16 %150, ptr %state.i.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock3.i) #6
  %wq.i.i = getelementptr i8, ptr %8, i32 92
  call void @__wake_up(ptr noundef %wq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %dlm_purge_lockres.exit.i

if.else174.i.i:                                   ; preds = %if.end165.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %spinlock3.i) #6
  br label %dlm_purge_lockres.exit.i

dlm_purge_lockres.exit.i:                         ; preds = %if.else174.i.i, %if.then168.i.i, %do.body111.i.i, %do.body49.i.i
  call void @dlm_lockres_put(ptr noundef %add.ptr.i) #6
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 334, i32 noundef 1) #6
  %call30.i = call i32 @__cond_resched_lock(ptr noundef %spinlock.i) #6
  br label %while.cond.backedge.i

dlm_run_purge_list.exit:                          ; preds = %while.cond.backedge.i.dlm_run_purge_list.exit_crit_edge, %if.then.i, %land.rhs.i.dlm_run_purge_list.exit_crit_edge, %while.body.dlm_run_purge_list.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  br label %while.cond3

while.cond3:                                      ; preds = %if.end153.while.cond3_crit_edge, %dlm_run_purge_list.exit
  %n.0 = phi i32 [ 100, %dlm_run_purge_list.exit ], [ %dec, %if.end153.while.cond3_crit_edge ]
  %151 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile ptr, ptr %dirty_list, align 4
  %cmp.i317.not = icmp eq ptr %152, %dirty_list
  br i1 %cmp.i317.not, label %while.cond3.while.end_crit_edge, label %while.body7

while.cond3.while.end_crit_edge:                  ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body7:                                      ; preds = %while.cond3
  %add.ptr = getelementptr i8, ptr %152, i32 -60
  %tobool10.not = icmp eq ptr %add.ptr, null
  br i1 %tobool10.not, label %do.body16, label %do.end24, !prof !83

do.body16:                                        ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 712, 0\0A.popsection", ""() #6, !srcloc !100
  unreachable

do.end24:                                         ; preds = %while.body7
  %refs.i = getelementptr i8, ptr %152, i32 -36
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #6
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #6, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end24.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !83

do.end24.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end24
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %154 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %154)
  %.not.i.i.i.i.i = icmp sgt i32 %154, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !90

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_lockres_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end24.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end24.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %dlm_lockres_get.exit

dlm_lockres_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge
  %spinlock25 = getelementptr i8, ptr %152, i32 40
  call void @_raw_spin_lock(ptr noundef %spinlock25) #6
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %152) #6
  br i1 %call.i.i, label %if.end.i.i, label %dlm_lockres_get.exit.list_del_init.exit_crit_edge

dlm_lockres_get.exit.list_del_init.exit_crit_edge: ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  %155 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %prev.i.i, align 4
  %157 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %152, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %156, ptr %prev1.i.i.i, align 4
  %160 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %158, ptr %156, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %dlm_lockres_get.exit.list_del_init.exit_crit_edge
  %161 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %152, ptr %152, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  %162 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %152, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock25) #6
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  call void @dlm_lockres_put(ptr noundef nonnull %add.ptr) #6
  call void @_raw_spin_lock(ptr noundef %ast_lock) #6
  call void @_raw_spin_lock(ptr noundef %spinlock25) #6
  %owner = getelementptr i8, ptr %152, i32 136
  %163 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %owner, align 4
  %165 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %node_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %164, i8 %166)
  %cmp.not = icmp eq i8 %164, %166
  br i1 %cmp.not, label %list_del_init.exit.do.body73_crit_edge, label %if.then31

list_del_init.exit.do.body73_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.then31:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__dlm_print_one_lock_resource(ptr noundef nonnull %add.ptr) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m33) #6
  %167 = ptrtoint ptr %_m33 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 1152921504606847296, ptr %_m33, align 8
  %168 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %name, align 4
  %state = getelementptr i8, ptr %152, i32 138
  %170 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %state, align 2
  %conv38 = zext i16 %171 to i32
  %and39 = lshr i32 %conv38, 4
  %and39.lobit = and i32 %and39, 1
  %and47 = lshr i32 %conv38, 5
  %and47.lobit = and i32 %and47, 1
  %and55 = lshr i32 %conv38, 1
  %and55.lobit = and i32 %and55, 1
  %and63 = lshr i32 %conv38, 3
  %and63.lobit = and i32 %and63, 1
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m33, ptr noundef nonnull @__func__.dlm_thread, i32 noundef 735, ptr noundef nonnull @.str.13, ptr noundef %169, i32 noundef %and39.lobit, i32 noundef %and47.lobit, i32 noundef %and55.lobit, i32 noundef %and63.lobit) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m33) #6
  br label %do.body73

do.body73:                                        ; preds = %if.then31, %list_del_init.exit.do.body73_crit_edge
  %172 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %owner, align 4
  %174 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %node_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %173, i8 %175)
  %cmp78.not = icmp eq i8 %173, %175
  br i1 %cmp78.not, label %do.body96, label %do.body87, !prof !90

do.body87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 737, 0\0A.popsection", ""() #6, !srcloc !101
  unreachable

do.body96:                                        ; preds = %do.body73
  %state97 = getelementptr i8, ptr %152, i32 138
  %176 = ptrtoint ptr %state97 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %state97, align 2
  %conv98 = zext i16 %177 to i32
  %and99 = and i32 %conv98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.end116, label %do.body108, !prof !90

do.body108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 742, 0\0A.popsection", ""() #6, !srcloc !102
  unreachable

do.end116:                                        ; preds = %do.body96
  %and119 = and i32 %conv98, 16402
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end141, label %if.then121

if.then121:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #8
  %and124 = and i16 %177, -9
  %178 = ptrtoint ptr %state97 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %and124, ptr %state97, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock25) #6
  call void @_raw_spin_unlock(ptr noundef %ast_lock) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m129) #6
  %179 = ptrtoint ptr %_m129 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 320, ptr %_m129, align 8
  %180 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %name, align 4
  %lockname = getelementptr i8, ptr %152, i32 -52
  %182 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %lockname, align 8
  %name135 = getelementptr i8, ptr %152, i32 -44
  %184 = ptrtoint ptr %name135 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %name135, align 8
  %186 = ptrtoint ptr %state97 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %state97, align 2
  %conv137 = zext i16 %187 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m129, ptr noundef nonnull @__func__.dlm_thread, i32 noundef 753, ptr noundef nonnull @.str.14, ptr noundef %181, i32 noundef %183, ptr noundef %185, i32 noundef %conv137) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m129) #6
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  call void @_raw_spin_lock(ptr noundef %spinlock25) #6
  call void @__dlm_dirty_lockres(ptr noundef %data, ptr noundef nonnull %add.ptr)
  call void @_raw_spin_unlock(ptr noundef %spinlock25) #6
  br label %if.end153

if.end141:                                        ; preds = %do.end116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %188 = ptrtoint ptr %ast_lock to i32
  call void @__asan_load4_noabort(i32 %188)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %ast_lock, align 4
  %189 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body10.i, !prof !83

do.body4.i:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #6, !srcloc !103
  unreachable

do.body10.i:                                      ; preds = %if.end141
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i587.i)
  %190 = ptrtoint ptr %spinlock25 to i32
  call void @__asan_load4_noabort(i32 %190)
  %agg.tmp.sroa.0.0.copyload.i588.i = load volatile i32, ptr %spinlock25, align 4
  %191 = ptrtoint ptr %agg.tmp.sroa.0.i587.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i588.i, ptr %agg.tmp.sroa.0.i587.i, align 4
  %lock.sroa.0.0.extract.shift.i.i589.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i588.i, 16
  %conv.i.i590.i = and i32 %agg.tmp.sroa.0.0.copyload.i588.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i590.i, i32 %lock.sroa.0.0.extract.shift.i.i589.i)
  %cmp.i.i591.not.i = icmp eq i32 %conv.i.i590.i, %lock.sroa.0.0.extract.shift.i.i589.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i587.i)
  br i1 %cmp.i.i591.not.i, label %do.body23.i, label %do.body32.i, !prof !83

do.body23.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 353, 0\0A.popsection", ""() #6, !srcloc !104
  unreachable

do.body32.i:                                      ; preds = %do.body10.i
  %192 = ptrtoint ptr %state97 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %state97, align 2
  %194 = and i16 %193, 50
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %tobool33.not.i = icmp eq i16 %194, 0
  br i1 %tobool33.not.i, label %converting.preheader.i, label %do.body41.i, !prof !90

converting.preheader.i:                           ; preds = %do.body32.i
  %converting50.i = getelementptr i8, ptr %152, i32 -24
  %lockname.i320 = getelementptr i8, ptr %152, i32 -52
  %name60.i = getelementptr i8, ptr %152, i32 -44
  %granted.i = getelementptr i8, ptr %152, i32 -32
  %prev.i2.i.i321 = getelementptr i8, ptr %152, i32 -28
  %blocked273.i = getelementptr i8, ptr %152, i32 -16
  br label %converting.i

do.body41.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 356, 0\0A.popsection", ""() #6, !srcloc !105
  unreachable

converting.i:                                     ; preds = %converting.backedge.i, %converting.preheader.i
  %195 = ptrtoint ptr %converting50.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile ptr, ptr %converting50.i, align 4
  %cmp.i.not.i322 = icmp eq ptr %196, %converting50.i
  br i1 %cmp.i.not.i322, label %converting.i.blocked.i_crit_edge, label %do.body55.i

converting.i.blocked.i_crit_edge:                 ; preds = %converting.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %blocked.i

do.body55.i:                                      ; preds = %converting.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i318) #6
  %197 = ptrtoint ptr %_m.i318 to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 320, ptr %_m.i318, align 8
  %198 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %name, align 4
  %200 = ptrtoint ptr %lockname.i320 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %lockname.i320, align 8
  %202 = ptrtoint ptr %name60.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %name60.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i318, ptr noundef nonnull @__func__.dlm_shuffle_lists, i32 noundef 362, ptr noundef nonnull @.str.23, ptr noundef %199, i32 noundef %201, ptr noundef %203) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i318) #6
  %204 = ptrtoint ptr %converting50.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %converting50.i, align 4
  %add.ptr.i323 = getelementptr i8, ptr %205, i32 -16
  %convert_type.i = getelementptr i8, ptr %205, i32 -3
  %206 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %convert_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %207)
  %cmp.i324 = icmp eq i8 %207, -1
  br i1 %cmp.i324, label %do.body68.i, label %if.end87.i

do.body68.i:                                      ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m69.i) #6
  %208 = ptrtoint ptr %_m69.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 1152921504606847296, ptr %_m69.i, align 8
  %209 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %name, align 4
  %211 = ptrtoint ptr %lockname.i320 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %lockname.i320, align 8
  %213 = ptrtoint ptr %name60.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %name60.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m69.i, ptr noundef nonnull @__func__.dlm_shuffle_lists, i32 noundef 367, ptr noundef nonnull @.str.24, ptr noundef %210, i32 noundef %212, ptr noundef %214) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m69.i) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 368, 0\0A.popsection", ""() #6, !srcloc !106
  unreachable

if.end87.i:                                       ; preds = %do.body55.i
  %215 = ptrtoint ptr %granted.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %.pn669.i = load ptr, ptr %granted.i, align 4
  %cmp93.not671.i = icmp eq ptr %.pn669.i, %granted.i
  br i1 %cmp93.not671.i, label %if.end87.i.for.cond140.preheader.i_crit_edge, label %if.end87.i.for.body.i_crit_edge

if.end87.i.for.body.i_crit_edge:                  ; preds = %if.end87.i
  br label %for.body.i

if.end87.i.for.cond140.preheader.i_crit_edge:     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond140.preheader.i

for.cond140.preheader.i:                          ; preds = %for.inc.i.for.cond140.preheader.i_crit_edge, %if.end87.i.for.cond140.preheader.i_crit_edge
  %can_grant.1.lcssa.i = phi i32 [ 1, %if.end87.i.for.cond140.preheader.i_crit_edge ], [ %can_grant.2.i, %for.inc.i.for.cond140.preheader.i_crit_edge ]
  %216 = ptrtoint ptr %converting50.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %.pn584675.i = load ptr, ptr %converting50.i, align 4
  %cmp143.not677.i = icmp eq ptr %.pn584675.i, %converting50.i
  br i1 %cmp143.not677.i, label %for.cond140.preheader.i.for.end189.i_crit_edge, label %for.cond140.preheader.i.for.body147.i_crit_edge

for.cond140.preheader.i.for.body147.i_crit_edge:  ; preds = %for.cond140.preheader.i
  br label %for.body147.i

for.cond140.preheader.i.for.end189.i_crit_edge:   ; preds = %for.cond140.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end189.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end87.i.for.body.i_crit_edge
  %.pn673.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn669.i, %if.end87.i.for.body.i_crit_edge ]
  %can_grant.1672.i = phi i32 [ %can_grant.2.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end87.i.for.body.i_crit_edge ]
  %lock.0674.i = getelementptr i8, ptr %.pn673.i, i32 -16
  %cmp97.i = icmp eq ptr %.pn673.i, %205
  br i1 %cmp97.i, label %for.body.i.for.inc.i_crit_edge, label %if.end100.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end100.i:                                      ; preds = %for.body.i
  %type.i = getelementptr i8, ptr %.pn673.i, i32 -4
  %217 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %type.i, align 4
  %219 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %convert_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %cmp.i593.i = icmp eq i8 %220, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %cmp1.i.i = icmp eq i8 %218, 0
  %or.cond.i.i325 = or i1 %cmp1.i.i, %cmp.i593.i
  br i1 %or.cond.i.i325, label %if.end100.i.for.inc.i_crit_edge, label %if.end.i.i326

if.end100.i.for.inc.i_crit_edge:                  ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i.i326:                                    ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %220)
  %cmp2.i.i = icmp ne i8 %220, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %218)
  %cmp5.i.not.i = icmp eq i8 %218, 3
  %or.cond.i = select i1 %cmp2.i.i, i1 %cmp5.i.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i.i326.for.inc.i_crit_edge, label %if.then108.i

if.end.i.i326.for.inc.i_crit_edge:                ; preds = %if.end.i.i326
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then108.i:                                     ; preds = %if.end.i.i326
  %highest_blocked.i = getelementptr i8, ptr %.pn673.i, i32 -2
  %221 = ptrtoint ptr %highest_blocked.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %highest_blocked.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %222)
  %cmp111.i = icmp eq i8 %222, -1
  br i1 %cmp111.i, label %if.then113.i, label %if.then108.i.if.end114.i_crit_edge

if.then108.i.if.end114.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114.i

if.then113.i:                                     ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__dlm_lockres_reserve_ast(ptr noundef nonnull %add.ptr) #6
  call void @__dlm_queue_bast(ptr noundef %data, ptr noundef %lock.0674.i) #6
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then113.i, %if.then108.i.if.end114.i_crit_edge
  %223 = ptrtoint ptr %highest_blocked.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %highest_blocked.i, align 2
  %225 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %convert_type.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %224, i8 %226)
  %cmp121.i = icmp slt i8 %224, %226
  br i1 %cmp121.i, label %if.then123.i, label %if.end114.i.for.inc.i_crit_edge

if.end114.i.for.inc.i_crit_edge:                  ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then123.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #8
  %227 = ptrtoint ptr %highest_blocked.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %highest_blocked.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then123.i, %if.end114.i.for.inc.i_crit_edge, %if.end.i.i326.for.inc.i_crit_edge, %if.end100.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %can_grant.2.i = phi i32 [ %can_grant.1672.i, %for.body.i.for.inc.i_crit_edge ], [ 0, %if.then123.i ], [ 0, %if.end114.i.for.inc.i_crit_edge ], [ %can_grant.1672.i, %if.end100.i.for.inc.i_crit_edge ], [ %can_grant.1672.i, %if.end.i.i326.for.inc.i_crit_edge ]
  %228 = ptrtoint ptr %.pn673.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %.pn.i = load ptr, ptr %.pn673.i, align 4
  %cmp93.not.i = icmp eq ptr %.pn.i, %granted.i
  br i1 %cmp93.not.i, label %for.inc.i.for.cond140.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.cond140.preheader.i_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond140.preheader.i

for.body147.i:                                    ; preds = %for.inc183.i.for.body147.i_crit_edge, %for.cond140.preheader.i.for.body147.i_crit_edge
  %.pn584679.i = phi ptr [ %.pn584.i, %for.inc183.i.for.body147.i_crit_edge ], [ %.pn584675.i, %for.cond140.preheader.i.for.body147.i_crit_edge ]
  %can_grant.3678.i = phi i32 [ %can_grant.4.i, %for.inc183.i.for.body147.i_crit_edge ], [ %can_grant.1.lcssa.i, %for.cond140.preheader.i.for.body147.i_crit_edge ]
  %lock.1680.i = getelementptr i8, ptr %.pn584679.i, i32 -16
  %cmp148.i = icmp eq ptr %.pn584679.i, %205
  br i1 %cmp148.i, label %for.body147.i.for.inc183.i_crit_edge, label %if.end151.i

for.body147.i.for.inc183.i_crit_edge:             ; preds = %for.body147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc183.i

if.end151.i:                                      ; preds = %for.body147.i
  %type153.i = getelementptr i8, ptr %.pn584679.i, i32 -4
  %229 = ptrtoint ptr %type153.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %type153.i, align 4
  %231 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %convert_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %cmp.i594.i = icmp eq i8 %232, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %cmp1.i595.i = icmp eq i8 %230, 0
  %or.cond.i596.i = or i1 %cmp1.i595.i, %cmp.i594.i
  br i1 %or.cond.i596.i, label %if.end151.i.for.inc183.i_crit_edge, label %if.end.i598.i

if.end151.i.for.inc183.i_crit_edge:               ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc183.i

if.end.i598.i:                                    ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %232)
  %cmp2.i597.i = icmp ne i8 %232, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %230)
  %cmp5.i599.not.i = icmp eq i8 %230, 3
  %or.cond660.i = select i1 %cmp2.i597.i, i1 %cmp5.i599.not.i, i1 false
  br i1 %or.cond660.i, label %if.end.i598.i.for.inc183.i_crit_edge, label %if.then160.i

if.end.i598.i.for.inc183.i_crit_edge:             ; preds = %if.end.i598.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc183.i

if.then160.i:                                     ; preds = %if.end.i598.i
  %highest_blocked162.i = getelementptr i8, ptr %.pn584679.i, i32 -2
  %233 = ptrtoint ptr %highest_blocked162.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %highest_blocked162.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %234)
  %cmp164.i = icmp eq i8 %234, -1
  br i1 %cmp164.i, label %if.then166.i, label %if.then160.i.if.end167.i_crit_edge

if.then160.i.if.end167.i_crit_edge:               ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167.i

if.then166.i:                                     ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__dlm_lockres_reserve_ast(ptr noundef nonnull %add.ptr) #6
  call void @__dlm_queue_bast(ptr noundef %data, ptr noundef %lock.1680.i) #6
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then166.i, %if.then160.i.if.end167.i_crit_edge
  %235 = ptrtoint ptr %highest_blocked162.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %highest_blocked162.i, align 2
  %237 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %convert_type.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %236, i8 %238)
  %cmp174.i = icmp slt i8 %236, %238
  br i1 %cmp174.i, label %if.then176.i, label %if.end167.i.for.inc183.i_crit_edge

if.end167.i.for.inc183.i_crit_edge:               ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc183.i

if.then176.i:                                     ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #8
  %239 = ptrtoint ptr %highest_blocked162.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %highest_blocked162.i, align 2
  br label %for.inc183.i

for.inc183.i:                                     ; preds = %if.then176.i, %if.end167.i.for.inc183.i_crit_edge, %if.end.i598.i.for.inc183.i_crit_edge, %if.end151.i.for.inc183.i_crit_edge, %for.body147.i.for.inc183.i_crit_edge
  %can_grant.4.i = phi i32 [ %can_grant.3678.i, %for.body147.i.for.inc183.i_crit_edge ], [ 0, %if.then176.i ], [ 0, %if.end167.i.for.inc183.i_crit_edge ], [ %can_grant.3678.i, %if.end151.i.for.inc183.i_crit_edge ], [ %can_grant.3678.i, %if.end.i598.i.for.inc183.i_crit_edge ]
  %240 = ptrtoint ptr %.pn584679.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %.pn584.i = load ptr, ptr %.pn584679.i, align 4
  %cmp143.not.i = icmp eq ptr %.pn584.i, %converting50.i
  br i1 %cmp143.not.i, label %for.inc183.i.for.end189.i_crit_edge, label %for.inc183.i.for.body147.i_crit_edge

for.inc183.i.for.body147.i_crit_edge:             ; preds = %for.inc183.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body147.i

for.inc183.i.for.end189.i_crit_edge:              ; preds = %for.inc183.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end189.i

for.end189.i:                                     ; preds = %for.inc183.i.for.end189.i_crit_edge, %for.cond140.preheader.i.for.end189.i_crit_edge
  %can_grant.3.lcssa.i = phi i32 [ %can_grant.1.lcssa.i, %for.cond140.preheader.i.for.end189.i_crit_edge ], [ %can_grant.4.i, %for.inc183.i.for.end189.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %can_grant.3.lcssa.i)
  %tobool190.not.i = icmp eq i32 %can_grant.3.lcssa.i, 0
  br i1 %tobool190.not.i, label %for.end189.i.blocked.i_crit_edge, label %if.then191.i

for.end189.i.blocked.i_crit_edge:                 ; preds = %for.end189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %blocked.i

if.then191.i:                                     ; preds = %for.end189.i
  %spinlock192.i = getelementptr i8, ptr %205, i32 28
  call void @_raw_spin_lock(ptr noundef %spinlock192.i) #6
  %highest_blocked195.i = getelementptr i8, ptr %205, i32 -2
  %241 = ptrtoint ptr %highest_blocked195.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %highest_blocked195.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %242)
  %cmp197.not.i = icmp eq i8 %242, -1
  br i1 %cmp197.not.i, label %do.body215.i, label %do.body206.i, !prof !90

do.body206.i:                                     ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #6, !srcloc !107
  unreachable

do.body215.i:                                     ; preds = %if.then191.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m216.i) #6
  %243 = ptrtoint ptr %_m216.i to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 320, ptr %_m216.i, align 8
  %244 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %name, align 4
  %246 = ptrtoint ptr %lockname.i320 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %lockname.i320, align 8
  %248 = ptrtoint ptr %name60.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %name60.i, align 8
  %250 = ptrtoint ptr %add.ptr.i323 to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %add.ptr.i323, align 8
  %shr.i.i = lshr i64 %251, 56
  %conv.i604.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i64 %251, 72057594037927935
  %type232.i = getelementptr i8, ptr %205, i32 -4
  %252 = ptrtoint ptr %type232.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %type232.i, align 4
  %conv233.i = sext i8 %253 to i32
  %254 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %convert_type.i, align 1
  %conv236.i = sext i8 %255 to i32
  %node.i = getelementptr i8, ptr %205, i32 -1
  %256 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %node.i, align 1
  %conv238.i = zext i8 %257 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m216.i, ptr noundef nonnull @__func__.dlm_shuffle_lists, i32 noundef 415, ptr noundef nonnull @.str.25, ptr noundef %245, i32 noundef %247, ptr noundef %249, i32 noundef %conv.i604.i, i64 noundef %and.i.i, i32 noundef %conv233.i, i32 noundef %conv236.i, i32 noundef %conv238.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m216.i) #6
  %258 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %convert_type.i, align 1
  %260 = ptrtoint ptr %type232.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %type232.i, align 4
  store i8 -1, ptr %convert_type.i, align 1
  %call.i.i.i327 = call zeroext i1 @__list_del_entry_valid(ptr noundef %205) #6
  br i1 %call.i.i.i327, label %if.end.i.i.i330, label %do.body215.i.__list_del_entry.exit.i.i332_crit_edge

do.body215.i.__list_del_entry.exit.i.i332_crit_edge: ; preds = %do.body215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i332

if.end.i.i.i330:                                  ; preds = %do.body215.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i328 = getelementptr inbounds %struct.list_head, ptr %205, i32 0, i32 1
  %261 = ptrtoint ptr %prev.i.i.i328 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %prev.i.i.i328, align 4
  %263 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %205, align 4
  %prev1.i.i.i.i329 = getelementptr inbounds %struct.list_head, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %prev1.i.i.i.i329 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %262, ptr %prev1.i.i.i.i329, align 4
  %266 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %266)
  store volatile ptr %264, ptr %262, align 4
  br label %__list_del_entry.exit.i.i332

__list_del_entry.exit.i.i332:                     ; preds = %if.end.i.i.i330, %do.body215.i.__list_del_entry.exit.i.i332_crit_edge
  %267 = ptrtoint ptr %prev.i2.i.i321 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %prev.i2.i.i321, align 4
  %call.i.i.i.i331 = call zeroext i1 @__list_add_valid(ptr noundef %205, ptr noundef %268, ptr noundef %granted.i) #6
  br i1 %call.i.i.i.i331, label %if.end.i.i.i.i334, label %__list_del_entry.exit.i.i332.list_move_tail.exit.i335_crit_edge

__list_del_entry.exit.i.i332.list_move_tail.exit.i335_crit_edge: ; preds = %__list_del_entry.exit.i.i332
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit.i335

if.end.i.i.i.i334:                                ; preds = %__list_del_entry.exit.i.i332
  call void @__sanitizer_cov_trace_pc() #8
  %269 = ptrtoint ptr %prev.i2.i.i321 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %205, ptr %prev.i2.i.i321, align 4
  %270 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %granted.i, ptr %205, align 4
  %prev3.i.i.i.i333 = getelementptr inbounds %struct.list_head, ptr %205, i32 0, i32 1
  %271 = ptrtoint ptr %prev3.i.i.i.i333 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %268, ptr %prev3.i.i.i.i333, align 4
  %272 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %272)
  store volatile ptr %205, ptr %268, align 4
  br label %list_move_tail.exit.i335

list_move_tail.exit.i335:                         ; preds = %if.end.i.i.i.i334, %__list_del_entry.exit.i.i332.list_move_tail.exit.i335_crit_edge
  %lksb.i = getelementptr i8, ptr %205, i32 88
  %273 = ptrtoint ptr %lksb.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %lksb.i, align 8
  %tobool251.not.i = icmp eq ptr %274, null
  br i1 %tobool251.not.i, label %do.body261.i, label %list_move_tail.exit.i335.converting.backedge.i_crit_edge, !prof !83

list_move_tail.exit.i335.converting.backedge.i_crit_edge: ; preds = %list_move_tail.exit.i335
  call void @__sanitizer_cov_trace_pc() #8
  br label %converting.backedge.i

do.body261.i:                                     ; preds = %list_move_tail.exit.i335
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 421, 0\0A.popsection", ""() #6, !srcloc !108
  unreachable

converting.backedge.i:                            ; preds = %list_move_tail.exit639.i.converting.backedge.i_crit_edge, %list_move_tail.exit.i335.converting.backedge.i_crit_edge
  %.sink.i = phi ptr [ %332, %list_move_tail.exit639.i.converting.backedge.i_crit_edge ], [ %274, %list_move_tail.exit.i335.converting.backedge.i_crit_edge ]
  %spinlock192.sink.i = phi ptr [ %spinlock395.i, %list_move_tail.exit639.i.converting.backedge.i_crit_edge ], [ %spinlock192.i, %list_move_tail.exit.i335.converting.backedge.i_crit_edge ]
  %add.ptr.sink.i = phi ptr [ %add.ptr282.i, %list_move_tail.exit639.i.converting.backedge.i_crit_edge ], [ %add.ptr.i323, %list_move_tail.exit.i335.converting.backedge.i_crit_edge ]
  %275 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 0, ptr %.sink.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock192.sink.i) #6
  call void @__dlm_lockres_reserve_ast(ptr noundef nonnull %add.ptr) #6
  call void @__dlm_queue_ast(ptr noundef %data, ptr noundef %add.ptr.sink.i) #6
  br label %converting.i

blocked.i:                                        ; preds = %for.end189.i.blocked.i_crit_edge, %converting.i.blocked.i_crit_edge
  %can_grant.5.i = phi i32 [ 1, %converting.i.blocked.i_crit_edge ], [ 0, %for.end189.i.blocked.i_crit_edge ]
  %276 = ptrtoint ptr %blocked273.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load volatile ptr, ptr %blocked273.i, align 4
  %cmp.i605.not.i = icmp eq ptr %277, %blocked273.i
  br i1 %cmp.i605.not.i, label %blocked.i.dlm_shuffle_lists.exit_crit_edge, label %if.end277.i

blocked.i.dlm_shuffle_lists.exit_crit_edge:       ; preds = %blocked.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_shuffle_lists.exit

if.end277.i:                                      ; preds = %blocked.i
  %add.ptr282.i = getelementptr i8, ptr %277, i32 -16
  %278 = ptrtoint ptr %granted.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %.pn585682.i = load ptr, ptr %granted.i, align 4
  %cmp291.not684.i = icmp eq ptr %.pn585682.i, %granted.i
  br i1 %cmp291.not684.i, label %if.end277.i.for.cond343.preheader.i_crit_edge, label %for.body295.lr.ph.i

if.end277.i.for.cond343.preheader.i_crit_edge:    ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond343.preheader.i

for.body295.lr.ph.i:                              ; preds = %if.end277.i
  %type304.i = getelementptr i8, ptr %277, i32 -4
  br label %for.body295.i

for.cond343.preheader.i:                          ; preds = %for.inc331.i.for.cond343.preheader.i_crit_edge, %if.end277.i.for.cond343.preheader.i_crit_edge
  %can_grant.6.lcssa.i = phi i32 [ %can_grant.5.i, %if.end277.i.for.cond343.preheader.i_crit_edge ], [ %can_grant.7.i, %for.inc331.i.for.cond343.preheader.i_crit_edge ]
  %279 = ptrtoint ptr %converting50.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %.pn586689.i = load ptr, ptr %converting50.i, align 4
  %cmp346.not691.i = icmp eq ptr %.pn586689.i, %converting50.i
  br i1 %cmp346.not691.i, label %for.cond343.preheader.i.for.end392.i_crit_edge, label %for.body350.lr.ph.i

for.cond343.preheader.i.for.end392.i_crit_edge:   ; preds = %for.cond343.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end392.i

for.body350.lr.ph.i:                              ; preds = %for.cond343.preheader.i
  %type359.i = getelementptr i8, ptr %277, i32 -4
  br label %for.body350.i

for.body295.i:                                    ; preds = %for.inc331.i.for.body295.i_crit_edge, %for.body295.lr.ph.i
  %.pn585686.i = phi ptr [ %.pn585682.i, %for.body295.lr.ph.i ], [ %.pn585.i, %for.inc331.i.for.body295.i_crit_edge ]
  %can_grant.6685.i = phi i32 [ %can_grant.5.i, %for.body295.lr.ph.i ], [ %can_grant.7.i, %for.inc331.i.for.body295.i_crit_edge ]
  %lock.2687.i = getelementptr i8, ptr %.pn585686.i, i32 -16
  %cmp296.i = icmp eq ptr %.pn585686.i, %277
  br i1 %cmp296.i, label %for.body295.i.for.inc331.i_crit_edge, label %if.end299.i

for.body295.i.for.inc331.i_crit_edge:             ; preds = %for.body295.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc331.i

if.end299.i:                                      ; preds = %for.body295.i
  %type301.i = getelementptr i8, ptr %.pn585686.i, i32 -4
  %280 = ptrtoint ptr %type301.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %type301.i, align 4
  %282 = ptrtoint ptr %type304.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %type304.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %cmp.i607.i = icmp eq i8 %283, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %cmp1.i608.i = icmp eq i8 %281, 0
  %or.cond.i609.i = or i1 %cmp1.i608.i, %cmp.i607.i
  br i1 %or.cond.i609.i, label %if.end299.i.for.inc331.i_crit_edge, label %if.end.i611.i

if.end299.i.for.inc331.i_crit_edge:               ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc331.i

if.end.i611.i:                                    ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %283)
  %cmp2.i610.i = icmp ne i8 %283, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %281)
  %cmp5.i612.not.i = icmp eq i8 %281, 3
  %or.cond661.i = select i1 %cmp2.i610.i, i1 %cmp5.i612.not.i, i1 false
  br i1 %or.cond661.i, label %if.end.i611.i.for.inc331.i_crit_edge, label %if.then308.i

if.end.i611.i.for.inc331.i_crit_edge:             ; preds = %if.end.i611.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc331.i

if.then308.i:                                     ; preds = %if.end.i611.i
  %highest_blocked310.i = getelementptr i8, ptr %.pn585686.i, i32 -2
  %284 = ptrtoint ptr %highest_blocked310.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %highest_blocked310.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %285)
  %cmp312.i = icmp eq i8 %285, -1
  br i1 %cmp312.i, label %if.then314.i, label %if.then308.i.if.end315.i_crit_edge

if.then308.i.if.end315.i_crit_edge:               ; preds = %if.then308.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end315.i

if.then314.i:                                     ; preds = %if.then308.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__dlm_lockres_reserve_ast(ptr noundef nonnull %add.ptr) #6
  call void @__dlm_queue_bast(ptr noundef %data, ptr noundef %lock.2687.i) #6
  br label %if.end315.i

if.end315.i:                                      ; preds = %if.then314.i, %if.then308.i.if.end315.i_crit_edge
  %286 = ptrtoint ptr %highest_blocked310.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %highest_blocked310.i, align 2
  %288 = ptrtoint ptr %type304.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %type304.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %287, i8 %289)
  %cmp322.i = icmp slt i8 %287, %289
  br i1 %cmp322.i, label %if.then324.i, label %if.end315.i.for.inc331.i_crit_edge

if.end315.i.for.inc331.i_crit_edge:               ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc331.i

if.then324.i:                                     ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #8
  %290 = ptrtoint ptr %highest_blocked310.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %289, ptr %highest_blocked310.i, align 2
  br label %for.inc331.i

for.inc331.i:                                     ; preds = %if.then324.i, %if.end315.i.for.inc331.i_crit_edge, %if.end.i611.i.for.inc331.i_crit_edge, %if.end299.i.for.inc331.i_crit_edge, %for.body295.i.for.inc331.i_crit_edge
  %can_grant.7.i = phi i32 [ %can_grant.6685.i, %for.body295.i.for.inc331.i_crit_edge ], [ 0, %if.then324.i ], [ 0, %if.end315.i.for.inc331.i_crit_edge ], [ %can_grant.6685.i, %if.end299.i.for.inc331.i_crit_edge ], [ %can_grant.6685.i, %if.end.i611.i.for.inc331.i_crit_edge ]
  %291 = ptrtoint ptr %.pn585686.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %.pn585.i = load ptr, ptr %.pn585686.i, align 4
  %cmp291.not.i = icmp eq ptr %.pn585.i, %granted.i
  br i1 %cmp291.not.i, label %for.inc331.i.for.cond343.preheader.i_crit_edge, label %for.inc331.i.for.body295.i_crit_edge

for.inc331.i.for.body295.i_crit_edge:             ; preds = %for.inc331.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body295.i

for.inc331.i.for.cond343.preheader.i_crit_edge:   ; preds = %for.inc331.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond343.preheader.i

for.body350.i:                                    ; preds = %for.inc386.i.for.body350.i_crit_edge, %for.body350.lr.ph.i
  %.pn586693.i = phi ptr [ %.pn586689.i, %for.body350.lr.ph.i ], [ %.pn586.i, %for.inc386.i.for.body350.i_crit_edge ]
  %can_grant.8692.i = phi i32 [ %can_grant.6.lcssa.i, %for.body350.lr.ph.i ], [ %can_grant.9.i, %for.inc386.i.for.body350.i_crit_edge ]
  %lock.3694.i = getelementptr i8, ptr %.pn586693.i, i32 -16
  %cmp351.i = icmp eq ptr %.pn586693.i, %277
  br i1 %cmp351.i, label %for.body350.i.for.inc386.i_crit_edge, label %if.end354.i

for.body350.i.for.inc386.i_crit_edge:             ; preds = %for.body350.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc386.i

if.end354.i:                                      ; preds = %for.body350.i
  %type356.i = getelementptr i8, ptr %.pn586693.i, i32 -4
  %292 = ptrtoint ptr %type356.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %type356.i, align 4
  %294 = ptrtoint ptr %type359.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %type359.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %cmp.i617.i = icmp eq i8 %295, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %cmp1.i618.i = icmp eq i8 %293, 0
  %or.cond.i619.i = or i1 %cmp1.i618.i, %cmp.i617.i
  br i1 %or.cond.i619.i, label %if.end354.i.for.inc386.i_crit_edge, label %if.end.i621.i

if.end354.i.for.inc386.i_crit_edge:               ; preds = %if.end354.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc386.i

if.end.i621.i:                                    ; preds = %if.end354.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %295)
  %cmp2.i620.i = icmp ne i8 %295, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %293)
  %cmp5.i622.not.i = icmp eq i8 %293, 3
  %or.cond662.i = select i1 %cmp2.i620.i, i1 %cmp5.i622.not.i, i1 false
  br i1 %or.cond662.i, label %if.end.i621.i.for.inc386.i_crit_edge, label %if.then363.i

if.end.i621.i.for.inc386.i_crit_edge:             ; preds = %if.end.i621.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc386.i

if.then363.i:                                     ; preds = %if.end.i621.i
  %highest_blocked365.i = getelementptr i8, ptr %.pn586693.i, i32 -2
  %296 = ptrtoint ptr %highest_blocked365.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %highest_blocked365.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %297)
  %cmp367.i = icmp eq i8 %297, -1
  br i1 %cmp367.i, label %if.then369.i, label %if.then363.i.if.end370.i_crit_edge

if.then363.i.if.end370.i_crit_edge:               ; preds = %if.then363.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end370.i

if.then369.i:                                     ; preds = %if.then363.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__dlm_lockres_reserve_ast(ptr noundef nonnull %add.ptr) #6
  call void @__dlm_queue_bast(ptr noundef %data, ptr noundef %lock.3694.i) #6
  br label %if.end370.i

if.end370.i:                                      ; preds = %if.then369.i, %if.then363.i.if.end370.i_crit_edge
  %298 = ptrtoint ptr %highest_blocked365.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %highest_blocked365.i, align 2
  %300 = ptrtoint ptr %type359.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %type359.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %299, i8 %301)
  %cmp377.i = icmp slt i8 %299, %301
  br i1 %cmp377.i, label %if.then379.i, label %if.end370.i.for.inc386.i_crit_edge

if.end370.i.for.inc386.i_crit_edge:               ; preds = %if.end370.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc386.i

if.then379.i:                                     ; preds = %if.end370.i
  call void @__sanitizer_cov_trace_pc() #8
  %302 = ptrtoint ptr %highest_blocked365.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %301, ptr %highest_blocked365.i, align 2
  br label %for.inc386.i

for.inc386.i:                                     ; preds = %if.then379.i, %if.end370.i.for.inc386.i_crit_edge, %if.end.i621.i.for.inc386.i_crit_edge, %if.end354.i.for.inc386.i_crit_edge, %for.body350.i.for.inc386.i_crit_edge
  %can_grant.9.i = phi i32 [ %can_grant.8692.i, %for.body350.i.for.inc386.i_crit_edge ], [ 0, %if.then379.i ], [ 0, %if.end370.i.for.inc386.i_crit_edge ], [ %can_grant.8692.i, %if.end354.i.for.inc386.i_crit_edge ], [ %can_grant.8692.i, %if.end.i621.i.for.inc386.i_crit_edge ]
  %303 = ptrtoint ptr %.pn586693.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %.pn586.i = load ptr, ptr %.pn586693.i, align 4
  %cmp346.not.i = icmp eq ptr %.pn586.i, %converting50.i
  br i1 %cmp346.not.i, label %for.inc386.i.for.end392.i_crit_edge, label %for.inc386.i.for.body350.i_crit_edge

for.inc386.i.for.body350.i_crit_edge:             ; preds = %for.inc386.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body350.i

for.inc386.i.for.end392.i_crit_edge:              ; preds = %for.inc386.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end392.i

for.end392.i:                                     ; preds = %for.inc386.i.for.end392.i_crit_edge, %for.cond343.preheader.i.for.end392.i_crit_edge
  %can_grant.8.lcssa.i = phi i32 [ %can_grant.6.lcssa.i, %for.cond343.preheader.i.for.end392.i_crit_edge ], [ %can_grant.9.i, %for.inc386.i.for.end392.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %can_grant.8.lcssa.i)
  %tobool393.not.i = icmp eq i32 %can_grant.8.lcssa.i, 0
  br i1 %tobool393.not.i, label %for.end392.i.dlm_shuffle_lists.exit_crit_edge, label %if.then394.i

for.end392.i.dlm_shuffle_lists.exit_crit_edge:    ; preds = %for.end392.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_shuffle_lists.exit

if.then394.i:                                     ; preds = %for.end392.i
  %spinlock395.i = getelementptr i8, ptr %277, i32 28
  call void @_raw_spin_lock(ptr noundef %spinlock395.i) #6
  %highest_blocked398.i = getelementptr i8, ptr %277, i32 -2
  %304 = ptrtoint ptr %highest_blocked398.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %highest_blocked398.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %305)
  %cmp400.not.i = icmp eq i8 %305, -1
  br i1 %cmp400.not.i, label %do.body418.i, label %do.body409.i, !prof !90

do.body409.i:                                     ; preds = %if.then394.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 469, 0\0A.popsection", ""() #6, !srcloc !109
  unreachable

do.body418.i:                                     ; preds = %if.then394.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m419.i) #6
  %306 = ptrtoint ptr %_m419.i to i32
  call void @__asan_store8_noabort(i32 %306)
  store i64 320, ptr %_m419.i, align 8
  %307 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %name, align 4
  %309 = ptrtoint ptr %lockname.i320 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %lockname.i320, align 8
  %311 = ptrtoint ptr %name60.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %name60.i, align 8
  %313 = ptrtoint ptr %add.ptr282.i to i32
  call void @__asan_load8_noabort(i32 %313)
  %314 = load i64, ptr %add.ptr282.i, align 8
  %shr.i627.i = lshr i64 %314, 56
  %conv.i628.i = trunc i64 %shr.i627.i to i32
  %and.i629.i = and i64 %314, 72057594037927935
  %type436.i = getelementptr i8, ptr %277, i32 -4
  %315 = ptrtoint ptr %type436.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %type436.i, align 4
  %conv437.i = sext i8 %316 to i32
  %node439.i = getelementptr i8, ptr %277, i32 -1
  %317 = ptrtoint ptr %node439.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %node439.i, align 1
  %conv440.i = zext i8 %318 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m419.i, ptr noundef nonnull @__func__.dlm_shuffle_lists, i32 noundef 476, ptr noundef nonnull @.str.26, ptr noundef %308, i32 noundef %310, ptr noundef %312, i32 noundef %conv.i628.i, i64 noundef %and.i629.i, i32 noundef %conv437.i, i32 noundef %conv440.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m419.i) #6
  %call.i.i630.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %277) #6
  br i1 %call.i.i630.i, label %if.end.i.i633.i, label %do.body418.i.__list_del_entry.exit.i636.i_crit_edge

do.body418.i.__list_del_entry.exit.i636.i_crit_edge: ; preds = %do.body418.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i636.i

if.end.i.i633.i:                                  ; preds = %do.body418.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i631.i = getelementptr inbounds %struct.list_head, ptr %277, i32 0, i32 1
  %319 = ptrtoint ptr %prev.i.i631.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %prev.i.i631.i, align 4
  %321 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %277, align 4
  %prev1.i.i.i632.i = getelementptr inbounds %struct.list_head, ptr %322, i32 0, i32 1
  %323 = ptrtoint ptr %prev1.i.i.i632.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %320, ptr %prev1.i.i.i632.i, align 4
  %324 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %324)
  store volatile ptr %322, ptr %320, align 4
  br label %__list_del_entry.exit.i636.i

__list_del_entry.exit.i636.i:                     ; preds = %if.end.i.i633.i, %do.body418.i.__list_del_entry.exit.i636.i_crit_edge
  %325 = ptrtoint ptr %prev.i2.i.i321 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %prev.i2.i.i321, align 4
  %call.i.i.i635.i = call zeroext i1 @__list_add_valid(ptr noundef %277, ptr noundef %326, ptr noundef %granted.i) #6
  br i1 %call.i.i.i635.i, label %if.end.i.i.i638.i, label %__list_del_entry.exit.i636.i.list_move_tail.exit639.i_crit_edge

__list_del_entry.exit.i636.i.list_move_tail.exit639.i_crit_edge: ; preds = %__list_del_entry.exit.i636.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit639.i

if.end.i.i.i638.i:                                ; preds = %__list_del_entry.exit.i636.i
  call void @__sanitizer_cov_trace_pc() #8
  %327 = ptrtoint ptr %prev.i2.i.i321 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %277, ptr %prev.i2.i.i321, align 4
  %328 = ptrtoint ptr %277 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %granted.i, ptr %277, align 4
  %prev3.i.i.i637.i = getelementptr inbounds %struct.list_head, ptr %277, i32 0, i32 1
  %329 = ptrtoint ptr %prev3.i.i.i637.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %326, ptr %prev3.i.i.i637.i, align 4
  %330 = ptrtoint ptr %326 to i32
  call void @__asan_store4_noabort(i32 %330)
  store volatile ptr %277, ptr %326, align 4
  br label %list_move_tail.exit639.i

list_move_tail.exit639.i:                         ; preds = %if.end.i.i.i638.i, %__list_del_entry.exit.i636.i.list_move_tail.exit639.i_crit_edge
  %lksb447.i = getelementptr i8, ptr %277, i32 88
  %331 = ptrtoint ptr %lksb447.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %lksb447.i, align 8
  %tobool448.not.i = icmp eq ptr %332, null
  br i1 %tobool448.not.i, label %do.body458.i, label %list_move_tail.exit639.i.converting.backedge.i_crit_edge, !prof !83

list_move_tail.exit639.i.converting.backedge.i_crit_edge: ; preds = %list_move_tail.exit639.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %converting.backedge.i

do.body458.i:                                     ; preds = %list_move_tail.exit639.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #6, !srcloc !110
  unreachable

dlm_shuffle_lists.exit:                           ; preds = %for.end392.i.dlm_shuffle_lists.exit_crit_edge, %blocked.i.dlm_shuffle_lists.exit_crit_edge
  %333 = ptrtoint ptr %state97 to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %state97, align 2
  %335 = and i16 %334, -9
  store i16 %335, ptr %state97, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock25) #6
  call void @_raw_spin_unlock(ptr noundef %ast_lock) #6
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  call void @_raw_spin_lock(ptr noundef %spinlock25) #6
  call void @__dlm_lockres_calc_usage(ptr noundef %data, ptr noundef nonnull %add.ptr) #6
  call void @_raw_spin_unlock(ptr noundef %spinlock25) #6
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  br label %if.end153

if.end153:                                        ; preds = %dlm_shuffle_lists.exit, %if.then121
  call void @dlm_lockres_put(ptr noundef nonnull %add.ptr) #6
  %dec = add nsw i32 %n.0, -1
  %tobool154.not = icmp eq i32 %dec, 0
  br i1 %tobool154.not, label %cleanup.thread, label %if.end153.while.cond3_crit_edge

if.end153.while.cond3_crit_edge:                  ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond3

cleanup.thread:                                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m157) #6
  %336 = ptrtoint ptr %_m157 to i32
  call void @__asan_store8_noabort(i32 %336)
  store i64 320, ptr %_m157, align 8
  %337 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m157, ptr noundef nonnull @__func__.dlm_thread, i32 noundef 787, ptr noundef nonnull @.str.15, ptr noundef %338) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m157) #6
  br label %while.end

while.end:                                        ; preds = %cleanup.thread, %while.cond3.while.end_crit_edge
  %n.1 = phi i32 [ 0, %cleanup.thread ], [ %n.0, %while.cond3.while.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  call void @_raw_spin_lock(ptr noundef %ast_lock) #6
  %339 = ptrtoint ptr %pending_asts.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load volatile ptr, ptr %pending_asts.i, align 4
  %cmp.i.not347.i = icmp eq ptr %340, %pending_asts.i
  br i1 %cmp.i.not347.i, label %while.end.while.cond89.preheader.i_crit_edge, label %while.end.while.body.i346_crit_edge

while.end.while.body.i346_crit_edge:              ; preds = %while.end
  br label %while.body.i346

while.end.while.cond89.preheader.i_crit_edge:     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond89.preheader.i

while.cond89.preheader.i:                         ; preds = %if.end88.i.while.cond89.preheader.i_crit_edge, %while.end.while.cond89.preheader.i_crit_edge
  %341 = ptrtoint ptr %pending_basts.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load volatile ptr, ptr %pending_basts.i, align 4
  %cmp.i334.not348.i = icmp eq ptr %342, %pending_basts.i
  br i1 %cmp.i334.not348.i, label %while.cond89.preheader.i.dlm_flush_asts.exit_crit_edge, label %while.cond89.preheader.i.while.body94.i_crit_edge

while.cond89.preheader.i.while.body94.i_crit_edge: ; preds = %while.cond89.preheader.i
  br label %while.body94.i

while.cond89.preheader.i.dlm_flush_asts.exit_crit_edge: ; preds = %while.cond89.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_flush_asts.exit

while.body.i346:                                  ; preds = %if.end88.i.while.body.i346_crit_edge, %while.end.while.body.i346_crit_edge
  %343 = phi ptr [ %385, %if.end88.i.while.body.i346_crit_edge ], [ %340, %while.end.while.body.i346_crit_edge ]
  %add.ptr.i340 = getelementptr i8, ptr %343, i32 -24
  call void @dlm_lock_get(ptr noundef %add.ptr.i340) #6
  %lockres.i = getelementptr i8, ptr %343, i32 16
  %344 = ptrtoint ptr %lockres.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %lockres.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i337) #6
  %346 = ptrtoint ptr %_m.i337 to i32
  call void @__asan_store8_noabort(i32 %346)
  store i64 320, ptr %_m.i337, align 8
  %347 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %name, align 4
  %lockname.i341 = getelementptr inbounds %struct.dlm_lock_resource, ptr %345, i32 0, i32 1
  %349 = ptrtoint ptr %lockname.i341 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %lockname.i341, align 8
  %name4.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %345, i32 0, i32 1, i32 1
  %351 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %name4.i, align 8
  %353 = ptrtoint ptr %add.ptr.i340 to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %add.ptr.i340, align 8
  %shr.i.i342 = lshr i64 %354, 56
  %conv.i331.i = trunc i64 %shr.i.i342 to i32
  %and.i.i343 = and i64 %354, 72057594037927935
  %type.i344 = getelementptr i8, ptr %343, i32 -12
  %355 = ptrtoint ptr %type.i344 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %type.i344, align 4
  %conv10.i = sext i8 %356 to i32
  %node.i345 = getelementptr i8, ptr %343, i32 -9
  %357 = ptrtoint ptr %node.i345 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %node.i345, align 1
  %conv12.i = zext i8 %358 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i337, ptr noundef nonnull @__func__.dlm_flush_asts, i32 noundef 588, ptr noundef nonnull @.str.27, ptr noundef %348, i32 noundef %350, ptr noundef %352, i32 noundef %conv.i331.i, i64 noundef %and.i.i343, i32 noundef %conv10.i, i32 noundef %conv12.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i337) #6
  %ast_pending.i = getelementptr i8, ptr %343, i32 84
  %359 = ptrtoint ptr %ast_pending.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %bf.load.i = load i8, ptr %ast_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool14.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool14.not.i, label %do.body20.i, label %do.end28.i, !prof !83

do.body20.i:                                      ; preds = %while.body.i346
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 590, 0\0A.popsection", ""() #6, !srcloc !111
  unreachable

do.end28.i:                                       ; preds = %while.body.i346
  %call.i.i.i347 = call zeroext i1 @__list_del_entry_valid(ptr noundef %343) #6
  br i1 %call.i.i.i347, label %if.end.i.i.i350, label %do.end28.i.list_del_init.exit.i_crit_edge

do.end28.i.list_del_init.exit.i_crit_edge:        ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i

if.end.i.i.i350:                                  ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i348 = getelementptr inbounds %struct.list_head, ptr %343, i32 0, i32 1
  %360 = ptrtoint ptr %prev.i.i.i348 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %prev.i.i.i348, align 4
  %362 = ptrtoint ptr %343 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %343, align 4
  %prev1.i.i.i.i349 = getelementptr inbounds %struct.list_head, ptr %363, i32 0, i32 1
  %364 = ptrtoint ptr %prev1.i.i.i.i349 to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %361, ptr %prev1.i.i.i.i349, align 4
  %365 = ptrtoint ptr %361 to i32
  call void @__asan_store4_noabort(i32 %365)
  store volatile ptr %363, ptr %361, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i350, %do.end28.i.list_del_init.exit.i_crit_edge
  %366 = ptrtoint ptr %343 to i32
  call void @__asan_store4_noabort(i32 %366)
  store volatile ptr %343, ptr %343, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %343, i32 0, i32 1
  %367 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %343, ptr %prev.i3.i.i, align 4
  call void @dlm_lock_put(ptr noundef %add.ptr.i340) #6
  call void @_raw_spin_unlock(ptr noundef %ast_lock) #6
  %368 = ptrtoint ptr %node.i345 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %node.i345, align 1
  %370 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %node_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %369, i8 %371)
  %cmp.not.i = icmp eq i8 %369, %371
  br i1 %cmp.not.i, label %if.else.i, label %if.then35.i

if.then35.i:                                      ; preds = %list_del_init.exit.i
  %call36.i = call i32 @dlm_do_remote_ast(ptr noundef %data, ptr noundef %345, ptr noundef %add.ptr.i340) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.then39.i, label %if.then35.i.if.end66.i_crit_edge

if.then35.i.if.end66.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.then39.i:                                      ; preds = %if.then35.i
  %372 = zext i32 %call36.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %372, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call36.i, label %do.body54.i [
    i32 -512, label %if.then39.i.if.end66.i_crit_edge
    i32 -4, label %if.then39.i.if.end66.i_crit_edge607
    i32 -28, label %if.then39.i.if.end66.i_crit_edge608
    i32 -122, label %if.then39.i.if.end66.i_crit_edge609
  ]

if.then39.i.if.end66.i_crit_edge609:              ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.then39.i.if.end66.i_crit_edge608:              ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.then39.i.if.end66.i_crit_edge607:              ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.then39.i.if.end66.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

do.body54.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55.i) #6
  %373 = ptrtoint ptr %_m55.i to i32
  call void @__asan_store8_noabort(i32 %373)
  store i64 1152921504606847296, ptr %_m55.i, align 8
  %conv59.i = sext i32 %call36.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55.i, ptr noundef nonnull @__func__.dlm_flush_asts, i32 noundef 600, ptr noundef nonnull @.str.10, i64 noundef %conv59.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55.i) #6
  br label %if.end66.i

if.else.i:                                        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dlm_do_local_ast(ptr noundef %data, ptr noundef %345, ptr noundef %add.ptr.i340) #6
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.else.i, %do.body54.i, %if.then39.i.if.end66.i_crit_edge, %if.then39.i.if.end66.i_crit_edge607, %if.then39.i.if.end66.i_crit_edge608, %if.then39.i.if.end66.i_crit_edge609, %if.then35.i.if.end66.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %ast_lock) #6
  %374 = ptrtoint ptr %343 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load volatile ptr, ptr %343, align 4
  %cmp.i332.not.i = icmp eq ptr %375, %343
  br i1 %cmp.i332.not.i, label %if.else85.i, label %do.body72.i

do.body72.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m73.i) #6
  %376 = ptrtoint ptr %_m73.i to i32
  call void @__asan_store8_noabort(i32 %376)
  store i64 320, ptr %_m73.i, align 8
  %377 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %name, align 4
  %379 = ptrtoint ptr %lockname.i341 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %lockname.i341, align 8
  %381 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %name4.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m73.i, ptr noundef nonnull @__func__.dlm_flush_asts, i32 noundef 611, ptr noundef nonnull @.str.28, ptr noundef %378, i32 noundef %380, ptr noundef %382) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m73.i) #6
  br label %if.end88.i

if.else85.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  %383 = ptrtoint ptr %ast_pending.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %bf.load87.i = load i8, ptr %ast_pending.i, align 4
  %bf.clear.i = and i8 %bf.load87.i, 127
  store i8 %bf.clear.i, ptr %ast_pending.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else85.i, %do.body72.i
  call void @dlm_lock_put(ptr noundef %add.ptr.i340) #6
  call void @dlm_lockres_release_ast(ptr noundef %data, ptr noundef %345) #6
  %384 = ptrtoint ptr %pending_asts.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load volatile ptr, ptr %pending_asts.i, align 4
  %cmp.i.not.i351 = icmp eq ptr %385, %pending_asts.i
  br i1 %cmp.i.not.i351, label %if.end88.i.while.cond89.preheader.i_crit_edge, label %if.end88.i.while.body.i346_crit_edge

if.end88.i.while.body.i346_crit_edge:             ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i346

if.end88.i.while.cond89.preheader.i_crit_edge:    ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond89.preheader.i

while.body94.i:                                   ; preds = %if.end243.i.while.body94.i_crit_edge, %while.cond89.preheader.i.while.body94.i_crit_edge
  %386 = phi ptr [ %430, %if.end243.i.while.body94.i_crit_edge ], [ %342, %while.cond89.preheader.i.while.body94.i_crit_edge ]
  %add.ptr99.i = getelementptr i8, ptr %386, i32 -32
  call void @dlm_lock_get(ptr noundef %add.ptr99.i) #6
  %lockres100.i = getelementptr i8, ptr %386, i32 8
  %387 = ptrtoint ptr %lockres100.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %lockres100.i, align 8
  %bast_pending.i = getelementptr i8, ptr %386, i32 76
  %389 = ptrtoint ptr %bast_pending.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %bf.load102.i = load i8, ptr %bast_pending.i, align 4
  %390 = and i8 %bf.load102.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %390)
  %tobool106.not.i = icmp eq i8 %390, 0
  br i1 %tobool106.not.i, label %do.body116.i, label %do.end124.i, !prof !83

do.body116.i:                                     ; preds = %while.body94.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 628, 0\0A.popsection", ""() #6, !srcloc !112
  unreachable

do.end124.i:                                      ; preds = %while.body94.i
  %spinlock.i352 = getelementptr i8, ptr %386, i32 12
  call void @_raw_spin_lock(ptr noundef %spinlock.i352) #6
  %highest_blocked.i353 = getelementptr i8, ptr %386, i32 -18
  %391 = ptrtoint ptr %highest_blocked.i353 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %highest_blocked.i353, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %392)
  %cmp128.i = icmp slt i8 %392, 0
  br i1 %cmp128.i, label %do.body137.i, label %do.end145.i, !prof !83

do.body137.i:                                     ; preds = %do.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmthread.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 632, 0\0A.popsection", ""() #6, !srcloc !113
  unreachable

do.end145.i:                                      ; preds = %do.end124.i
  %393 = ptrtoint ptr %highest_blocked.i353 to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 -1, ptr %highest_blocked.i353, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock.i352) #6
  %call.i.i336.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %386) #6
  br i1 %call.i.i336.i, label %if.end.i.i339.i, label %do.end145.i.list_del_init.exit341.i_crit_edge

do.end145.i.list_del_init.exit341.i_crit_edge:    ; preds = %do.end145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit341.i

if.end.i.i339.i:                                  ; preds = %do.end145.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i337.i = getelementptr inbounds %struct.list_head, ptr %386, i32 0, i32 1
  %394 = ptrtoint ptr %prev.i.i337.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %prev.i.i337.i, align 4
  %396 = ptrtoint ptr %386 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %386, align 4
  %prev1.i.i.i338.i = getelementptr inbounds %struct.list_head, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %prev1.i.i.i338.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %395, ptr %prev1.i.i.i338.i, align 4
  %399 = ptrtoint ptr %395 to i32
  call void @__asan_store4_noabort(i32 %399)
  store volatile ptr %397, ptr %395, align 4
  br label %list_del_init.exit341.i

list_del_init.exit341.i:                          ; preds = %if.end.i.i339.i, %do.end145.i.list_del_init.exit341.i_crit_edge
  %400 = ptrtoint ptr %386 to i32
  call void @__asan_store4_noabort(i32 %400)
  store volatile ptr %386, ptr %386, align 4
  %prev.i3.i340.i = getelementptr inbounds %struct.list_head, ptr %386, i32 0, i32 1
  %401 = ptrtoint ptr %prev.i3.i340.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %386, ptr %prev.i3.i340.i, align 4
  call void @dlm_lock_put(ptr noundef %add.ptr99.i) #6
  call void @_raw_spin_unlock(ptr noundef %ast_lock) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m153.i) #6
  %402 = ptrtoint ptr %_m153.i to i32
  call void @__asan_store8_noabort(i32 %402)
  store i64 320, ptr %_m153.i, align 8
  %403 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %name, align 4
  %lockname158.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %388, i32 0, i32 1
  %405 = ptrtoint ptr %lockname158.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %lockname158.i, align 8
  %name161.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %388, i32 0, i32 1, i32 1
  %407 = ptrtoint ptr %name161.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %name161.i, align 8
  %409 = ptrtoint ptr %add.ptr99.i to i32
  call void @__asan_load8_noabort(i32 %409)
  %410 = load i64, ptr %add.ptr99.i, align 8
  %shr.i342.i = lshr i64 %410, 56
  %conv.i343.i = trunc i64 %shr.i342.i to i32
  %and.i344.i = and i64 %410, 72057594037927935
  %conv169.i = zext i8 %392 to i32
  %node171.i = getelementptr i8, ptr %386, i32 -17
  %411 = ptrtoint ptr %node171.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %node171.i, align 1
  %conv172.i = zext i8 %412 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m153.i, ptr noundef nonnull @__func__.dlm_flush_asts, i32 noundef 647, ptr noundef nonnull @.str.29, ptr noundef %404, i32 noundef %406, ptr noundef %408, i32 noundef %conv.i343.i, i64 noundef %and.i344.i, i32 noundef %conv169.i, i32 noundef %conv172.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m153.i) #6
  %413 = ptrtoint ptr %node171.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %node171.i, align 1
  %415 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %node_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %414, i8 %416)
  %cmp181.not.i = icmp eq i8 %414, %416
  br i1 %cmp181.not.i, label %if.else217.i, label %if.then183.i

if.then183.i:                                     ; preds = %list_del_init.exit341.i
  %call.i.i354 = call i32 @dlm_send_proxy_ast_msg(ptr noundef %data, ptr noundef %388, ptr noundef %add.ptr99.i, i32 noundef 1, i32 noundef %conv169.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i354)
  %cmp186.i = icmp slt i32 %call.i.i354, 0
  br i1 %cmp186.i, label %if.then188.i, label %if.then183.i.if.end219.i_crit_edge

if.then183.i.if.end219.i_crit_edge:               ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219.i

if.then188.i:                                     ; preds = %if.then183.i
  %417 = zext i32 %call.i.i354 to i64
  call void @__sanitizer_cov_trace_switch(i64 %417, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call.i.i354, label %do.body205.i [
    i32 -512, label %if.then188.i.if.end219.i_crit_edge
    i32 -4, label %if.then188.i.if.end219.i_crit_edge610
    i32 -28, label %if.then188.i.if.end219.i_crit_edge611
    i32 -122, label %if.then188.i.if.end219.i_crit_edge612
  ]

if.then188.i.if.end219.i_crit_edge612:            ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219.i

if.then188.i.if.end219.i_crit_edge611:            ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219.i

if.then188.i.if.end219.i_crit_edge610:            ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219.i

if.then188.i.if.end219.i_crit_edge:               ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219.i

do.body205.i:                                     ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m206.i) #6
  %418 = ptrtoint ptr %_m206.i to i32
  call void @__asan_store8_noabort(i32 %418)
  store i64 1152921504606847296, ptr %_m206.i, align 8
  %conv210.i = sext i32 %call.i.i354 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m206.i, ptr noundef nonnull @__func__.dlm_flush_asts, i32 noundef 652, ptr noundef nonnull @.str.10, i64 noundef %conv210.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m206.i) #6
  br label %if.end219.i

if.else217.i:                                     ; preds = %list_del_init.exit341.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dlm_do_local_bast(ptr noundef %data, ptr noundef %388, ptr noundef %add.ptr99.i, i32 noundef %conv169.i) #6
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.else217.i, %do.body205.i, %if.then188.i.if.end219.i_crit_edge, %if.then188.i.if.end219.i_crit_edge610, %if.then188.i.if.end219.i_crit_edge611, %if.then188.i.if.end219.i_crit_edge612, %if.then183.i.if.end219.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %ast_lock) #6
  %419 = ptrtoint ptr %386 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load volatile ptr, ptr %386, align 4
  %cmp.i345.not.i = icmp eq ptr %420, %386
  br i1 %cmp.i345.not.i, label %if.else238.i, label %do.body225.i

do.body225.i:                                     ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m226.i) #6
  %421 = ptrtoint ptr %_m226.i to i32
  call void @__asan_store8_noabort(i32 %421)
  store i64 320, ptr %_m226.i, align 8
  %422 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %name, align 4
  %424 = ptrtoint ptr %lockname158.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %lockname158.i, align 8
  %426 = ptrtoint ptr %name161.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %name161.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m226.i, ptr noundef nonnull @__func__.dlm_flush_asts, i32 noundef 663, ptr noundef nonnull @.str.30, ptr noundef %423, i32 noundef %425, ptr noundef %427) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m226.i) #6
  br label %if.end243.i

if.else238.i:                                     ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #8
  %428 = ptrtoint ptr %bast_pending.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %bf.load240.i = load i8, ptr %bast_pending.i, align 4
  %bf.clear241.i = and i8 %bf.load240.i, -65
  store i8 %bf.clear241.i, ptr %bast_pending.i, align 4
  br label %if.end243.i

if.end243.i:                                      ; preds = %if.else238.i, %do.body225.i
  call void @dlm_lock_put(ptr noundef %add.ptr99.i) #6
  call void @dlm_lockres_release_ast(ptr noundef %data, ptr noundef %388) #6
  %429 = ptrtoint ptr %pending_basts.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load volatile ptr, ptr %pending_basts.i, align 4
  %cmp.i334.not.i = icmp eq ptr %430, %pending_basts.i
  br i1 %cmp.i334.not.i, label %if.end243.i.dlm_flush_asts.exit_crit_edge, label %if.end243.i.while.body94.i_crit_edge

if.end243.i.while.body94.i_crit_edge:             ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body94.i

if.end243.i.dlm_flush_asts.exit_crit_edge:        ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_flush_asts.exit

dlm_flush_asts.exit:                              ; preds = %if.end243.i.dlm_flush_asts.exit_crit_edge, %while.cond89.preheader.i.dlm_flush_asts.exit_crit_edge
  call void @__wake_up(ptr noundef %ast_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  call void @_raw_spin_unlock(ptr noundef %ast_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1)
  %tobool167.not = icmp eq i32 %n.1, 0
  br i1 %tobool167.not, label %if.then168, label %if.end171

if.then168:                                       ; preds = %dlm_flush_asts.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 0) #6
  %call.i = call i32 @__cond_resched() #6
  br label %cleanup237

if.end171:                                        ; preds = %dlm_flush_asts.exit
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 804) #6
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  %431 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load volatile ptr, ptr %dirty_list, align 4
  %cmp.i.i.not = icmp eq ptr %432, %dirty_list
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  br i1 %cmp.i.i.not, label %lor.end, label %if.end171.cleanup237_crit_edge

if.end171.cleanup237_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup237

lor.end:                                          ; preds = %if.end171
  %call180 = call zeroext i1 @kthread_should_stop() #6
  br i1 %call180, label %lor.end.cleanup237_crit_edge, label %if.then196

lor.end.cleanup237_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup237

if.then196:                                       ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %433 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call198421 = call i32 @prepare_to_wait_event(ptr noundef %dlm_thread_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  %434 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load volatile ptr, ptr %dirty_list, align 4
  %cmp.i.i358.not422 = icmp eq ptr %435, %dirty_list
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  br i1 %cmp.i.i358.not422, label %if.then196.lor.end205_crit_edge, label %if.then196.for.end_crit_edge

if.then196.for.end_crit_edge:                     ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then196.lor.end205_crit_edge:                  ; preds = %if.then196
  br label %lor.end205

lor.end205:                                       ; preds = %cleanup230.lor.end205_crit_edge, %if.then196.lor.end205_crit_edge
  %call198424 = phi i32 [ %call198, %cleanup230.lor.end205_crit_edge ], [ %call198421, %if.then196.lor.end205_crit_edge ]
  %__ret197.0423 = phi i32 [ %call229, %cleanup230.lor.end205_crit_edge ], [ 400, %if.then196.lor.end205_crit_edge ]
  %call203 = call zeroext i1 @kthread_should_stop() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret197.0423)
  %tobool218.not = icmp eq i32 %__ret197.0423, 0
  %or.cond = select i1 %call203, i1 true, i1 %tobool218.not
  br i1 %or.cond, label %lor.end205.for.end_crit_edge, label %if.end225

lor.end205.for.end_crit_edge:                     ; preds = %lor.end205
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end225:                                        ; preds = %lor.end205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198424)
  %tobool226.not = icmp eq i32 %call198424, 0
  br i1 %tobool226.not, label %cleanup230, label %if.end225.__out_crit_edge

if.end225.__out_crit_edge:                        ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup230:                                       ; preds = %if.end225
  %call229 = call i32 @schedule_timeout(i32 noundef %__ret197.0423) #6
  %call198 = call i32 @prepare_to_wait_event(ptr noundef %dlm_thread_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  %436 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load volatile ptr, ptr %dirty_list, align 4
  %cmp.i.i358.not = icmp eq ptr %437, %dirty_list
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  br i1 %cmp.i.i358.not, label %cleanup230.lor.end205_crit_edge, label %cleanup230.for.end_crit_edge

cleanup230.for.end_crit_edge:                     ; preds = %cleanup230
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup230.lor.end205_crit_edge:                  ; preds = %cleanup230
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end205

for.end:                                          ; preds = %cleanup230.for.end_crit_edge, %lor.end205.for.end_crit_edge, %if.then196.for.end_crit_edge
  call void @finish_wait(ptr noundef %dlm_thread_wq, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end225.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %cleanup237

cleanup237:                                       ; preds = %__out, %lor.end.cleanup237_crit_edge, %if.end171.cleanup237_crit_edge, %if.then168
  %call1 = call zeroext i1 @kthread_should_stop() #6
  br i1 %call1, label %cleanup237.do.body241_crit_edge, label %cleanup237.while.body_crit_edge

cleanup237.while.body_crit_edge:                  ; preds = %cleanup237
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup237.do.body241_crit_edge:                  ; preds = %cleanup237
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body241

do.body241:                                       ; preds = %cleanup237.do.body241_crit_edge, %entry.do.body241_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m242) #6
  %438 = ptrtoint ptr %_m242 to i32
  call void @__asan_store8_noabort(i32 %438)
  store i64 320, ptr %_m242, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m242, ptr noundef nonnull @__func__.dlm_thread, i32 noundef 807, ptr noundef nonnull @.str.16) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m242) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_complete_thread(ptr nocapture noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm_thread_task = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 35
  %0 = ptrtoint ptr %dlm_thread_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm_thread_task, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4611686018427388224, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_complete_thread, i32 noundef 552, ptr noundef nonnull @.str.11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  %3 = ptrtoint ptr %dlm_thread_task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dlm_thread_task, align 4
  %call = call i32 @kthread_stop(ptr noundef %4) #6
  %5 = ptrtoint ptr %dlm_thread_task to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dlm_thread_task, align 4
  br label %if.end5

if.end5:                                          ; preds = %do.body, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_drop_lockres_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_is_host_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_lockres_reserve_ast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_queue_bast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_queue_ast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_do_remote_ast(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_do_local_ast(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_release_ast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_do_local_bast(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_send_proxy_ast_msg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !25, !27, !29, !30, !32, !33, !35, !37, !39, !41, !43, !44, !46, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !67, !69, !71}
!llvm.named.register.sp = !{!73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 50, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 58, i32 2}
!5 = !{ptr @__func__.__dlm_lockres_calc_usage, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 114, i32 4}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 123, i32 3}
!10 = !{ptr @__func__.__dlm_do_purge_lockres, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 157, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 165, i32 3}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 177, i32 3}
!17 = !{ptr @__func__.__dlm_dirty_lockres, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 528, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__func__.dlm_launch_thread, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 536, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 538, i32 25}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 541, i32 3}
!27 = !{ptr @__func__.dlm_complete_thread, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 552, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__func__.dlm_thread, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 686, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 730, i32 5}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 750, i32 5}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 786, i32 5}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 807, i32 2}
!41 = !{ptr @__func__.dlm_run_purge_list, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 316, i32 4}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__func__.dlm_purge_lockres, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 201, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 206, i32 4}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 233, i32 3}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 241, i32 3}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 260, i32 3}
!55 = !{ptr @__func__.dlm_shuffle_lists, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 361, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 366, i32 3}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 409, i32 3}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 471, i32 3}
!64 = !{ptr @__func__.dlm_flush_asts, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 583, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 609, i32 4}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 642, i32 3}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ocfs2/dlm/dlmthread.c", i32 661, i32 4}
!73 = !{!"sp"}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 2157180289, i64 2157180777, i64 2157180326, i64 2157180382, i64 2157180416, i64 2157180440, i64 2157180481, i64 2157180502, i64 2157180530, i64 2157180564}
!85 = !{i64 2157186265}
!86 = !{i64 2157191294, i64 2157191782, i64 2157191331, i64 2157191387, i64 2157191421, i64 2157191445, i64 2157191486, i64 2157191507, i64 2157191535, i64 2157191569}
!87 = !{i64 2157193252, i64 2157193741, i64 2157193289, i64 2157193345, i64 2157193379, i64 2157193403, i64 2157193444, i64 2157193465, i64 2157193493, i64 2157193527}
!88 = !{i64 2157195129, i64 2157195618, i64 2157195166, i64 2157195222, i64 2157195256, i64 2157195280, i64 2157195321, i64 2157195342, i64 2157195370, i64 2157195404}
!89 = !{i64 2148361813, i64 2148361845, i64 2148361874, i64 2148361908, i64 2148361939, i64 2148361962}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2157197702, i64 2157198191, i64 2157197739, i64 2157197795, i64 2157197829, i64 2157197853, i64 2157197894, i64 2157197915, i64 2157197943, i64 2157197977}
!92 = !{i64 2157199579, i64 2157200068, i64 2157199616, i64 2157199672, i64 2157199706, i64 2157199730, i64 2157199771, i64 2157199792, i64 2157199820, i64 2157199854}
!93 = !{i64 2157201807, i64 2157202296, i64 2157201844, i64 2157201900, i64 2157201934, i64 2157201958, i64 2157201999, i64 2157202020, i64 2157202048, i64 2157202082}
!94 = !{i64 2157251481, i64 2157251970, i64 2157251518, i64 2157251574, i64 2157251608, i64 2157251632, i64 2157251673, i64 2157251694, i64 2157251722, i64 2157251756}
!95 = !{i64 2157253358, i64 2157253847, i64 2157253395, i64 2157253451, i64 2157253485, i64 2157253509, i64 2157253550, i64 2157253571, i64 2157253599, i64 2157253633}
!96 = !{i64 2157204092, i64 2157204581, i64 2157204129, i64 2157204185, i64 2157204219, i64 2157204243, i64 2157204284, i64 2157204305, i64 2157204333, i64 2157204367}
!97 = !{i64 2157205969, i64 2157206458, i64 2157206006, i64 2157206062, i64 2157206096, i64 2157206120, i64 2157206161, i64 2157206182, i64 2157206210, i64 2157206244}
!98 = !{i64 2157208263, i64 2157208752, i64 2157208300, i64 2157208356, i64 2157208390, i64 2157208414, i64 2157208455, i64 2157208476, i64 2157208504, i64 2157208538}
!99 = !{i64 2157210849, i64 2157211338, i64 2157210886, i64 2157210942, i64 2157210976, i64 2157211000, i64 2157211041, i64 2157211062, i64 2157211090, i64 2157211124}
!100 = !{i64 2157273907, i64 2157274396, i64 2157273944, i64 2157274000, i64 2157274034, i64 2157274058, i64 2157274099, i64 2157274120, i64 2157274148, i64 2157274182}
!101 = !{i64 2157276143, i64 2157276632, i64 2157276180, i64 2157276236, i64 2157276270, i64 2157276294, i64 2157276335, i64 2157276356, i64 2157276384, i64 2157276418}
!102 = !{i64 2157277771, i64 2157278260, i64 2157277808, i64 2157277864, i64 2157277898, i64 2157277922, i64 2157277963, i64 2157277984, i64 2157278012, i64 2157278046}
!103 = !{i64 2157219909, i64 2157220398, i64 2157219946, i64 2157220002, i64 2157220036, i64 2157220060, i64 2157220101, i64 2157220122, i64 2157220150, i64 2157220184}
!104 = !{i64 2157221786, i64 2157222275, i64 2157221823, i64 2157221879, i64 2157221913, i64 2157221937, i64 2157221978, i64 2157221999, i64 2157222027, i64 2157222061}
!105 = !{i64 2157223500, i64 2157223989, i64 2157223537, i64 2157223593, i64 2157223627, i64 2157223651, i64 2157223692, i64 2157223713, i64 2157223741, i64 2157223775}
!106 = !{i64 2157227148, i64 2157227637, i64 2157227185, i64 2157227241, i64 2157227275, i64 2157227299, i64 2157227340, i64 2157227361, i64 2157227389, i64 2157227423}
!107 = !{i64 2157235342, i64 2157235831, i64 2157235379, i64 2157235435, i64 2157235469, i64 2157235493, i64 2157235534, i64 2157235555, i64 2157235583, i64 2157235617}
!108 = !{i64 2157237660, i64 2157238149, i64 2157237697, i64 2157237753, i64 2157237787, i64 2157237811, i64 2157237852, i64 2157237873, i64 2157237901, i64 2157237935}
!109 = !{i64 2157247207, i64 2157247696, i64 2157247244, i64 2157247300, i64 2157247334, i64 2157247358, i64 2157247399, i64 2157247420, i64 2157247448, i64 2157247482}
!110 = !{i64 2157249479, i64 2157249968, i64 2157249516, i64 2157249572, i64 2157249606, i64 2157249630, i64 2157249671, i64 2157249692, i64 2157249720, i64 2157249754}
!111 = !{i64 2157259046, i64 2157259535, i64 2157259083, i64 2157259139, i64 2157259173, i64 2157259197, i64 2157259238, i64 2157259259, i64 2157259287, i64 2157259321}
!112 = !{i64 2157267149, i64 2157267638, i64 2157267186, i64 2157267242, i64 2157267276, i64 2157267300, i64 2157267341, i64 2157267362, i64 2157267390, i64 2157267424}
!113 = !{i64 2157268789, i64 2157269278, i64 2157268826, i64 2157268882, i64 2157268916, i64 2157268940, i64 2157268981, i64 2157269002, i64 2157269030, i64 2157269064}
