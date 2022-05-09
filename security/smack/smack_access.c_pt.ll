; ModuleID = '/llk/IR_all_yes/security/smack/smack_access.c_pt.bc'
source_filename = "../security/smack/smack_access.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smack_known = type { %struct.list_head, %struct.hlist_node, ptr, i32, %struct.netlbl_lsm_secattr, %struct.list_head, %struct.mutex }
%struct.hlist_node = type { ptr, ptr }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon }
%struct.anon = type { %struct.anon.0, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.7 }
%union.anon.7 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.17, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.smack_rule = type { %struct.list_head, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.common_audit_data = type { i8, %union.anon.2, %union.anon.138 }
%union.anon.2 = type { %struct.path }
%struct.path = type { ptr, ptr }
%union.anon.138 = type { ptr }
%struct.smack_audit_data = type { ptr, ptr, ptr, ptr, i32 }
%struct.task_smack = type { ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.113, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.113 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.netlbl_lsm_catmap = type { i32, [4 x i64], ptr }
%struct.netlbl_lsm_cache = type { %struct.refcount_struct, ptr, ptr }
%struct.smack_known_list_elem = type { %struct.list_head, ptr }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@smack_known_huh = dso_local global { %struct.smack_known, [40 x i8] } { %struct.smack_known { %struct.list_head zeroinitializer, %struct.hlist_node zeroinitializer, ptr @.str, i32 2, %struct.netlbl_lsm_secattr zeroinitializer, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"^\00", [30 x i8] zeroinitializer }, align 32
@smack_known_hat = dso_local global { %struct.smack_known, [40 x i8] } { %struct.smack_known { %struct.list_head zeroinitializer, %struct.hlist_node zeroinitializer, ptr @.str.1, i32 3, %struct.netlbl_lsm_secattr zeroinitializer, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@smack_known_star = dso_local global { %struct.smack_known, [40 x i8] } { %struct.smack_known { %struct.list_head zeroinitializer, %struct.hlist_node zeroinitializer, ptr @.str.2, i32 4, %struct.netlbl_lsm_secattr zeroinitializer, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"_\00", [30 x i8] zeroinitializer }, align 32
@smack_known_floor = dso_local global { %struct.smack_known, [40 x i8] } { %struct.smack_known { %struct.list_head zeroinitializer, %struct.hlist_node zeroinitializer, ptr @.str.3, i32 5, %struct.netlbl_lsm_secattr zeroinitializer, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"@\00", [30 x i8] zeroinitializer }, align 32
@smack_known_web = dso_local global { %struct.smack_known, [40 x i8] } { %struct.smack_known { %struct.list_head zeroinitializer, %struct.hlist_node zeroinitializer, ptr @.str.4, i32 7, %struct.netlbl_lsm_secattr zeroinitializer, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@smack_known_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @smack_known_list, ptr @smack_known_list }, [24 x i8] zeroinitializer }, align 32
@log_policy = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@smk_access_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"security/smack/smack_access.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@smack_unconfined = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(US)\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(UO)\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smack_known_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@smack_known_lock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smack_known_lock, i64 52), ptr getelementptr (i8, ptr @smack_known_lock, i64 52) }, ptr @smack_known_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smack_known_lock\00", [47 x i8] zeroinitializer }, align 32
@smack_known_hash = dso_local global { [16 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@smk_find_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smack_cipso_direct = external dso_local local_unnamed_addr global i32, align 4
@smack_cipso_mapped = external dso_local local_unnamed_addr global i32, align 4
@smack_next_secid = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@smk_import_entry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&skp->smk_rules_lock\00", [43 x i8] zeroinitializer }, align 32
@smack_from_secid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smack_onlycap_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @smack_onlycap_list, ptr @smack_onlycap_list }, [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smack_onlycap_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@smack_onlycap_lock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smack_onlycap_lock, i64 52), ptr getelementptr (i8, ptr @smack_onlycap_lock, i64 52) }, ptr @smack_onlycap_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smack_onlycap_lock\00", [45 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@smack_privileged_cred.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@smack_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lsm=SMACK fn=%s action=%s\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"denied\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"granted\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" subject=\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" object=\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" labels_differ\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" requested=%s\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 8, i64 34, i64 39, i64 47, i64 92]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 16, i32 15 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"smack_known_huh\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 15, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 21, i32 15 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"smack_known_hat\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 20, i32 20 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 26, i32 15 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"smack_known_star\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 25, i32 20 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 31, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"smack_known_floor\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 30, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 36, i32 15 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"smack_known_web\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 35, i32 20 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"smack_known_list\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 40, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"log_policy\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 52, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 86, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 359, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 373, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 375, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"smack_known_lock\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 392, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"smack_known_hash\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 394, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"smack_next_secid\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 46, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 588, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"smack_onlycap_list\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 640, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"smack_onlycap_lock\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 641, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 695, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 723, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 315, i32 23 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 317, i32 19 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 317, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 318, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 320, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 323, i32 24 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [33 x i8] c"../security/smack/smack_access.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 325, i32 24 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @smack_known_huh, ptr @.str.1, ptr @smack_known_hat, ptr @.str.2, ptr @smack_known_star, ptr @.str.3, ptr @smack_known_floor, ptr @.str.4, ptr @smack_known_web, ptr @smack_known_list, ptr @log_policy, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @smack_known_lock, ptr @.str.11, ptr @smack_known_hash, ptr @smack_next_secid, ptr @smk_import_entry.__key, ptr @.str.12, ptr @smack_onlycap_list, ptr @.str.13, ptr @smack_onlycap_lock, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_known_huh to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_known_hat to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_known_star to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_known_floor to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_known_web to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_known_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_policy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_known_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_known_hash to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_next_secid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_import_entry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_onlycap_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_onlycap_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smk_access_entry(ptr noundef readnone %subject_label, ptr noundef readnone %object_label, ptr noundef %rule_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @smk_access_entry.__warned, align 1
  br i1 %.b34, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @smk_access_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 86, ptr noundef nonnull @.str.6) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %rule_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %srp.036 = load volatile ptr, ptr %rule_list, align 4
  %cmp.not37 = icmp eq ptr %srp.036, %rule_list
  br i1 %cmp.not37, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %srp.038 = phi ptr [ %srp.0, %for.inc.for.body_crit_edge ], [ %srp.036, %do.end.for.body_crit_edge ]
  %smk_object = getelementptr inbounds %struct.smack_rule, ptr %srp.038, i32 0, i32 2
  %1 = ptrtoint ptr %smk_object to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smk_object, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known, align 4
  %cmp9 = icmp eq ptr %4, %object_label
  br i1 %cmp9, label %land.lhs.true10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %smk_subject = getelementptr inbounds %struct.smack_rule, ptr %srp.038, i32 0, i32 1
  %5 = ptrtoint ptr %smk_subject to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smk_subject, align 4
  %smk_known11 = getelementptr inbounds %struct.smack_known, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %smk_known11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smk_known11, align 4
  %cmp12 = icmp eq ptr %8, %subject_label
  br i1 %cmp12, label %if.then13, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  %smk_access = getelementptr inbounds %struct.smack_rule, ptr %srp.038, i32 0, i32 3
  %9 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smk_access, align 4
  %and = shl i32 %10, 12
  %11 = and i32 %and, 8192
  %12 = or i32 %11, %10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %srp.038 to i32
  call void @__asan_load4_noabort(i32 %13)
  %srp.0 = load volatile ptr, ptr %srp.038, align 4
  %cmp.not = icmp eq ptr %srp.0, %rule_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then13 ], [ -2, %do.end.cleanup_crit_edge ], [ -2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smk_access(ptr noundef %subject, ptr noundef readonly %object, i32 noundef %request, ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %subject, @smack_known_star
  br i1 %cmp, label %entry.if.then36_crit_edge, label %if.end

entry.if.then36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %object, @smack_known_web
  %cmp2 = icmp eq ptr %subject, @smack_known_web
  %or.cond = or i1 %cmp2, %cmp1
  %cmp5 = icmp eq ptr %object, @smack_known_star
  %or.cond73 = or i1 %cmp5, %or.cond
  br i1 %or.cond73, label %if.end.if.end43_crit_edge, label %if.end7

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end7:                                          ; preds = %if.end
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %subject, i32 0, i32 2
  %0 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smk_known, align 4
  %smk_known8 = getelementptr inbounds %struct.smack_known, ptr %object, i32 0, i32 2
  %2 = ptrtoint ptr %smk_known8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smk_known8, align 4
  %cmp9 = icmp eq ptr %1, %3
  br i1 %cmp9, label %if.end7.if.end43_crit_edge, label %if.end11

if.end7.if.end43_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end11:                                         ; preds = %if.end7
  %and = and i32 %request, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %request)
  %cmp12 = icmp eq i32 %and, %request
  %and14 = and i32 %request, 8192
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %request)
  %cmp15 = icmp eq i32 %and14, %request
  %or.cond74 = or i1 %cmp12, %cmp15
  br i1 %or.cond74, label %if.then16, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then16:                                        ; preds = %if.end11
  %cmp17 = icmp eq ptr %object, @smack_known_floor
  %cmp20 = icmp eq ptr %subject, @smack_known_hat
  %or.cond75 = or i1 %cmp20, %cmp17
  br i1 %or.cond75, label %if.then16.if.end43_crit_edge, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then16.if.end43_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end23:                                         ; preds = %if.then16.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !82) #11
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end23.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end23.rcu_read_lock.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end23.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smk_known, align 4
  %10 = ptrtoint ptr %smk_known8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smk_known8, align 4
  %smk_rules = getelementptr inbounds %struct.smack_known, ptr %subject, i32 0, i32 5
  %call.i79 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i82, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i82:                                ; preds = %rcu_read_lock.exit
  %call1.i81 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool2.not.i = icmp eq i32 %call1.i81, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i82.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i82.do.end.i_crit_edge:             ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i82
  %.b34.i = load i1, ptr @smk_access_entry.__warned, align 1
  br i1 %.b34.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i83

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i83:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @smk_access_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 86, ptr noundef nonnull @.str.6) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i83, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i82.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %12 = ptrtoint ptr %smk_rules to i32
  call void @__asan_load4_noabort(i32 %12)
  %srp.036.i = load volatile ptr, ptr %smk_rules, align 4
  %cmp.not37.i = icmp eq ptr %srp.036.i, %smk_rules
  br i1 %cmp.not37.i, label %do.end.i.smk_access_entry.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.smk_access_entry.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smk_access_entry.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %srp.038.i = phi ptr [ %srp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %srp.036.i, %do.end.i.for.body.i_crit_edge ]
  %smk_object.i = getelementptr inbounds %struct.smack_rule, ptr %srp.038.i, i32 0, i32 2
  %13 = ptrtoint ptr %smk_object.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smk_object.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smk_known.i, align 4
  %cmp9.i = icmp eq ptr %16, %11
  br i1 %cmp9.i, label %land.lhs.true10.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %for.body.i
  %smk_subject.i = getelementptr inbounds %struct.smack_rule, ptr %srp.038.i, i32 0, i32 1
  %17 = ptrtoint ptr %smk_subject.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smk_subject.i, align 4
  %smk_known11.i = getelementptr inbounds %struct.smack_known, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %smk_known11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smk_known11.i, align 4
  %cmp12.i = icmp eq ptr %20, %9
  br i1 %cmp12.i, label %if.then13.i, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then13.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  %smk_access.i = getelementptr inbounds %struct.smack_rule, ptr %srp.038.i, i32 0, i32 3
  %21 = ptrtoint ptr %smk_access.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %smk_access.i, align 4
  %and.i = shl i32 %22, 12
  %23 = and i32 %and.i, 8192
  %24 = or i32 %23, %22
  br label %smk_access_entry.exit

for.inc.i:                                        ; preds = %land.lhs.true10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %srp.038.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %srp.0.i = load volatile ptr, ptr %srp.038.i, align 4
  %cmp.not.i = icmp eq ptr %srp.0.i, %smk_rules
  br i1 %cmp.not.i, label %for.inc.i.smk_access_entry.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.smk_access_entry.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smk_access_entry.exit

smk_access_entry.exit:                            ; preds = %for.inc.i.smk_access_entry.exit_crit_edge, %if.then13.i, %do.end.i.smk_access_entry.exit_crit_edge
  %retval.0.i = phi i32 [ %24, %if.then13.i ], [ -2, %do.end.i.smk_access_entry.exit_crit_edge ], [ -2, %for.inc.i.smk_access_entry.exit_crit_edge ]
  %call.i84 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i84, label %smk_access_entry.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i87

smk_access_entry.exit.rcu_read_unlock.exit_crit_edge: ; preds = %smk_access_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i87:                                ; preds = %smk_access_entry.exit
  %call1.i85 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i89

land.lhs.true.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i89:                               ; preds = %land.lhs.true.i87
  %.b4.i88 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88, label %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, label %if.then.i90

land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i90:                                      ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i90, %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, %smk_access_entry.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #11
  %and.i.i.i.i.i91 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i91 to ptr
  %preempt_count.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i92, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i92, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp26 = icmp sgt i32 %retval.0.i, 0
  %and28 = and i32 %retval.0.i, %request
  call void @__sanitizer_cov_trace_cmp4(i32 %and28, i32 %request)
  %cmp29.not = icmp eq i32 %and28, %request
  %or.cond76 = and i1 %cmp26, %cmp29.not
  br i1 %or.cond76, label %if.end31, label %rcu_read_unlock.exit.if.then36_crit_edge

rcu_read_unlock.exit.if.then36_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.end31:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and32 = lshr i32 %retval.0.i, 14
  %and32.lobit = and i32 %and32, 1
  br label %if.end43

if.then36:                                        ; preds = %rcu_read_unlock.exit.if.then36_crit_edge, %entry.if.then36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_unconfined to i32))
  %30 = load ptr, ptr @smack_unconfined, align 4
  %cmp37 = icmp eq ptr %30, %object
  %spec.select77 = select i1 %cmp37, i32 3, i32 -13
  %cmp40 = icmp eq ptr %30, %subject
  %spec.select78 = select i1 %cmp40, i32 2, i32 %spec.select77
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %if.end31, %if.then16.if.end43_crit_edge, %if.end7.if.end43_crit_edge, %if.end.if.end43_crit_edge
  %rc.2 = phi i32 [ %spec.select78, %if.then36 ], [ %and32.lobit, %if.end31 ], [ 0, %if.end.if.end43_crit_edge ], [ 0, %if.end7.if.end43_crit_edge ], [ 0, %if.then16.if.end43_crit_edge ]
  %tobool44.not = icmp eq ptr %a, null
  br i1 %tobool44.not, label %if.end43.if.end48_crit_edge, label %if.then45

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %smk_known46 = getelementptr inbounds %struct.smack_known, ptr %subject, i32 0, i32 2
  %31 = ptrtoint ptr %smk_known46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smk_known46, align 4
  %smk_known47 = getelementptr inbounds %struct.smack_known, ptr %object, i32 0, i32 2
  %33 = ptrtoint ptr %smk_known47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smk_known47, align 4
  tail call void @smack_log(ptr noundef %32, ptr noundef %34, i32 noundef %request, i32 noundef %rc.2, ptr noundef nonnull %a)
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43.if.end48_crit_edge
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smack_log(ptr noundef %subject_label, ptr noundef %object_label, i32 noundef %request, i32 noundef %result, ptr noundef %ad) local_unnamed_addr #0 align 64 {
entry:
  %request_buffer = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request_buffer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %cmp = icmp slt i32 %result, 0
  %0 = call ptr @memset(ptr %request_buffer, i32 255, i32 12)
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @log_policy, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %cmp3 = icmp eq i32 %result, 0
  br i1 %cmp3, label %land.lhs.true4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %2 = load i32, ptr @log_policy, align 4
  %and5 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end8_crit_edge

land.lhs.true4.if.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true4.if.end8_crit_edge, %if.end.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge
  %3 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp9 = icmp eq ptr %7, null
  br i1 %cmp9, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.7, ptr %5, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %and.i = and i32 %request, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12.if.end.i_crit_edge, label %if.then.i

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %request_buffer to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 114, ptr %request_buffer, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end12.if.end.i_crit_edge
  %i.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end12.if.end.i_crit_edge ]
  %and1.i = and i32 %request, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc4.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx5.i = getelementptr i8, ptr %request_buffer, i32 %i.0.i
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 119, ptr %arrayidx5.i, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %i.1.i = phi i32 [ %inc4.i, %if.then3.i ], [ %i.0.i, %if.end.i.if.end6.i_crit_edge ]
  %and7.i = and i32 %request, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end12.i_crit_edge, label %if.then9.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc10.i = add nuw nsw i32 %i.1.i, 1
  %arrayidx11.i = getelementptr i8, ptr %request_buffer, i32 %i.1.i
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 120, ptr %arrayidx11.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end12.i_crit_edge
  %i.2.i = phi i32 [ %inc10.i, %if.then9.i ], [ %i.1.i, %if.end6.i.if.end12.i_crit_edge ]
  %and13.i = and i32 %request, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then15.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc16.i = add nuw nsw i32 %i.2.i, 1
  %arrayidx17.i = getelementptr i8, ptr %request_buffer, i32 %i.2.i
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 97, ptr %arrayidx17.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end18.i_crit_edge
  %i.3.i = phi i32 [ %inc16.i, %if.then15.i ], [ %i.2.i, %if.end12.i.if.end18.i_crit_edge ]
  %and19.i = and i32 %request, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end24.i_crit_edge, label %if.then21.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc22.i = add nuw nsw i32 %i.3.i, 1
  %arrayidx23.i = getelementptr i8, ptr %request_buffer, i32 %i.3.i
  %13 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 116, ptr %arrayidx23.i, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end24.i_crit_edge
  %i.4.i = phi i32 [ %inc22.i, %if.then21.i ], [ %i.3.i, %if.end18.i.if.end24.i_crit_edge ]
  %and25.i = and i32 %request, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.smack_str_from_perm.exit_crit_edge, label %if.then27.i

