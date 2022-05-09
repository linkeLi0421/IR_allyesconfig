; ModuleID = '/llk/IR_all_yes/security/tomoyo/util.c_pt.bc'
source_filename = "../security/tomoyo/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tomoyo_time = type { i16, i8, i8, i8, i8, i8 }
%struct.tomoyo_name_union = type { ptr, ptr }
%struct.tomoyo_number_union = type { [2 x i32], ptr, [2 x i8] }
%struct.tomoyo_path_info = type { ptr, i32, i16, i8, i8 }
%struct.tomoyo_domain_info = type { %struct.list_head, %struct.list_head, ptr, ptr, [8 x i32], i8, i8, [2 x i8], %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.43 }
%struct.llist_node = type { ptr }
%union.anon.43 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.111 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.tomoyo_profile = type { ptr, ptr, ptr, ptr, %struct.tomoyo_preference, i8, [42 x i8], [2 x i32] }
%struct.tomoyo_preference = type { i32, i8, i8, i8 }
%struct.tomoyo_request_info = type { ptr, ptr, ptr, %union.anon.146, ptr, i8, i8, i8, i8, i8, i8 }
%union.anon.146 = type { %struct.anon.149 }
%struct.anon.149 = type { ptr, i32, i32, i32, i8 }
%struct.tomoyo_acl_info = type <{ %struct.list_head, ptr, i8, i8 }>
%struct.tomoyo_path_acl = type { %struct.tomoyo_acl_info, i16, %struct.tomoyo_name_union }
%struct.tomoyo_path2_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_name_union }
%struct.tomoyo_path_number_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_number_union }
%struct.tomoyo_mkdev_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_number_union, %struct.tomoyo_number_union, %struct.tomoyo_number_union }
%struct.tomoyo_inet_acl = type { %struct.tomoyo_acl_info, i8, i8, %struct.tomoyo_ipaddr_union, %struct.tomoyo_number_union }
%struct.tomoyo_ipaddr_union = type { [2 x %struct.in6_addr], ptr, i8 }
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.tomoyo_unix_acl = type { %struct.tomoyo_acl_info, i8, i8, %struct.tomoyo_name_union }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tomoyo_policy_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@tomoyo_policy_lock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tomoyo_policy_lock, i64 52), ptr getelementptr (i8, ptr @tomoyo_policy_lock, i64 52) }, ptr @tomoyo_policy_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tomoyo_policy_lock\00", [45 x i8] zeroinitializer }, align 32
@tomoyo_index2category = dso_local constant { [39 x i8], [57 x i8] } { [39 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%lu\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0%lo\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%lX\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"type(%u)\00", [23 x i8] zeroinitializer }, align 32
@tomoyo_find_domain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_ss = external dso_local global %struct.srcu_struct, align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"security/tomoyo/util.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@tomoyo_domain_list = external dso_local global %struct.list_head, align 4
@tomoyo_policy_loaded = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@tomoyo_domain_quota_is_ok.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@tomoyo_dif = external dso_local local_unnamed_addr constant [2 x ptr], align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.12 = internal global [8 x i64] [i64 6, i64 8, i64 43, i64 45, i64 63, i64 92, i64 97, i64 120]
@__sancov_gen_cov_switch_values.13 = internal global [9 x i64] [i64 7, i64 8, i64 36, i64 42, i64 64, i64 65, i64 88, i64 123, i64 125]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 92]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 8, i64 48, i64 49, i64 50, i64 51, i64 92]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 42, i64 64]
@__sancov_gen_cov_switch_values.17 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.18 = internal global [16 x i64] [i64 14, i64 8, i64 36, i64 42, i64 43, i64 48, i64 49, i64 50, i64 51, i64 63, i64 64, i64 65, i64 88, i64 92, i64 97, i64 120]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 92]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 46, i64 92]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 42, i64 64]
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"tomoyo_policy_lock\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 14, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"tomoyo_index2category\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 23, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 230, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 232, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 234, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 236, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 619, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"tomoyo_policy_loaded\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 17, i32 6 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [26 x i8] c"../security/tomoyo/util.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1100, i32 22 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @tomoyo_policy_lock, ptr @.str.1, ptr @tomoyo_index2category, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tomoyo_policy_loaded, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_policy_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_index2category to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_policy_loaded to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_convert_time(i64 noundef %time64, ptr nocapture noundef writeonly %stamp) local_unnamed_addr #0 align 64 {
entry:
  %tm = alloca %struct.tm, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm) #13
  %0 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 5
  %5 = call ptr @memset(ptr %tm, i32 255, i32 32)
  call void @time64_to_tm(i64 noundef %time64, i32 noundef 0, ptr noundef nonnull %tm) #13
  %6 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm, align 4
  %conv = trunc i32 %7 to i8
  %sec = getelementptr inbounds %struct.tomoyo_time, ptr %stamp, i32 0, i32 5
  %8 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %sec, align 2
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %conv1 = trunc i32 %10 to i8
  %min = getelementptr inbounds %struct.tomoyo_time, ptr %stamp, i32 0, i32 4
  %11 = ptrtoint ptr %min to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1, ptr %min, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %conv2 = trunc i32 %13 to i8
  %hour = getelementptr inbounds %struct.tomoyo_time, ptr %stamp, i32 0, i32 3
  %14 = ptrtoint ptr %hour to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv2, ptr %hour, align 2
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %conv3 = trunc i32 %16 to i8
  %day = getelementptr inbounds %struct.tomoyo_time, ptr %stamp, i32 0, i32 2
  %17 = ptrtoint ptr %day to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3, ptr %day, align 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %20 = trunc i32 %19 to i8
  %conv4 = add i8 %20, 1
  %month = getelementptr inbounds %struct.tomoyo_time, ptr %stamp, i32 0, i32 1
  %21 = ptrtoint ptr %month to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv4, ptr %month, align 2
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %4, align 4
  %24 = trunc i32 %23 to i16
  %conv6 = add i16 %24, 1900
  %25 = ptrtoint ptr %stamp to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv6, ptr %stamp, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tomoyo_permstr(ptr noundef readonly %string, ptr nocapture noundef readonly %keyword) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strstr(ptr noundef %string, ptr noundef %keyword)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %call, %string
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %lor.rhs

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.rhs:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %call, i32 -1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp1 = icmp eq i8 %1, 47
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then.cleanup_crit_edge ], [ %cmp1, %lor.rhs ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tomoyo_read_token(ptr nocapture noundef %param) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %call = tail call ptr @strchr(ptr noundef %1, i32 noundef 32)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @strlen(ptr noundef %1) #16
  %add.ptr = getelementptr i8, ptr %1, i32 %call1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %del.0 = phi ptr [ %incdec.ptr, %if.then ], [ %add.ptr, %if.else ]
  %3 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %del.0, ptr %param, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_get_domainname(ptr nocapture noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not20 = icmp eq i8 %3, 0
  br i1 %tobool.not20, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.then.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi i8 [ %6, %if.then.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %pos.021 = phi ptr [ %incdec.ptr, %if.then.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %pos.021, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %4)
  %cmp.not = icmp eq i8 %4, 32
  br i1 %cmp.not, label %lor.lhs.false, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %call = tail call ptr @strchrnul(ptr noundef %incdec.ptr, i32 noundef 32) #13
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call.i = tail call ptr @memchr(ptr noundef %incdec.ptr, i32 noundef 47, i32 noundef %sub.ptr.sub) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true.i

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %call1.i = tail call ptr @memchr(ptr noundef %incdec.ptr, i32 noundef 46, i32 noundef %sub.ptr.sub) #17
  %tobool2.not.i = icmp eq ptr %call1.i, null
  %cmp.i = icmp ult ptr %call.i, %call1.i
  %or.cond.i = select i1 %tobool2.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %tomoyo_correct_path2.exit, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

tomoyo_correct_path2.exit:                        ; preds = %land.lhs.true.i
  %call3.i = tail call fastcc zeroext i1 @tomoyo_correct_word2(ptr noundef %incdec.ptr, i32 noundef %sub.ptr.sub) #13
  br i1 %call3.i, label %tomoyo_correct_path2.exit.if.then_crit_edge, label %tomoyo_correct_path2.exit.if.end_crit_edge

tomoyo_correct_path2.exit.if.end_crit_edge:       ; preds = %tomoyo_correct_path2.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

tomoyo_correct_path2.exit.if.then_crit_edge:      ; preds = %tomoyo_correct_path2.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %tomoyo_correct_path2.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %tomoyo_correct_path2.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %7 = ptrtoint ptr %pos.021 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pos.021, align 1
  br label %while.end

while.end:                                        ; preds = %if.end, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %pos.1 = phi ptr [ %incdec.ptr, %if.end ], [ %1, %entry.while.end_crit_edge ], [ %incdec.ptr, %if.then.while.end_crit_edge ]
  %8 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pos.1, ptr %param, align 4
  %call5 = tail call zeroext i1 @tomoyo_correct_domain(ptr noundef %1)
  br i1 %call5, label %if.then6, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call ptr @tomoyo_get_name(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %while.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.then6 ], [ null, %while.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_correct_domain(ptr noundef %domainname) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %domainname, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %domainname to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %domainname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 60
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false
  %call.i = tail call ptr @strchr(ptr noundef nonnull %domainname, i32 noundef 32) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %domainname) #17
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %domainname to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.then2.i
  %len.0.i = phi i32 [ %sub.ptr.sub.i, %if.else.i ], [ %call3.i, %if.then2.i ]
  %sub.i = add i32 %len.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %domainname, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %3)
  %cmp6.not.i = icmp eq i8 %3, 62
  br i1 %cmp6.not.i, label %tomoyo_domain_def.exit, label %if.end4.i.return_crit_edge

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

tomoyo_domain_def.exit:                           ; preds = %if.end4.i
  %add.ptr.i = getelementptr i8, ptr %domainname, i32 1
  %sub8.i = add i32 %len.0.i, -2
  %call9.i = tail call fastcc zeroext i1 @tomoyo_correct_word2(ptr noundef %add.ptr.i, i32 noundef %sub8.i) #13
  br i1 %call9.i, label %if.end, label %tomoyo_domain_def.exit.return_crit_edge

tomoyo_domain_def.exit.return_crit_edge:          ; preds = %tomoyo_domain_def.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %tomoyo_domain_def.exit
  %call1 = tail call ptr @strchr(ptr noundef nonnull %domainname, i32 noundef 32)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

while.body:                                       ; preds = %tomoyo_correct_path2.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %call1.pn = phi ptr [ %call5, %tomoyo_correct_path2.exit.while.body_crit_edge ], [ %call1, %if.end.while.body_crit_edge ]
  %domainname.addr.0 = getelementptr i8, ptr %call1.pn, i32 1
  %call5 = tail call ptr @strchr(ptr noundef %domainname.addr.0, i32 noundef 32)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %while.end, label %if.end8

if.end8:                                          ; preds = %while.body
  %sub.ptr.lhs.cast = ptrtoint ptr %call5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %domainname.addr.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call.i23 = tail call ptr @memchr(ptr noundef %domainname.addr.0, i32 noundef 47, i32 noundef %sub.ptr.sub) #17
  %tobool.not.i24 = icmp eq ptr %call.i23, null
  br i1 %tobool.not.i24, label %if.end8.return_crit_edge, label %land.lhs.true.i

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true.i:                                  ; preds = %if.end8
  %call1.i = tail call ptr @memchr(ptr noundef %domainname.addr.0, i32 noundef 46, i32 noundef %sub.ptr.sub) #17
  %tobool2.not.i = icmp eq ptr %call1.i, null
  %cmp.i = icmp ult ptr %call.i23, %call1.i
  %or.cond.i = select i1 %tobool2.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %tomoyo_correct_path2.exit, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

tomoyo_correct_path2.exit:                        ; preds = %land.lhs.true.i
  %call3.i25 = tail call fastcc zeroext i1 @tomoyo_correct_word2(ptr noundef %domainname.addr.0, i32 noundef %sub.ptr.sub) #13
  br i1 %call3.i25, label %tomoyo_correct_path2.exit.while.body_crit_edge, label %tomoyo_correct_path2.exit.return_crit_edge

tomoyo_correct_path2.exit.return_crit_edge:       ; preds = %tomoyo_correct_path2.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

tomoyo_correct_path2.exit.while.body_crit_edge:   ; preds = %tomoyo_correct_path2.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %while.body
  %call.i26 = tail call i32 @strlen(ptr noundef %domainname.addr.0) #17
  %call.i.i = tail call ptr @memchr(ptr noundef %domainname.addr.0, i32 noundef 47, i32 noundef %call.i26) #17
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.end.return_crit_edge, label %land.lhs.true.i.i

while.end.return_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true.i.i:                                ; preds = %while.end
  %call1.i.i = tail call ptr @memchr(ptr noundef %domainname.addr.0, i32 noundef 46, i32 noundef %call.i26) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  %cmp.i.i = icmp ult ptr %call.i.i, %call1.i.i
  %or.cond.i.i = select i1 %tobool2.not.i.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.return_crit_edge

land.lhs.true.i.i.return_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i.i = tail call fastcc zeroext i1 @tomoyo_correct_word2(ptr noundef %domainname.addr.0, i32 noundef %call.i26) #13
  br label %return

return:                                           ; preds = %land.rhs.i.i, %land.lhs.true.i.i.return_crit_edge, %while.end.return_crit_edge, %tomoyo_correct_path2.exit.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.end8.return_crit_edge, %if.end.return_crit_edge, %tomoyo_domain_def.exit.return_crit_edge, %if.end4.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i1 [ false, %tomoyo_domain_def.exit.return_crit_edge ], [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ false, %while.end.return_crit_edge ], [ %call3.i.i, %land.rhs.i.i ], [ false, %land.lhs.true.i.i.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %if.end4.i.return_crit_edge ], [ false, %land.lhs.true.i.return_crit_edge ], [ false, %if.end8.return_crit_edge ], [ false, %tomoyo_correct_path2.exit.return_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @tomoyo_parse_ulong(ptr nocapture noundef writeonly %result, ptr nocapture noundef %str) local_unnamed_addr #0 align 64 {
entry:
  %ep = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %str, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep) #13
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep, align 4, !annotation !34
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %4)
  %cmp = icmp eq i8 %4, 48
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.else [
    i8 120, label %if.then.if.then8_crit_edge
    i8 88, label %if.then.if.then8_crit_edge39
  ]

if.then.if.then8_crit_edge39:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.then8:                                         ; preds = %if.then.if.then8_crit_edge, %if.then.if.then8_crit_edge39
  %add.ptr9 = getelementptr i8, ptr %1, i32 2
  br label %if.end18

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %8 = and i8 %6, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %8)
  %9 = icmp eq i8 %8, 48
  %spec.select = select i1 %9, ptr %add.ptr, ptr %1
  %spec.select38 = select i1 %9, i32 8, i32 10
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then8, %entry.if.end18_crit_edge
  %cp.1 = phi ptr [ %1, %entry.if.end18_crit_edge ], [ %add.ptr9, %if.then8 ], [ %spec.select, %if.else ]
  %base.1 = phi i32 [ 10, %entry.if.end18_crit_edge ], [ 16, %if.then8 ], [ %spec.select38, %if.else ]
  %call = call i32 @simple_strtoul(ptr noundef %cp.1, ptr noundef nonnull %ep, i32 noundef %base.1) #13
  %10 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %result, align 4
  %11 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep, align 4
  %cmp19 = icmp eq ptr %cp.1, %12
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %str, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %base.1)
  %switch.selectcmp = icmp eq i32 %base.1, 8
  %switch.select = select i1 %switch.selectcmp, i8 2, i8 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %base.1)
  %switch.selectcmp36 = icmp eq i32 %base.1, 16
  %switch.select37 = select i1 %switch.selectcmp36, i8 3, i8 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end18.cleanup_crit_edge ], [ %switch.select37, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #13
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_print_ulong(ptr nocapture noundef writeonly %buffer, i32 noundef %buffer_len, i32 noundef %value, i8 noundef zeroext %type) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %type, label %if.else13 [
    i8 1, label %if.then
    i8 2, label %if.then5
    i8 3, label %if.then11
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %buffer_len, ptr noundef nonnull @.str.2, i32 noundef %value)
  br label %if.end17

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %buffer_len, ptr noundef nonnull @.str.3, i32 noundef %value)
  br label %if.end17

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %buffer_len, ptr noundef nonnull @.str.4, i32 noundef %value)
  br label %if.end17

