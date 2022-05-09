; ModuleID = '/llk/IR_all_yes/security/apparmor/resource.c_pt.bc'
source_filename = "../security/apparmor/resource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aa_sfs_entry = type { ptr, ptr, i16, i32, %union.anon.149, ptr }
%union.anon.149 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.111 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.apparmor_audit_data = type { i32, i32, ptr, ptr, ptr, ptr, i32, i32, %union.anon.150 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { ptr, %union.anon.152 }
%union.anon.152 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, i32, ptr, ptr, i32 }
%union.anon.164 = type { ptr }
%struct.common_audit_data = type { i8, %union.anon.159, %union.anon.164 }
%union.anon.159 = type { %struct.path }
%struct.path = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.30 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.30 = type { %struct.callback_head }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.aa_proxy = type { %struct.kref, ptr }
%struct.rlimit = type { i32, i32 }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"cpu fsize data stack core rss nproc nofile memlock as locks sigpending msgqueue nice rtprio rttime\00", [61 x i8] zeroinitializer }, align 32
@aa_sfs_seq_file_ops = external dso_local constant %struct.file_operations, align 4
@aa_sfs_entry_rlimit = dso_local global { [2 x %struct.aa_sfs_entry], [48 x i8] } { [2 x %struct.aa_sfs_entry] [%struct.aa_sfs_entry { ptr @.str, ptr null, i16 292, i32 1, %union.anon.149 { ptr @.str.1 }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rlim_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], [32 x i8] zeroinitializer }, align 32
@aa_task_setrlimit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"security/apparmor/resource.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cap_sys_resource\00", [47 x i8] zeroinitializer }, align 32
@init_task = external dso_local local_unnamed_addr global %struct.task_struct, align 128
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/cred.h\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_cred_raw_label = private unnamed_addr constant [18 x i8] c"aa_cred_raw_label\00", align 1
@apparmor_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!blob)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.cred_label = private unnamed_addr constant [11 x i8] c"cred_label\00", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setrlimit\00", [22 x i8] zeroinitializer }, align 32
@__const.audit_resource.sa_aad = private unnamed_addr constant %struct.apparmor_audit_data { i32 0, i32 0, ptr @.str.15, ptr null, ptr null, ptr null, i32 0, i32 0, %union.anon.150 zeroinitializer }, align 4
@__const.audit_resource.sa = private unnamed_addr constant { i8, [3 x i8], { ptr, [4 x i8] }, %union.anon.164 } { i8 7, [3 x i8] zeroinitializer, { ptr, [4 x i8] } { ptr null, [4 x i8] c"\FF\FF\FF\FF" }, %union.anon.164 zeroinitializer }, align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" rlimit=%s value=%lu\00", [43 x i8] zeroinitializer }, align 32
@rlim_names = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" peer=\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fsize\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stack\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rss\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nproc\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nofile\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"memlock\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"as\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"locks\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sigpending\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msgqueue\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nice\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtprio\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rttime\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 25, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"aa_sfs_entry_rlimit\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 24, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"rlim_map\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 19, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 112, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 124, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 695, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 424, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 425, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 431, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 51, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/cred.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 26, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 723, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 56, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 34, i32 23 }
@___asan_gen_.91 = private unnamed_addr constant [11 x i8] c"rlim_names\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1, i32 26 }
@___asan_gen_.95 = private constant [32 x i8] c"../security/apparmor/resource.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 37, i32 24 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 2, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 3, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 4, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 5, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 6, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 7, i32 16 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 8, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 9, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 10, i32 20 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 11, i32 15 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 12, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 13, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 14, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 15, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 16, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [33 x i8] c"./security/apparmor/rlim_names.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 17, i32 19 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @.str, ptr @.str.1, ptr @aa_sfs_entry_rlimit, ptr @rlim_map, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rlim_names, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_rlimit to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rlim_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rlim_names to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @aa_map_resource(i32 noundef %resource) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [16 x i32], ptr @rlim_map, i32 0, i32 %resource
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_task_setrlimit(ptr noundef %label, ptr noundef %task, i32 noundef %resource, ptr nocapture noundef readonly %new_rlim) local_unnamed_addr #1 align 64 {
entry:
  %sa_aad.i.i = alloca %struct.apparmor_audit_data, align 4
  %sa.i.i = alloca %struct.common_audit_data, align 4
  %sa_aad.i = alloca %struct.apparmor_audit_data, align 4
  %sa.i = alloca %struct.common_audit_data, align 4
  %old.i.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b66 = load i1, ptr @aa_task_setrlimit.__warned, align 1
  br i1 %.b66, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @aa_task_setrlimit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 112, ptr noundef nonnull @.str.3) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %do.end7.cred_label.exit.i.i_crit_edge, !prof !88

