; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlmfs/userdlm.c_pt.bc'
source_filename = "../fs/ocfs2/dlmfs/userdlm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ocfs2_locking_protocol = type { %struct.ocfs2_protocol_version, ptr, ptr, ptr }
%struct.ocfs2_protocol_version = type { i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.user_lock_res = type { %struct.spinlock, i32, [32 x i8], i32, i32, i32, i32, %struct.ocfs2_dlm_lksb, i32, i32, %struct.wait_queue_head, %struct.work_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ocfs2_dlm_lksb = type { %union.anon.2, ptr }
%union.anon.2 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.41, %struct.list_head, %struct.list_head, %union.anon.42 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.9, ptr }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { %struct.spinlock, i32 }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }

@__func__.user_dlm_cluster_lock = private unnamed_addr constant [22 x i8] c"user_dlm_cluster_lock\00", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockres %.*s: invalid request!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lockres %.*s, level %d, flags = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Dlm error %d while calling %s on resource %.*s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocfs2_dlm_lock\00", [17 x i8] zeroinitializer }, align 32
@__func__.user_dlm_cluster_unlock = private unnamed_addr constant [24 x i8] c"user_dlm_cluster_unlock\00", align 1
@user_dlm_lock_res_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&lockres->l_lock\00", [47 x i8] zeroinitializer }, align 32
@user_dlm_lock_res_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&lockres->l_event\00", [46 x i8] zeroinitializer }, align 32
@__func__.user_dlm_destroy_lock = private unnamed_addr constant [22 x i8] c"user_dlm_destroy_lock\00", align 1
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lockres %.*s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ocfs2_dlm_unlock\00", [47 x i8] zeroinitializer }, align 32
@user_dlm_lproto = internal global { %struct.ocfs2_locking_protocol, [16 x i8] } { %struct.ocfs2_locking_protocol { %struct.ocfs2_protocol_version { i8 1, i8 0 }, ptr @user_ast, ptr @user_bast, ptr @user_unlock_ast }, [16 x i8] zeroinitializer }, align 32
@__func__.user_dlm_register = private unnamed_addr constant [18 x i8] c"user_dlm_register\00", align 1
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/ocfs2/dlmfs/userdlm.c\00", [39 x i8] zeroinitializer }, align 32
@__user_dlm_queue_lockres.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&lockres->l_work)\00", [60 x i8] zeroinitializer }, align 32
@user_dlm_worker = external dso_local local_unnamed_addr global ptr, align 4
@__func__.user_dlm_unblock_lock = private unnamed_addr constant [22 x i8] c"user_dlm_unblock_lock\00", align 1
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"bug expression: !(lockres->l_flags & USER_LOCK_QUEUED)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Lockres %.*s, flags 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockres %.*s USER_LOCK_BLOCKED\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lockres %.*s USER_LOCK_IN_TEARDOWN\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lockres %.*s USER_LOCK_IN_CANCEL\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lockres %.*s, EX/PR Holders %u,%u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockres %.*s, EX Holders %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lockres %.*s, downconvert %d => %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.user_ast = private unnamed_addr constant [9 x i8] c"user_ast\00", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AST fired for lockres %.*s, level %d => %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"lksb status value of %u on lockres %.*s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bug expression: lockres->l_requested == DLM_LOCK_IV\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Lockres %.*s, requested ivmode. flags 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.user_bast = private unnamed_addr constant [10 x i8] c"user_bast\00", align 1
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"BAST fired for lockres %.*s, blocking %d, level %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.user_unlock_ast = private unnamed_addr constant [16 x i8] c"user_unlock_ast\00", align 1
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UNLOCK AST fired for lockres %.*s, flags 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dlm returns status %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 420, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 426, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 479, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 572, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 573, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 593, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 628, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"user_dlm_lproto\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 266, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 661, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 50, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 168, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 295, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 309, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 316, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 324, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 346, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 355, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 365, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 116, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 124, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 130, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 203, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 221, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [28 x i8] c"../fs/ocfs2/dlmfs/userdlm.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 225, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @user_dlm_lock_res_init.__key, ptr @.str.4, ptr @user_dlm_lock_res_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @user_dlm_lproto, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_dlm_lock_res_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_dlm_lock_res_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_dlm_lproto to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @user_dlm_cluster_lock(ptr noundef %lockres, i32 noundef %level, i32 noundef %lkm_flags) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %_m = alloca i64, align 8
  %_m5 = alloca i64, align 8
  %_m92 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %lockres, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %do.body [
    i32 5, label %entry.do.body4_crit_edge
    i32 3, label %entry.do.body4_crit_edge166
  ]

entry.do.body4_crit_edge166:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606847008, ptr %_m, align 8
  %l_namelen = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 3
  %4 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l_namelen, align 4
  %l_name = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 2
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.user_dlm_cluster_lock, i32 noundef 421, ptr noundef nonnull @.str, i32 noundef %5, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %bail

do.body4:                                         ; preds = %entry.do.body4_crit_edge, %entry.do.body4_crit_edge166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m5) #6
  %6 = ptrtoint ptr %_m5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 32800, ptr %_m5, align 8
  %l_namelen9 = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 3
  %7 = ptrtoint ptr %l_namelen9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_namelen9, align 4
  %l_name10 = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 2
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m5, ptr noundef nonnull @__func__.user_dlm_cluster_lock, i32 noundef 427, ptr noundef nonnull @.str.1, i32 noundef %8, ptr noundef %l_name10, i32 noundef %level, i32 noundef %lkm_flags) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m5) #6
  %9 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i162 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i162 to ptr
  %task163 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task163 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task163, align 8
  %stack.i.i164 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stack.i.i164 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stack.i.i164, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i165 = icmp eq i32 %17, 0
  br i1 %tobool.not.i165, label %signal_pending.exit.lr.ph, label %do.body4.bail_crit_edge, !prof !74

do.body4.bail_crit_edge:                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

signal_pending.exit.lr.ph:                        ; preds = %do.body4
  %l_flags = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 1
  %l_level = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 4
  %l_blocking.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 9
  %l_event.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 10
  %l_requested = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 8
  %l_lksb = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 7
  br label %signal_pending.exit

signal_pending.exit:                              ; preds = %again.backedge.signal_pending.exit_crit_edge, %signal_pending.exit.lr.ph
  %18 = phi ptr [ %14, %signal_pending.exit.lr.ph ], [ %30, %again.backedge.signal_pending.exit_crit_edge ]
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool17.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool17.not, label %if.end19, label %signal_pending.exit.bail_crit_edge