if.else13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %type to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %buffer_len, ptr noundef nonnull @.str.5, i32 noundef %conv)
  br label %if.end17

if.end17:                                         ; preds = %if.else13, %if.then11, %if.then5, %if.then
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr nocapture noundef writeonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %3)
  %cmp = icmp eq i8 %3, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %incdec.ptr, ptr %param, align 4
  %call = tail call ptr @tomoyo_get_group(ptr noundef %param, i8 noundef zeroext 0) #13
  %group = getelementptr inbounds %struct.tomoyo_name_union, ptr %ptr, i32 0, i32 1
  %5 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %group, align 4
  %cmp4 = icmp ne ptr %call, null
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @strchr(ptr noundef %1, i32 noundef 32) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call.i, align 1
  br label %tomoyo_read_token.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.i = getelementptr i8, ptr %1, i32 %call1.i
  br label %tomoyo_read_token.exit

tomoyo_read_token.exit:                           ; preds = %if.else.i, %if.then.i
  %del.0.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %add.ptr.i, %if.else.i ]
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %del.0.i, ptr %param, align 4
  %call.i22 = tail call i32 @strlen(ptr noundef %1) #17
  %call1.i23 = tail call fastcc zeroext i1 @tomoyo_correct_word2(ptr noundef %1, i32 noundef %call.i22) #13
  br i1 %call1.i23, label %if.end9, label %tomoyo_read_token.exit.cleanup_crit_edge

tomoyo_read_token.exit.cleanup_crit_edge:         ; preds = %tomoyo_read_token.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %tomoyo_read_token.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call ptr @tomoyo_get_name(ptr noundef %1) #13
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %ptr, align 4
  %cmp13 = icmp ne ptr %call10, null
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %tomoyo_read_token.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ %cmp4, %if.then ], [ %cmp13, %if.end9 ], [ false, %tomoyo_read_token.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_group(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_correct_word(ptr noundef readonly %string) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %string) #16
  %call1 = tail call fastcc zeroext i1 @tomoyo_correct_word2(ptr noundef %string, i32 noundef %call)
  ret i1 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_parse_number_union(ptr noundef %param, ptr nocapture noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  %ep.i67 = alloca ptr, align 4
  %ep.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ptr, i32 0, i32 16)
  %1 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %param, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %cmp = icmp eq i8 %4, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %incdec.ptr, ptr %param, align 4
  %call = tail call ptr @tomoyo_get_group(ptr noundef %param, i8 noundef zeroext 1) #13
  %group = getelementptr inbounds %struct.tomoyo_number_union, ptr %ptr, i32 0, i32 1
  %6 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %group, align 4
  %cmp5 = icmp ne ptr %call, null
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @strchr(ptr noundef %2, i32 noundef 32) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call.i, align 1
  br label %tomoyo_read_token.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @strlen(ptr noundef %2) #17
  %add.ptr.i = getelementptr i8, ptr %2, i32 %call1.i
  br label %tomoyo_read_token.exit

tomoyo_read_token.exit:                           ; preds = %if.else.i, %if.then.i
  %del.0.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %add.ptr.i, %if.else.i ]
  %8 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %del.0.i, ptr %param, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i) #13
  %9 = ptrtoint ptr %ep.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i, align 4, !annotation !34
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %11)
  %cmp.i = icmp eq i8 %11, 48
  br i1 %cmp.i, label %if.then.i64, label %tomoyo_read_token.exit.if.end18.i_crit_edge

tomoyo_read_token.exit.if.end18.i_crit_edge:      ; preds = %tomoyo_read_token.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then.i64:                                      ; preds = %tomoyo_read_token.exit
  %add.ptr.i63 = getelementptr i8, ptr %2, i32 1
  %12 = ptrtoint ptr %add.ptr.i63 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i63, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %13, label %if.else.i65 [
    i8 120, label %if.then.i64.if.then8.i_crit_edge
    i8 88, label %if.then.i64.if.then8.i_crit_edge99
  ]

if.then.i64.if.then8.i_crit_edge99:               ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

if.then.i64.if.then8.i_crit_edge:                 ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.then.i64.if.then8.i_crit_edge, %if.then.i64.if.then8.i_crit_edge99
  %add.ptr9.i = getelementptr i8, ptr %2, i32 2
  br label %if.end18.i

if.else.i65:                                      ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #15
  %15 = and i8 %13, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %15)
  %16 = icmp eq i8 %15, 48
  %spec.select.i = select i1 %16, ptr %add.ptr.i63, ptr %2
  %spec.select38.i = select i1 %16, i32 8, i32 10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i65, %if.then8.i, %tomoyo_read_token.exit.if.end18.i_crit_edge
  %cp.1.i = phi ptr [ %2, %tomoyo_read_token.exit.if.end18.i_crit_edge ], [ %add.ptr9.i, %if.then8.i ], [ %spec.select.i, %if.else.i65 ]
  %base.1.i = phi i32 [ 10, %tomoyo_read_token.exit.if.end18.i_crit_edge ], [ 16, %if.then8.i ], [ %spec.select38.i, %if.else.i65 ]
  %call.i66 = call i32 @simple_strtoul(ptr noundef %cp.1.i, ptr noundef nonnull %ep.i, i32 noundef %base.1.i) #13
  %17 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ep.i, align 4
  %cmp19.i = icmp eq ptr %cp.1.i, %18
  br i1 %cmp19.i, label %tomoyo_parse_ulong.exit.thread, label %tomoyo_parse_ulong.exit

tomoyo_parse_ulong.exit.thread:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #13
  br label %cleanup

tomoyo_parse_ulong.exit:                          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %base.1.i)
  %switch.selectcmp.i = icmp eq i32 %base.1.i, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i8 2, i8 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %base.1.i)
  %switch.selectcmp36.i = icmp eq i32 %base.1.i, 16
  %switch.select37.i = select i1 %switch.selectcmp36.i, i8 3, i8 %switch.select.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #13
  %19 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i66, ptr %ptr, align 4
  %value_type = getelementptr inbounds %struct.tomoyo_number_union, ptr %ptr, i32 0, i32 2
  %20 = ptrtoint ptr %value_type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %switch.select37.i, ptr %value_type, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.then16, label %if.end21

if.then16:                                        ; preds = %tomoyo_parse_ulong.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx18 = getelementptr [2 x i32], ptr %ptr, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i66, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.tomoyo_number_union, ptr %ptr, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %switch.select37.i, ptr %arrayidx20, align 1
  br label %cleanup

if.end21:                                         ; preds = %tomoyo_parse_ulong.exit
  %incdec.ptr22 = getelementptr i8, ptr %18, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %22)
  %cmp24.not = icmp eq i8 %22, 45
  br i1 %cmp24.not, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i67) #13
  %25 = ptrtoint ptr %ep.i67 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i67, align 4, !annotation !34
  %26 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %27)
  %cmp.i68 = icmp eq i8 %27, 48
  br i1 %cmp.i68, label %if.then.i70, label %if.end27.if.end18.i80_crit_edge

if.end27.if.end18.i80_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i80

if.then.i70:                                      ; preds = %if.end27
  %add.ptr.i69 = getelementptr i8, ptr %18, i32 2
  %28 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr.i69, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %29, label %if.else.i75 [
    i8 120, label %if.then.i70.if.then8.i72_crit_edge
    i8 88, label %if.then.i70.if.then8.i72_crit_edge100
  ]

if.then.i70.if.then8.i72_crit_edge100:            ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i72

if.then.i70.if.then8.i72_crit_edge:               ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i72

if.then8.i72:                                     ; preds = %if.then.i70.if.then8.i72_crit_edge, %if.then.i70.if.then8.i72_crit_edge100
  %add.ptr9.i71 = getelementptr i8, ptr %18, i32 3
  br label %if.end18.i80

if.else.i75:                                      ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #15
  %31 = and i8 %29, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %31)
  %32 = icmp eq i8 %31, 48
  %spec.select.i73 = select i1 %32, ptr %add.ptr.i69, ptr %incdec.ptr22
  %spec.select38.i74 = select i1 %32, i32 8, i32 10
  br label %if.end18.i80

if.end18.i80:                                     ; preds = %if.else.i75, %if.then8.i72, %if.end27.if.end18.i80_crit_edge
  %cp.1.i76 = phi ptr [ %incdec.ptr22, %if.end27.if.end18.i80_crit_edge ], [ %add.ptr9.i71, %if.then8.i72 ], [ %spec.select.i73, %if.else.i75 ]
  %base.1.i77 = phi i32 [ 10, %if.end27.if.end18.i80_crit_edge ], [ 16, %if.then8.i72 ], [ %spec.select38.i74, %if.else.i75 ]
  %call.i78 = call i32 @simple_strtoul(ptr noundef %cp.1.i76, ptr noundef nonnull %ep.i67, i32 noundef %base.1.i77) #13
  %33 = ptrtoint ptr %ep.i67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ep.i67, align 4
  %cmp19.i79 = icmp eq ptr %cp.1.i76, %34
  br i1 %cmp19.i79, label %tomoyo_parse_ulong.exit87.thread, label %tomoyo_parse_ulong.exit87

tomoyo_parse_ulong.exit87.thread:                 ; preds = %if.end18.i80
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i67) #13
  br label %cleanup

tomoyo_parse_ulong.exit87:                        ; preds = %if.end18.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %base.1.i77)
  %switch.selectcmp.i81 = icmp eq i32 %base.1.i77, 8
  %switch.select.i82 = select i1 %switch.selectcmp.i81, i8 2, i8 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %base.1.i77)
  %switch.selectcmp36.i83 = icmp eq i32 %base.1.i77, 16
  %switch.select37.i84 = select i1 %switch.selectcmp36.i83, i8 3, i8 %switch.select.i82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i67) #13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool33.not = icmp eq i8 %36, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %tomoyo_parse_ulong.exit87.cleanup_crit_edge

tomoyo_parse_ulong.exit87.cleanup_crit_edge:      ; preds = %tomoyo_parse_ulong.exit87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false34:                                  ; preds = %tomoyo_parse_ulong.exit87
  %37 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call.i78)
  %cmp37 = icmp ugt i32 %38, %call.i78
  br i1 %cmp37, label %lor.lhs.false34.cleanup_crit_edge, label %if.end40

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx42 = getelementptr [2 x i32], ptr %ptr, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i78, ptr %arrayidx42, align 4
  %arrayidx44 = getelementptr %struct.tomoyo_number_union, ptr %ptr, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %switch.select37.i84, ptr %arrayidx44, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %lor.lhs.false34.cleanup_crit_edge, %tomoyo_parse_ulong.exit87.cleanup_crit_edge, %tomoyo_parse_ulong.exit87.thread, %if.end21.cleanup_crit_edge, %if.then16, %tomoyo_parse_ulong.exit.thread, %if.then
  %retval.0 = phi i1 [ %cmp5, %if.then ], [ true, %if.end40 ], [ true, %if.then16 ], [ false, %if.end21.cleanup_crit_edge ], [ false, %lor.lhs.false34.cleanup_crit_edge ], [ false, %tomoyo_parse_ulong.exit87.cleanup_crit_edge ], [ false, %tomoyo_parse_ulong.exit.thread ], [ false, %tomoyo_parse_ulong.exit87.thread ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tomoyo_str_starts(ptr nocapture noundef %src, ptr nocapture noundef readonly %find) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %find) #16
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %call1 = tail call i32 @strncmp(ptr noundef %1, ptr noundef %find, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 %call
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %src, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_normalize_line(ptr nocapture noundef %buffer) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %sp.0 = phi ptr [ %buffer, %entry ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %0 = ptrtoint ptr %sp.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sp.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp ne i8 %1, 0
  %2 = add i8 %1, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %2)
  %3 = icmp ult i8 %2, -94
  %4 = and i1 %tobool.not.i, %3
  %incdec.ptr = getelementptr i8, ptr %sp.0, i32 1
  br i1 %4, label %while.cond.while.cond_crit_edge, label %while.cond1.preheader

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.cond1.preheader:                            ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not31 = icmp eq i8 %1, 0
  br i1 %tobool.not31, label %while.cond1.preheader.while.end16_crit_edge, label %while.cond1.preheader.while.body2_crit_edge

while.cond1.preheader.while.body2_crit_edge:      ; preds = %while.cond1.preheader
  br label %while.body2

while.cond1.preheader.while.end16_crit_edge:      ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end16

while.cond1.loopexit:                             ; preds = %while.cond11
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %while.cond1.loopexit.while.end16_crit_edge, label %while.cond1.loopexit.while.body2_crit_edge

while.cond1.loopexit.while.body2_crit_edge:       ; preds = %while.cond1.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body2

while.cond1.loopexit.while.end16_crit_edge:       ; preds = %while.cond1.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end16

while.body2:                                      ; preds = %while.cond1.loopexit.while.body2_crit_edge, %while.cond1.preheader.while.body2_crit_edge
  %first.0.off034 = phi i1 [ false, %while.cond1.loopexit.while.body2_crit_edge ], [ true, %while.cond1.preheader.while.body2_crit_edge ]
  %dp.033 = phi ptr [ %dp.2.lcssa, %while.cond1.loopexit.while.body2_crit_edge ], [ %buffer, %while.cond1.preheader.while.body2_crit_edge ]
  %sp.132 = phi ptr [ %sp.3, %while.cond1.loopexit.while.body2_crit_edge ], [ %sp.0, %while.cond1.preheader.while.body2_crit_edge ]
  br i1 %first.0.off034, label %while.body2.if.end_crit_edge, label %if.then

while.body2.if.end_crit_edge:                     ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr4 = getelementptr i8, ptr %dp.033, i32 1
  %5 = ptrtoint ptr %dp.033 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %dp.033, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body2.if.end_crit_edge
  %dp.1 = phi ptr [ %dp.033, %while.body2.if.end_crit_edge ], [ %incdec.ptr4, %if.then ]
  %6 = ptrtoint ptr %sp.132 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sp.132, align 1
  %8 = add i8 %7, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %8)
  %9 = icmp ult i8 %8, 94
  br i1 %9, label %if.end.while.body7_crit_edge, label %if.end.while.cond11.preheader_crit_edge