do.end7.cred_label.exit.i.i_crit_edge:            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.cred_label) #8
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %do.end7.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %aa_cred_raw_label.exit.thread.i, label %if.end.i.i, !prof !88

aa_cred_raw_label.exit.thread.i:                  ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.aa_cred_raw_label) #8
  br label %aa_get_newest_cred_label.exit

if.end.i.i:                                       ; preds = %cred_label.exit.i.i
  %flags.i.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i118.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %proxy.i.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %proxy.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %proxy.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i.i, label %do.end.i3.i, label %if.then2.i.i.if.end20.i.i_crit_edge, !prof !88

if.then2.i.i.if.end20.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

do.end.i3.i:                                      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.aa_get_newest_label) #8
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.end.i3.i, %if.then2.i.i.if.end20.i.i_crit_edge
  %15 = ptrtoint ptr %proxy.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %proxy.i.i, align 4
  %label.i.i = getelementptr inbounds %struct.aa_proxy, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %label.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %label.i.i, align 4
  %tobool33.not.i.i = icmp eq ptr %18, null
  br i1 %tobool33.not.i.i, label %do.end51.i.i, label %if.end20.i.i.if.end57.i.i_crit_edge, !prof !88

if.end20.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

do.end51.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.aa_get_newest_label) #8
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %do.end51.i.i, %if.end20.i.i.if.end57.i.i_crit_edge
  %19 = ptrtoint ptr %proxy.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %proxy.i.i, align 4
  %label68.i.i = getelementptr inbounds %struct.aa_proxy, ptr %20, i32 0, i32 1
  %21 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i.i, label %if.end57.i.i.do.body.i.i.i.preheader_crit_edge, label %land.lhs.true.i.i.i.i

if.end57.i.i.do.body.i.i.i.preheader_crit_edge:   ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.preheader

land.lhs.true.i.i.i.i:                            ; preds = %if.end57.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.do.body.i.i.i.preheader_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.do.body.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.preheader

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.do.body.i.i.i.preheader_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.do.body.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.preheader

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #8
  br label %do.body.i.i.i.preheader

do.body.i.i.i.preheader:                          ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.do.body.i.i.i.preheader_crit_edge, %land.lhs.true.i.i.i.i.do.body.i.i.i.preheader_crit_edge, %if.end57.i.i.do.body.i.i.i.preheader_crit_edge
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %kref_get_unless_zero.exit.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i.i.preheader
  %25 = ptrtoint ptr %label68.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %label68.i.i, align 4
  %call.i.i.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i4.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i4.i, label %land.lhs.true.i.i.i, label %do.body.i.i.i.do.end8.i.i.i_crit_edge

do.body.i.i.i.do.end8.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i.i.i
  %call3.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b17.i.i.i = load i1, ptr @aa_get_label_rcu.__warned, align 1
  br i1 %.b17.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @aa_get_label_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 401, ptr noundef nonnull @.str.3) #8
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, %do.body.i.i.i.do.end8.i.i.i_crit_edge
  %tobool11.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool11.not.i.i.i, label %do.end8.i.i.i.do.end14.i.i.i_crit_edge, label %land.rhs.i.i.i

do.end8.i.i.i.do.end14.i.i.i_crit_edge:           ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i.i.i