if.end24.i.smack_str_from_perm.exit_crit_edge:    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smack_str_from_perm.exit

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc28.i = add nuw nsw i32 %i.4.i, 1
  %arrayidx29.i = getelementptr i8, ptr %request_buffer, i32 %i.4.i
  %14 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 108, ptr %arrayidx29.i, align 1
  br label %smack_str_from_perm.exit

smack_str_from_perm.exit:                         ; preds = %if.then27.i, %if.end24.i.smack_str_from_perm.exit_crit_edge
  %i.5.i = phi i32 [ %inc28.i, %if.then27.i ], [ %i.4.i, %if.end24.i.smack_str_from_perm.exit_crit_edge ]
  %arrayidx31.i = getelementptr i8, ptr %request_buffer, i32 %i.5.i
  %15 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx31.i, align 1
  %subject = getelementptr inbounds %struct.smack_audit_data, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %subject to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %subject_label, ptr %subject, align 4
  %object = getelementptr inbounds %struct.smack_audit_data, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %object_label, ptr %object, align 4
  %18 = zext i32 %result to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %result, label %smack_str_from_perm.exit.if.end21_crit_edge [
    i32 2, label %if.then14
    i32 3, label %if.then17
  ]

smack_str_from_perm.exit.if.end21_crit_edge:      ; preds = %smack_str_from_perm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then14:                                        ; preds = %smack_str_from_perm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %strlen41 = call i32 @strlen(ptr nonnull %request_buffer) #14
  %endptr42 = getelementptr i8, ptr %request_buffer, i32 %strlen41
  %19 = call ptr @memcpy(ptr %endptr42, ptr @.str.8, i32 5)
  br label %if.end21