if.end.while.cond11.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond11.preheader

if.end.while.body7_crit_edge:                     ; preds = %if.end
  br label %while.body7

while.cond11.preheader:                           ; preds = %while.body7.while.cond11.preheader_crit_edge, %if.end.while.cond11.preheader_crit_edge
  %sp.2.lcssa = phi ptr [ %sp.132, %if.end.while.cond11.preheader_crit_edge ], [ %incdec.ptr8, %while.body7.while.cond11.preheader_crit_edge ]
  %dp.2.lcssa = phi ptr [ %dp.1, %if.end.while.cond11.preheader_crit_edge ], [ %incdec.ptr9, %while.body7.while.cond11.preheader_crit_edge ]
  br label %while.cond11

while.body7:                                      ; preds = %while.body7.while.body7_crit_edge, %if.end.while.body7_crit_edge
  %10 = phi i8 [ %13, %while.body7.while.body7_crit_edge ], [ %7, %if.end.while.body7_crit_edge ]
  %dp.229 = phi ptr [ %incdec.ptr9, %while.body7.while.body7_crit_edge ], [ %dp.1, %if.end.while.body7_crit_edge ]
  %sp.228 = phi ptr [ %incdec.ptr8, %while.body7.while.body7_crit_edge ], [ %sp.132, %if.end.while.body7_crit_edge ]
  %incdec.ptr8 = getelementptr i8, ptr %sp.228, i32 1
  %incdec.ptr9 = getelementptr i8, ptr %dp.229, i32 1
  %11 = ptrtoint ptr %dp.229 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dp.229, align 1
  %12 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr8, align 1
  %14 = add i8 %13, -33
  %15 = icmp ult i8 %14, 94
  br i1 %15, label %while.body7.while.body7_crit_edge, label %while.body7.while.cond11.preheader_crit_edge

while.body7.while.cond11.preheader_crit_edge:     ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond11.preheader

while.body7.while.body7_crit_edge:                ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body7

while.cond11:                                     ; preds = %while.cond11.while.cond11_crit_edge, %while.cond11.preheader
  %sp.3 = phi ptr [ %incdec.ptr14, %while.cond11.while.cond11_crit_edge ], [ %sp.2.lcssa, %while.cond11.preheader ]
  %16 = ptrtoint ptr %sp.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sp.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i26 = icmp ne i8 %17, 0
  %18 = add i8 %17, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %18)
  %19 = icmp ult i8 %18, -94
  %20 = and i1 %tobool.not.i26, %19
  %incdec.ptr14 = getelementptr i8, ptr %sp.3, i32 1
  br i1 %20, label %while.cond11.while.cond11_crit_edge, label %while.cond1.loopexit

while.cond11.while.cond11_crit_edge:              ; preds = %while.cond11
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond11

while.end16:                                      ; preds = %while.cond1.loopexit.while.end16_crit_edge, %while.cond1.preheader.while.end16_crit_edge
  %dp.0.lcssa = phi ptr [ %buffer, %while.cond1.preheader.while.end16_crit_edge ], [ %dp.2.lcssa, %while.cond1.loopexit.while.end16_crit_edge ]
  %21 = ptrtoint ptr %dp.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %dp.0.lcssa, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tomoyo_correct_word2(ptr noundef readonly %string, i32 noundef %len) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.body:                                       ; preds = %while.body.backedge, %entry.while.body_crit_edge
  %in_repetition.0.off0169 = phi i1 [ %in_repetition.0.off0169.be, %while.body.backedge ], [ false, %entry.while.body_crit_edge ]
  %recursion.0168 = phi i8 [ %recursion.0168.be, %while.body.backedge ], [ 20, %entry.while.body_crit_edge ]
  %len.addr.0167 = phi i32 [ %len.addr.0167.be, %while.body.backedge ], [ %len, %entry.while.body_crit_edge ]
  %string.addr.0166 = phi ptr [ %string.addr.0166.be, %while.body.backedge ], [ %string, %entry.while.body_crit_edge ]
  %dec170 = add i32 %len.addr.0167, -1
  %incdec.ptr = getelementptr i8, ptr %string.addr.0166, i32 1
  %0 = ptrtoint ptr %string.addr.0166 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %string.addr.0166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %1)
  %cmp = icmp eq i8 %1, 92
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  %dec4 = add i32 %len.addr.0167, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec170)
  %tobool5.not = icmp eq i32 %dec170, 0
  br i1 %tobool5.not, label %if.then3.out_crit_edge, label %if.end7

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7:                                          ; preds = %if.then3
  %incdec.ptr8 = getelementptr i8, ptr %string.addr.0166, i32 2
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %incdec.ptr, align 1
  %4 = and i8 %3, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %4)
  %5 = icmp eq i8 %4, 48
  br i1 %5, label %if.then15, label %if.end51

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec4)
  %tobool17.not = icmp eq i32 %dec4, 0
  br i1 %tobool17.not, label %if.then15.out_crit_edge, label %lor.lhs.false

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %if.then15
  %dec18 = add i32 %len.addr.0167, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.0167)
  %tobool19.not = icmp eq i32 %len.addr.0167, 3
  br i1 %tobool19.not, label %lor.lhs.false.out_crit_edge, label %if.end21

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end21:                                         ; preds = %lor.lhs.false
  %incdec.ptr22 = getelementptr i8, ptr %string.addr.0166, i32 3
  %6 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr8, align 1
  %8 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr22, align 1
  %10 = add i8 %7, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %10)
  %11 = icmp ult i8 %10, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %9)
  %cmp33 = icmp ult i8 %9, 48
  %or.cond145 = select i1 %11, i1 true, i1 %cmp33
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %9)
  %cmp37 = icmp ugt i8 %9, 55
  %or.cond146 = select i1 %or.cond145, i1 true, i1 %cmp37
  br i1 %or.cond146, label %if.end21.out_crit_edge, label %if.end40

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end40:                                         ; preds = %if.end21
  %incdec.ptr23 = getelementptr i8, ptr %string.addr.0166, i32 4
  %sub.i = shl i8 %3, 6
  %sub2.i = shl i8 %7, 3
  %sub5.i = add i8 %sub.i, -47
  %add6.i = add i8 %sub5.i, %sub2.i
  %12 = add i8 %add6.i, %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %12)
  %13 = icmp ult i8 %12, -94
  br i1 %13, label %if.end40.while.cond.backedge_crit_edge, label %if.end40.out_crit_edge

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end40.while.cond.backedge_crit_edge:           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end51:                                         ; preds = %if.end7
  %14 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %3, label %sw.epilog [
    i8 92, label %if.end51.while.cond.backedge_crit_edge
    i8 43, label %if.end51.while.cond.backedge_crit_edge189
    i8 63, label %if.end51.while.cond.backedge_crit_edge190
    i8 120, label %if.end51.while.cond.backedge_crit_edge191
    i8 97, label %if.end51.while.cond.backedge_crit_edge192
    i8 45, label %if.end51.while.cond.backedge_crit_edge193
  ]

if.end51.while.cond.backedge_crit_edge193:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end51.while.cond.backedge_crit_edge192:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end51.while.cond.backedge_crit_edge191:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end51.while.cond.backedge_crit_edge190:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end51.while.cond.backedge_crit_edge189:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end51.while.cond.backedge_crit_edge:           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

sw.epilog:                                        ; preds = %if.end51
  %dec53 = add i8 %recursion.0168, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %recursion.0168)
  %tobool54.not = icmp eq i8 %recursion.0168, 0
  br i1 %tobool54.not, label %sw.epilog.out_crit_edge, label %if.end56

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end56:                                         ; preds = %sw.epilog
  %15 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %3, label %if.end56.out_crit_edge [
    i8 42, label %if.end56.while.cond.backedge_crit_edge
    i8 64, label %if.end56.while.cond.backedge_crit_edge194
    i8 36, label %if.end56.while.cond.backedge_crit_edge195
    i8 88, label %if.end56.while.cond.backedge_crit_edge196
    i8 65, label %if.end56.while.cond.backedge_crit_edge197
    i8 123, label %sw.bb59
    i8 125, label %sw.bb69
  ]

if.end56.while.cond.backedge_crit_edge197:        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end56.while.cond.backedge_crit_edge196:        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end56.while.cond.backedge_crit_edge195:        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end56.while.cond.backedge_crit_edge194:        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end56.while.cond.backedge_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.bb59:                                          ; preds = %if.end56
  %add.ptr = getelementptr i8, ptr %string.addr.0166, i32 -1
  %cmp60 = icmp ult ptr %add.ptr, %string
  br i1 %cmp60, label %sw.bb59.out_crit_edge, label %lor.lhs.false62

sw.bb59.out_crit_edge:                            ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false62:                                  ; preds = %sw.bb59
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %17)
  %cmp65.not = icmp eq i8 %17, 47
  br i1 %cmp65.not, label %lor.lhs.false62.while.cond.backedge_crit_edge, label %lor.lhs.false62.out_crit_edge

lor.lhs.false62.out_crit_edge:                    ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false62.while.cond.backedge_crit_edge:    ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

sw.bb69:                                          ; preds = %if.end56
  %18 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %19)
  %cmp71.not = icmp ne i8 %19, 47
  %in_repetition.0.off0.not = xor i1 %in_repetition.0.off0169, true
  %brmerge = select i1 %cmp71.not, i1 true, i1 %in_repetition.0.off0.not
  br i1 %brmerge, label %sw.bb69.out_crit_edge, label %while.cond.backedge.thread

sw.bb69.out_crit_edge:                            ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp83 = icmp eq i8 %1, 47
  %or.cond148 = select i1 %in_repetition.0.off0169, i1 %cmp83, i1 false
  %20 = add i8 %1, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %20)
  %21 = icmp ult i8 %20, -94
  %or.cond = select i1 %or.cond148, i1 true, i1 %21
  br i1 %or.cond, label %if.else.out_crit_edge, label %if.else.while.cond.backedge_crit_edge

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.cond.backedge:                              ; preds = %if.else.while.cond.backedge_crit_edge, %lor.lhs.false62.while.cond.backedge_crit_edge, %if.end56.while.cond.backedge_crit_edge, %if.end56.while.cond.backedge_crit_edge194, %if.end56.while.cond.backedge_crit_edge195, %if.end56.while.cond.backedge_crit_edge196, %if.end56.while.cond.backedge_crit_edge197, %if.end51.while.cond.backedge_crit_edge, %if.end51.while.cond.backedge_crit_edge189, %if.end51.while.cond.backedge_crit_edge190, %if.end51.while.cond.backedge_crit_edge191, %if.end51.while.cond.backedge_crit_edge192, %if.end51.while.cond.backedge_crit_edge193, %if.end40.while.cond.backedge_crit_edge
  %string.addr.2.ph = phi ptr [ %incdec.ptr, %if.else.while.cond.backedge_crit_edge ], [ %incdec.ptr8, %lor.lhs.false62.while.cond.backedge_crit_edge ], [ %incdec.ptr23, %if.end40.while.cond.backedge_crit_edge ], [ %incdec.ptr8, %if.end56.while.cond.backedge_crit_edge ], [ %incdec.ptr8, %if.end56.while.cond.backedge_crit_edge194 ], [ %incdec.ptr8, %if.end56.while.cond.backedge_crit_edge195 ], [ %incdec.ptr8, %if.end56.while.cond.backedge_crit_edge196 ], [ %incdec.ptr8, %if.end56.while.cond.backedge_crit_edge197 ], [ %incdec.ptr8, %if.end51.while.cond.backedge_crit_edge ], [ %incdec.ptr8, %if.end51.while.cond.backedge_crit_edge189 ], [ %incdec.ptr8, %if.end51.while.cond.backedge_crit_edge190 ], [ %incdec.ptr8, %if.end51.while.cond.backedge_crit_edge191 ], [ %incdec.ptr8, %if.end51.while.cond.backedge_crit_edge192 ], [ %incdec.ptr8, %if.end51.while.cond.backedge_crit_edge193 ]
  %len.addr.3.ph = phi i32 [ %dec170, %if.else.while.cond.backedge_crit_edge ], [ %dec4, %lor.lhs.false62.while.cond.backedge_crit_edge ], [ %dec18, %if.end40.while.cond.backedge_crit_edge ], [ %dec4, %if.end56.while.cond.backedge_crit_edge ], [ %dec4, %if.end56.while.cond.backedge_crit_edge194 ], [ %dec4, %if.end56.while.cond.backedge_crit_edge195 ], [ %dec4, %if.end56.while.cond.backedge_crit_edge196 ], [ %dec4, %if.end56.while.cond.backedge_crit_edge197 ], [ %dec4, %if.end51.while.cond.backedge_crit_edge ], [ %dec4, %if.end51.while.cond.backedge_crit_edge189 ], [ %dec4, %if.end51.while.cond.backedge_crit_edge190 ], [ %dec4, %if.end51.while.cond.backedge_crit_edge191 ], [ %dec4, %if.end51.while.cond.backedge_crit_edge192 ], [ %dec4, %if.end51.while.cond.backedge_crit_edge193 ]
  %recursion.1.ph = phi i8 [ %recursion.0168, %if.else.while.cond.backedge_crit_edge ], [ %dec53, %lor.lhs.false62.while.cond.backedge_crit_edge ], [ %recursion.0168, %if.end40.while.cond.backedge_crit_edge ], [ %dec53, %if.end56.while.cond.backedge_crit_edge ], [ %dec53, %if.end56.while.cond.backedge_crit_edge194 ], [ %dec53, %if.end56.while.cond.backedge_crit_edge195 ], [ %dec53, %if.end56.while.cond.backedge_crit_edge196 ], [ %dec53, %if.end56.while.cond.backedge_crit_edge197 ], [ %recursion.0168, %if.end51.while.cond.backedge_crit_edge ], [ %recursion.0168, %if.end51.while.cond.backedge_crit_edge189 ], [ %recursion.0168, %if.end51.while.cond.backedge_crit_edge190 ], [ %recursion.0168, %if.end51.while.cond.backedge_crit_edge191 ], [ %recursion.0168, %if.end51.while.cond.backedge_crit_edge192 ], [ %recursion.0168, %if.end51.while.cond.backedge_crit_edge193 ]
  %in_repetition.1.off0.ph = phi i1 [ %in_repetition.0.off0169, %if.else.while.cond.backedge_crit_edge ], [ true, %lor.lhs.false62.while.cond.backedge_crit_edge ], [ %in_repetition.0.off0169, %if.end40.while.cond.backedge_crit_edge ], [ %in_repetition.0.off0169, %if.end56.while.cond.backedge_crit_edge ], [ %in_repetition.0.off0169, %if.end56.while.cond.backedge_crit_edge194 ], [ %in_repetition.0.off0169, %if.end56.while.cond.backedge_crit_edge195 ], [ %in_repetition.0.off0169, %if.end56.while.cond.backedge_crit_edge196 ], [ %in_repetition.0.off0169, %if.end56.while.cond.backedge_crit_edge197 ], [ %in_repetition.0.off0169, %if.end51.while.cond.backedge_crit_edge ], [ %in_repetition.0.off0169, %if.end51.while.cond.backedge_crit_edge189 ], [ %in_repetition.0.off0169, %if.end51.while.cond.backedge_crit_edge190 ], [ %in_repetition.0.off0169, %if.end51.while.cond.backedge_crit_edge191 ], [ %in_repetition.0.off0169, %if.end51.while.cond.backedge_crit_edge192 ], [ %in_repetition.0.off0169, %if.end51.while.cond.backedge_crit_edge193 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.3.ph)
  %tobool1.not = icmp eq i32 %len.addr.3.ph, 0
  br i1 %tobool1.not, label %while.end, label %while.cond.backedge.while.body.backedge_crit_edge