signal_pending.exit.bail_crit_edge:               ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

if.end19:                                         ; preds = %signal_pending.exit
  call void @_raw_spin_lock(ptr noundef %lockres) #6
  %21 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %l_flags, align 4
  %and20 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end26_crit_edge, label %land.lhs.true22

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true22:                                  ; preds = %if.end19
  %23 = ptrtoint ptr %l_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %l_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %level)
  %cmp23 = icmp slt i32 %24, %level
  br i1 %cmp23, label %if.then24, label %land.lhs.true22.if.end26_crit_edge

land.lhs.true22.if.end26_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  call fastcc void @user_wait_on_busy_lock(ptr noundef %lockres)
  br label %again.backedge

again.backedge:                                   ; preds = %if.end105, %for.end.i, %if.then33.again.backedge_crit_edge, %if.then24
  %25 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stack.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 256
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %again.backedge.signal_pending.exit_crit_edge, label %again.backedge.bail_crit_edge, !prof !74

again.backedge.bail_crit_edge:                    ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

again.backedge.signal_pending.exit_crit_edge:     ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %signal_pending.exit

if.end26:                                         ; preds = %land.lhs.true22.if.end26_crit_edge, %if.end19.if.end26_crit_edge
  %and28 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end35_crit_edge, label %user_may_continue_on_blocked_lock.exit

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

user_may_continue_on_blocked_lock.exit:           ; preds = %if.end26
  %34 = ptrtoint ptr %l_blocking.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %l_blocking.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %switch.selectcmp.i.i = icmp eq i32 %35, 3
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 3, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %switch.selectcmp5.i.i = icmp eq i32 %35, 5
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 0, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select6.i.i, i32 %level)
  %cmp.i.not = icmp slt i32 %switch.select6.i.i, %level
  br i1 %cmp.i.not, label %if.then33, label %user_may_continue_on_blocked_lock.exit.if.end35_crit_edge

user_may_continue_on_blocked_lock.exit.if.end35_crit_edge: ; preds = %user_may_continue_on_blocked_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then33:                                        ; preds = %user_may_continue_on_blocked_lock.exit
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 58) #6
  call void @_raw_spin_lock(ptr noundef %lockres) #6
  %36 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %l_flags, align 4
  %and.i.i = and i32 %37, 4
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i153 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i153, label %if.then33.again.backedge_crit_edge, label %if.end.i154

if.then33.again.backedge_crit_edge:               ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %again.backedge

if.end.i154:                                      ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %38 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %call418.i = call i32 @prepare_to_wait_event(ptr noundef %l_event.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #6
  call void @_raw_spin_lock(ptr noundef %lockres) #6
  %39 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %l_flags, align 4
  %and.i1519.i = and i32 %40, 4
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1519.i)
  %tobool6.not20.i = icmp eq i32 %and.i1519.i, 0
  br i1 %tobool6.not20.i, label %if.end.i154.for.end.i_crit_edge, label %if.end.i154.cleanup.i_crit_edge

if.end.i154.cleanup.i_crit_edge:                  ; preds = %if.end.i154
  br label %cleanup.i

if.end.i154.for.end.i_crit_edge:                  ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i154.cleanup.i_crit_edge
  call void @schedule() #6
  %call4.i = call i32 @prepare_to_wait_event(ptr noundef %l_event.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #6
  call void @_raw_spin_lock(ptr noundef %lockres) #6
  %41 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %l_flags, align 4
  %and.i15.i = and i32 %42, 4
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  %tobool6.not.i = icmp eq i32 %and.i15.i, 0
  br i1 %tobool6.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i154.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %l_event.i, ptr noundef nonnull %__wq_entry.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br label %again.backedge

if.end35:                                         ; preds = %user_may_continue_on_blocked_lock.exit.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %43 = ptrtoint ptr %l_level to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %l_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %level)
  %cmp37 = icmp slt i32 %44, %level
  br i1 %cmp37, label %if.then38, label %if.end106

if.then38:                                        ; preds = %if.end35
  %45 = ptrtoint ptr %l_requested to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %level, ptr %l_requested, align 4
  %or45 = or i32 %22, 2
  %46 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or45, ptr %l_flags, align 4
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  %47 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %level, label %do.end78 [
    i32 -1, label %do.body52
    i32 0, label %do.body70
  ], !prof !75

do.body52:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 469, 0\0A.popsection", ""() #6, !srcloc !76
  unreachable

do.body70:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 470, 0\0A.popsection", ""() #6, !srcloc !77
  unreachable

do.end78:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp40.not = icmp eq i32 %44, -1
  %spec.select.v = select i1 %cmp40.not, i32 8, i32 12
  %spec.select = or i32 %spec.select.v, %lkm_flags
  %48 = ptrtoint ptr %l_namelen9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %l_namelen9, align 4
  %call82 = call i32 @ocfs2_dlm_lock(ptr noundef %1, i32 noundef %level, ptr noundef %l_lksb, i32 noundef %spec.select, ptr noundef %l_name10, i32 noundef %49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end105, label %if.then84

if.then84:                                        ; preds = %do.end78
  %and85 = and i32 %lkm_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call82)
  %cmp88.not = icmp eq i32 %call82, -11
  %or.cond = select i1 %tobool86.not, i1 true, i1 %cmp88.not
  br i1 %or.cond, label %if.then84.if.end104_crit_edge, label %do.body91

if.then84.if.end104_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

do.body91:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m92) #6
  %50 = ptrtoint ptr %_m92 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1152921504606847008, ptr %_m92, align 8
  %51 = ptrtoint ptr %l_namelen9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %l_namelen9, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m92, ptr noundef nonnull @__func__.user_dlm_cluster_lock, i32 noundef 480, ptr noundef nonnull @.str.2, i32 noundef %call82, ptr noundef nonnull @.str.3, i32 noundef %52, ptr noundef %l_name10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m92) #6
  br label %if.end104

if.end104:                                        ; preds = %do.body91, %if.then84.if.end104_crit_edge
  call void @_raw_spin_lock(ptr noundef %lockres) #6
  %53 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %l_flags, align 4
  %and.i156 = and i32 %54, -3
  store i32 %and.i156, ptr %l_flags, align 4
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  br label %bail

if.end105:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @user_wait_on_busy_lock(ptr noundef %lockres)
  br label %again.backedge