land.rhs.i.i.i:                                   ; preds = %do.end8.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #8
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %26, i32 noundef 4) #8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %land.rhs.i.i.i
  %29 = phi i32 [ %28, %land.rhs.i.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %old.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i.i.i

do.cond.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %29, 1
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %26, i32 noundef 4) #8
  %call.i3.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i.i, i32 noundef 4) #8
  %31 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %26, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i.i:                      ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i.i
  %33 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 %32, i32 %add.i.i.i.i.i.i.i, ptr nonnull elementtype(i32) %26) #8, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  %tobool.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 1
  %cmp.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i.i, %32
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, !prof !90

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge
  %34 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i.i = add i32 %35, 1
  %36 = or i32 %add5.i.i.i.i.i.i.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !90

if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit.i.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %26, i32 noundef 0) #8
  %37 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr.i.i.i = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i.i.i

kref_get_unless_zero.exit.i.i.i:                  ; preds = %if.then10.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge
  %38 = phi i32 [ %35, %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge ], [ %.pr.i.i.i, %if.then10.i.i.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i.i.i = icmp eq i32 %38, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not.i.i.i, label %kref_get_unless_zero.exit.i.i.i.do.body.i.i.i_crit_edge, label %kref_get_unless_zero.exit.i.i.i.do.end14.i.i.i_crit_edge

kref_get_unless_zero.exit.i.i.i.do.end14.i.i.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i.i.i

kref_get_unless_zero.exit.i.i.i.do.body.i.i.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

do.end14.i.i.i:                                   ; preds = %kref_get_unless_zero.exit.i.i.i.do.end14.i.i.i_crit_edge, %do.end8.i.i.i.do.end14.i.i.i_crit_edge
  %call.i18.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i18.i.i.i, label %do.end14.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge, label %land.lhs.true.i21.i.i.i

do.end14.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge: ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label_rcu.exit.i.i

land.lhs.true.i21.i.i.i:                          ; preds = %do.end14.i.i.i
  %call1.i19.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i.i.i)
  %tobool.not.i20.i.i.i = icmp eq i32 %call1.i19.i.i.i, 0
  br i1 %tobool.not.i20.i.i.i, label %land.lhs.true.i21.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge, label %land.lhs.true2.i23.i.i.i

land.lhs.true.i21.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label_rcu.exit.i.i

land.lhs.true2.i23.i.i.i:                         ; preds = %land.lhs.true.i21.i.i.i
  %.b4.i22.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i.i.i, label %land.lhs.true2.i23.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge, label %if.then.i24.i.i.i

land.lhs.true2.i23.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label_rcu.exit.i.i

if.then.i24.i.i.i:                                ; preds = %land.lhs.true2.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.14) #8
  br label %aa_get_label_rcu.exit.i.i

aa_get_label_rcu.exit.i.i:                        ; preds = %if.then.i24.i.i.i, %land.lhs.true2.i23.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge, %land.lhs.true.i21.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge, %do.end14.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %39 = call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i25.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i25.i.i.i to ptr
  %preempt_count.i.i.i.i26.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i26.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i26.i.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br i1 %tobool11.not.i.i.i, label %do.end89.i.i, label %aa_get_label_rcu.exit.i.i.aa_get_newest_cred_label.exit_crit_edge, !prof !88

aa_get_label_rcu.exit.i.i.aa_get_newest_cred_label.exit_crit_edge: ; preds = %aa_get_label_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_newest_cred_label.exit

do.end89.i.i:                                     ; preds = %aa_get_label_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.aa_get_newest_label) #8
  br label %aa_get_newest_cred_label.exit

if.then.i118.i.i:                                 ; preds = %if.end.i.i
  %call.i.i.i.i.i.i.i117.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %10, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %10, i32 1, i32 3, i32 1) #8
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #8, !srcloc !92
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i118.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !88

if.then.i118.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i118.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i118.i.i
  %add.i.i.i.i.i119.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i.i119.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i.i120.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i.i120.i.i, label %if.else.i.i.i.i.i.i.i.aa_get_newest_cred_label.exit_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !90

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.aa_get_newest_cred_label.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_newest_cred_label.exit

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i118.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i118.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef %.sink.i.i.i.i.i.i.i) #8
  br label %aa_get_newest_cred_label.exit