while.cond.backedge.while.body.backedge_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.backedge

while.body.backedge:                              ; preds = %while.cond.backedge.thread.while.body.backedge_crit_edge, %while.cond.backedge.while.body.backedge_crit_edge
  %in_repetition.0.off0169.be = phi i1 [ %in_repetition.1.off0.ph, %while.cond.backedge.while.body.backedge_crit_edge ], [ false, %while.cond.backedge.thread.while.body.backedge_crit_edge ]
  %recursion.0168.be = phi i8 [ %recursion.1.ph, %while.cond.backedge.while.body.backedge_crit_edge ], [ %dec53, %while.cond.backedge.thread.while.body.backedge_crit_edge ]
  %len.addr.0167.be = phi i32 [ %len.addr.3.ph, %while.cond.backedge.while.body.backedge_crit_edge ], [ %dec4, %while.cond.backedge.thread.while.body.backedge_crit_edge ]
  %string.addr.0166.be = phi ptr [ %string.addr.2.ph, %while.cond.backedge.while.body.backedge_crit_edge ], [ %incdec.ptr8, %while.cond.backedge.thread.while.body.backedge_crit_edge ]
  br label %while.body

while.cond.backedge.thread:                       ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec4)
  %tobool1.not186 = icmp eq i32 %dec4, 0
  br i1 %tobool1.not186, label %while.cond.backedge.thread.cleanup102_crit_edge, label %while.cond.backedge.thread.while.body.backedge_crit_edge

while.cond.backedge.thread.while.body.backedge_crit_edge: ; preds = %while.cond.backedge.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.backedge

while.cond.backedge.thread.cleanup102_crit_edge:  ; preds = %while.cond.backedge.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup102

while.end:                                        ; preds = %while.cond.backedge
  br i1 %in_repetition.1.off0.ph, label %while.end.out_crit_edge, label %while.end.cleanup102_crit_edge

while.end.cleanup102_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup102

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %while.end.out_crit_edge, %if.else.out_crit_edge, %sw.bb69.out_crit_edge, %lor.lhs.false62.out_crit_edge, %sw.bb59.out_crit_edge, %if.end56.out_crit_edge, %sw.epilog.out_crit_edge, %if.end40.out_crit_edge, %if.end21.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then15.out_crit_edge, %if.then3.out_crit_edge, %entry.out_crit_edge
  br label %cleanup102

cleanup102:                                       ; preds = %out, %while.end.cleanup102_crit_edge, %while.cond.backedge.thread.cleanup102_crit_edge
  %retval.0 = phi i1 [ false, %out ], [ true, %while.end.cleanup102_crit_edge ], [ true, %while.cond.backedge.thread.cleanup102_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_correct_path(ptr noundef readonly %filename) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %filename) #16
  %call.i = tail call ptr @memchr(ptr noundef %filename, i32 noundef 47, i32 noundef %call) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.tomoyo_correct_path2.exit_crit_edge, label %land.lhs.true.i

entry.tomoyo_correct_path2.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_correct_path2.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call ptr @memchr(ptr noundef %filename, i32 noundef 46, i32 noundef %call) #17
  %tobool2.not.i = icmp eq ptr %call1.i, null
  %cmp.i = icmp ult ptr %call.i, %call1.i
  %or.cond.i = select i1 %tobool2.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %land.rhs.i, label %land.lhs.true.i.tomoyo_correct_path2.exit_crit_edge

land.lhs.true.i.tomoyo_correct_path2.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_correct_path2.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = tail call fastcc zeroext i1 @tomoyo_correct_word2(ptr noundef %filename, i32 noundef %call) #13
  br label %tomoyo_correct_path2.exit

tomoyo_correct_path2.exit:                        ; preds = %land.rhs.i, %land.lhs.true.i.tomoyo_correct_path2.exit_crit_edge, %entry.tomoyo_correct_path2.exit_crit_edge
  %0 = phi i1 [ false, %entry.tomoyo_correct_path2.exit_crit_edge ], [ %call3.i, %land.rhs.i ], [ false, %land.lhs.true.i.tomoyo_correct_path2.exit_crit_edge ]
  ret i1 %0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_domain_def(ptr noundef %buffer) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %1)
  %cmp.not = icmp eq i8 %1, 60
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @strchr(ptr noundef %buffer, i32 noundef 32)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 @strlen(ptr noundef %buffer) #16
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buffer to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %len.0 = phi i32 [ %sub.ptr.sub, %if.else ], [ %call3, %if.then2 ]
  %sub = add i32 %len.0, -1
  %arrayidx = getelementptr i8, ptr %buffer, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %3)
  %cmp6.not = icmp eq i8 %3, 62
  br i1 %cmp6.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %buffer, i32 1
  %sub8 = add i32 %len.0, -2
  %call9 = tail call fastcc zeroext i1 @tomoyo_correct_word2(ptr noundef %add.ptr, i32 noundef %sub8)
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ %call9, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_find_domain(ptr noundef %domainname) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca %struct.tomoyo_path_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #13
  %0 = getelementptr inbounds %struct.tomoyo_path_info, ptr %name, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %name, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %domainname, ptr %name, align 4
  call void @tomoyo_fill_path_info(ptr noundef nonnull %name)
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %srcu_read_lock_held.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

srcu_read_lock_held.exit:                         ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end_crit_edge

srcu_read_lock_held.exit.do.end_crit_edge:        ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call2 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b32 = load i1, ptr @tomoyo_find_domain.__warned, align 1
  br i1 %.b32, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tomoyo_find_domain.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 620, ptr noundef nonnull @.str.7) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %srcu_read_lock_held.exit.do.end_crit_edge, %entry.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_domain_list to i32))
  %domain.036 = load volatile ptr, ptr @tomoyo_domain_list, align 4
  %cmp.not37 = icmp eq ptr %domain.036, @tomoyo_domain_list
  br i1 %cmp.not37, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %domain.038 = phi ptr [ %domain.0, %for.inc.for.body_crit_edge ], [ %domain.036, %do.end.for.body_crit_edge ]
  %is_deleted = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.038, i32 0, i32 6
  %4 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_deleted, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool13.not = icmp eq i8 %5, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true14:                                  ; preds = %for.body
  %domainname15 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.038, i32 0, i32 2
  %6 = ptrtoint ptr %domainname15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domainname15, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %hash1.i = getelementptr inbounds %struct.tomoyo_path_info, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %hash1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not.i = icmp eq i32 %9, %11
  br i1 %cmp.not.i, label %tomoyo_pathcmp.exit, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