if.end106:                                        ; preds = %if.end35
  %55 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %level, label %do.body.i [
    i32 5, label %sw.bb.i
    i32 3, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %l_ex_holders.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 6
  br label %user_dlm_inc_holders.exit

sw.bb1.i:                                         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %l_ro_holders.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 5
  br label %user_dlm_inc_holders.exit

do.body.i:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 394, 0\0A.popsection", ""() #6, !srcloc !78
  unreachable

user_dlm_inc_holders.exit:                        ; preds = %sw.bb1.i, %sw.bb.i
  %l_ro_holders.sink6.i = phi ptr [ %l_ro_holders.i, %sw.bb1.i ], [ %l_ex_holders.i, %sw.bb.i ]
  %56 = ptrtoint ptr %l_ro_holders.sink6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %l_ro_holders.sink6.i, align 4
  %inc2.i = add i32 %57, 1
  store i32 %inc2.i, ptr %l_ro_holders.sink6.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  br label %bail

bail:                                             ; preds = %user_dlm_inc_holders.exit, %if.end104, %again.backedge.bail_crit_edge, %signal_pending.exit.bail_crit_edge, %do.body4.bail_crit_edge, %do.body
  %status.0 = phi i32 [ -22, %do.body ], [ %call82, %if.end104 ], [ 0, %user_dlm_inc_holders.exit ], [ -512, %do.body4.bail_crit_edge ], [ -512, %again.backedge.bail_crit_edge ], [ -512, %signal_pending.exit.bail_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @user_wait_on_busy_lock(ptr noundef %lockres) unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 51) #6
  tail call void @_raw_spin_lock(ptr noundef %lockres) #6
  %l_flags.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 1
  %0 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_flags.i, align 4
  %and.i = and i32 %1, 2
  tail call void @_raw_spin_unlock(ptr noundef %lockres) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %if.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %l_event = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 10
  %call418 = call i32 @prepare_to_wait_event(ptr noundef %l_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  call void @_raw_spin_lock(ptr noundef %lockres) #6
  %3 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_flags.i, align 4
  %and.i1519 = and i32 %4, 2
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1519)
  %tobool6.not20 = icmp eq i32 %and.i1519, 0
  br i1 %tobool6.not20, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #6
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %l_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  call void @_raw_spin_lock(ptr noundef %lockres) #6
  %5 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_flags.i, align 4
  %and.i15 = and i32 %6, 2
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  %tobool6.not = icmp eq i32 %and.i15, 0
  br i1 %tobool6.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %l_event, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %do.end10

do.end10:                                         ; preds = %for.end, %entry.do.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_dlm_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @user_dlm_cluster_unlock(ptr noundef %lockres, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %level, label %do.body [
    i32 5, label %entry.if.end3_crit_edge
    i32 3, label %entry.if.end3_crit_edge16
  ]

entry.if.end3_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606847008, ptr %_m, align 8
  %l_namelen = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 3
  %2 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l_namelen, align 4
  %l_name = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 2
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.user_dlm_cluster_unlock, i32 noundef 520, ptr noundef nonnull @.str, i32 noundef %3, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %return

if.end3:                                          ; preds = %entry.if.end3_crit_edge, %entry.if.end3_crit_edge16
  tail call void @_raw_spin_lock(ptr noundef %lockres) #6
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %level, label %do.body29.i [
    i32 5, label %do.body.i
    i32 3, label %do.body10.i
  ]

do.body.i:                                        ; preds = %if.end3
  %l_ex_holders.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 6
  %5 = ptrtoint ptr %l_ex_holders.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_ex_holders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body.i.user_dlm_dec_holders.exit_crit_edge, !prof !79

do.body.i.user_dlm_dec_holders.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %user_dlm_dec_holders.exit

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 502, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

do.body10.i:                                      ; preds = %if.end3
  %l_ro_holders.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 5
  %7 = ptrtoint ptr %l_ro_holders.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_ro_holders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not.i = icmp eq i32 %8, 0
  br i1 %tobool11.not.i, label %do.body21.i, label %do.body10.i.user_dlm_dec_holders.exit_crit_edge, !prof !79

do.body10.i.user_dlm_dec_holders.exit_crit_edge:  ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %user_dlm_dec_holders.exit

do.body21.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #6, !srcloc !81
  unreachable

do.body29.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 510, 0\0A.popsection", ""() #6, !srcloc !82
  unreachable

user_dlm_dec_holders.exit:                        ; preds = %do.body10.i.user_dlm_dec_holders.exit_crit_edge, %do.body.i.user_dlm_dec_holders.exit_crit_edge
  %.sink.i = phi i32 [ %6, %do.body.i.user_dlm_dec_holders.exit_crit_edge ], [ %8, %do.body10.i.user_dlm_dec_holders.exit_crit_edge ]
  %l_ro_holders.sink.i = phi ptr [ %l_ex_holders.i, %do.body.i.user_dlm_dec_holders.exit_crit_edge ], [ %l_ro_holders.i, %do.body10.i.user_dlm_dec_holders.exit_crit_edge ]
  %dec28.i = add i32 %.sink.i, -1
  %9 = ptrtoint ptr %l_ro_holders.sink.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec28.i, ptr %l_ro_holders.sink.i, align 4
  %l_flags.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 1
  %10 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %l_flags.i, align 4
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i12 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i12, label %user_dlm_dec_holders.exit.__user_dlm_cond_queue_lockres.exit_crit_edge, label %if.end.i

user_dlm_dec_holders.exit.__user_dlm_cond_queue_lockres.exit_crit_edge: ; preds = %user_dlm_dec_holders.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__user_dlm_cond_queue_lockres.exit

if.end.i:                                         ; preds = %user_dlm_dec_holders.exit
  %l_blocking.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 9
  %12 = ptrtoint ptr %l_blocking.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %l_blocking.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %13, label %do.body.i15 [
    i32 5, label %sw.bb.i
    i32 3, label %sw.epilog.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %l_ex_holders.i13 = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 6
  %15 = ptrtoint ptr %l_ex_holders.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %l_ex_holders.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %sw.bb.i.__user_dlm_cond_queue_lockres.exit_crit_edge

sw.bb.i.__user_dlm_cond_queue_lockres.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__user_dlm_cond_queue_lockres.exit

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %l_ro_holders.i14 = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 5
  %17 = ptrtoint ptr %l_ro_holders.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %l_ro_holders.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.not.i, label %land.lhs.true.i.if.then14.i_crit_edge, label %land.lhs.true.i.__user_dlm_cond_queue_lockres.exit_crit_edge

land.lhs.true.i.__user_dlm_cond_queue_lockres.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__user_dlm_cond_queue_lockres.exit

land.lhs.true.i.if.then14.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.i

do.body.i15:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #6, !srcloc !83
  unreachable

sw.epilog.i:                                      ; preds = %if.end.i
  %l_ex_holders6.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 6
  %19 = ptrtoint ptr %l_ex_holders6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %l_ex_holders6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7.not.not.i = icmp eq i32 %20, 0
  br i1 %tobool7.not.not.i, label %sw.epilog.i.if.then14.i_crit_edge, label %sw.epilog.i.__user_dlm_cond_queue_lockres.exit_crit_edge

sw.epilog.i.__user_dlm_cond_queue_lockres.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__user_dlm_cond_queue_lockres.exit

sw.epilog.i.if.then14.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.i

if.then14.i:                                      ; preds = %sw.epilog.i.if.then14.i_crit_edge, %land.lhs.true.i.if.then14.i_crit_edge
  tail call fastcc void @__user_dlm_queue_lockres(ptr noundef %lockres) #6
  br label %__user_dlm_cond_queue_lockres.exit

__user_dlm_cond_queue_lockres.exit:               ; preds = %if.then14.i, %sw.epilog.i.__user_dlm_cond_queue_lockres.exit_crit_edge, %land.lhs.true.i.__user_dlm_cond_queue_lockres.exit_crit_edge, %sw.bb.i.__user_dlm_cond_queue_lockres.exit_crit_edge, %user_dlm_dec_holders.exit.__user_dlm_cond_queue_lockres.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lockres) #6
  br label %return

return:                                           ; preds = %__user_dlm_cond_queue_lockres.exit, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @user_dlm_write_lvb(ptr noundef %inode, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_lockres = getelementptr i8, ptr %inode, i32 -292
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len)
  %cmp = icmp ugt i32 %len, 64
  br i1 %cmp, label %do.body2, label %do.end7, !prof !79

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 537, 0\0A.popsection", ""() #6, !srcloc !84
  unreachable

do.end7:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %ip_lockres) #6
  %l_level = getelementptr i8, ptr %inode, i32 -208
  %0 = ptrtoint ptr %l_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp9 = icmp slt i32 %1, 5
  br i1 %cmp9, label %do.body17, label %do.end25, !prof !79

do.body17:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 541, 0\0A.popsection", ""() #6, !srcloc !85
  unreachable

do.end25:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  %l_lksb = getelementptr i8, ptr %inode, i32 -196
  %call26 = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb) #6
  %2 = call ptr @memcpy(ptr %call26, ptr %val, i32 %len)
  tail call void @_raw_spin_unlock(ptr noundef %ip_lockres) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_dlm_lvb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @user_dlm_read_lvb(ptr noundef %inode, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_lockres = getelementptr i8, ptr %inode, i32 -292
  tail call void @_raw_spin_lock(ptr noundef %ip_lockres) #6
  %l_level = getelementptr i8, ptr %inode, i32 -208
  %0 = ptrtoint ptr %l_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %do.body2, label %do.end7, !prof !79

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end7:                                          ; preds = %entry
  %l_lksb = getelementptr i8, ptr %inode, i32 -196
  %call8 = tail call i32 @ocfs2_dlm_lvb_valid(ptr noundef %l_lksb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end7.if.end13_crit_edge, label %if.then10

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call ptr @ocfs2_dlm_lvb(ptr noundef %l_lksb) #6
  %2 = call ptr @memcpy(ptr %val, ptr %call12, i32 64)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.end7.if.end13_crit_edge
  %3 = xor i1 %tobool9.not, true
  tail call void @_raw_spin_unlock(ptr noundef %ip_lockres) #6
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_dlm_lvb_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @user_dlm_lock_res_init(ptr noundef %lockres, ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %lockres, i32 0, i32 284)
  tail call void @__raw_spin_lock_init(ptr noundef %lockres, ptr noundef nonnull @.str.4, ptr noundef nonnull @user_dlm_lock_res_init.__key, i16 noundef signext 3) #6
  %l_event = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %l_event, ptr noundef nonnull @.str.6, ptr noundef nonnull @user_dlm_lock_res_init.__key.5) #6
  %l_level = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 4
  %1 = ptrtoint ptr %l_level to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %l_level, align 4
  %l_requested = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 8
  %2 = ptrtoint ptr %l_requested to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %l_requested, align 4
  %l_blocking = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 9
  %3 = ptrtoint ptr %l_blocking to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %l_blocking, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %4 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp = icmp ugt i32 %5, 31
  br i1 %cmp, label %do.body5, label %do.end9, !prof !79

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 579, 0\0A.popsection", ""() #6, !srcloc !87
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %l_name = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 2
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %8 = call ptr @memcpy(ptr %l_name, ptr %7, i32 %5)
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  %l_namelen = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 3
  %11 = ptrtoint ptr %l_namelen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %l_namelen, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @user_dlm_destroy_lock(ptr noundef %lockres) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m33 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %lockres, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 32800, ptr %_m, align 8
  %l_namelen = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 3
  %3 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_namelen, align 4
  %l_name = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 2
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.user_dlm_destroy_lock, i32 noundef 593, ptr noundef nonnull @.str.7, i32 noundef %4, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  call void @_raw_spin_lock(ptr noundef %lockres) #6
  %l_flags = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 1
  %5 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_flags, align 4
  %and1 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  br label %cleanup

if.end5:                                          ; preds = %entry
  %or = or i32 %6, 8
  %7 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %l_flags, align 4
  %and871 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and871)
  %tobool9.not72 = icmp eq i32 %and871, 0
  br i1 %tobool9.not72, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end5.while.body_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  call fastcc void @user_wait_on_busy_lock(ptr noundef %lockres)
  call void @_raw_spin_lock(ptr noundef %lockres) #6
  %8 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l_flags, align 4
  %and8 = and i32 %9, 2
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end5.while.end_crit_edge
  %.lcssa = phi i32 [ %or, %if.end5.while.end_crit_edge ], [ %9, %while.body.while.end_crit_edge ]
  %l_ro_holders = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 5
  %10 = ptrtoint ptr %l_ro_holders to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %l_ro_holders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %while.end.if.then14_crit_edge