if.then17:                                        ; preds = %smack_str_from_perm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %strlen = call i32 @strlen(ptr nonnull %request_buffer) #14
  %endptr = getelementptr i8, ptr %request_buffer, i32 %strlen
  %20 = call ptr @memcpy(ptr %endptr, ptr @.str.9, i32 5)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then14, %smack_str_from_perm.exit.if.end21_crit_edge
  %21 = tail call i32 @llvm.smin.i32(i32 %result, i32 0)
  %request26 = getelementptr inbounds %struct.smack_audit_data, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %request26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %request_buffer, ptr %request26, align 4
  %result27 = getelementptr inbounds %struct.smack_audit_data, ptr %5, i32 0, i32 4
  %23 = ptrtoint ptr %result27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %result27, align 4
  call void @common_lsm_audit(ptr noundef %ad, ptr noundef nonnull @smack_log_callback, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request_buffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smk_tskacc(ptr noundef %tsp, ptr noundef %obj_known, i32 noundef %mode, ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tsp, align 4
  %call1 = tail call i32 @smk_access(ptr noundef %1, ptr noundef %obj_known, i32 noundef %mode, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smk_known, align 4
  %smk_known2 = getelementptr inbounds %struct.smack_known, ptr %obj_known, i32 0, i32 2
  %4 = ptrtoint ptr %smk_known2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smk_known2, align 4
  %smk_rules = getelementptr inbounds %struct.task_smack, ptr %tsp, i32 0, i32 2
  %call.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b34.i = load i1, ptr @smk_access_entry.__warned, align 1
  br i1 %.b34.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @smk_access_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 86, ptr noundef nonnull @.str.6) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %6 = ptrtoint ptr %smk_rules to i32
  call void @__asan_load4_noabort(i32 %6)
  %srp.036.i = load volatile ptr, ptr %smk_rules, align 4
  %cmp.not37.i = icmp eq ptr %srp.036.i, %smk_rules
  br i1 %cmp.not37.i, label %do.end.i.out_audit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.out_audit_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_audit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %srp.038.i = phi ptr [ %srp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %srp.036.i, %do.end.i.for.body.i_crit_edge ]
  %smk_object.i = getelementptr inbounds %struct.smack_rule, ptr %srp.038.i, i32 0, i32 2
  %7 = ptrtoint ptr %smk_object.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smk_object.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smk_known.i, align 4
  %cmp9.i = icmp eq ptr %10, %5
  br i1 %cmp9.i, label %land.lhs.true10.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %for.body.i
  %smk_subject.i = getelementptr inbounds %struct.smack_rule, ptr %srp.038.i, i32 0, i32 1
  %11 = ptrtoint ptr %smk_subject.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smk_subject.i, align 4
  %smk_known11.i = getelementptr inbounds %struct.smack_known, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %smk_known11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smk_known11.i, align 4
  %cmp12.i = icmp eq ptr %14, %3
  br i1 %cmp12.i, label %smk_access_entry.exit, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %15 = ptrtoint ptr %srp.038.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %srp.0.i = load volatile ptr, ptr %srp.038.i, align 4
  %cmp.not.i = icmp eq ptr %srp.0.i, %smk_rules
  br i1 %cmp.not.i, label %for.inc.i.out_audit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.out_audit_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_audit

smk_access_entry.exit:                            ; preds = %land.lhs.true10.i
  %smk_access.i = getelementptr inbounds %struct.smack_rule, ptr %srp.038.i, i32 0, i32 3
  %16 = ptrtoint ptr %smk_access.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smk_access.i, align 4
  %and.i = shl i32 %17, 12
  %18 = and i32 %and.i, 8192
  %19 = or i32 %18, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4 = icmp slt i32 %19, 0
  %and = and i32 %19, %mode
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %mode)
  %cmp6 = icmp eq i32 %and, %mode
  %or.cond = or i1 %cmp4, %cmp6
  br i1 %or.cond, label %smk_access_entry.exit.out_audit_crit_edge, label %smk_access_entry.exit.land.lhs.true_crit_edge

smk_access_entry.exit.land.lhs.true_crit_edge:    ; preds = %smk_access_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

smk_access_entry.exit.out_audit_crit_edge:        ; preds = %smk_access_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_audit

land.lhs.true:                                    ; preds = %smk_access_entry.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %rc.0 = phi i32 [ %call1, %entry.land.lhs.true_crit_edge ], [ -13, %smk_access_entry.exit.land.lhs.true_crit_edge ]
  %20 = tail call i32 @llvm.read_register.i32(metadata !82) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i31 = and i32 %25, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool.not.i32 = icmp eq i32 %and.i31, 0
  br i1 %tobool.not.i32, label %smack_privileged.exit, label %land.lhs.true.smack_privileged.exit.thread_crit_edge, !prof !94

land.lhs.true.smack_privileged.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %smack_privileged.exit.thread

smack_privileged.exit:                            ; preds = %land.lhs.true
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 99
  %26 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cred.i, align 16
  %call5.i = tail call zeroext i1 @smack_privileged_cred(i32 noundef 32, ptr noundef %27) #11
  br i1 %call5.i, label %smack_privileged.exit.smack_privileged.exit.thread_crit_edge, label %smack_privileged.exit.out_audit_crit_edge

smack_privileged.exit.out_audit_crit_edge:        ; preds = %smack_privileged.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_audit

smack_privileged.exit.smack_privileged.exit.thread_crit_edge: ; preds = %smack_privileged.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %smack_privileged.exit.thread

smack_privileged.exit.thread:                     ; preds = %smack_privileged.exit.smack_privileged.exit.thread_crit_edge, %land.lhs.true.smack_privileged.exit.thread_crit_edge
  br label %out_audit

out_audit:                                        ; preds = %smack_privileged.exit.thread, %smack_privileged.exit.out_audit_crit_edge, %smk_access_entry.exit.out_audit_crit_edge, %for.inc.i.out_audit_crit_edge, %do.end.i.out_audit_crit_edge
  %rc.1 = phi i32 [ %call1, %smk_access_entry.exit.out_audit_crit_edge ], [ 0, %smack_privileged.exit.thread ], [ %rc.0, %smack_privileged.exit.out_audit_crit_edge ], [ %call1, %do.end.i.out_audit_crit_edge ], [ %call1, %for.inc.i.out_audit_crit_edge ]
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %out_audit.if.end17_crit_edge, label %if.then14

out_audit.if.end17_crit_edge:                     ; preds = %out_audit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %out_audit
  call void @__sanitizer_cov_trace_pc() #13
  %smk_known15 = getelementptr inbounds %struct.smack_known, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %smk_known15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smk_known15, align 4
  %smk_known16 = getelementptr inbounds %struct.smack_known, ptr %obj_known, i32 0, i32 2
  %30 = ptrtoint ptr %smk_known16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smk_known16, align 4
  tail call void @smack_log(ptr noundef %29, ptr noundef %31, i32 noundef %mode, i32 noundef %rc.1, ptr noundef nonnull %a)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %out_audit.if.end17_crit_edge
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smack_privileged(i32 noundef %cap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge, !prof !94

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %call5 = tail call zeroext i1 @smack_privileged_cred(i32 noundef %cap, ptr noundef %7)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call5, %if.end ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smk_curacc(ptr noundef %obj_known, i32 noundef %mode, ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %call2 = tail call i32 @smk_tskacc(ptr noundef %add.ptr.i, ptr noundef %obj_known, i32 noundef %mode, ptr noundef %a)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @common_lsm_audit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_log_callback(ptr noundef %ab, ptr nocapture noundef readonly %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %result = getelementptr inbounds %struct.smack_audit_data, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool.not, ptr @.str.20, ptr @.str.19
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.18, ptr noundef %4, ptr noundef nonnull %cond) #11
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.21) #11
  %subject = getelementptr inbounds %struct.smack_audit_data, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %subject to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subject, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %8) #11
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.22) #11
  %object = getelementptr inbounds %struct.smack_audit_data, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %object, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %10) #11
  %request = getelementptr inbounds %struct.smack_audit_data, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp = icmp eq i8 %14, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.23) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.24, ptr noundef %12) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smk_insert_entry(ptr noundef %skp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %skp, i32 0, i32 2
  %0 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smk_known, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #14
  %call2 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %1, i32 noundef %call) #15
  %and = and i32 %call2, 15
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr @smack_known_hash, i32 0, i32 %and
  %smk_hashed = getelementptr inbounds %struct.smack_known, ptr %skp, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %smk_hashed to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %smk_hashed, align 4
  %pprev.i = getelementptr inbounds %struct.smack_known, ptr %skp, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %smk_hashed, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