tomoyo_pathcmp.exit:                              ; preds = %land.lhs.true14
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %call.i33 = tail call i32 @strcmp(ptr noundef %13, ptr noundef %15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.i.not = icmp eq i32 %call.i33, 0
  br i1 %tobool.i.not, label %tomoyo_pathcmp.exit.cleanup_crit_edge, label %tomoyo_pathcmp.exit.for.inc_crit_edge

tomoyo_pathcmp.exit.for.inc_crit_edge:            ; preds = %tomoyo_pathcmp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

tomoyo_pathcmp.exit.cleanup_crit_edge:            ; preds = %tomoyo_pathcmp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %tomoyo_pathcmp.exit.for.inc_crit_edge, %land.lhs.true14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %domain.038 to i32
  call void @__asan_load4_noabort(i32 %16)
  %domain.0 = load volatile ptr, ptr %domain.038, align 4
  %cmp.not = icmp eq ptr %domain.0, @tomoyo_domain_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %tomoyo_pathcmp.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %domain.038, %tomoyo_pathcmp.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #13
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_fill_path_info(ptr nocapture noundef %ptr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tomoyo_const_part_length.exit_crit_edge, label %entry.while.cond.i_crit_edge

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

entry.tomoyo_const_part_length.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_const_part_length.exit

while.cond.i:                                     ; preds = %while.cond.backedge.i, %entry.while.cond.i_crit_edge
  %filename.addr.0.i = phi ptr [ %filename.addr.0.be.i, %while.cond.backedge.i ], [ %1, %entry.while.cond.i_crit_edge ]
  %len.0.i = phi i32 [ %inc.i, %while.cond.backedge.i ], [ 0, %entry.while.cond.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %filename.addr.0.i, i32 1
  %2 = ptrtoint ptr %filename.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %filename.addr.0.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %3, label %while.cond.i.while.cond.backedge.i_crit_edge [
    i8 0, label %while.cond.i.tomoyo_const_part_length.exit_crit_edge
    i8 92, label %if.end6.i
  ]

while.cond.i.tomoyo_const_part_length.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_const_part_length.exit

while.cond.i.while.cond.backedge.i_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end28.i, %if.end6.i.while.cond.backedge.i_crit_edge, %while.cond.i.while.cond.backedge.i_crit_edge
  %.sink.i = phi i32 [ 4, %if.end28.i ], [ 2, %if.end6.i.while.cond.backedge.i_crit_edge ], [ 1, %while.cond.i.while.cond.backedge.i_crit_edge ]
  %filename.addr.0.be.i = phi ptr [ %incdec.ptr19.i, %if.end28.i ], [ %incdec.ptr7.i, %if.end6.i.while.cond.backedge.i_crit_edge ], [ %incdec.ptr.i, %while.cond.i.while.cond.backedge.i_crit_edge ]
  %inc.i = add i32 %.sink.i, %len.0.i
  br label %while.cond.i

if.end6.i:                                        ; preds = %while.cond.i
  %incdec.ptr7.i = getelementptr i8, ptr %filename.addr.0.i, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr.i, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %6, label %if.end6.i.tomoyo_const_part_length.exit_crit_edge [
    i8 92, label %if.end6.i.while.cond.backedge.i_crit_edge
    i8 48, label %if.end6.i.sw.bb9.i_crit_edge
    i8 49, label %if.end6.i.sw.bb9.i_crit_edge22
    i8 50, label %if.end6.i.sw.bb9.i_crit_edge23
    i8 51, label %if.end6.i.sw.bb9.i_crit_edge24
  ]

if.end6.i.sw.bb9.i_crit_edge24:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb9.i

if.end6.i.sw.bb9.i_crit_edge23:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb9.i

if.end6.i.sw.bb9.i_crit_edge22:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb9.i

if.end6.i.sw.bb9.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb9.i

if.end6.i.while.cond.backedge.i_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.i

if.end6.i.tomoyo_const_part_length.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_const_part_length.exit

sw.bb9.i:                                         ; preds = %if.end6.i.sw.bb9.i_crit_edge, %if.end6.i.sw.bb9.i_crit_edge22, %if.end6.i.sw.bb9.i_crit_edge23, %if.end6.i.sw.bb9.i_crit_edge24
  %8 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr7.i, align 1
  %10 = add i8 %9, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %10)
  %11 = icmp ult i8 %10, -8
  br i1 %11, label %sw.bb9.i.tomoyo_const_part_length.exit_crit_edge, label %if.end18.i

sw.bb9.i.tomoyo_const_part_length.exit_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_const_part_length.exit

if.end18.i:                                       ; preds = %sw.bb9.i
  %incdec.ptr10.i = getelementptr i8, ptr %filename.addr.0.i, i32 3
  %12 = ptrtoint ptr %incdec.ptr10.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr10.i, align 1
  %14 = add i8 %13, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %14)
  %15 = icmp ult i8 %14, -8
  br i1 %15, label %if.end18.i.tomoyo_const_part_length.exit_crit_edge, label %if.end28.i

if.end18.i.tomoyo_const_part_length.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_const_part_length.exit

if.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr19.i = getelementptr i8, ptr %filename.addr.0.i, i32 4
  br label %while.cond.backedge.i

tomoyo_const_part_length.exit:                    ; preds = %if.end18.i.tomoyo_const_part_length.exit_crit_edge, %sw.bb9.i.tomoyo_const_part_length.exit_crit_edge, %if.end6.i.tomoyo_const_part_length.exit_crit_edge, %while.cond.i.tomoyo_const_part_length.exit_crit_edge, %entry.tomoyo_const_part_length.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.tomoyo_const_part_length.exit_crit_edge ], [ %len.0.i, %if.end18.i.tomoyo_const_part_length.exit_crit_edge ], [ %len.0.i, %sw.bb9.i.tomoyo_const_part_length.exit_crit_edge ], [ %len.0.i, %if.end6.i.tomoyo_const_part_length.exit_crit_edge ], [ %len.0.i, %while.cond.i.tomoyo_const_part_length.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i16
  %const_len = getelementptr inbounds %struct.tomoyo_path_info, ptr %ptr, i32 0, i32 2
  %16 = ptrtoint ptr %const_len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %const_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %tomoyo_const_part_length.exit.land.end_crit_edge, label %land.rhs

tomoyo_const_part_length.exit.land.end_crit_edge: ; preds = %tomoyo_const_part_length.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %tomoyo_const_part_length.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i32 %call, -1
  %arrayidx = getelementptr i8, ptr %1, i32 %sub
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %18)
  %cmp = icmp eq i8 %18, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %tomoyo_const_part_length.exit.land.end_crit_edge
  %19 = phi i1 [ false, %tomoyo_const_part_length.exit.land.end_crit_edge ], [ %cmp, %land.rhs ]
  %is_dir = getelementptr inbounds %struct.tomoyo_path_info, ptr %ptr, i32 0, i32 3
  %frombool = zext i1 %19 to i8
  %20 = ptrtoint ptr %is_dir to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %is_dir, align 2
  %conv6 = and i32 %retval.0.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv6)
  %cmp7 = icmp sgt i32 %call, %conv6
  %is_patterned = getelementptr inbounds %struct.tomoyo_path_info, ptr %ptr, i32 0, i32 4
  %frombool9 = zext i1 %cmp7 to i8
  %21 = ptrtoint ptr %is_patterned to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool9, ptr %is_patterned, align 1
  %call10 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %1, i32 noundef %call) #18
  %hash = getelementptr inbounds %struct.tomoyo_path_info, ptr %ptr, i32 0, i32 1
  %22 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call10, ptr %hash, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_path_matches_pattern(ptr nocapture noundef readonly %filename, ptr nocapture noundef readonly %pattern) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filename, align 4
  %2 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pattern, align 4
  %const_len = getelementptr inbounds %struct.tomoyo_path_info, ptr %pattern, i32 0, i32 2
  %4 = ptrtoint ptr %const_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %const_len, align 4
  %conv = zext i16 %5 to i32
  %is_patterned = getelementptr inbounds %struct.tomoyo_path_info, ptr %pattern, i32 0, i32 4
  %6 = ptrtoint ptr %is_patterned to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_patterned, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %hash.i = getelementptr inbounds %struct.tomoyo_path_info, ptr %filename, i32 0, i32 1
  %8 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash.i, align 4
  %hash1.i = getelementptr inbounds %struct.tomoyo_path_info, ptr %pattern, i32 0, i32 1
  %10 = ptrtoint ptr %hash1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not.i = icmp eq i32 %9, %11
  br i1 %cmp.not.i, label %lor.rhs.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_dir = getelementptr inbounds %struct.tomoyo_path_info, ptr %filename, i32 0, i32 3
  %12 = ptrtoint ptr %is_dir to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_dir, align 2, !range !35
  %is_dir4 = getelementptr inbounds %struct.tomoyo_path_info, ptr %pattern, i32 0, i32 3
  %14 = ptrtoint ptr %is_dir4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_dir4, align 2, !range !35
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp.not = icmp eq i8 %13, %15
  br i1 %cmp.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @strncmp(ptr noundef %1, ptr noundef %3, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %add.ptr14 = getelementptr i8, ptr %3, i32 %conv
  %call15 = tail call fastcc zeroext i1 @tomoyo_path_matches_pattern2(ptr noundef %add.ptr, ptr noundef %add.ptr14)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.rhs.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ %call15, %if.end13 ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end9.cleanup_crit_edge ], [ false, %if.then.cleanup_crit_edge ], [ %tobool.i, %lor.rhs.i ]
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tomoyo_path_matches_pattern2(ptr noundef %f, ptr noundef %p) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %f, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not188 = icmp eq i8 %1, 0
  br i1 %tobool.not188, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs:                                         ; preds = %if.end21.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %p.addr.0192 = phi ptr [ %p.addr.1, %if.end21.land.rhs_crit_edge ], [ %p, %entry.land.rhs_crit_edge ]
  %f.addr.0189 = phi ptr [ %spec.select, %if.end21.land.rhs_crit_edge ], [ %f, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %p.addr.0192 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p.addr.0192, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.rhs.while.end.loopexit_crit_edge, label %while.body

land.rhs.while.end.loopexit_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.loopexit

while.body:                                       ; preds = %land.rhs
  %call = tail call ptr @strchr(ptr noundef %f.addr.0189, i32 noundef 47)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 @strlen(ptr noundef %f.addr.0189) #16
  %add.ptr = getelementptr i8, ptr %f.addr.0189, i32 %call4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %f_delimiter.0 = phi ptr [ %call, %while.body.if.end_crit_edge ], [ %add.ptr, %if.then ]
  %call5 = tail call ptr @strchr(ptr noundef %p.addr.0192, i32 noundef 47)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @strlen(ptr noundef %p.addr.0192) #16
  %add.ptr9 = getelementptr i8, ptr %p.addr.0192, i32 %call8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %p_delimiter.0 = phi ptr [ %call5, %if.end.if.end10_crit_edge ], [ %add.ptr9, %if.then7 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %3)
  %cmp = icmp eq i8 %3, 92
  br i1 %cmp, label %land.lhs.true, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end10
  %add.ptr13 = getelementptr i8, ptr %p.addr.0192, i32 1
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 123, i8 %5)
  %cmp15 = icmp eq i8 %5, 123
  br i1 %cmp15, label %recursive, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %add.ptr.i = getelementptr i8, ptr %p_delimiter.0, i32 -1
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end.i.while.cond.outer.i_crit_edge, %if.end18
  %pattern.addr.0.ph.i = phi ptr [ %incdec.ptr3.i, %if.end.i.while.cond.outer.i_crit_edge ], [ %p.addr.0192, %if.end18 ]
  %first.0.off0.ph.i = phi i1 [ false, %if.end.i.while.cond.outer.i_crit_edge ], [ true, %if.end18 ]
  %cmp43.i = icmp ult ptr %pattern.addr.0.ph.i, %add.ptr.i
  br i1 %cmp43.i, label %while.cond.outer.i.while.body.i_crit_edge, label %while.cond.outer.i.tomoyo_file_matches_pattern.exit_crit_edge

while.cond.outer.i.tomoyo_file_matches_pattern.exit_crit_edge: ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_file_matches_pattern.exit

while.cond.outer.i.while.body.i_crit_edge:        ; preds = %while.cond.outer.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.then.i.while.body.i_crit_edge, %while.cond.outer.i.while.body.i_crit_edge
  %pattern.addr.044.i = phi ptr [ %pattern.addr.1.i, %if.then.i.while.body.i_crit_edge ], [ %pattern.addr.0.ph.i, %while.cond.outer.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %pattern.addr.044.i, i32 1
  %6 = ptrtoint ptr %pattern.addr.044.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pattern.addr.044.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %7)
  %cmp1.not.i = icmp eq i8 %7, 92
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %while.body.i.if.then.i_crit_edge

while.body.i.if.then.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %incdec.ptr3.i = getelementptr i8, ptr %pattern.addr.044.i, i32 2
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %9)
  %cmp5.not.i = icmp eq i8 %9, 45
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %while.body.i.if.then.i_crit_edge
  %pattern.addr.1.i = phi ptr [ %incdec.ptr.i, %while.body.i.if.then.i_crit_edge ], [ %incdec.ptr3.i, %lor.lhs.false.i.if.then.i_crit_edge ]
  %cmp.i = icmp ult ptr %pattern.addr.1.i, %add.ptr.i
  br i1 %cmp.i, label %if.then.i.while.body.i_crit_edge, label %if.then.i.tomoyo_file_matches_pattern.exit_crit_edge

if.then.i.tomoyo_file_matches_pattern.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_file_matches_pattern.exit

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call fastcc zeroext i1 @tomoyo_file_matches_pattern2(ptr noundef %f.addr.0189, ptr noundef %f_delimiter.0, ptr noundef %pattern.addr.0.ph.i, ptr noundef %pattern.addr.044.i) #13
  %spec.select.i = xor i1 %first.0.off0.ph.i, %call.i
  br i1 %spec.select.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.cond.outer.i_crit_edge

if.end.i.while.cond.outer.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.outer.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

tomoyo_file_matches_pattern.exit:                 ; preds = %if.then.i.tomoyo_file_matches_pattern.exit_crit_edge, %while.cond.outer.i.tomoyo_file_matches_pattern.exit_crit_edge
  %call15.i = tail call fastcc zeroext i1 @tomoyo_file_matches_pattern2(ptr noundef %f.addr.0189, ptr noundef %f_delimiter.0, ptr noundef %pattern.addr.0.ph.i, ptr noundef %p_delimiter.0) #13
  %10 = xor i1 %first.0.off0.ph.i, %call15.i
  br i1 %10, label %tomoyo_file_matches_pattern.exit.cleanup_crit_edge, label %if.end21

tomoyo_file_matches_pattern.exit.cleanup_crit_edge: ; preds = %tomoyo_file_matches_pattern.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %tomoyo_file_matches_pattern.exit
  %11 = ptrtoint ptr %f_delimiter.0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %f_delimiter.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool22.not = icmp ne i8 %12, 0
  %spec.select.idx = zext i1 %tobool22.not to i32
  %spec.select = getelementptr i8, ptr %f_delimiter.0, i32 %spec.select.idx
  %13 = ptrtoint ptr %p_delimiter.0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %p_delimiter.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool25.not = icmp ne i8 %14, 0
  %p.addr.1.idx = zext i1 %tobool25.not to i32
  %p.addr.1 = getelementptr i8, ptr %p_delimiter.0, i32 %p.addr.1.idx
  %15 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %spec.select, align 1
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end21.while.end.loopexit_crit_edge, label %if.end21.land.rhs_crit_edge

if.end21.land.rhs_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.end21.while.end.loopexit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %if.end21.while.end.loopexit_crit_edge, %land.rhs.while.end.loopexit_crit_edge
  %p.addr.0.lcssa.ph = phi ptr [ %p.addr.0192, %land.rhs.while.end.loopexit_crit_edge ], [ %p.addr.1, %if.end21.while.end.loopexit_crit_edge ]
  %17 = xor i1 %tobool2.not, true
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %p.addr.0.lcssa = phi ptr [ %p, %entry.while.end_crit_edge ], [ %p.addr.0.lcssa.ph, %while.end.loopexit ]
  %tobool.not.lcssa = phi i1 [ true, %entry.while.end_crit_edge ], [ %17, %while.end.loopexit ]
  %18 = ptrtoint ptr %p.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %p.addr.0.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %19)
  %cmp31198 = icmp eq i8 %19, 92
  br i1 %cmp31198, label %while.end.land.rhs33_crit_edge, label %while.end.while.end45_crit_edge

while.end.while.end45_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end45

while.end.land.rhs33_crit_edge:                   ; preds = %while.end
  br label %land.rhs33

land.rhs33:                                       ; preds = %while.body43.land.rhs33_crit_edge, %while.end.land.rhs33_crit_edge
  %p.addr.2199 = phi ptr [ %add.ptr44, %while.body43.land.rhs33_crit_edge ], [ %p.addr.0.lcssa, %while.end.land.rhs33_crit_edge ]
  %add.ptr34 = getelementptr i8, ptr %p.addr.2199, i32 1
  %20 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr34, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %21, label %land.rhs33.while.end45_crit_edge [
    i8 42, label %land.rhs33.while.body43_crit_edge
    i8 64, label %land.rhs33.while.body43_crit_edge354
  ]

land.rhs33.while.body43_crit_edge354:             ; preds = %land.rhs33
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body43

land.rhs33.while.body43_crit_edge:                ; preds = %land.rhs33
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body43

land.rhs33.while.end45_crit_edge:                 ; preds = %land.rhs33
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end45

while.body43:                                     ; preds = %land.rhs33.while.body43_crit_edge, %land.rhs33.while.body43_crit_edge354
  %add.ptr44 = getelementptr i8, ptr %p.addr.2199, i32 2
  %23 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr44, align 1
  %cmp31 = icmp eq i8 %24, 92
  br i1 %cmp31, label %while.body43.land.rhs33_crit_edge, label %while.body43.while.end45_crit_edge

while.body43.while.end45_crit_edge:               ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end45

while.body43.land.rhs33_crit_edge:                ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs33

while.end45:                                      ; preds = %while.body43.while.end45_crit_edge, %land.rhs33.while.end45_crit_edge, %while.end.while.end45_crit_edge
  %.lcssa = phi i8 [ %19, %while.end.while.end45_crit_edge ], [ 92, %land.rhs33.while.end45_crit_edge ], [ %24, %while.body43.while.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa)
  %tobool48.not = icmp eq i8 %.lcssa, 0
  %spec.select155 = select i1 %tobool.not.lcssa, i1 %tobool48.not, i1 false
  br label %cleanup

recursive:                                        ; preds = %land.lhs.true
  %add.ptr50 = getelementptr i8, ptr %p.addr.0192, i32 -1
  %25 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %26)
  %cmp52.not = icmp eq i8 %26, 47
  %add.ptr54 = getelementptr i8, ptr %p.addr.0192, i32 3
  %cmp55.not = icmp ugt ptr %p_delimiter.0, %add.ptr54
  %or.cond = select i1 %cmp52.not, i1 %cmp55.not, i1 false
  br i1 %or.cond, label %lor.lhs.false57, label %recursive.cleanup_crit_edge

recursive.cleanup_crit_edge:                      ; preds = %recursive
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false57:                                  ; preds = %recursive
  %27 = ptrtoint ptr %p_delimiter.0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %p_delimiter.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %28)
  %cmp59.not = icmp eq i8 %28, 47
  br i1 %cmp59.not, label %lor.lhs.false61, label %lor.lhs.false57.cleanup_crit_edge

lor.lhs.false57.cleanup_crit_edge:                ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false61:                                  ; preds = %lor.lhs.false57
  %add.ptr62 = getelementptr i8, ptr %p_delimiter.0, i32 -1
  %29 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 125, i8 %30)
  %cmp64.not = icmp eq i8 %30, 125
  br i1 %cmp64.not, label %lor.lhs.false66, label %lor.lhs.false61.cleanup_crit_edge

lor.lhs.false61.cleanup_crit_edge:                ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false66:                                  ; preds = %lor.lhs.false61
  %add.ptr67 = getelementptr i8, ptr %p_delimiter.0, i32 -2
  %31 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %32)
  %cmp69.not = icmp eq i8 %32, 92
  br i1 %cmp69.not, label %do.body.preheader, label %lor.lhs.false66.cleanup_crit_edge