while.end.if.then14_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false:                                    ; preds = %while.end
  %l_ex_holders = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 6
  %12 = ptrtoint ptr %l_ex_holders to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %l_ex_holders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end16, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %while.end.if.then14_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %and18 = and i32 %.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %and24 = and i32 %.lcssa, -4
  %or26 = or i32 %and24, 2
  %14 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or26, ptr %l_flags, align 4
  call void @_raw_spin_unlock(ptr noundef %lockres) #6
  %l_lksb = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 7
  %call28 = call i32 @ocfs2_dlm_unlock(ptr noundef %1, ptr noundef %l_lksb, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end45, label %do.body32

do.body32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m33) #6
  %15 = ptrtoint ptr %_m33 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606847008, ptr %_m33, align 8
  %16 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l_namelen, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m33, ptr noundef nonnull @__func__.user_dlm_destroy_lock, i32 noundef 628, ptr noundef nonnull @.str.2, i32 noundef %call28, ptr noundef nonnull @.str.8, i32 noundef %17, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m33) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @user_wait_on_busy_lock(ptr noundef %lockres)
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.body32, %if.then20, %if.then14, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -16, %if.then14 ], [ %call28, %do.body32 ], [ 0, %if.end45 ], [ 0, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_dlm_unlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @user_dlm_set_locking_protocol() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ocfs2_stack_glue_set_max_proto_version(ptr noundef nonnull @user_dlm_lproto) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_stack_glue_set_max_proto_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @user_dlm_register(ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  %conn = alloca ptr, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conn) #6
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn, align 4, !annotation !88
  %name1 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1, align 8
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %name, align 8
  %call = call i32 @ocfs2_cluster_connect_agnostic(ptr noundef %2, i32 noundef %4, ptr noundef nonnull @user_dlm_lproto, ptr noundef nonnull @user_dlm_recovery_handler_noop, ptr noundef null, ptr noundef nonnull %conn) #6
  %5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call, label %do.body [
    i32 0, label %cond.false
    i32 -512, label %entry.cond.true_crit_edge
    i32 -4, label %entry.cond.true_crit_edge27
    i32 524289, label %entry.cond.true_crit_edge28
    i32 -28, label %entry.cond.true_crit_edge29
    i32 -122, label %entry.cond.true_crit_edge30
  ]

entry.cond.true_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606847008, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.user_dlm_register, i32 noundef 661, ptr noundef nonnull @.str.9, i64 noundef %conv) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %cond.true