entry.hlist_add_head_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %smk_hashed, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %entry.hlist_add_head_rcu.exit_crit_edge
  %8 = load ptr, ptr @smack_known_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %skp, ptr noundef nonnull @smack_known_list, ptr noundef %8) #11
  br i1 %call.i.i, label %if.end.i.i, label %hlist_add_head_rcu.exit.list_add_rcu.exit_crit_edge

hlist_add_head_rcu.exit.list_add_rcu.exit_crit_edge: ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %skp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %skp, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %skp, i32 0, i32 1
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smack_known_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  store volatile ptr %skp, ptr @smack_known_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skp, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %hlist_add_head_rcu.exit.list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smk_find_entry(ptr noundef %string) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %string) #14
  %call1 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %string, i32 noundef %call) #15
  %and = and i32 %call1, 15
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr @smack_known_hash, i32 0, i32 %and
  %call2 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @smk_find_entry.__warned, align 1
  br i1 %.b43, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @smk_find_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 430, ptr noundef nonnull @.str.6) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %tobool14.not4750 = icmp eq ptr %add.ptr, null
  %tobool14.not47 = or i1 %tobool12.not, %tobool14.not4750
  br i1 %tobool14.not47, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %skp.048 = phi ptr [ %add.ptr29, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %skp.048, i32 0, i32 2
  %2 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smk_known, align 4
  %call15 = tail call i32 @strcmp(ptr noundef %3, ptr noundef %string) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %smk_hashed = getelementptr inbounds %struct.smack_known, ptr %skp.048, i32 0, i32 1
  %4 = ptrtoint ptr %smk_hashed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %smk_hashed, align 4
  %tobool25.not = icmp eq ptr %5, null
  %add.ptr29 = getelementptr i8, ptr %5, i32 -8
  %tobool14.not51 = icmp eq ptr %add.ptr29, null
  %tobool14.not = or i1 %tobool25.not, %tobool14.not51
  br i1 %tobool14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %skp.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %skp.048, %for.body.cleanup_crit_edge ]
  ret ptr %skp.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smk_parse_smack(ptr nocapture noundef readonly %string, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @strlen(ptr noundef %string) #14
  %add = add i32 %call, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %add, %if.then ], [ %len, %entry.if.end_crit_edge ]
  %0 = ptrtoint ptr %string to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %string, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %1)
  %cmp1 = icmp ne i8 %1, 45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp685 = icmp sgt i32 %len.addr.0, 0
  %or.cond = select i1 %cmp1, i1 %cmp685, i1 false
  br i1 %or.cond, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.086 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx8 = getelementptr i8, ptr %string, i32 %i.086
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx8, align 1
  %.fr95 = freeze i8 %3
  %4 = add i8 %.fr95, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %4)
  %5 = icmp ult i8 %4, -94
  br i1 %5, label %for.body.for.end_crit_edge, label %switch.early.test

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