aa_get_newest_cred_label.exit:                    ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.aa_get_newest_cred_label.exit_crit_edge, %do.end89.i.i, %aa_get_label_rcu.exit.i.i.aa_get_newest_cred_label.exit_crit_edge, %aa_cred_raw_label.exit.thread.i
  %retval.0.i.i = phi ptr [ null, %do.end89.i.i ], [ %26, %aa_get_label_rcu.exit.i.i.aa_get_newest_cred_label.exit_crit_edge ], [ %10, %if.else.i.i.i.i.i.i.i.aa_get_newest_cred_label.exit_crit_edge ], [ %10, %if.end15.sink.split.i.i.i.i.i.i.i ], [ null, %aa_cred_raw_label.exit.thread.i ]
  %call.i68 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i68, label %aa_get_newest_cred_label.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i71

aa_get_newest_cred_label.exit.rcu_read_unlock.exit_crit_edge: ; preds = %aa_get_newest_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i71:                                ; preds = %aa_get_newest_cred_label.exit
  %call1.i69 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69)
  %tobool.not.i70 = icmp eq i32 %call1.i69, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i71.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i73

land.lhs.true.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i73:                               ; preds = %land.lhs.true.i71
  %.b4.i72 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i72, label %land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge, label %if.then.i74

land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i74:                                      ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.14) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i74, %land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i71.rcu_read_unlock.exit_crit_edge, %aa_get_newest_cred_label.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %45 = call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i75 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i75 to ptr
  %preempt_count.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i76, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i76, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %cmp.not = icmp eq ptr %retval.0.i.i, %label
  br i1 %cmp.not, label %rcu_read_unlock.exit.if.else_crit_edge, label %land.lhs.true10

rcu_read_unlock.exit.if.else_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true10:                                  ; preds = %rcu_read_unlock.exit
  %call11 = call i32 @aa_capable(ptr noundef %label, i32 noundef 24, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %land.lhs.true10.if.else_crit_edge, label %for.cond.preheader

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.cond.preheader:                               ; preds = %land.lhs.true10
  %arrayidx84 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 0
  %49 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx84, align 4
  %tobool16.not85 = icmp eq ptr %50, null
  br i1 %tobool16.not85, label %for.cond.preheader.if.end50_crit_edge, label %do.body17.lr.ph

for.cond.preheader.if.end50_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.body17.lr.ph:                                  ; preds = %for.cond.preheader
  %rlim_max = getelementptr inbounds %struct.rlimit, ptr %new_rlim, i32 0, i32 1
  %51 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i, i32 0, i32 2
  %52 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1
  %max.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %53 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8
  %info2.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 5
  br label %do.body17

do.body17:                                        ; preds = %do.body17.do.body17_crit_edge, %do.body17.lr.ph
  %54 = phi ptr [ %50, %do.body17.lr.ph ], [ %66, %do.body17.do.body17_crit_edge ]
  %__E.087 = phi i32 [ 0, %do.body17.lr.ph ], [ %spec.select, %do.body17.do.body17_crit_edge ]
  %i.sroa.0.086 = phi i32 [ 0, %do.body17.lr.ph ], [ %inc, %do.body17.do.body17_crit_edge ]
  %55 = ptrtoint ptr %rlim_max to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rlim_max, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i) #8
  %57 = call ptr @memcpy(ptr %sa_aad.i, ptr @__const.audit_resource.sa_aad, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i) #8
  %58 = call ptr @memcpy(ptr %sa.i, ptr @__const.audit_resource.sa, i32 12)
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %sa_aad.i, ptr %51, align 4
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %resource, ptr %52, align 4
  %61 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %56, ptr %max.i, align 4
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %retval.0.i.i, ptr %53, align 4
  %63 = ptrtoint ptr %info2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.4, ptr %info2.i, align 4
  %64 = ptrtoint ptr %sa_aad.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -13, ptr %sa_aad.i, align 4
  %call.i77 = call i32 @aa_audit(i32 noundef 7, ptr noundef nonnull %54, ptr noundef nonnull %sa.i, ptr noundef nonnull @audit_cb) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool19.not = icmp eq i32 %call.i77, 0
  %spec.select = select i1 %tobool19.not, i32 %__E.087, i32 %call.i77
  %inc = add i32 %i.sroa.0.086, 1
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %66, null
  br i1 %tobool16.not, label %do.body17.if.end50_crit_edge, label %do.body17.do.body17_crit_edge