lor.lhs.false66.cleanup_crit_edge:                ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.preheader:                                ; preds = %lor.lhs.false66
  %add.ptr73 = getelementptr i8, ptr %p.addr.0192, i32 2
  %add.ptr.i130 = getelementptr i8, ptr %p_delimiter.0, i32 -3
  %add.ptr82 = getelementptr i8, ptr %p_delimiter.0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end85.do.body_crit_edge, %do.body.preheader
  %f.addr.2 = phi ptr [ %incdec.ptr81, %if.end85.do.body_crit_edge ], [ %f.addr.0189, %do.body.preheader ]
  %f_delimiter.1 = phi ptr [ %call86, %if.end85.do.body_crit_edge ], [ %f_delimiter.0, %do.body.preheader ]
  br label %while.cond.outer.i134

while.cond.outer.i134:                            ; preds = %if.end.i147.while.cond.outer.i134_crit_edge, %do.body
  %pattern.addr.0.ph.i131 = phi ptr [ %incdec.ptr3.i139, %if.end.i147.while.cond.outer.i134_crit_edge ], [ %add.ptr73, %do.body ]
  %first.0.off0.ph.i132 = phi i1 [ false, %if.end.i147.while.cond.outer.i134_crit_edge ], [ true, %do.body ]
  %cmp43.i133 = icmp ult ptr %pattern.addr.0.ph.i131, %add.ptr.i130
  br i1 %cmp43.i133, label %while.cond.outer.i134.while.body.i138_crit_edge, label %while.cond.outer.i134.tomoyo_file_matches_pattern.exit152_crit_edge

while.cond.outer.i134.tomoyo_file_matches_pattern.exit152_crit_edge: ; preds = %while.cond.outer.i134
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_file_matches_pattern.exit152

while.cond.outer.i134.while.body.i138_crit_edge:  ; preds = %while.cond.outer.i134
  br label %while.body.i138

while.body.i138:                                  ; preds = %if.then.i144.while.body.i138_crit_edge, %while.cond.outer.i134.while.body.i138_crit_edge
  %pattern.addr.044.i135 = phi ptr [ %pattern.addr.1.i142, %if.then.i144.while.body.i138_crit_edge ], [ %pattern.addr.0.ph.i131, %while.cond.outer.i134.while.body.i138_crit_edge ]
  %incdec.ptr.i136 = getelementptr i8, ptr %pattern.addr.044.i135, i32 1
  %33 = ptrtoint ptr %pattern.addr.044.i135 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pattern.addr.044.i135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %34)
  %cmp1.not.i137 = icmp eq i8 %34, 92
  br i1 %cmp1.not.i137, label %lor.lhs.false.i141, label %while.body.i138.if.then.i144_crit_edge

while.body.i138.if.then.i144_crit_edge:           ; preds = %while.body.i138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i144

lor.lhs.false.i141:                               ; preds = %while.body.i138
  %incdec.ptr3.i139 = getelementptr i8, ptr %pattern.addr.044.i135, i32 2
  %35 = ptrtoint ptr %incdec.ptr.i136 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr.i136, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %36)
  %cmp5.not.i140 = icmp eq i8 %36, 45
  br i1 %cmp5.not.i140, label %if.end.i147, label %lor.lhs.false.i141.if.then.i144_crit_edge

lor.lhs.false.i141.if.then.i144_crit_edge:        ; preds = %lor.lhs.false.i141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i144

if.then.i144:                                     ; preds = %lor.lhs.false.i141.if.then.i144_crit_edge, %while.body.i138.if.then.i144_crit_edge
  %pattern.addr.1.i142 = phi ptr [ %incdec.ptr.i136, %while.body.i138.if.then.i144_crit_edge ], [ %incdec.ptr3.i139, %lor.lhs.false.i141.if.then.i144_crit_edge ]
  %cmp.i143 = icmp ult ptr %pattern.addr.1.i142, %add.ptr.i130
  br i1 %cmp.i143, label %if.then.i144.while.body.i138_crit_edge, label %if.then.i144.tomoyo_file_matches_pattern.exit152_crit_edge

if.then.i144.tomoyo_file_matches_pattern.exit152_crit_edge: ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_file_matches_pattern.exit152

if.then.i144.while.body.i138_crit_edge:           ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i138

if.end.i147:                                      ; preds = %lor.lhs.false.i141
  %call.i145 = tail call fastcc zeroext i1 @tomoyo_file_matches_pattern2(ptr noundef %f.addr.2, ptr noundef %f_delimiter.1, ptr noundef %pattern.addr.0.ph.i131, ptr noundef %pattern.addr.044.i135) #13
  %spec.select.i146 = xor i1 %first.0.off0.ph.i132, %call.i145
  br i1 %spec.select.i146, label %if.end.i147.cleanup_crit_edge, label %if.end.i147.while.cond.outer.i134_crit_edge

if.end.i147.while.cond.outer.i134_crit_edge:      ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.outer.i134

if.end.i147.cleanup_crit_edge:                    ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

tomoyo_file_matches_pattern.exit152:              ; preds = %if.then.i144.tomoyo_file_matches_pattern.exit152_crit_edge, %while.cond.outer.i134.tomoyo_file_matches_pattern.exit152_crit_edge
  %call15.i148 = tail call fastcc zeroext i1 @tomoyo_file_matches_pattern2(ptr noundef %f.addr.2, ptr noundef %f_delimiter.1, ptr noundef %pattern.addr.0.ph.i131, ptr noundef %add.ptr67) #13
  %37 = xor i1 %first.0.off0.ph.i132, %call15.i148
  br i1 %37, label %tomoyo_file_matches_pattern.exit152.cleanup_crit_edge, label %if.end77

tomoyo_file_matches_pattern.exit152.cleanup_crit_edge: ; preds = %tomoyo_file_matches_pattern.exit152
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end77:                                         ; preds = %tomoyo_file_matches_pattern.exit152
  %38 = ptrtoint ptr %f_delimiter.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %f_delimiter.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool78.not = icmp eq i8 %39, 0
  br i1 %tobool78.not, label %if.end77.cleanup_crit_edge, label %if.end80

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end80:                                         ; preds = %if.end77
  %incdec.ptr81 = getelementptr i8, ptr %f_delimiter.1, i32 1
  %call83 = tail call fastcc zeroext i1 @tomoyo_path_matches_pattern2(ptr noundef %incdec.ptr81, ptr noundef %add.ptr82)
  br i1 %call83, label %if.end80.cleanup_crit_edge, label %if.end85

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end85:                                         ; preds = %if.end80
  %call86 = tail call ptr @strchr(ptr noundef %incdec.ptr81, i32 noundef 47)
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end85.cleanup_crit_edge, label %if.end85.do.body_crit_edge

if.end85.do.body_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end85.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %tomoyo_file_matches_pattern.exit152.cleanup_crit_edge, %if.end.i147.cleanup_crit_edge, %lor.lhs.false66.cleanup_crit_edge, %lor.lhs.false61.cleanup_crit_edge, %lor.lhs.false57.cleanup_crit_edge, %recursive.cleanup_crit_edge, %while.end45, %tomoyo_file_matches_pattern.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false66.cleanup_crit_edge ], [ false, %lor.lhs.false61.cleanup_crit_edge ], [ false, %lor.lhs.false57.cleanup_crit_edge ], [ false, %recursive.cleanup_crit_edge ], [ %spec.select155, %while.end45 ], [ false, %if.end.i147.cleanup_crit_edge ], [ false, %if.end85.cleanup_crit_edge ], [ false, %tomoyo_file_matches_pattern.exit152.cleanup_crit_edge ], [ false, %if.end77.cleanup_crit_edge ], [ true, %if.end80.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %tomoyo_file_matches_pattern.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_get_exe() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !24) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @get_mm_exe_file(ptr noundef nonnull %5) #13
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %f_path = getelementptr inbounds %struct.file, ptr %call2, i32 0, i32 1
  %call6 = tail call ptr @tomoyo_realpath_from_path(ptr noundef %f_path) #13
  tail call void @fput(ptr noundef nonnull %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %if.end5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mm_exe_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_realpath_from_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_get_mode(ptr noundef %ns, i8 noundef zeroext %profile, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @tomoyo_profile(ptr noundef %ns, i8 noundef zeroext %profile) #13
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr %struct.tomoyo_profile, ptr %call, i32 0, i32 6, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp eq i8 %2, -1
  br i1 %cmp, label %if.end8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end8:                                          ; preds = %if.end
  %arrayidx5 = getelementptr [39 x i8], ptr @tomoyo_index2category, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv6, 39
  %arrayidx7 = getelementptr %struct.tomoyo_profile, ptr %call, i32 0, i32 6, i32 %add
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp10 = icmp eq i8 %6, -1
  br i1 %cmp10, label %if.then12, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %default_config = getelementptr inbounds %struct.tomoyo_profile, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %default_config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %default_config, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %mode.1 = phi i8 [ %8, %if.then12 ], [ %6, %if.end8.if.end13_crit_edge ], [ %2, %if.end.if.end13_crit_edge ]
  %9 = and i8 %mode.1, 3
  %and = zext i8 %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end13 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_profile(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_init_request_info(ptr nocapture noundef writeonly %r, ptr noundef %domain, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %r, i32 0, i32 44)
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr @tomoyo_domain() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %domain.addr.0 = phi ptr [ %domain, %entry.if.end_crit_edge ], [ %call, %if.then ]
  %domain1 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %1 = ptrtoint ptr %domain1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %domain.addr.0, ptr %domain1, align 4
  %profile2 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.addr.0, i32 0, i32 5
  %2 = ptrtoint ptr %profile2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %profile2, align 4
  %profile3 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 8
  %4 = ptrtoint ptr %profile3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %profile3, align 1
  %type = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 10
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %index, ptr %type, align 1
  %6 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.tomoyo_get_mode.exit_crit_edge, label %if.end.i

if.end.tomoyo_get_mode.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_get_mode.exit

if.end.i:                                         ; preds = %if.end
  %ns = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.addr.0, i32 0, i32 3
  %7 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns, align 4
  %call.i = tail call ptr @tomoyo_profile(ptr noundef %8, i8 noundef zeroext %3) #13
  %idxprom.i = zext i8 %index to i32
  %arrayidx.i = getelementptr %struct.tomoyo_profile, ptr %call.i, i32 0, i32 6, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp.i = icmp eq i8 %10, -1
  br i1 %cmp.i, label %if.end8.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.end8.i:                                        ; preds = %if.end.i
  %arrayidx5.i = getelementptr [39 x i8], ptr @tomoyo_index2category, i32 0, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv6.i, 39
  %arrayidx7.i = getelementptr %struct.tomoyo_profile, ptr %call.i, i32 0, i32 6, i32 %add.i
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp10.i = icmp eq i8 %14, -1
  br i1 %cmp10.i, label %if.then12.i, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %default_config.i = getelementptr inbounds %struct.tomoyo_profile, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %default_config.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %default_config.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %mode.1.i = phi i8 [ %16, %if.then12.i ], [ %14, %if.end8.i.if.end13.i_crit_edge ], [ %10, %if.end.i.if.end13.i_crit_edge ]
  %17 = and i8 %mode.1.i, 3
  %and.i = zext i8 %17 to i32
  br label %tomoyo_get_mode.exit

tomoyo_get_mode.exit:                             ; preds = %if.end13.i, %if.end.tomoyo_get_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %and.i, %if.end13.i ], [ 0, %if.end.tomoyo_get_mode.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i8
  %mode = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 9
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %mode, align 4
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_domain() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_domain_quota_is_ok(ptr noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %mode = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 9
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup252_crit_edge

entry.cleanup252_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup252

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup252_crit_edge, label %do.end

if.end.cleanup252_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup252

do.end:                                           ; preds = %if.end
  %flags = getelementptr inbounds %struct.tomoyo_domain_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %flags, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %do.body9, label %do.end.cleanup252_crit_edge

do.end.cleanup252_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup252

do.body9:                                         ; preds = %do.end
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body9.do.end21_crit_edge, label %srcu_read_lock_held.exit

do.body9.do.end21_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

srcu_read_lock_held.exit:                         ; preds = %do.body9
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end21_crit_edge

srcu_read_lock_held.exit.do.end21_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call11 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %land.lhs.true.do.end21_crit_edge

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

land.lhs.true13:                                  ; preds = %land.lhs.true
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b301 = load i1, ptr @tomoyo_domain_quota_is_ok.__warned, align 1
  br i1 %.b301, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tomoyo_domain_quota_is_ok.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1057, ptr noundef nonnull @.str.7) #13
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true13.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %srcu_read_lock_held.exit.do.end21_crit_edge, %do.body9.do.end21_crit_edge
  %acl_info_list = getelementptr inbounds %struct.tomoyo_domain_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %acl_info_list to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %ptr.0305 = load volatile ptr, ptr %acl_info_list, align 1
  %cmp28.not306 = icmp eq ptr %ptr.0305, %acl_info_list
  br i1 %cmp28.not306, label %do.end21.for.end_crit_edge, label %do.end21.for.body_crit_edge

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  br label %for.body

do.end21.for.end_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end21.for.body_crit_edge
  %ptr.0308 = phi ptr [ %ptr.0, %cleanup.for.body_crit_edge ], [ %ptr.0305, %do.end21.for.body_crit_edge ]
  %count.0307 = phi i32 [ %count.1, %cleanup.for.body_crit_edge ], [ 0, %do.end21.for.body_crit_edge ]
  %is_deleted = getelementptr inbounds %struct.tomoyo_acl_info, ptr %ptr.0308, i32 0, i32 2
  %7 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_deleted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool30.not = icmp eq i8 %8, 0
  br i1 %tobool30.not, label %if.end32, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %for.body
  %type = getelementptr inbounds %struct.tomoyo_acl_info, ptr %ptr.0308, i32 0, i32 3
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %10, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb40
    i8 2, label %sw.bb49
    i8 3, label %sw.bb58
    i8 5, label %sw.bb67
    i8 6, label %sw.bb76
    i8 8, label %if.end32.cond.false_crit_edge
  ]

if.end32.cond.false_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %perm38 = getelementptr inbounds %struct.tomoyo_path_acl, ptr %ptr.0308, i32 0, i32 1
  %12 = ptrtoint ptr %perm38 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %perm38, align 2
  br label %cond.false

sw.bb40:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %perm46 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %ptr.0308, i32 0, i32 1
  %14 = ptrtoint ptr %perm46 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %perm46, align 2
  %conv48 = zext i8 %15 to i16
  br label %cond.false

sw.bb49:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %perm55 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %ptr.0308, i32 0, i32 1
  %16 = ptrtoint ptr %perm55 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %perm55, align 2
  %conv57 = zext i8 %17 to i16
  br label %cond.false

sw.bb58:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %perm64 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %ptr.0308, i32 0, i32 1
  %18 = ptrtoint ptr %perm64 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %perm64, align 2
  %conv66 = zext i8 %19 to i16
  br label %cond.false

sw.bb67:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %perm73 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %ptr.0308, i32 0, i32 2
  %20 = ptrtoint ptr %perm73 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %perm73, align 1
  %conv75 = zext i8 %21 to i16
  br label %cond.false

sw.bb76:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %perm82 = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %ptr.0308, i32 0, i32 2
  %22 = ptrtoint ptr %perm82 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %perm82, align 1
  %conv84 = zext i8 %23 to i16
  br label %cond.false

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

cond.false:                                       ; preds = %sw.default, %sw.bb76, %sw.bb67, %sw.bb58, %sw.bb49, %sw.bb40, %sw.bb, %if.end32.cond.false_crit_edge
  %perm.0 = phi i16 [ 1, %sw.default ], [ %conv84, %sw.bb76 ], [ %conv75, %sw.bb67 ], [ %conv66, %sw.bb58 ], [ %conv57, %sw.bb49 ], [ %conv48, %sw.bb40 ], [ %13, %sw.bb ], [ 0, %if.end32.cond.false_crit_edge ]
  %conv223 = zext i16 %perm.0 to i32
  %call.i302 = tail call i32 @__sw_hweight16(i32 noundef %conv223) #13
  %add225 = add i32 %call.i302, %count.0307
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %for.body.cleanup_crit_edge
  %count.1 = phi i32 [ %add225, %cond.false ], [ %count.0307, %for.body.cleanup_crit_edge ]
  %24 = ptrtoint ptr %ptr.0308 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %ptr.0 = load volatile ptr, ptr %ptr.0308, align 1
  %cmp28.not = icmp eq ptr %ptr.0, %acl_info_list
  br i1 %cmp28.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end21.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %do.end21.for.end_crit_edge ], [ %count.1, %cleanup.for.end_crit_edge ]
  %ns = getelementptr inbounds %struct.tomoyo_domain_info, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ns, align 4
  %profile = getelementptr inbounds %struct.tomoyo_domain_info, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %profile, align 4
  %call235 = tail call ptr @tomoyo_profile(ptr noundef %26, i8 noundef zeroext %28) #13
  %arrayidx236 = getelementptr %struct.tomoyo_profile, ptr %call235, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx236, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %30)
  %cmp237 = icmp ult i32 %count.0.lcssa, %30
  br i1 %cmp237, label %for.end.cleanup252_crit_edge, label %do.body245