switch.early.test:                                ; preds = %for.body
  %6 = zext i8 %.fr95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %.fr95, label %for.inc [
    i8 92, label %switch.early.test.for.end_crit_edge
    i8 47, label %switch.early.test.for.end_crit_edge102
    i8 39, label %switch.early.test.for.end_crit_edge103
    i8 34, label %switch.early.test.for.end_crit_edge104
  ]

switch.early.test.for.end_crit_edge104:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

switch.early.test.for.end_crit_edge103:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

switch.early.test.for.end_crit_edge102:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

switch.early.test.for.end_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %switch.early.test
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, %len.addr.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %switch.early.test.for.end_crit_edge, %switch.early.test.for.end_crit_edge102, %switch.early.test.for.end_crit_edge103, %switch.early.test.for.end_crit_edge104, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %len.addr.0, %for.inc.for.end_crit_edge ], [ %i.086, %for.body.for.end_crit_edge ], [ %i.086, %switch.early.test.for.end_crit_edge ], [ %i.086, %switch.early.test.for.end_crit_edge102 ], [ %i.086, %switch.early.test.for.end_crit_edge103 ], [ %i.086, %switch.early.test.for.end_crit_edge104 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp38 = icmp eq i32 %i.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.0.lcssa)
  %cmp41 = icmp sgt i32 %i.0.lcssa, 255
  %or.cond81 = or i1 %cmp38, %cmp41
  br i1 %or.cond81, label %for.end.cleanup_crit_edge, label %if.end8.i.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %for.end
  %add46 = add nsw i32 %i.0.lcssa, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add46, i32 noundef 3392) #16
  %cmp48 = icmp eq ptr %call9.i.i, null
  br i1 %cmp48, label %if.end8.i.i.cleanup_crit_edge, label %if.end52

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = tail call ptr @strncpy(ptr noundef nonnull %call9.i.i, ptr noundef %string, i32 noundef %i.0.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end8.i.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end52 ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smk_netlbl_mls(i32 noundef %level, ptr nocapture noundef readonly %catset, ptr noundef %sap, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sap, align 4
  %or = or i32 %1, 8
  store i32 %or, ptr %sap, align 4
  %attr = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %sap, i32 0, i32 4
  %lvl = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %sap, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %lvl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %level, ptr %lvl, align 4
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp47 = icmp sgt i32 %len, 0
  br i1 %cmp47, label %entry.for.cond4.preheader_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc.7.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %byte.050 = phi i32 [ %inc25, %for.inc.7.for.cond4.preheader_crit_edge ], [ 0, %entry.for.cond4.preheader_crit_edge ]
  %cat.049 = phi i32 [ %inc.7, %for.inc.7.for.cond4.preheader_crit_edge ], [ 1, %entry.for.cond4.preheader_crit_edge ]
  %cp.048 = phi ptr [ %incdec.ptr, %for.inc.7.for.cond4.preheader_crit_edge ], [ %catset, %entry.for.cond4.preheader_crit_edge ]
  %4 = ptrtoint ptr %cp.048 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cp.048, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp10 = icmp sgt i8 %5, -1
  br i1 %cmp10, label %for.cond4.preheader.for.inc_crit_edge, label %if.end

for.cond4.preheader.for.inc_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.cond4.preheader
  %call = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr, i32 noundef %cat.049, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %if.end.if.then17_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.then17:                                        ; preds = %if.end.7.if.then17_crit_edge, %if.end.6.if.then17_crit_edge, %if.end.5.if.then17_crit_edge, %if.end.4.if.then17_crit_edge, %if.end.3.if.then17_crit_edge, %if.end.2.if.then17_crit_edge, %if.end.1.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %call.lcssa = phi i32 [ %call, %if.end.if.then17_crit_edge ], [ %call.1, %if.end.1.if.then17_crit_edge ], [ %call.2, %if.end.2.if.then17_crit_edge ], [ %call.3, %if.end.3.if.then17_crit_edge ], [ %call.4, %if.end.4.if.then17_crit_edge ], [ %call.5, %if.end.5.if.then17_crit_edge ], [ %call.6, %if.end.6.if.then17_crit_edge ], [ %call.7, %if.end.7.if.then17_crit_edge ]
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 4
  %tobool.not3.i = icmp eq ptr %7, null
  br i1 %tobool.not3.i, label %if.then17.cleanup_crit_edge, label %if.then17.while.body.i_crit_edge

if.then17.while.body.i_crit_edge:                 ; preds = %if.then17
  br label %while.body.i

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then17.while.body.i_crit_edge
  %catmap.addr.04.i = phi ptr [ %9, %while.body.i.while.body.i_crit_edge ], [ %7, %if.then17.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i, i32 0, i32 2
  %8 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next.i, align 8
  tail call void @kfree(ptr noundef nonnull %catmap.addr.04.i) #11
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.cond4.preheader.for.inc_crit_edge
  %10 = ptrtoint ptr %cp.048 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cp.048, align 1
  %12 = and i8 %11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp10.1 = icmp eq i8 %12, 0
  br i1 %cmp10.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %inc = add nuw nsw i32 %cat.049, 1
  %call.1 = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr, i32 noundef %inc, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp15.1 = icmp slt i32 %call.1, 0
  br i1 %cmp15.1, label %if.end.1.if.then17_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end.1.if.then17_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %13 = ptrtoint ptr %cp.048 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cp.048, align 1
  %15 = and i8 %14, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp10.2 = icmp eq i8 %15, 0
  br i1 %cmp10.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %inc.1 = add nuw nsw i32 %cat.049, 2
  %call.2 = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr, i32 noundef %inc.1, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp15.2 = icmp slt i32 %call.2, 0
  br i1 %cmp15.2, label %if.end.2.if.then17_crit_edge, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end.2.if.then17_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %16 = ptrtoint ptr %cp.048 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cp.048, align 1
  %18 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp10.3 = icmp eq i8 %18, 0
  br i1 %cmp10.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %inc.2 = add nuw nsw i32 %cat.049, 3
  %call.3 = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr, i32 noundef %inc.2, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp15.3 = icmp slt i32 %call.3, 0
  br i1 %cmp15.3, label %if.end.3.if.then17_crit_edge, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end.3.if.then17_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

for.inc.3:                                        ; preds = %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %19 = ptrtoint ptr %cp.048 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cp.048, align 1
  %21 = and i8 %20, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp10.4 = icmp eq i8 %21, 0
  br i1 %cmp10.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %inc.3 = add nuw nsw i32 %cat.049, 4
  %call.4 = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr, i32 noundef %inc.3, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp15.4 = icmp slt i32 %call.4, 0
  br i1 %cmp15.4, label %if.end.4.if.then17_crit_edge, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.end.4.if.then17_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

for.inc.4:                                        ; preds = %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %22 = ptrtoint ptr %cp.048 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cp.048, align 1
  %24 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp10.5 = icmp eq i8 %24, 0
  br i1 %cmp10.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %inc.4 = add nuw nsw i32 %cat.049, 5
  %call.5 = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr, i32 noundef %inc.4, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp15.5 = icmp slt i32 %call.5, 0
  br i1 %cmp15.5, label %if.end.5.if.then17_crit_edge, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.end.5.if.then17_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

for.inc.5:                                        ; preds = %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %25 = ptrtoint ptr %cp.048 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cp.048, align 1
  %27 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp10.6 = icmp eq i8 %27, 0
  br i1 %cmp10.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %inc.5 = add nuw nsw i32 %cat.049, 6
  %call.6 = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr, i32 noundef %inc.5, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp15.6 = icmp slt i32 %call.6, 0
  br i1 %cmp15.6, label %if.end.6.if.then17_crit_edge, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.end.6.if.then17_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

for.inc.6:                                        ; preds = %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %28 = ptrtoint ptr %cp.048 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cp.048, align 1
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp10.7 = icmp eq i8 %30, 0
  br i1 %cmp10.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

if.end.7:                                         ; preds = %for.inc.6
  %inc.6 = add i32 %cat.049, 7
  %call.7 = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr, i32 noundef %inc.6, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp15.7 = icmp slt i32 %call.7, 0
  br i1 %cmp15.7, label %if.end.7.if.then17_crit_edge, label %if.end.7.for.inc.7_crit_edge

if.end.7.for.inc.7_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

if.end.7.if.then17_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

for.inc.7:                                        ; preds = %if.end.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %inc.7 = add i32 %cat.049, 8
  %incdec.ptr = getelementptr i8, ptr %cp.048, i32 1
  %inc25 = add nuw nsw i32 %byte.050, 1
  %exitcond.not = icmp eq i32 %inc25, %len
  br i1 %exitcond.not, label %for.inc.7.cleanup_crit_edge, label %for.inc.7.for.cond4.preheader_crit_edge

for.inc.7.for.cond4.preheader_crit_edge:          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond4.preheader

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %if.then17.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.lcssa, %while.body.i.cleanup_crit_edge ], [ 0, %for.inc.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_setbit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smack_populate_secattr(ptr noundef %skp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %skp, i32 0, i32 3
  %0 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smk_secid, align 4
  %smk_netlabel = getelementptr inbounds %struct.smack_known, ptr %skp, i32 0, i32 4
  %secid = getelementptr inbounds %struct.smack_known, ptr %skp, i32 0, i32 4, i32 4, i32 1
  %2 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %secid, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %skp, i32 0, i32 2
  %3 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known, align 4
  %domain = getelementptr inbounds %struct.smack_known, ptr %skp, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %domain, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 12) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %8 = ptrtoint ptr %smk_netlabel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smk_netlabel, align 4
  %or = or i32 %9, 2
  store i32 %or, ptr %smk_netlabel, align 4
  %free = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %free, align 4
  %data = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skp, ptr %data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = getelementptr inbounds %struct.smack_known, ptr %skp, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %12, align 4
  %14 = ptrtoint ptr %smk_netlabel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smk_netlabel, align 4
  %or12 = or i32 %15, 21
  store i32 %or12, ptr %smk_netlabel, align 4
  %16 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smk_known, align 4
  %call14 = tail call i32 @strlen(ptr noundef %17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 24
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_cipso_direct to i32))
  %18 = load i32, ptr @smack_cipso_direct, align 4
  %call19 = tail call i32 @smk_netlbl_mls(i32 noundef %18, ptr noundef %17, ptr noundef %smk_netlabel, i32 noundef %call14)
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_cipso_mapped to i32))
  %19 = load i32, ptr @smack_cipso_mapped, align 4
  %call23 = tail call i32 @smk_netlbl_mls(i32 noundef %19, ptr noundef %smk_secid, ptr noundef %smk_netlabel, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then16
  %retval.0 = phi i32 [ %call19, %if.then16 ], [ %call23, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smk_import_entry(ptr nocapture noundef readonly %string, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @smk_parse_smack(ptr noundef %string, i32 noundef %len)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @smack_known_lock, i32 noundef 0) #11
  %call3 = tail call ptr @smk_find_entry(ptr noundef %call)
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %if.end5, label %if.end.freeout_crit_edge

if.end.freeout_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %freeout

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 152) #17
  %cmp7 = icmp eq ptr %call7.i.i, null
  br i1 %cmp7, label %if.end5.freeout_crit_edge, label %if.end10

if.end5.freeout_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %freeout

if.end10:                                         ; preds = %if.end5
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %smk_known to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %smk_known, align 8
  %2 = load i32, ptr @smack_next_secid, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @smack_next_secid, align 4
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %smk_secid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %smk_secid, align 4
  %call11 = tail call i32 @smack_populate_secattr(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp12 = icmp sgt i32 %call11, -1
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %smk_rules = getelementptr inbounds %struct.smack_known, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %smk_rules to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %smk_rules, ptr %smk_rules, align 4
  %prev.i = getelementptr inbounds %struct.smack_known, ptr %call7.i.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %smk_rules, ptr %prev.i, align 8
  %smk_rules_lock = getelementptr inbounds %struct.smack_known, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %smk_rules_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @smk_import_entry.__key) #11
  %6 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smk_known, align 8
  %call.i = tail call i32 @strlen(ptr noundef %7) #18
  %call2.i = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %7, i32 noundef %call.i) #15
  %and.i = and i32 %call2.i, 15
  %arrayidx.i = getelementptr [16 x %struct.hlist_head], ptr @smack_known_hash, i32 0, i32 %and.i
  %smk_hashed.i = getelementptr inbounds %struct.smack_known, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %smk_hashed.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %smk_hashed.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.smack_known, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %smk_hashed.i, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then13.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