do.body17.do.body17_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

do.body17.if.end50_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %rcu_read_unlock.exit.if.else_crit_edge
  %call28 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx3388 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call28
  %67 = ptrtoint ptr %arrayidx3388 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx3388, align 4
  %tobool34.not89 = icmp eq ptr %68, null
  br i1 %tobool34.not89, label %if.else.if.end50_crit_edge, label %do.body36.lr.ph

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.body36.lr.ph:                                  ; preds = %if.else
  %shl.i = shl nuw i32 1, %resource
  %rlim_max.i = getelementptr inbounds %struct.rlimit, ptr %new_rlim, i32 0, i32 1
  %69 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i.i, i32 0, i32 2
  %70 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 8, i32 0, i32 1
  %max.i.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %71 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 8
  %info2.i.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 5
  br label %do.body36

do.body36:                                        ; preds = %profile_setrlimit.exit.do.body36_crit_edge, %do.body36.lr.ph
  %72 = phi ptr [ %68, %do.body36.lr.ph ], [ %90, %profile_setrlimit.exit.do.body36_crit_edge ]
  %__E27.091 = phi i32 [ 0, %do.body36.lr.ph ], [ %spec.select67, %profile_setrlimit.exit.do.body36_crit_edge ]
  %i26.sroa.0.090 = phi i32 [ %call28, %do.body36.lr.ph ], [ %call46, %profile_setrlimit.exit.do.body36_crit_edge ]
  %rlimits.i = getelementptr inbounds %struct.aa_profile, ptr %72, i32 0, i32 17
  %73 = ptrtoint ptr %rlimits.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rlimits.i, align 4
  %and.i = and i32 %74, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i78 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i78, label %do.body36.profile_setrlimit.exit_crit_edge, label %land.lhs.true.i79

do.body36.profile_setrlimit.exit_crit_edge:       ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %profile_setrlimit.exit

land.lhs.true.i79:                                ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %rlim_max.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rlim_max.i, align 4
  %rlim_max2.i = getelementptr %struct.aa_profile, ptr %72, i32 0, i32 17, i32 1, i32 %resource, i32 1
  %77 = ptrtoint ptr %rlim_max2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rlim_max2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp.i = icmp ugt i32 %76, %78
  %spec.select.i = select i1 %cmp.i, i32 -13, i32 0
  br label %profile_setrlimit.exit

profile_setrlimit.exit:                           ; preds = %land.lhs.true.i79, %do.body36.profile_setrlimit.exit_crit_edge
  %e.0.i = phi i32 [ 0, %do.body36.profile_setrlimit.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i79 ]
  %79 = ptrtoint ptr %rlim_max.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rlim_max.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i.i) #8
  %81 = call ptr @memcpy(ptr %sa_aad.i.i, ptr @__const.audit_resource.sa_aad, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i.i) #8
  %82 = call ptr @memcpy(ptr %sa.i.i, ptr @__const.audit_resource.sa, i32 12)
  %83 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %sa_aad.i.i, ptr %69, align 4
  %84 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %resource, ptr %70, align 4
  %85 = ptrtoint ptr %max.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %80, ptr %max.i.i, align 4
  %86 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %71, align 4
  %87 = ptrtoint ptr %info2.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %info2.i.i, align 4
  %88 = ptrtoint ptr %sa_aad.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %e.0.i, ptr %sa_aad.i.i, align 4
  %call.i.i = call i32 @aa_audit(i32 noundef 7, ptr noundef nonnull %72, ptr noundef nonnull %sa.i.i, ptr noundef nonnull @audit_cb) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool39.not = icmp eq i32 %call.i.i, 0
  %spec.select67 = select i1 %tobool39.not, i32 %__E27.091, i32 %call.i.i
  %add = add i32 %i26.sroa.0.090, 1
  %call46 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #8
  %arrayidx33 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call46
  %89 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx33, align 4
  %tobool34.not = icmp eq ptr %90, null
  br i1 %tobool34.not, label %profile_setrlimit.exit.if.end50_crit_edge, label %profile_setrlimit.exit.do.body36_crit_edge

profile_setrlimit.exit.do.body36_crit_edge:       ; preds = %profile_setrlimit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