cond.true:                                        ; preds = %do.body, %entry.cond.true_crit_edge, %entry.cond.true_crit_edge27, %entry.cond.true_crit_edge28, %entry.cond.true_crit_edge29, %entry.cond.true_crit_edge30
  %7 = inttoptr i32 %call to ptr
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conn, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ %9, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conn) #6
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_cluster_connect_agnostic(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @user_dlm_recovery_handler_noop(i32 noundef %node_num, ptr nocapture noundef %recovery_data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @user_dlm_unregister(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ocfs2_cluster_disconnect(ptr noundef %conn, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_cluster_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__user_dlm_queue_lockres(ptr noundef %lockres) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %l_flags = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 1
  %0 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %ip_vfs_inode.i.i = getelementptr i8, ptr %lockres, i32 292
  %call1.i = tail call ptr @igrab(ptr noundef %ip_vfs_inode.i.i) #6
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.body.i, label %user_dlm_grab_inode_ref.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 158, 0\0A.popsection", ""() #6, !srcloc !89
  unreachable

user_dlm_grab_inode_ref.exit:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %l_work = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 11
  tail call void @__init_work(ptr noundef %l_work, i32 noundef 0) #6
  %2 = ptrtoint ptr %l_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %l_work, align 4
  %lockdep_map = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @__user_dlm_queue_lockres.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry4 = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 11, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.user_lock_res, ptr %lockres, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @user_dlm_unblock_lock, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @user_dlm_worker to i32))
  %6 = load ptr, ptr @user_dlm_worker, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %l_work) #6
  %7 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_flags, align 4
  %or = or i32 %8, 16
  store i32 %or, ptr %l_flags, align 4
  br label %if.end

if.end:                                           ; preds = %user_dlm_grab_inode_ref.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @user_dlm_unblock_lock(ptr noundef %work) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m6 = alloca i64, align 8
  %_m14 = alloca i64, align 8
  %_m41 = alloca i64, align 8
  %_m58 = alloca i64, align 8
  %_m79 = alloca i64, align 8
  %_m98 = alloca i64, align 8
  %_m117 = alloca i64, align 8
  %_m138 = alloca i64, align 8
  %_m155 = alloca i64, align 8
  %_m175 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -240
  %add.ptr.i = getelementptr i8, ptr %work, i32 -244
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 32, ptr %_m, align 8
  %l_namelen = getelementptr i8, ptr %work, i32 -160
  %3 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_namelen, align 4
  %l_name = getelementptr i8, ptr %work, i32 -192
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 291, ptr noundef nonnull @.str.7, i32 noundef %4, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  call void @_raw_spin_lock(ptr noundef %add.ptr) #6
  %l_flags = getelementptr i8, ptr %work, i32 -196
  %5 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_flags, align 4
  %and2 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.body5, label %do.end33

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m6) #6
  %7 = ptrtoint ptr %_m6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606847008, ptr %_m6, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m6, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 297, ptr noundef nonnull @.str.12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m14) #6
  %8 = ptrtoint ptr %_m14 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606847008, ptr %_m14, align 8
  %9 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l_namelen, align 4
  %11 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l_flags, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m14, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 297, ptr noundef nonnull @.str.13, i32 noundef %10, ptr noundef %l_name, i32 noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m14) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 297, 0\0A.popsection", ""() #6, !srcloc !90
  unreachable

do.end33:                                         ; preds = %entry
  %and35 = and i32 %6, -17
  %13 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and35, ptr %l_flags, align 4
  %and37 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body40, label %if.end52

do.body40:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m41) #6
  %14 = ptrtoint ptr %_m41 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 32800, ptr %_m41, align 8
  %15 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %l_namelen, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m41, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 310, ptr noundef nonnull @.str.14, i32 noundef %16, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m41) #6
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #6
  br label %drop_ref

if.end52:                                         ; preds = %do.end33
  %and54 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end69, label %do.body57

do.body57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m58) #6
  %17 = ptrtoint ptr %_m58 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 32800, ptr %_m58, align 8
  %18 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %l_namelen, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m58, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 317, ptr noundef nonnull @.str.15, i32 noundef %19, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m58) #6
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #6
  br label %drop_ref

if.end69:                                         ; preds = %if.end52
  %and71 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end111, label %if.then73

if.then73:                                        ; preds = %if.end69
  %and75 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end90, label %do.body78

do.body78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m79) #6
  %20 = ptrtoint ptr %_m79 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 32800, ptr %_m79, align 8
  %21 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %l_namelen, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m79, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 325, ptr noundef nonnull @.str.16, i32 noundef %22, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m79) #6
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #6
  br label %drop_ref