if.then13.hlist_add_head_rcu.exit.i_crit_edge:    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %smk_hashed.i, ptr %pprev51.i.i, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %do.body49.i.i, %if.then13.hlist_add_head_rcu.exit.i_crit_edge
  %14 = load ptr, ptr @smack_known_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @smack_known_list, ptr noundef %14) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %hlist_add_head_rcu.exit.i.unlockout_crit_edge

hlist_add_head_rcu.exit.i.unlockout_crit_edge:    ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlockout

if.end.i.i.i:                                     ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call7.i.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @smack_known_list, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  store volatile ptr %call7.i.i, ptr @smack_known_list, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %prev37.i.i.i, align 4
  br label %unlockout

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %18 = inttoptr i32 %call11 to ptr
  br label %freeout

freeout:                                          ; preds = %if.end14, %if.end5.freeout_crit_edge, %if.end.freeout_crit_edge
  %skp.0 = phi ptr [ %call3, %if.end.freeout_crit_edge ], [ %18, %if.end14 ], [ inttoptr (i32 -12 to ptr), %if.end5.freeout_crit_edge ]
  tail call void @kfree(ptr noundef %call) #11
  br label %unlockout

unlockout:                                        ; preds = %freeout, %if.end.i.i.i, %hlist_add_head_rcu.exit.i.unlockout_crit_edge
  %skp.1 = phi ptr [ %skp.0, %freeout ], [ %call7.i.i, %hlist_add_head_rcu.exit.i.unlockout_crit_edge ], [ %call7.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @smack_known_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %unlockout, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %skp.1, %unlockout ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smack_from_secid(i32 noundef %secid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @smack_from_secid.__warned, align 1
  br i1 %.b23, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @smack_from_secid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 618, ptr noundef nonnull @.str.6) #11
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %skp.0.in = phi ptr [ %skp.0, %for.body.for.cond_crit_edge ], [ @smack_known_list, %for.cond.preheader ]
  %4 = ptrtoint ptr %skp.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %skp.0 = load volatile ptr, ptr %skp.0.in, align 4
  %cmp.not = icmp eq ptr %skp.0, @smack_known_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %skp.0, i32 0, i32 3
  %5 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smk_secid, align 4
  %cmp9 = icmp eq i32 %6, %secid
  br i1 %cmp9, label %if.then10, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then10:                                        ; preds = %for.body
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i24, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %if.then10
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i33, label %for.end.rcu_read_unlock.exit43_crit_edge, label %land.lhs.true.i36

for.end.rcu_read_unlock.exit43_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit43

land.lhs.true.i36:                                ; preds = %for.end
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit43_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit43_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit43

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit43_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit43_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit43

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_unlock.exit43

rcu_read_unlock.exit43:                           ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit43_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit43_crit_edge, %for.end.rcu_read_unlock.exit43_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit43, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %skp.0, %rcu_read_unlock.exit ], [ @smack_known_huh, %rcu_read_unlock.exit43 ]
  %7 = tail call i32 @llvm.read_register.i32(metadata !82) #11
  %and.i.i.i.i.i40 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i42 = add i32 %10, -1
  store volatile i32 %sub.i.i.i42, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smack_privileged_cred(i32 noundef %cap, ptr noundef %cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %2 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @cap_capable(ptr noundef %cred, ptr noundef nonnull @init_user_ns, i32 noundef %cap, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !82) #11
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %9 = load volatile ptr, ptr @smack_onlycap_list, align 4
  %cmp.i.not = icmp eq ptr %9, @smack_onlycap_list
  br i1 %cmp.i.not, label %if.then4, label %do.body

if.then4:                                         ; preds = %rcu_read_lock.exit
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i36, label %if.then4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

if.then4.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %if.then4
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %if.then4.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  br label %cleanup.sink.split

do.body:                                          ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %do.body.for.cond.preheader_crit_edge

do.body.for.cond.preheader_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %do.body
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true10

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b35 = load i1, ptr @smack_privileged_cred.__warned, align 1
  br i1 %.b35, label %land.lhs.true10.for.cond.preheader_crit_edge, label %if.then12

land.lhs.true10.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @smack_privileged_cred.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 670, ptr noundef nonnull @.str.6) #11
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then12, %land.lhs.true10.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %do.body.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %sklep.0.in = phi ptr [ %sklep.0, %for.body.for.cond_crit_edge ], [ @smack_onlycap_list, %for.cond.preheader ]
  %10 = ptrtoint ptr %sklep.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %sklep.0 = load volatile ptr, ptr %sklep.0.in, align 4
  %cmp.not = icmp eq ptr %sklep.0, @smack_onlycap_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %smk_label = getelementptr inbounds %struct.smack_known_list_elem, ptr %sklep.0, i32 0, i32 1
  %11 = ptrtoint ptr %smk_label to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smk_label, align 4
  %cmp18 = icmp eq ptr %12, %4
  br i1 %cmp18, label %if.then19, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then19:                                        ; preds = %for.body
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i45, label %if.then19.rcu_read_unlock.exit55_crit_edge, label %land.lhs.true.i48