profile_setrlimit.exit.if.end50_crit_edge:        ; preds = %profile_setrlimit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end50:                                         ; preds = %profile_setrlimit.exit.if.end50_crit_edge, %if.else.if.end50_crit_edge, %do.body17.if.end50_crit_edge, %for.cond.preheader.if.end50_crit_edge
  %error.0 = phi i32 [ 0, %if.else.if.end50_crit_edge ], [ 0, %for.cond.preheader.if.end50_crit_edge ], [ %spec.select67, %profile_setrlimit.exit.if.end50_crit_edge ], [ %spec.select, %do.body17.if.end50_crit_edge ]
  %tobool.not.i80 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i80, label %if.end50.aa_put_label.exit_crit_edge, label %if.then.i81

if.end50.aa_put_label.exit_crit_edge:             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then.i81:                                      ; preds = %if.end50
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !93
  call void @llvm.prefetch.p0(ptr nonnull %retval.0.i.i, i32 1, i32 3, i32 1) #8
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %retval.0.i.i, ptr nonnull %retval.0.i.i, i32 1, ptr nonnull elementtype(i32) %retval.0.i.i) #8, !srcloc !94
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !90

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %retval.0.i.i, i32 noundef 3) #8
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !95
  call void @aa_label_kref(ptr noundef nonnull %retval.0.i.i) #8
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.end50.aa_put_label.exit_crit_edge
  ret i32 %error.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_capable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_next_confined(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__aa_transition_rlimits(ptr noundef %old_l, ptr noundef %new_l) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aa_label_next_confined(ptr noundef %old_l, i32 noundef 0) #8
  %arrayidx8135 = getelementptr %struct.aa_label, ptr %old_l, i32 0, i32 8, i32 %call
  %0 = ptrtoint ptr %arrayidx8135 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx8135, align 4
  %tobool.not136 = icmp eq ptr %1, null
  br i1 %tobool.not136, label %entry.for.end29_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %21, %for.inc25.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.sroa.0.0137 = phi i32 [ %call27, %for.inc25.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %rlimits = getelementptr inbounds %struct.aa_profile, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %rlimits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rlimits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool10.not = icmp eq i32 %4, 0
  br i1 %tobool10.not, label %for.body.for.inc25_crit_edge, label %for.body.for.body12_crit_edge

for.body.for.body12_crit_edge:                    ; preds = %for.body
  br label %for.body12

for.body.for.inc25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc25

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body.for.body12_crit_edge
  %mask.0134 = phi i32 [ %shl, %for.inc.for.body12_crit_edge ], [ 1, %for.body.for.body12_crit_edge ]
  %j.0132 = phi i32 [ %inc, %for.inc.for.body12_crit_edge ], [ 0, %for.body.for.body12_crit_edge ]
  %5 = ptrtoint ptr %rlimits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rlimits, align 4
  %and = and i32 %6, %mask.0134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.body12.for.inc_crit_edge, label %if.then16

for.body12.for.inc_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then16:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 111
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signal, align 16
  %rlim18 = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 51
  %add.ptr = getelementptr %struct.rlimit, ptr %rlim18, i32 %j.0132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 111) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 111), align 16
  %rlim19 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 51
  %add.ptr21 = getelementptr %struct.rlimit, ptr %rlim19, i32 %j.0132
  %rlim_max = getelementptr %struct.rlimit, ptr %rlim18, i32 %j.0132, i32 1
  %14 = ptrtoint ptr %rlim_max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rlim_max, align 4
  %16 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr21, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %17)
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body12.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0132, 1
  %shl = shl i32 %mask.0134, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.for.inc25_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12

for.inc.for.inc25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc25

for.inc25:                                        ; preds = %for.inc.for.inc25_crit_edge, %for.body.for.inc25_crit_edge
  %add = add i32 %i.sroa.0.0137, 1
  %call27 = tail call i32 @aa_label_next_confined(ptr noundef %old_l, i32 noundef %add) #8
  %arrayidx8 = getelementptr %struct.aa_label, ptr %old_l, i32 0, i32 8, i32 %call27
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %for.inc25.for.end29_crit_edge, label %for.inc25.for.body_crit_edge

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc25.for.end29_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29