if.end90:                                         ; preds = %if.then73
  %or = or i32 %and35, 32
  %23 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %l_flags, align 4
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #6
  %l_lksb = getelementptr i8, ptr %work, i32 -144
  %call93 = call i32 @ocfs2_dlm_unlock(ptr noundef %1, ptr noundef %l_lksb, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end90.drop_ref_crit_edge, label %do.body97

if.end90.drop_ref_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop_ref

do.body97:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m98) #6
  %24 = ptrtoint ptr %_m98 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1152921504606847008, ptr %_m98, align 8
  %25 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %l_namelen, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m98, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 336, ptr noundef nonnull @.str.2, i32 noundef %call93, ptr noundef nonnull @.str.8, i32 noundef %26, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m98) #6
  br label %drop_ref

if.end111:                                        ; preds = %if.end69
  %l_blocking = getelementptr i8, ptr %work, i32 -56
  %27 = ptrtoint ptr %l_blocking to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %l_blocking, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %28, label %if.end111.if.end149_crit_edge [
    i32 5, label %land.lhs.true
    i32 3, label %land.lhs.true132
  ]

if.end111.if.end149_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

land.lhs.true:                                    ; preds = %if.end111
  %l_ex_holders = getelementptr i8, ptr %work, i32 -148
  %30 = ptrtoint ptr %l_ex_holders to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %l_ex_holders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool112.not = icmp eq i32 %31, 0
  br i1 %tobool112.not, label %lor.lhs.false, label %land.lhs.true.if.then114_crit_edge

land.lhs.true.if.then114_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then114

lor.lhs.false:                                    ; preds = %land.lhs.true
  %l_ro_holders = getelementptr i8, ptr %work, i32 -152
  %32 = ptrtoint ptr %l_ro_holders to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %l_ro_holders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool113.not = icmp eq i32 %33, 0
  br i1 %tobool113.not, label %lor.lhs.false.if.end149_crit_edge, label %lor.lhs.false.if.then114_crit_edge

lor.lhs.false.if.then114_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then114

lor.lhs.false.if.end149_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then114:                                       ; preds = %lor.lhs.false.if.then114_crit_edge, %land.lhs.true.if.then114_crit_edge
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m117) #6
  %34 = ptrtoint ptr %_m117 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 32800, ptr %_m117, align 8
  %35 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %l_namelen, align 4
  %37 = ptrtoint ptr %l_ex_holders to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %l_ex_holders, align 4
  %l_ro_holders125 = getelementptr i8, ptr %work, i32 -152
  %39 = ptrtoint ptr %l_ro_holders125 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %l_ro_holders125, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m117, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 348, ptr noundef nonnull @.str.17, i32 noundef %36, ptr noundef %l_name, i32 noundef %38, i32 noundef %40) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m117) #6
  br label %drop_ref

land.lhs.true132:                                 ; preds = %if.end111
  %l_ex_holders133 = getelementptr i8, ptr %work, i32 -148
  %41 = ptrtoint ptr %l_ex_holders133 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %l_ex_holders133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool134.not = icmp eq i32 %42, 0
  br i1 %tobool134.not, label %land.lhs.true132.if.end149_crit_edge, label %if.then135

land.lhs.true132.if.end149_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then135:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m138) #6
  %43 = ptrtoint ptr %_m138 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 32800, ptr %_m138, align 8
  %44 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %l_namelen, align 4
  %46 = ptrtoint ptr %l_ex_holders133 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %l_ex_holders133, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m138, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 357, ptr noundef nonnull @.str.18, i32 noundef %45, ptr noundef %l_name, i32 noundef %47) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m138) #6
  br label %drop_ref

if.end149:                                        ; preds = %land.lhs.true132.if.end149_crit_edge, %lor.lhs.false.if.end149_crit_edge, %if.end111.if.end149_crit_edge
  %switch.select6.i = phi i32 [ 0, %lor.lhs.false.if.end149_crit_edge ], [ 3, %land.lhs.true132.if.end149_crit_edge ], [ 5, %if.end111.if.end149_crit_edge ]
  %l_requested = getelementptr i8, ptr %work, i32 -60
  %48 = ptrtoint ptr %l_requested to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %switch.select6.i, ptr %l_requested, align 4
  %or153 = or i32 %and35, 2
  %49 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or153, ptr %l_flags, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m155) #6
  %50 = ptrtoint ptr %_m155 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 32800, ptr %_m155, align 8
  %51 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %l_namelen, align 4
  %l_level = getelementptr i8, ptr %work, i32 -156
  %53 = ptrtoint ptr %l_level to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %l_level, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m155, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 366, ptr noundef nonnull @.str.19, i32 noundef %52, ptr noundef %l_name, i32 noundef %54, i32 noundef %switch.select6.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m155) #6
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #6
  %l_lksb166 = getelementptr i8, ptr %work, i32 -144
  %55 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %l_namelen, align 4
  %call170 = call i32 @ocfs2_dlm_lock(ptr noundef %1, i32 noundef %switch.select6.i, ptr noundef %l_lksb166, i32 noundef 12, ptr noundef %l_name, i32 noundef %56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end149.drop_ref_crit_edge, label %do.body174

if.end149.drop_ref_crit_edge:                     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop_ref

do.body174:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m175) #6
  %57 = ptrtoint ptr %_m175 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606847008, ptr %_m175, align 8
  %58 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %l_namelen, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m175, ptr noundef nonnull @__func__.user_dlm_unblock_lock, i32 noundef 375, ptr noundef nonnull @.str.2, i32 noundef %call170, ptr noundef nonnull @.str.3, i32 noundef %59, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m175) #6
  call void @_raw_spin_lock(ptr noundef %add.ptr) #6
  %60 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %l_flags, align 4
  %and.i = and i32 %61, -3
  store i32 %and.i, ptr %l_flags, align 4
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #6
  br label %drop_ref