if.then19.rcu_read_unlock.exit55_crit_edge:       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit55

land.lhs.true.i48:                                ; preds = %if.then19
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit55

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit55

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_unlock.exit55

rcu_read_unlock.exit55:                           ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge, %if.then19.rcu_read_unlock.exit55_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i56, label %for.end.rcu_read_unlock.exit66_crit_edge, label %land.lhs.true.i59

for.end.rcu_read_unlock.exit66_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit66

land.lhs.true.i59:                                ; preds = %for.end
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit66_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit66_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit66

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit66_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit66_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit66

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_unlock.exit66

rcu_read_unlock.exit66:                           ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit66_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit66_crit_edge, %for.end.rcu_read_unlock.exit66_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit66, %rcu_read_unlock.exit55, %rcu_read_unlock.exit
  %retval.0.ph = phi i1 [ false, %rcu_read_unlock.exit66 ], [ true, %rcu_read_unlock.exit55 ], [ true, %rcu_read_unlock.exit ]
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #11
  %and.i.i.i.i.i43 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i65 = add i32 %16, -1
  store volatile i32 %sub.i.i.i65, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_capable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !42, !44, !45, !47, !49, !51, !52, !53, !55, !57, !59, !61, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/smack/smack_access.c", i32 16, i32 15}
!2 = !{ptr @smack_known_huh, !3, !"smack_known_huh", i1 false, i1 false}
!3 = !{!"../security/smack/smack_access.c", i32 15, i32 20}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/smack/smack_access.c", i32 21, i32 15}
!6 = !{ptr @smack_known_hat, !7, !"smack_known_hat", i1 false, i1 false}
!7 = !{!"../security/smack/smack_access.c", i32 20, i32 20}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/smack/smack_access.c", i32 26, i32 15}
!10 = !{ptr @smack_known_star, !11, !"smack_known_star", i1 false, i1 false}
!11 = !{!"../security/smack/smack_access.c", i32 25, i32 20}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/smack/smack_access.c", i32 31, i32 15}
!14 = !{ptr @smack_known_floor, !15, !"smack_known_floor", i1 false, i1 false}
!15 = !{!"../security/smack/smack_access.c", i32 30, i32 20}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/smack/smack_access.c", i32 36, i32 15}
!18 = !{ptr @smack_known_web, !19, !"smack_known_web", i1 false, i1 false}
!19 = !{!"../security/smack/smack_access.c", i32 35, i32 20}
!20 = !{ptr @smack_known_list, !21, !"smack_known_list", i1 false, i1 false}
!21 = !{!"../security/smack/smack_access.c", i32 40, i32 1}
!22 = !{ptr @log_policy, !23, !"log_policy", i1 false, i1 false}
!23 = !{!"../security/smack/smack_access.c", i32 52, i32 5}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../security/smack/smack_access.c", i32 86, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../security/smack/smack_access.c", i32 273, i32 38}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/smack/smack_access.c", i32 359, i32 19}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/smack/smack_access.c", i32 373, i32 26}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/smack/smack_access.c", i32 375, i32 26}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/smack/smack_access.c", i32 392, i32 1}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @smack_known_lock, !37, !"smack_known_lock", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../security/smack/smack_access.c", i32 430, i32 2}
!42 = !{ptr @smk_import_entry.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../security/smack/smack_access.c", i32 588, i32 3}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../security/smack/smack_access.c", i32 618, i32 2}
!47 = !{ptr @smack_onlycap_list, !48, !"smack_onlycap_list", i1 false, i1 false}
!48 = !{!"../security/smack/smack_access.c", i32 640, i32 1}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../security/smack/smack_access.c", i32 641, i32 1}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @smack_onlycap_lock, !50, !"smack_onlycap_lock", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../security/smack/smack_access.c", i32 670, i32 2}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../security/smack/smack_access.c", i32 698, i32 36}
!57 = !{ptr @smack_known_hash, !58, !"smack_known_hash", i1 false, i1 false}
!58 = !{!"../security/smack/smack_access.c", i32 394, i32 19}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!65 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/smack/smack_access.c", i32 315, i32 23}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/smack/smack_access.c", i32 317, i32 19}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/smack/smack_access.c", i32 317, i32 30}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/smack/smack_access.c", i32 318, i32 23}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/smack/smack_access.c", i32 320, i32 23}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/smack/smack_access.c", i32 323, i32 24}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/smack/smack_access.c", i32 325, i32 24}
!80 = !{ptr @smack_next_secid, !81, !"smack_next_secid", i1 false, i1 false}
!81 = !{!"../security/smack/smack_access.c", i32 46, i32 12}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2149933219}
!93 = !{i64 2149933485}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2151516131}
!96 = !{i64 2151435731}