for.end29:                                        ; preds = %for.inc25.for.end29_crit_edge, %entry.for.end29_crit_edge
  %call30 = tail call i32 @aa_label_next_confined(ptr noundef %new_l, i32 noundef 0) #8
  %arrayidx35141 = getelementptr %struct.aa_label, ptr %new_l, i32 0, i32 8, i32 %call30
  %22 = ptrtoint ptr %arrayidx35141 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx35141, align 4
  %tobool36.not142 = icmp eq ptr %23, null
  br i1 %tobool36.not142, label %for.end29.for.end88_crit_edge, label %for.end29.for.body37_crit_edge

for.end29.for.body37_crit_edge:                   ; preds = %for.end29
  br label %for.body37

for.end29.for.end88_crit_edge:                    ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end88

for.body37:                                       ; preds = %cleanup.for.body37_crit_edge, %for.end29.for.body37_crit_edge
  %24 = phi ptr [ %46, %cleanup.for.body37_crit_edge ], [ %23, %for.end29.for.body37_crit_edge ]
  %i.sroa.0.1143 = phi i32 [ %call86, %cleanup.for.body37_crit_edge ], [ %call30, %for.end29.for.body37_crit_edge ]
  %rlimits39 = getelementptr inbounds %struct.aa_profile, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %rlimits39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rlimits39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool41.not = icmp eq i32 %26, 0
  br i1 %tobool41.not, label %for.body37.cleanup_crit_edge, label %for.body37.for.body46_crit_edge

for.body37.for.body46_crit_edge:                  ; preds = %for.body37
  br label %for.body46

for.body37.cleanup_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body46:                                       ; preds = %for.inc79.for.body46_crit_edge, %for.body37.for.body46_crit_edge
  %mask.1140 = phi i32 [ %shl81, %for.inc79.for.body46_crit_edge ], [ 1, %for.body37.for.body46_crit_edge ]
  %j38.0138 = phi i32 [ %inc80, %for.inc79.for.body46_crit_edge ], [ 0, %for.body37.for.body46_crit_edge ]
  %27 = ptrtoint ptr %rlimits39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rlimits39, align 4
  %and49 = and i32 %28, %mask.1140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %for.body46.for.inc79_crit_edge, label %if.end52

for.body46.for.inc79_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc79

if.end52:                                         ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #10
  %29 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i131 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i131 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task54, align 8
  %signal55 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 111
  %33 = ptrtoint ptr %signal55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %signal55, align 16
  %rlim56 = getelementptr inbounds %struct.signal_struct, ptr %34, i32 0, i32 51
  %add.ptr58 = getelementptr %struct.rlimit, ptr %rlim56, i32 %j38.0138
  %rlim_max59 = getelementptr %struct.rlimit, ptr %rlim56, i32 %j38.0138, i32 1
  %35 = ptrtoint ptr %rlim_max59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rlim_max59, align 4
  %rlim_max62 = getelementptr %struct.aa_profile, ptr %24, i32 0, i32 17, i32 1, i32 %j38.0138, i32 1
  %37 = ptrtoint ptr %rlim_max62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rlim_max62, align 4
  %39 = tail call i32 @llvm.umin.i32(i32 %36, i32 %38)
  %40 = ptrtoint ptr %rlim_max59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rlim_max59, align 4
  %41 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr58, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 %39)
  %44 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %add.ptr58, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %if.end52, %for.body46.for.inc79_crit_edge
  %inc80 = add nuw nsw i32 %j38.0138, 1
  %shl81 = shl i32 %mask.1140, 1
  %exitcond144.not = icmp eq i32 %inc80, 16
  br i1 %exitcond144.not, label %for.inc79.cleanup_crit_edge, label %for.inc79.for.body46_crit_edge

for.inc79.for.body46_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body46

for.inc79.cleanup_crit_edge:                      ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc79.cleanup_crit_edge, %for.body37.cleanup_crit_edge
  %add85 = add i32 %i.sroa.0.1143, 1
  %call86 = tail call i32 @aa_label_next_confined(ptr noundef %new_l, i32 noundef %add85) #8
  %arrayidx35 = getelementptr %struct.aa_label, ptr %new_l, i32 0, i32 8, i32 %call86
  %45 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %46, null
  br i1 %tobool36.not, label %cleanup.for.end88_crit_edge, label %cleanup.for.body37_crit_edge