drop_ref:                                         ; preds = %do.body174, %if.end149.drop_ref_crit_edge, %if.then135, %if.then114, %do.body97, %if.end90.drop_ref_crit_edge, %do.body78, %do.body57, %do.body40
  %ip_vfs_inode.i.i = getelementptr i8, ptr %work, i32 52
  call void @iput(ptr noundef %ip_vfs_inode.i.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @user_ast(ptr noundef %lksb) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m5 = alloca i64, align 8
  %_m21 = alloca i64, align 8
  %_m29 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %lksb, i32 -96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 32800, ptr %_m, align 8
  %l_namelen = getelementptr i8, ptr %lksb, i32 -16
  %1 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_namelen, align 4
  %l_name = getelementptr i8, ptr %lksb, i32 -48
  %l_level = getelementptr i8, ptr %lksb, i32 -12
  %3 = ptrtoint ptr %l_level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_level, align 4
  %l_requested = getelementptr i8, ptr %lksb, i32 84
  %5 = ptrtoint ptr %l_requested to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_requested, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.user_ast, i32 noundef 118, ptr noundef nonnull @.str.20, i32 noundef %2, ptr noundef %l_name, i32 noundef %4, i32 noundef %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  call void @_raw_spin_lock(ptr noundef %add.ptr.i) #6
  %call1 = call i32 @ocfs2_dlm_lock_status(ptr noundef %lksb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body17, label %do.body4

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m5) #6
  %7 = ptrtoint ptr %_m5 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606847008, ptr %_m5, align 8
  %8 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l_namelen, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m5, ptr noundef nonnull @__func__.user_ast, i32 noundef 125, ptr noundef nonnull @.str.21, i32 noundef %call1, i32 noundef %9, ptr noundef %l_name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m5) #6
  call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #6
  br label %cleanup

do.body17:                                        ; preds = %entry
  %10 = ptrtoint ptr %l_requested to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %l_requested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp = icmp eq i32 %11, -1
  br i1 %cmp, label %do.body20, label %do.end47

do.body20:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #6
  %12 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606847008, ptr %_m21, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.user_ast, i32 noundef 132, ptr noundef nonnull @.str.22) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m29) #6
  %13 = ptrtoint ptr %_m29 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606847008, ptr %_m29, align 8
  %14 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %l_namelen, align 4
  %l_flags = getelementptr i8, ptr %lksb, i32 -52
  %16 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l_flags, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m29, ptr noundef nonnull @__func__.user_ast, i32 noundef 132, ptr noundef nonnull @.str.23, i32 noundef %15, ptr noundef %l_name, i32 noundef %17) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m29) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !91
  unreachable

do.end47:                                         ; preds = %do.body17
  %18 = ptrtoint ptr %l_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %l_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %19)
  %cmp50 = icmp slt i32 %11, %19
  br i1 %cmp50, label %if.then51, label %do.end47.if.end60_crit_edge

do.end47.if.end60_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then51:                                        ; preds = %do.end47
  %l_blocking = getelementptr i8, ptr %lksb, i32 88
  %20 = ptrtoint ptr %l_blocking to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %l_blocking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %switch.selectcmp.i = icmp eq i32 %21, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i32 3, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %switch.selectcmp5.i = icmp eq i32 %21, 5
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 0, i32 %switch.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %switch.select6.i)
  %cmp54.not = icmp sgt i32 %11, %switch.select6.i
  br i1 %cmp54.not, label %if.then51.if.end60_crit_edge, label %if.then55

if.then51.if.end60_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %l_blocking to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %l_blocking, align 4
  %l_flags57 = getelementptr i8, ptr %lksb, i32 -52
  %23 = ptrtoint ptr %l_flags57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %l_flags57, align 4
  %and58 = and i32 %24, -5
  store i32 %and58, ptr %l_flags57, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.then51.if.end60_crit_edge, %do.end47.if.end60_crit_edge
  %25 = ptrtoint ptr %l_level to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %11, ptr %l_level, align 4
  %26 = ptrtoint ptr %l_requested to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %l_requested, align 4
  %l_flags64 = getelementptr i8, ptr %lksb, i32 -52
  %27 = ptrtoint ptr %l_flags64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %l_flags64, align 4
  %or = and i32 %28, -4
  %and66 = or i32 %or, 1
  store i32 %and66, ptr %l_flags64, align 4
  call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #6
  %l_event = getelementptr i8, ptr %lksb, i32 92
  call void @__wake_up(ptr noundef %l_event, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.body4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @user_bast(ptr noundef %lksb, i32 noundef %level) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %lksb, i32 -96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 32800, ptr %_m, align 8
  %l_namelen = getelementptr i8, ptr %lksb, i32 -16
  %1 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_namelen, align 4
  %l_name = getelementptr i8, ptr %lksb, i32 -48
  %l_level = getelementptr i8, ptr %lksb, i32 -12
  %3 = ptrtoint ptr %l_level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_level, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.user_bast, i32 noundef 204, ptr noundef nonnull @.str.24, i32 noundef %2, ptr noundef %l_name, i32 noundef %level, i32 noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  call void @_raw_spin_lock(ptr noundef %add.ptr.i) #6
  %l_flags = getelementptr i8, ptr %lksb, i32 -52
  %5 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_flags, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %l_flags, align 4
  %l_blocking = getelementptr i8, ptr %lksb, i32 88
  %7 = ptrtoint ptr %l_blocking to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_blocking, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %level)
  %cmp = icmp slt i32 %8, %level
  br i1 %cmp, label %if.then1, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %l_blocking to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %level, ptr %l_blocking, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %entry.if.end3_crit_edge
  call fastcc void @__user_dlm_queue_lockres(ptr noundef %add.ptr.i)
  call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #6
  %l_event = getelementptr i8, ptr %lksb, i32 92
  call void @__wake_up(ptr noundef %l_event, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @user_unlock_ast(ptr noundef %lksb, i32 noundef %status) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m4 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %lksb, i32 -96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 32800, ptr %_m, align 8
  %l_namelen = getelementptr i8, ptr %lksb, i32 -16
  %1 = ptrtoint ptr %l_namelen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_namelen, align 4
  %l_name = getelementptr i8, ptr %lksb, i32 -48
  %l_flags = getelementptr i8, ptr %lksb, i32 -52
  %3 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_flags, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.user_unlock_ast, i32 noundef 222, ptr noundef nonnull @.str.25, i32 noundef %2, ptr noundef %l_name, i32 noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool1.not = icmp eq i32 %status, 0
  br i1 %tobool1.not, label %entry.if.end11_crit_edge, label %do.body3

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m4) #6
  %5 = ptrtoint ptr %_m4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606847008, ptr %_m4, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m4, ptr noundef nonnull @__func__.user_unlock_ast, i32 noundef 225, ptr noundef nonnull @.str.26, i32 noundef %status) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m4) #6
  br label %if.end11