for.end.cleanup252_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup252

do.body245:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %31)
  store volatile i8 1, ptr %flags, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_dif to i32))
  %32 = load ptr, ptr @tomoyo_dif, align 4
  tail call void (ptr, ptr, ...) @tomoyo_write_log(ptr noundef %r, ptr noundef nonnull @.str.8, ptr noundef %32) #13
  br label %cleanup252

cleanup252:                                       ; preds = %do.body245, %for.end.cleanup252_crit_edge, %do.end.cleanup252_crit_edge, %if.end.cleanup252_crit_edge, %entry.cleanup252_crit_edge
  %retval.0 = phi i1 [ false, %do.body245 ], [ false, %entry.cleanup252_crit_edge ], [ true, %if.end.cleanup252_crit_edge ], [ false, %do.end.cleanup252_crit_edge ], [ true, %for.end.cleanup252_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_write_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tomoyo_file_matches_pattern2(ptr noundef %filename, ptr noundef %filename_end, ptr noundef %pattern, ptr noundef %pattern_end) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp398 = icmp ult ptr %filename, %filename_end
  %cmp1399 = icmp ult ptr %pattern, %pattern_end
  %or.cond400 = and i1 %cmp398, %cmp1399
  br i1 %or.cond400, label %entry.while.body_crit_edge, label %entry.while.cond175.preheader_crit_edge

entry.while.cond175.preheader_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond175.preheader

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.cond175.preheader:                          ; preds = %cleanup.while.cond175.preheader_crit_edge, %entry.while.cond175.preheader_crit_edge
  %filename.addr.0.lcssa = phi ptr [ %filename, %entry.while.cond175.preheader_crit_edge ], [ %filename.addr.2, %cleanup.while.cond175.preheader_crit_edge ]
  %pattern.addr.0.lcssa = phi ptr [ %pattern, %entry.while.cond175.preheader_crit_edge ], [ %pattern.addr.2, %cleanup.while.cond175.preheader_crit_edge ]
  %0 = ptrtoint ptr %pattern.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pattern.addr.0.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %1)
  %cmp177310 = icmp eq i8 %1, 92
  br i1 %cmp177310, label %while.cond175.preheader.land.rhs179_crit_edge, label %while.cond175.preheader.while.end191_crit_edge

while.cond175.preheader.while.end191_crit_edge:   ; preds = %while.cond175.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end191

while.cond175.preheader.land.rhs179_crit_edge:    ; preds = %while.cond175.preheader
  br label %land.rhs179

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %pattern.addr.0402 = phi ptr [ %pattern.addr.2, %cleanup.while.body_crit_edge ], [ %pattern, %entry.while.body_crit_edge ]
  %filename.addr.0401 = phi ptr [ %filename.addr.2, %cleanup.while.body_crit_edge ], [ %filename, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %pattern.addr.0402 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pattern.addr.0402, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %3)
  %cmp2.not = icmp eq i8 %3, 92
  %4 = ptrtoint ptr %filename.addr.0401 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %filename.addr.0401, align 1
  br i1 %cmp2.not, label %if.end10, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp7.not = icmp eq i8 %5, %3
  br i1 %cmp7.not, label %if.then.cleanup_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %while.body
  %incdec.ptr11 = getelementptr i8, ptr %pattern.addr.0402, i32 1
  %6 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr11, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %7, label %if.end10.return_crit_edge [
    i8 63, label %sw.bb
    i8 92, label %sw.bb34
    i8 43, label %sw.bb46
    i8 120, label %sw.bb51
    i8 97, label %sw.bb59
    i8 48, label %if.end10.sw.bb63_crit_edge
    i8 49, label %if.end10.sw.bb63_crit_edge439
    i8 50, label %if.end10.sw.bb63_crit_edge440
    i8 51, label %if.end10.sw.bb63_crit_edge441
    i8 42, label %if.end10.sw.bb79_crit_edge
    i8 64, label %if.end10.sw.bb79_crit_edge442
    i8 36, label %if.end10.while.cond121_crit_edge
    i8 88, label %if.end10.while.cond133_crit_edge
    i8 65, label %if.end10.while.cond149_crit_edge
  ]

if.end10.while.cond149_crit_edge:                 ; preds = %if.end10
  br label %while.cond149

if.end10.while.cond133_crit_edge:                 ; preds = %if.end10
  br label %while.cond133

if.end10.while.cond121_crit_edge:                 ; preds = %if.end10
  br label %while.cond121

if.end10.sw.bb79_crit_edge442:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb79

if.end10.sw.bb79_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb79

if.end10.sw.bb63_crit_edge441:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb63

if.end10.sw.bb63_crit_edge440:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb63

if.end10.sw.bb63_crit_edge439:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb63

if.end10.sw.bb63_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb63

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %if.end10
  %9 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %5, label %sw.bb.cleanup_crit_edge [
    i8 47, label %sw.bb.return_crit_edge
    i8 92, label %if.then20
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %sw.bb
  %arrayidx = getelementptr i8, ptr %filename.addr.0401, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %11)
  %cmp22 = icmp eq i8 %11, 92
  br i1 %cmp22, label %if.then20.cleanup_crit_edge, label %if.else26

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else26:                                        ; preds = %if.then20
  %12 = and i8 %11, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %12)
  %13 = icmp eq i8 %12, 48
  br i1 %13, label %land.lhs.true5.i, label %if.else26.return_crit_edge

if.else26.return_crit_edge:                       ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true5.i:                                 ; preds = %if.else26
  %incdec.ptr.i = getelementptr i8, ptr %filename.addr.0401, i32 2
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.i, align 1
  %16 = and i8 %15, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %16)
  %17 = icmp eq i8 %16, 48
  br i1 %17, label %tomoyo_byte_range.exit, label %land.lhs.true5.i.return_crit_edge

land.lhs.true5.i.return_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

tomoyo_byte_range.exit:                           ; preds = %land.lhs.true5.i
  %incdec.ptr10.i = getelementptr i8, ptr %filename.addr.0401, i32 3
  %18 = ptrtoint ptr %incdec.ptr10.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr10.i, align 1
  %20 = and i8 %19, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %20)
  %21 = icmp eq i8 %20, 48
  br i1 %21, label %tomoyo_byte_range.exit.cleanup_crit_edge, label %tomoyo_byte_range.exit.return_crit_edge

tomoyo_byte_range.exit.return_crit_edge:          ; preds = %tomoyo_byte_range.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

tomoyo_byte_range.exit.cleanup_crit_edge:         ; preds = %tomoyo_byte_range.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb34:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %5)
  %cmp36.not = icmp eq i8 %5, 92
  br i1 %cmp36.not, label %if.end39, label %sw.bb34.return_crit_edge

sw.bb34.return_crit_edge:                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end39:                                         ; preds = %sw.bb34
  %incdec.ptr40 = getelementptr i8, ptr %filename.addr.0401, i32 1
  %22 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %23)
  %cmp42.not = icmp eq i8 %23, 92
  br i1 %cmp42.not, label %if.end39.cleanup_crit_edge, label %if.end39.return_crit_edge

if.end39.return_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb46:                                          ; preds = %if.end10
  %conv47 = zext i8 %5 to i32
  %24 = add nsw i32 %conv47, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %24)
  %25 = icmp ult i32 %24, -10
  br i1 %25, label %sw.bb46.return_crit_edge, label %sw.bb46.cleanup_crit_edge

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb46.return_crit_edge:                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb51:                                          ; preds = %if.end10
  %conv52 = zext i8 %5 to i32
  %arrayidx53 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv52
  %26 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx53, align 1
  %28 = and i8 %27, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp55.not = icmp eq i8 %28, 0
  br i1 %cmp55.not, label %sw.bb51.return_crit_edge, label %sw.bb51.cleanup_crit_edge

sw.bb51.cleanup_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb51.return_crit_edge:                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb59:                                          ; preds = %if.end10
  %29 = and i8 %5, -33
  %30 = add i8 %29, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %30)
  %31 = icmp ult i8 %30, 26
  br i1 %31, label %sw.bb59.cleanup_crit_edge, label %sw.bb59.return_crit_edge

sw.bb59.return_crit_edge:                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb59.cleanup_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb63:                                          ; preds = %if.end10.sw.bb63_crit_edge, %if.end10.sw.bb63_crit_edge439, %if.end10.sw.bb63_crit_edge440, %if.end10.sw.bb63_crit_edge441
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %5)
  %cmp65 = icmp eq i8 %5, 92
  br i1 %cmp65, label %land.lhs.true, label %sw.bb63.return_crit_edge

sw.bb63.return_crit_edge:                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true:                                    ; preds = %sw.bb63
  %add.ptr67 = getelementptr i8, ptr %filename.addr.0401, i32 1
  %32 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr67, align 1
  %34 = and i8 %33, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %34)
  %35 = icmp eq i8 %34, 48
  br i1 %35, label %land.lhs.true5.i270, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true5.i270:                              ; preds = %land.lhs.true
  %incdec.ptr.i269 = getelementptr i8, ptr %filename.addr.0401, i32 2
  %36 = ptrtoint ptr %incdec.ptr.i269 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.i269, align 1
  %38 = and i8 %37, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %38)
  %39 = icmp eq i8 %38, 48
  br i1 %39, label %tomoyo_byte_range.exit273, label %land.lhs.true5.i270.return_crit_edge

land.lhs.true5.i270.return_crit_edge:             ; preds = %land.lhs.true5.i270
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

tomoyo_byte_range.exit273:                        ; preds = %land.lhs.true5.i270
  %incdec.ptr10.i271 = getelementptr i8, ptr %filename.addr.0401, i32 3
  %40 = ptrtoint ptr %incdec.ptr10.i271 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr10.i271, align 1
  %42 = and i8 %41, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %42)
  %43 = icmp eq i8 %42, 48
  br i1 %43, label %land.lhs.true70, label %tomoyo_byte_range.exit273.return_crit_edge

tomoyo_byte_range.exit273.return_crit_edge:       ; preds = %tomoyo_byte_range.exit273
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true70:                                  ; preds = %tomoyo_byte_range.exit273
  %call72 = tail call i32 @strncmp(ptr noundef %add.ptr67, ptr noundef %incdec.ptr11, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %land.lhs.true70.return_crit_edge

land.lhs.true70.return_crit_edge:                 ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then75:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr77 = getelementptr i8, ptr %pattern.addr.0402, i32 3
  br label %cleanup

sw.bb79:                                          ; preds = %if.end10.sw.bb79_crit_edge, %if.end10.sw.bb79_crit_edge442
  %sub.ptr.lhs.cast = ptrtoint ptr %filename_end to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %filename.addr.0401 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp80.not313 = icmp slt i32 %sub.ptr.sub, 0
  br i1 %cmp80.not313, label %sw.bb79.return_crit_edge, label %for.body.lr.ph

sw.bb79.return_crit_edge:                         ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.lr.ph:                                   ; preds = %sw.bb79
  %add.ptr83 = getelementptr i8, ptr %pattern.addr.0402, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp93 = icmp eq i8 %7, 64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0314 = phi i32 [ 0, %for.body.lr.ph ], [ %inc116, %for.inc.for.body_crit_edge ]
  %add.ptr82 = getelementptr i8, ptr %filename.addr.0401, i32 %i.0314
  %call84 = tail call fastcc zeroext i1 @tomoyo_file_matches_pattern2(ptr noundef %add.ptr82, ptr noundef nonnull %filename_end, ptr noundef %add.ptr83, ptr noundef nonnull %pattern_end)
  br i1 %call84, label %for.body.return_crit_edge, label %if.end86

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end86:                                         ; preds = %for.body
  %44 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr82, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %45, label %if.end86.for.inc_crit_edge [
    i8 46, label %land.lhs.true91
    i8 92, label %if.end101
  ]

if.end86.for.inc_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true91:                                  ; preds = %if.end86
  br i1 %cmp93, label %land.lhs.true91.return_crit_edge, label %land.lhs.true91.for.inc_crit_edge

land.lhs.true91.for.inc_crit_edge:                ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true91.return_crit_edge:                 ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end101:                                        ; preds = %if.end86
  %add = add i32 %i.0314, 1
  %arrayidx102 = getelementptr i8, ptr %filename.addr.0401, i32 %add
  %47 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %48)
  %cmp104 = icmp eq i8 %48, 92
  br i1 %cmp104, label %if.end101.for.inc_crit_edge, label %if.else107