cleanup.for.body37_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37

cleanup.for.end88_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end88

for.end88:                                        ; preds = %cleanup.for.end88_crit_edge, %for.end29.for.end88_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_audit(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audit_cb(ptr noundef %ab, ptr nocapture noundef readonly %va) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %va, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.apparmor_audit_data, ptr %2, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %arrayidx = getelementptr [16 x ptr], ptr @rlim_names, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %max = getelementptr inbounds %struct.apparmor_audit_data, ptr %2, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.16, ptr noundef %7, i32 noundef %9) #8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.apparmor_audit_data, ptr %11, i32 0, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.17) #8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %label = getelementptr inbounds %struct.apparmor_audit_data, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %label, align 4
  %vec = getelementptr inbounds %struct.aa_label, ptr %18, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %sub = add i32 %20, -1
  %arrayidx3 = getelementptr ptr, ptr %vec, i32 %sub
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx3, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ns, align 4
  %25 = getelementptr inbounds %struct.apparmor_audit_data, ptr %16, i32 0, i32 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void @aa_label_xaudit(ptr noundef %ab, ptr noundef %24, ptr noundef %27, i32 noundef 0, i32 noundef 2592) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_xaudit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !17, !19, !20, !21, !23, !25, !27, !29, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/resource.c", i32 25, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @aa_sfs_entry_rlimit, !4, !"aa_sfs_entry_rlimit", i1 false, i1 false}
!4 = !{!"../security/apparmor/resource.c", i32 24, i32 21}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../security/apparmor/resource.c", i32 112, i32 34}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../security/apparmor/resource.c", i32 124, i32 11}
!11 = !{ptr @rlim_map, !12, !"rlim_map", i1 false, i1 false}
!12 = !{!"./security/apparmor/rlim_names.h", i32 19, i32 18}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__func__.aa_get_newest_label, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/apparmor/include/cred.h", i32 51, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__func__.aa_cred_raw_label, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/apparmor/include/cred.h", i32 26, i32 2}
!33 = !{ptr @__func__.cred_label, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../security/apparmor/resource.c", i32 56, i32 2}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../security/apparmor/resource.c", i32 34, i32 23}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../security/apparmor/resource.c", i32 37, i32 24}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"./security/apparmor/rlim_names.h", i32 2, i32 16}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"./security/apparmor/rlim_names.h", i32 3, i32 18}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"./security/apparmor/rlim_names.h", i32 4, i32 17}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"./security/apparmor/rlim_names.h", i32 5, i32 18}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"./security/apparmor/rlim_names.h", i32 6, i32 17}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"./security/apparmor/rlim_names.h", i32 7, i32 16}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"./security/apparmor/rlim_names.h", i32 8, i32 18}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"./security/apparmor/rlim_names.h", i32 9, i32 19}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"./security/apparmor/rlim_names.h", i32 10, i32 20}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"./security/apparmor/rlim_names.h", i32 11, i32 15}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"./security/apparmor/rlim_names.h", i32 12, i32 18}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"./security/apparmor/rlim_names.h", i32 13, i32 23}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"./security/apparmor/rlim_names.h", i32 14, i32 21}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"./security/apparmor/rlim_names.h", i32 15, i32 17}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"./security/apparmor/rlim_names.h", i32 16, i32 19}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"./security/apparmor/rlim_names.h", i32 17, i32 19}
!75 = !{ptr @rlim_names, !76, !"rlim_names", i1 false, i1 false}
!76 = !{!"./security/apparmor/rlim_names.h", i32 1, i32 26}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2149270532}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 928531, i64 928555, i64 928576, i64 928593, i64 928610}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2149270798}
!92 = !{i64 2148444548, i64 2148444580, i64 2148444609, i64 2148444643, i64 2148444674, i64 2148444697}
!93 = !{i64 2148532549}
!94 = !{i64 2148447013, i64 2148447045, i64 2148447074, i64 2148447108, i64 2148447139, i64 2148447162}
!95 = !{i64 2149578519}