if.end11:                                         ; preds = %do.body3, %entry.if.end11_crit_edge
  call void @_raw_spin_lock(ptr noundef %add.ptr.i) #6
  %6 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l_flags, align 4
  %and16 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %8 = and i32 %7, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %l_level = getelementptr i8, ptr %lksb, i32 -12
  %10 = ptrtoint ptr %l_level to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %l_level, align 4
  br label %if.end70

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %status)
  %cmp = icmp eq i32 %status, 10
  br i1 %cmp, label %do.body20, label %do.body40

do.body20:                                        ; preds = %if.else
  br i1 %tobool17.not, label %do.body28, label %do.end36, !prof !79

do.body28:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #6, !srcloc !92
  unreachable

do.end36:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %and38 = and i32 %7, -33
  br label %out_noclear

do.body40:                                        ; preds = %if.else
  br i1 %tobool17.not, label %do.body53, label %do.end61, !prof !79

do.body53:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/userdlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 242, 0\0A.popsection", ""() #6, !srcloc !93
  unreachable

do.end61:                                         ; preds = %do.body40
  %l_requested = getelementptr i8, ptr %lksb, i32 84
  %11 = ptrtoint ptr %l_requested to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %l_requested, align 4
  %and63 = and i32 %7, -33
  %12 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and63, ptr %l_flags, align 4
  %and65 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.end61.if.end70_crit_edge, label %if.then67

do.end61.if.end70_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then67:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @__user_dlm_queue_lockres(ptr noundef %add.ptr.i)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %do.end61.if.end70_crit_edge, %if.then18
  %13 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l_flags, align 4
  %and72 = and i32 %14, -3
  br label %out_noclear

out_noclear:                                      ; preds = %if.end70, %do.end36
  %storemerge = phi i32 [ %and72, %if.end70 ], [ %and38, %do.end36 ]
  %15 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %l_flags, align 4
  call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #6
  %l_event = getelementptr i8, ptr %lksb, i32 92
  call void @__wake_up(ptr noundef %l_event, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_dlm_lock_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !56, !58, !59, !61, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__func__.user_dlm_cluster_lock, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 420, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 426, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 479, i32 5}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.user_dlm_cluster_unlock, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 519, i32 3}
!10 = !{ptr @user_dlm_lock_res_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 572, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @user_dlm_lock_res_init.__key.5, !14, !"__key", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 573, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__func__.user_dlm_destroy_lock, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 593, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 628, i32 3}
!21 = !{ptr @__func__.user_dlm_register, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 661, i32 3}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 50, i32 2}
!26 = !{ptr @__user_dlm_queue_lockres.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 168, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__func__.user_dlm_unblock_lock, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 291, i32 2}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 295, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 309, i32 3}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 316, i32 3}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 324, i32 4}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 346, i32 3}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 355, i32 3}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 365, i32 2}
!46 = !{ptr @user_dlm_lproto, !47, !"user_dlm_lproto", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 266, i32 38}
!48 = !{ptr @__func__.user_ast, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 116, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 124, i32 3}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 130, i32 2}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__func__.user_bast, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 203, i32 2}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__func__.user_unlock_ast, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 221, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/dlmfs/userdlm.c", i32 225, i32 3}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!76 = !{i64 2152843197, i64 2152843686, i64 2152843234, i64 2152843290, i64 2152843324, i64 2152843348, i64 2152843389, i64 2152843410, i64 2152843438, i64 2152843472}
!77 = !{i64 2152844790, i64 2152845279, i64 2152844827, i64 2152844883, i64 2152844917, i64 2152844941, i64 2152844982, i64 2152845003, i64 2152845031, i64 2152845065}
!78 = !{i64 2152838955, i64 2152839444, i64 2152838992, i64 2152839048, i64 2152839082, i64 2152839106, i64 2152839147, i64 2152839168, i64 2152839196, i64 2152839230}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2152847181, i64 2152847670, i64 2152847218, i64 2152847274, i64 2152847308, i64 2152847332, i64 2152847373, i64 2152847394, i64 2152847422, i64 2152847456}
!81 = !{i64 2152848798, i64 2152849287, i64 2152848835, i64 2152848891, i64 2152848925, i64 2152848949, i64 2152848990, i64 2152849011, i64 2152849039, i64 2152849073}
!82 = !{i64 2152850291, i64 2152850780, i64 2152850328, i64 2152850384, i64 2152850418, i64 2152850442, i64 2152850483, i64 2152850504, i64 2152850532, i64 2152850566}
!83 = !{i64 2152824982, i64 2152825471, i64 2152825019, i64 2152825075, i64 2152825109, i64 2152825133, i64 2152825174, i64 2152825195, i64 2152825223, i64 2152825257}
!84 = !{i64 2152852221, i64 2152852710, i64 2152852258, i64 2152852314, i64 2152852348, i64 2152852372, i64 2152852413, i64 2152852434, i64 2152852462, i64 2152852496}
!85 = !{i64 2152853834, i64 2152854323, i64 2152853871, i64 2152853927, i64 2152853961, i64 2152853985, i64 2152854026, i64 2152854047, i64 2152854075, i64 2152854109}
!86 = !{i64 2152855447, i64 2152855936, i64 2152855484, i64 2152855540, i64 2152855574, i64 2152855598, i64 2152855639, i64 2152855660, i64 2152855688, i64 2152855722}
!87 = !{i64 2152861530, i64 2152862019, i64 2152861567, i64 2152861623, i64 2152861657, i64 2152861681, i64 2152861722, i64 2152861743, i64 2152861771, i64 2152861805}
!88 = !{!"auto-init"}
!89 = !{i64 2152822747, i64 2152823236, i64 2152822784, i64 2152822840, i64 2152822874, i64 2152822898, i64 2152822939, i64 2152822960, i64 2152822988, i64 2152823022}
!90 = !{i64 2152833837, i64 2152834326, i64 2152833874, i64 2152833930, i64 2152833964, i64 2152833988, i64 2152834029, i64 2152834050, i64 2152834078, i64 2152834112}
!91 = !{i64 2152820916, i64 2152821405, i64 2152820953, i64 2152821009, i64 2152821043, i64 2152821067, i64 2152821108, i64 2152821129, i64 2152821157, i64 2152821191}
!92 = !{i64 2152827851, i64 2152828340, i64 2152827888, i64 2152827944, i64 2152827978, i64 2152828002, i64 2152828043, i64 2152828064, i64 2152828092, i64 2152828126}
!93 = !{i64 2152829518, i64 2152830007, i64 2152829555, i64 2152829611, i64 2152829645, i64 2152829669, i64 2152829710, i64 2152829731, i64 2152829759, i64 2152829793}