if.end101.for.inc_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else107:                                       ; preds = %if.end101
  %add.ptr109 = getelementptr i8, ptr %add.ptr82, i32 1
  %49 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr109, align 1
  %51 = and i8 %50, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %51)
  %52 = icmp eq i8 %51, 48
  br i1 %52, label %land.lhs.true5.i275, label %if.else107.return_crit_edge

if.else107.return_crit_edge:                      ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true5.i275:                              ; preds = %if.else107
  %incdec.ptr.i274 = getelementptr i8, ptr %add.ptr109, i32 1
  %53 = ptrtoint ptr %incdec.ptr.i274 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr.i274, align 1
  %55 = and i8 %54, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %55)
  %56 = icmp eq i8 %55, 48
  br i1 %56, label %tomoyo_byte_range.exit278, label %land.lhs.true5.i275.return_crit_edge

land.lhs.true5.i275.return_crit_edge:             ; preds = %land.lhs.true5.i275
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

tomoyo_byte_range.exit278:                        ; preds = %land.lhs.true5.i275
  %incdec.ptr10.i276 = getelementptr i8, ptr %add.ptr109, i32 2
  %57 = ptrtoint ptr %incdec.ptr10.i276 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %incdec.ptr10.i276, align 1
  %59 = and i8 %58, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %59)
  %60 = icmp eq i8 %59, 48
  br i1 %60, label %if.then111, label %tomoyo_byte_range.exit278.return_crit_edge

tomoyo_byte_range.exit278.return_crit_edge:       ; preds = %tomoyo_byte_range.exit278
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then111:                                       ; preds = %tomoyo_byte_range.exit278
  call void @__sanitizer_cov_trace_pc() #15
  %add112 = add i32 %i.0314, 3
  br label %for.inc

for.inc:                                          ; preds = %if.then111, %if.end101.for.inc_crit_edge, %land.lhs.true91.for.inc_crit_edge, %if.end86.for.inc_crit_edge
  %i.1 = phi i32 [ %add112, %if.then111 ], [ %i.0314, %if.end86.for.inc_crit_edge ], [ %add, %if.end101.for.inc_crit_edge ], [ %i.0314, %land.lhs.true91.for.inc_crit_edge ]
  %inc116 = add i32 %i.1, 1
  %cmp80.not = icmp sgt i32 %inc116, %sub.ptr.sub
  br i1 %cmp80.not, label %for.inc.return_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.return_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

while.cond121:                                    ; preds = %while.cond121.while.cond121_crit_edge, %if.end10.while.cond121_crit_edge
  %j.0 = phi i32 [ %inc127, %while.cond121.while.cond121_crit_edge ], [ 0, %if.end10.while.cond121_crit_edge ]
  %arrayidx122 = getelementptr i8, ptr %filename.addr.0401, i32 %j.0
  %61 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %62 to i32
  %63 = add nsw i32 %conv123, -58
  %64 = icmp ult i32 %63, -10
  %inc127 = add i32 %j.0, 1
  br i1 %64, label %while.cond121.if.end157_crit_edge, label %while.cond121.while.cond121_crit_edge

while.cond121.while.cond121_crit_edge:            ; preds = %while.cond121
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond121

while.cond121.if.end157_crit_edge:                ; preds = %while.cond121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

while.cond133:                                    ; preds = %while.cond133.while.cond133_crit_edge, %if.end10.while.cond133_crit_edge
  %j.1 = phi i32 [ %inc142, %while.cond133.while.cond133_crit_edge ], [ 0, %if.end10.while.cond133_crit_edge ]
  %arrayidx134 = getelementptr i8, ptr %filename.addr.0401, i32 %j.1
  %65 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx134, align 1
  %conv135 = zext i8 %66 to i32
  %arrayidx136 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv135
  %67 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx136, align 1
  %69 = and i8 %68, 68
  %cmp139.not = icmp eq i8 %69, 0
  %inc142 = add i32 %j.1, 1
  br i1 %cmp139.not, label %while.cond133.if.end157_crit_edge, label %while.cond133.while.cond133_crit_edge

while.cond133.while.cond133_crit_edge:            ; preds = %while.cond133
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond133

while.cond133.if.end157_crit_edge:                ; preds = %while.cond133
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

while.cond149:                                    ; preds = %while.cond149.while.cond149_crit_edge, %if.end10.while.cond149_crit_edge
  %j.2 = phi i32 [ %inc153, %while.cond149.while.cond149_crit_edge ], [ 0, %if.end10.while.cond149_crit_edge ]
  %arrayidx150 = getelementptr i8, ptr %filename.addr.0401, i32 %j.2
  %70 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx150, align 1
  %72 = and i8 %71, -33
  %73 = add i8 %72, -65
  %74 = icmp ult i8 %73, 26
  %inc153 = add i32 %j.2, 1
  br i1 %74, label %while.cond149.while.cond149_crit_edge, label %while.cond149.if.end157_crit_edge

while.cond149.if.end157_crit_edge:                ; preds = %while.cond149
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

while.cond149.while.cond149_crit_edge:            ; preds = %while.cond149
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond149

if.end157:                                        ; preds = %while.cond149.if.end157_crit_edge, %while.cond133.if.end157_crit_edge, %while.cond121.if.end157_crit_edge
  %j.3 = phi i32 [ %j.0, %while.cond121.if.end157_crit_edge ], [ %j.1, %while.cond133.if.end157_crit_edge ], [ %j.2, %while.cond149.if.end157_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.3)
  %cmp159.not321 = icmp slt i32 %j.3, 1
  br i1 %cmp159.not321, label %if.end157.return_crit_edge, label %for.body161.lr.ph

if.end157.return_crit_edge:                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body161.lr.ph:                                ; preds = %if.end157
  %add.ptr163 = getelementptr i8, ptr %pattern.addr.0402, i32 2
  br label %for.body161

for.body161:                                      ; preds = %for.body161.for.body161_crit_edge, %for.body161.lr.ph
  %i.2322 = phi i32 [ 1, %for.body161.lr.ph ], [ %inc168, %for.body161.for.body161_crit_edge ]
  %add.ptr162 = getelementptr i8, ptr %filename.addr.0401, i32 %i.2322
  %call164 = tail call fastcc zeroext i1 @tomoyo_file_matches_pattern2(ptr noundef %add.ptr162, ptr noundef nonnull %filename_end, ptr noundef %add.ptr163, ptr noundef nonnull %pattern_end)
  %inc168 = add i32 %i.2322, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc168, i32 %j.3)
  %cmp159.not = icmp sgt i32 %inc168, %j.3
  %or.cond404 = select i1 %call164, i1 true, i1 %cmp159.not
  br i1 %or.cond404, label %for.body161.return_crit_edge, label %for.body161.for.body161_crit_edge

for.body161.for.body161_crit_edge:                ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body161

for.body161.return_crit_edge:                     ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cleanup:                                          ; preds = %if.then75, %sw.bb59.cleanup_crit_edge, %sw.bb51.cleanup_crit_edge, %sw.bb46.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %tomoyo_byte_range.exit.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %filename.addr.1.pn = phi ptr [ %incdec.ptr10.i271, %if.then75 ], [ %filename.addr.0401, %sw.bb59.cleanup_crit_edge ], [ %filename.addr.0401, %sw.bb51.cleanup_crit_edge ], [ %filename.addr.0401, %sw.bb46.cleanup_crit_edge ], [ %incdec.ptr40, %if.end39.cleanup_crit_edge ], [ %filename.addr.0401, %sw.bb.cleanup_crit_edge ], [ %arrayidx, %if.then20.cleanup_crit_edge ], [ %incdec.ptr10.i, %tomoyo_byte_range.exit.cleanup_crit_edge ], [ %filename.addr.0401, %if.then.cleanup_crit_edge ]
  %pattern.addr.1.pn = phi ptr [ %add.ptr77, %if.then75 ], [ %incdec.ptr11, %sw.bb59.cleanup_crit_edge ], [ %incdec.ptr11, %sw.bb51.cleanup_crit_edge ], [ %incdec.ptr11, %sw.bb46.cleanup_crit_edge ], [ %incdec.ptr11, %if.end39.cleanup_crit_edge ], [ %incdec.ptr11, %sw.bb.cleanup_crit_edge ], [ %incdec.ptr11, %if.then20.cleanup_crit_edge ], [ %incdec.ptr11, %tomoyo_byte_range.exit.cleanup_crit_edge ], [ %pattern.addr.0402, %if.then.cleanup_crit_edge ]
  %pattern.addr.2 = getelementptr i8, ptr %pattern.addr.1.pn, i32 1
  %filename.addr.2 = getelementptr i8, ptr %filename.addr.1.pn, i32 1
  %cmp = icmp ult ptr %filename.addr.2, %filename_end
  %cmp1 = icmp ult ptr %pattern.addr.2, %pattern_end
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup.while.body_crit_edge, label %cleanup.while.cond175.preheader_crit_edge

cleanup.while.cond175.preheader_crit_edge:        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond175.preheader

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

land.rhs179:                                      ; preds = %while.body189.land.rhs179_crit_edge, %while.cond175.preheader.land.rhs179_crit_edge
  %pattern.addr.3311 = phi ptr [ %add.ptr190, %while.body189.land.rhs179_crit_edge ], [ %pattern.addr.0.lcssa, %while.cond175.preheader.land.rhs179_crit_edge ]
  %add.ptr180 = getelementptr i8, ptr %pattern.addr.3311, i32 1
  %75 = ptrtoint ptr %add.ptr180 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr180, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %76, label %land.rhs179.while.end191_crit_edge [
    i8 42, label %land.rhs179.while.body189_crit_edge
    i8 64, label %land.rhs179.while.body189_crit_edge443
  ]

land.rhs179.while.body189_crit_edge443:           ; preds = %land.rhs179
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body189

land.rhs179.while.body189_crit_edge:              ; preds = %land.rhs179
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body189

land.rhs179.while.end191_crit_edge:               ; preds = %land.rhs179
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end191

while.body189:                                    ; preds = %land.rhs179.while.body189_crit_edge, %land.rhs179.while.body189_crit_edge443
  %add.ptr190 = getelementptr i8, ptr %pattern.addr.3311, i32 2
  %78 = ptrtoint ptr %add.ptr190 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr190, align 1
  %cmp177 = icmp eq i8 %79, 92
  br i1 %cmp177, label %while.body189.land.rhs179_crit_edge, label %while.body189.while.end191_crit_edge

while.body189.while.end191_crit_edge:             ; preds = %while.body189
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end191

while.body189.land.rhs179_crit_edge:              ; preds = %while.body189
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs179

while.end191:                                     ; preds = %while.body189.while.end191_crit_edge, %land.rhs179.while.end191_crit_edge, %while.cond175.preheader.while.end191_crit_edge
  %pattern.addr.3.lcssa = phi ptr [ %pattern.addr.0.lcssa, %while.cond175.preheader.while.end191_crit_edge ], [ %pattern.addr.3311, %land.rhs179.while.end191_crit_edge ], [ %add.ptr190, %while.body189.while.end191_crit_edge ]
  %cmp192 = icmp eq ptr %filename.addr.0.lcssa, %filename_end
  %cmp195 = icmp eq ptr %pattern.addr.3.lcssa, %pattern_end
  %spec.select = and i1 %cmp192, %cmp195
  br label %return

return:                                           ; preds = %while.end191, %for.body161.return_crit_edge, %if.end157.return_crit_edge, %for.inc.return_crit_edge, %tomoyo_byte_range.exit278.return_crit_edge, %land.lhs.true5.i275.return_crit_edge, %if.else107.return_crit_edge, %land.lhs.true91.return_crit_edge, %for.body.return_crit_edge, %sw.bb79.return_crit_edge, %land.lhs.true70.return_crit_edge, %tomoyo_byte_range.exit273.return_crit_edge, %land.lhs.true5.i270.return_crit_edge, %land.lhs.true.return_crit_edge, %sw.bb63.return_crit_edge, %sw.bb59.return_crit_edge, %sw.bb51.return_crit_edge, %sw.bb46.return_crit_edge, %if.end39.return_crit_edge, %sw.bb34.return_crit_edge, %tomoyo_byte_range.exit.return_crit_edge, %land.lhs.true5.i.return_crit_edge, %if.else26.return_crit_edge, %sw.bb.return_crit_edge, %if.end10.return_crit_edge, %if.then.return_crit_edge
  %retval.2 = phi i1 [ %spec.select, %while.end191 ], [ false, %if.end157.return_crit_edge ], [ false, %sw.bb79.return_crit_edge ], [ %call84, %if.else107.return_crit_edge ], [ %call84, %land.lhs.true5.i275.return_crit_edge ], [ %call84, %for.inc.return_crit_edge ], [ %call84, %land.lhs.true91.return_crit_edge ], [ %call84, %tomoyo_byte_range.exit278.return_crit_edge ], [ %call84, %for.body.return_crit_edge ], [ %call164, %for.body161.return_crit_edge ], [ false, %sw.bb.return_crit_edge ], [ false, %tomoyo_byte_range.exit.return_crit_edge ], [ false, %sw.bb34.return_crit_edge ], [ false, %if.end39.return_crit_edge ], [ false, %sw.bb46.return_crit_edge ], [ false, %sw.bb51.return_crit_edge ], [ false, %sw.bb59.return_crit_edge ], [ false, %land.lhs.true70.return_crit_edge ], [ false, %tomoyo_byte_range.exit273.return_crit_edge ], [ false, %sw.bb63.return_crit_edge ], [ false, %land.lhs.true5.i.return_crit_edge ], [ false, %if.else26.return_crit_edge ], [ false, %land.lhs.true5.i270.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ], [ false, %if.then.return_crit_edge ], [ false, %if.end10.return_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !22}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/tomoyo/util.c", i32 14, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @tomoyo_policy_lock, !1, !"tomoyo_policy_lock", i1 false, i1 false}
!4 = !{ptr @tomoyo_index2category, !5, !"tomoyo_index2category", i1 false, i1 false}
!5 = !{!"../security/tomoyo/util.c", i32 23, i32 10}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/tomoyo/util.c", i32 230, i32 32}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/tomoyo/util.c", i32 232, i32 32}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/tomoyo/util.c", i32 234, i32 32}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/tomoyo/util.c", i32 236, i32 32}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../security/tomoyo/util.c", i32 619, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../security/tomoyo/util.c", i32 1056, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/tomoyo/util.c", i32 1100, i32 22}
!22 = !{ptr @tomoyo_policy_loaded, !23, !"tomoyo_policy_loaded", i1 false, i1 false}
!23 = !{!"../security/tomoyo/util.c", i32 17, i32 6}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
!35 = !{i8 0, i8 2}
