; ModuleID = '/llk/IR_all_yes/security/apparmor/procattr.c_pt.bc'
source_filename = "../security/apparmor/procattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%union.anon.111 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.30 }
%struct.kgid_t = type { i32 }
%union.anon.30 = type { %struct.callback_head }
%struct.aa_proxy = type { %struct.kref, ptr }
%struct.aa_ns = type { %struct.aa_policy, ptr, %struct.mutex, %struct.aa_ns_acct, ptr, %struct.list_head, %struct.atomic_t, i32, i32, i32, %struct.wait_queue_head, %struct.aa_labelset, %struct.list_head, [13 x ptr] }
%struct.aa_ns_acct = type { i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.aa_labelset = type { %struct.rwlock_t, %struct.rb_root }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"security/apparmor/procattr.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((len < 0)): \00", [32 x i8] zeroinitializer }, align 32
@__func__.aa_getprocattr = private unnamed_addr constant [15 x i8] c"aa_getprocattr\00", align 1
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"change_hat\00", [21 x i8] zeroinitializer }, align 32
@aa_setprocattr_changehat._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.aa_setprocattr_changehat = private unnamed_addr constant [25 x i8] c"aa_setprocattr_changehat\00", align 1
@aa_setprocattr_changehat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.aa_setprocattr_changehat, ptr @.str, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013AppArmor: change_hat: Invalid input, NULL hat and NULL magic\00", [33 x i8] zeroinitializer }, align 32
@aa_setprocattr_changehat._entry_ptr = internal global ptr @aa_setprocattr_changehat._entry, section ".printk_index", align 4
@aa_g_debug = external dso_local local_unnamed_addr global i8, align 1
@aa_setprocattr_changehat._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_setprocattr_changehat.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.aa_setprocattr_changehat, ptr @.str, ptr @.str.7, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apparmor\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"AppArmor: %s: (pid %d) Magic 0x%llx count %d hat '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@aa_setprocattr_changehat._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_setprocattr_changehat.descriptor.9 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.aa_setprocattr_changehat, ptr @.str, ptr @.str.10, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"AppArmor: %s: (pid %d) Magic 0x%llx count %d Hat '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<NULL>\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/cred.h\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_cred_raw_label = private unnamed_addr constant [18 x i8] c"aa_cred_raw_label\00", align 1
@apparmor_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!blob)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.cred_label = private unnamed_addr constant [11 x i8] c"cred_label\00", align 1
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@split_token_from_name._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.split_token_from_name = private unnamed_addr constant [22 x i8] c"split_token_from_name\00", align 1
@split_token_from_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.split_token_from_name, ptr @.str, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013AppArmor: %s: Invalid input '%s'\00", [61 x i8] zeroinitializer }, align 32
@split_token_from_name._entry_ptr = internal global ptr @split_token_from_name._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 45, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 107, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 112, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 127, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 132, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 51, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/cred.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 26, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 424, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 425, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 431, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 401, i32 7 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 695, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 723, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [32 x i8] c"../security/apparmor/procattr.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 82, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @aa_setprocattr_changehat._entry, ptr @aa_setprocattr_changehat._entry_ptr, ptr @split_token_from_name._entry, ptr @split_token_from_name._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aa_setprocattr_changehat._rs, ptr @.str.3, ptr @.str.4, ptr @aa_setprocattr_changehat._rs.5, ptr @.str.6, ptr @.str.7, ptr @aa_setprocattr_changehat._rs.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @split_token_from_name._rs, ptr @.str.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_setprocattr_changehat._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_setprocattr_changehat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_setprocattr_changehat._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_setprocattr_changehat._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @split_token_from_name._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @split_token_from_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_getprocattr(ptr noundef %label, ptr nocapture noundef %string) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vec = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %arrayidx1 = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %ns2 = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns2, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i.i, align 8
  %cred.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred.i.i.i, align 16
  %security.i.i.i.i.i = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %security.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %security.i.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %14 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %13, i32 %14
  %tobool.not.i.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %entry.cred_label.exit.i.i.i.i_crit_edge, !prof !66

entry.cred_label.exit.i.i.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cred_label.exit.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.cred_label) #9
  br label %cred_label.exit.i.i.i.i

cred_label.exit.i.i.i.i:                          ; preds = %do.end.i.i.i.i.i, %entry.cred_label.exit.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i.i, label %aa_current_raw_label.exit.i.i, label %aa_current_raw_label.exit.thread.i.i, !prof !66

aa_current_raw_label.exit.i.i:                    ; preds = %cred_label.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.aa_cred_raw_label) #9
  br label %__begin_current_label_crit_section.exit.i

aa_current_raw_label.exit.thread.i.i:             ; preds = %cred_label.exit.i.i.i.i
  %flags6.i.i = getelementptr inbounds %struct.aa_label, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags6.i.i, align 4
  %and7.i.i = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not8.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not8.i.i, label %aa_current_raw_label.exit.thread.i.i.__begin_current_label_crit_section.exit.i_crit_edge, label %if.then2.i.i.i

aa_current_raw_label.exit.thread.i.i.__begin_current_label_crit_section.exit.i_crit_edge: ; preds = %aa_current_raw_label.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__begin_current_label_crit_section.exit.i

if.then2.i.i.i:                                   ; preds = %aa_current_raw_label.exit.thread.i.i
  %proxy.i.i.i = getelementptr inbounds %struct.aa_label, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %proxy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %proxy.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %if.then2.i.i.i.if.end20.i.i.i_crit_edge, !prof !66

if.then2.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i

do.end.i.i.i:                                     ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.aa_get_newest_label) #9
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %do.end.i.i.i, %if.then2.i.i.i.if.end20.i.i.i_crit_edge
  %21 = ptrtoint ptr %proxy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %proxy.i.i.i, align 4
  %label.i.i.i = getelementptr inbounds %struct.aa_proxy, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %label.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %label.i.i.i, align 4
  %tobool33.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool33.not.i.i.i, label %do.end51.i.i.i, label %if.end20.i.i.i.if.end57.i.i.i_crit_edge, !prof !66

if.end20.i.i.i.if.end57.i.i.i_crit_edge:          ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i.i.i

do.end51.i.i.i:                                   ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.aa_get_newest_label) #9
  br label %if.end57.i.i.i

if.end57.i.i.i:                                   ; preds = %do.end51.i.i.i, %if.end20.i.i.i.if.end57.i.i.i_crit_edge
  %25 = ptrtoint ptr %proxy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %proxy.i.i.i, align 4
  %label68.i.i.i = getelementptr inbounds %struct.aa_proxy, ptr %26, i32 0, i32 1
  %27 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i.i, label %if.end57.i.i.i.do.body.i.i.i.i.preheader_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end57.i.i.i.do.body.i.i.i.i.preheader_crit_edge: ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.preheader

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end57.i.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i4.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i4.i.i, label %land.lhs.true.i.i.i.i.i.do.body.i.i.i.i.preheader_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.do.body.i.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.preheader

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.do.body.i.i.i.i.preheader_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.do.body.i.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.preheader

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #9
  br label %do.body.i.i.i.i.preheader

do.body.i.i.i.i.preheader:                        ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.do.body.i.i.i.i.preheader_crit_edge, %land.lhs.true.i.i.i.i.i.do.body.i.i.i.i.preheader_crit_edge, %if.end57.i.i.i.do.body.i.i.i.i.preheader_crit_edge
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %kref_get_unless_zero.exit.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i.i.i.i.preheader
  %31 = ptrtoint ptr %label68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %label68.i.i.i, align 4
  %call.i.i.i.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i5.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i5.i.i, label %land.lhs.true.i.i.i.i, label %do.body.i.i.i.i.do.end8.i.i.i.i_crit_edge

do.body.i.i.i.i.do.end8.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body.i.i.i.i
  %call3.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call3.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %land.lhs.true.i.i.i.i.do.end8.i.i.i.i_crit_edge, label %land.lhs.true5.i.i.i.i

land.lhs.true.i.i.i.i.do.end8.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i.i.i.i

land.lhs.true5.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b17.i.i.i.i = load i1, ptr @aa_get_label_rcu.__warned, align 1
  br i1 %.b17.i.i.i.i, label %land.lhs.true5.i.i.i.i.do.end8.i.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true5.i.i.i.i.do.end8.i.i.i.i_crit_edge: ; preds = %land.lhs.true5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @aa_get_label_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 401, ptr noundef nonnull @.str.19) #9
  br label %do.end8.i.i.i.i

do.end8.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %land.lhs.true5.i.i.i.i.do.end8.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.end8.i.i.i.i_crit_edge, %do.body.i.i.i.i.do.end8.i.i.i.i_crit_edge
  %tobool11.not.i.i.i.i = icmp eq ptr %32, null
  br i1 %tobool11.not.i.i.i.i, label %do.end8.i.i.i.i.do.end14.i.i.i.i_crit_edge, label %land.rhs.i.i.i.i

do.end8.i.i.i.i.do.end14.i.i.i.i_crit_edge:       ; preds = %do.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.end8.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i.i) #9
  %call.i.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %32, i32 noundef 4) #9
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %land.rhs.i.i.i.i
  %35 = phi i32 [ %34, %land.rhs.i.i.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge ]
  %36 = ptrtoint ptr %old.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %old.i.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i.i.i.i

do.cond.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i
  %add.i.i.i.i.i.i.i.i = add i32 %35, 1
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %32, i32 noundef 4) #9
  %call.i3.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i.i.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %old.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %old.i.i.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %32, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i.i.i
  %39 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 %38, i32 %add.i.i.i.i.i.i.i.i, ptr nonnull elementtype(i32) %32) #9, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  %tobool.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 1
  %cmp.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i.i.i, %38
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, !prof !69

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i.i:                          ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge
  %40 = ptrtoint ptr %old.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %old.i.i.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i.i.i = add i32 %41, 1
  %42 = or i32 %add5.i.i.i.i.i.i.i.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !69

if.end4.i.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit.i.i.i.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end4.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef nonnull %32, i32 noundef 0) #9
  %43 = ptrtoint ptr %old.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr.i.i.i.i = load i32, ptr %old.i.i.i.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i.i.i.i

kref_get_unless_zero.exit.i.i.i.i:                ; preds = %if.then10.i.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i.i_crit_edge
  %44 = phi i32 [ %41, %if.end4.i.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i.i_crit_edge ], [ %.pr.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i.i.i.i = icmp eq i32 %44, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i.i) #9
  br i1 %tobool12.i.i.i.i.not.i.i.i.i, label %kref_get_unless_zero.exit.i.i.i.i.do.body.i.i.i.i_crit_edge, label %kref_get_unless_zero.exit.i.i.i.i.do.end14.i.i.i.i_crit_edge

kref_get_unless_zero.exit.i.i.i.i.do.end14.i.i.i.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i.i.i.i

kref_get_unless_zero.exit.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

do.end14.i.i.i.i:                                 ; preds = %kref_get_unless_zero.exit.i.i.i.i.do.end14.i.i.i.i_crit_edge, %do.end8.i.i.i.i.do.end14.i.i.i.i_crit_edge
  %call.i18.i.i.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i18.i.i.i.i, label %do.end14.i.i.i.i.aa_get_label_rcu.exit.i.i.i_crit_edge, label %land.lhs.true.i21.i.i.i.i

do.end14.i.i.i.i.aa_get_label_rcu.exit.i.i.i_crit_edge: ; preds = %do.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aa_get_label_rcu.exit.i.i.i

land.lhs.true.i21.i.i.i.i:                        ; preds = %do.end14.i.i.i.i
  %call1.i19.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i.i.i.i)
  %tobool.not.i20.i.i.i.i = icmp eq i32 %call1.i19.i.i.i.i, 0
  br i1 %tobool.not.i20.i.i.i.i, label %land.lhs.true.i21.i.i.i.i.aa_get_label_rcu.exit.i.i.i_crit_edge, label %land.lhs.true2.i23.i.i.i.i

land.lhs.true.i21.i.i.i.i.aa_get_label_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i21.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aa_get_label_rcu.exit.i.i.i

land.lhs.true2.i23.i.i.i.i:                       ; preds = %land.lhs.true.i21.i.i.i.i
  %.b4.i22.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i.i.i.i, label %land.lhs.true2.i23.i.i.i.i.aa_get_label_rcu.exit.i.i.i_crit_edge, label %if.then.i24.i.i.i.i

land.lhs.true2.i23.i.i.i.i.aa_get_label_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aa_get_label_rcu.exit.i.i.i

if.then.i24.i.i.i.i:                              ; preds = %land.lhs.true2.i23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #9
  br label %aa_get_label_rcu.exit.i.i.i

aa_get_label_rcu.exit.i.i.i:                      ; preds = %if.then.i24.i.i.i.i, %land.lhs.true2.i23.i.i.i.i.aa_get_label_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i21.i.i.i.i.aa_get_label_rcu.exit.i.i.i_crit_edge, %do.end14.i.i.i.i.aa_get_label_rcu.exit.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  %45 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i25.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i25.i.i.i.i to ptr
  %preempt_count.i.i.i.i26.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i26.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i26.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br i1 %tobool11.not.i.i.i.i, label %do.end89.i.i.i, label %aa_get_label_rcu.exit.i.i.i.__begin_current_label_crit_section.exit.i_crit_edge, !prof !66

aa_get_label_rcu.exit.i.i.i.__begin_current_label_crit_section.exit.i_crit_edge: ; preds = %aa_get_label_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__begin_current_label_crit_section.exit.i

do.end89.i.i.i:                                   ; preds = %aa_get_label_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.aa_get_newest_label) #9
  br label %__begin_current_label_crit_section.exit.i

__begin_current_label_crit_section.exit.i:        ; preds = %do.end89.i.i.i, %aa_get_label_rcu.exit.i.i.i.__begin_current_label_crit_section.exit.i_crit_edge, %aa_current_raw_label.exit.thread.i.i.__begin_current_label_crit_section.exit.i_crit_edge, %aa_current_raw_label.exit.i.i
  %label.0.i.i = phi ptr [ %16, %aa_current_raw_label.exit.thread.i.i.__begin_current_label_crit_section.exit.i_crit_edge ], [ null, %do.end89.i.i.i ], [ %32, %aa_get_label_rcu.exit.i.i.i.__begin_current_label_crit_section.exit.i_crit_edge ], [ null, %aa_current_raw_label.exit.i.i ]
  %vec.i = getelementptr inbounds %struct.aa_label, ptr %label.0.i.i, i32 0, i32 8
  %size.i = getelementptr inbounds %struct.aa_label, ptr %label.0.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %50, -1
  %arrayidx1.i = getelementptr ptr, ptr %vec.i, i32 %sub.i
  %51 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx1.i, align 4
  %ns2.i = getelementptr inbounds %struct.aa_profile, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %ns2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ns2.i, align 4
  %tobool.not.i.i64 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i64, label %__begin_current_label_crit_section.exit.i.aa_get_ns.exit.i_crit_edge, label %if.then.i.i

__begin_current_label_crit_section.exit.i.aa_get_ns.exit.i_crit_edge: ; preds = %__begin_current_label_crit_section.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aa_get_ns.exit.i

if.then.i.i:                                      ; preds = %__begin_current_label_crit_section.exit.i
  %unconfined.i.i = getelementptr inbounds %struct.aa_ns, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %unconfined.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %unconfined.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.aa_get_ns.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.i.aa_get_ns.exit.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aa_get_ns.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %label.i.i6.i = getelementptr inbounds %struct.aa_profile, ptr %56, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i6.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %label.i.i6.i, i32 1, i32 3, i32 1) #9
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i6.i, ptr %label.i.i6.i, i32 1, ptr elementtype(i32) %label.i.i6.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !66

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i7.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %58 = or i32 %add.i.i.i.i.i.i7.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %58, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.aa_get_ns.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.aa_get_ns.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aa_get_ns.exit.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i.i6.i, i32 noundef %.sink.i.i.i.i.i.i.i) #9
  br label %aa_get_ns.exit.i

aa_get_ns.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.aa_get_ns.exit.i_crit_edge, %if.then.i.i.aa_get_ns.exit.i_crit_edge, %__begin_current_label_crit_section.exit.i.aa_get_ns.exit.i_crit_edge
  %59 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i8.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i8.i to ptr
  %task.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i.i9.i, align 8
  %cred.i.i10.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 99
  %63 = ptrtoint ptr %cred.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cred.i.i10.i, align 16
  %security.i.i.i.i11.i = getelementptr inbounds %struct.cred, ptr %64, i32 0, i32 23
  %65 = ptrtoint ptr %security.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %security.i.i.i.i11.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %67 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i12.i = getelementptr i8, ptr %66, i32 %67
  %tobool.not.i.i.i.i13.i = icmp eq ptr %add.ptr.i.i.i.i12.i, null
  br i1 %tobool.not.i.i.i.i13.i, label %do.end.i.i.i.i14.i, label %aa_get_ns.exit.i.cred_label.exit.i.i.i16.i_crit_edge, !prof !66

aa_get_ns.exit.i.cred_label.exit.i.i.i16.i_crit_edge: ; preds = %aa_get_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cred_label.exit.i.i.i16.i

do.end.i.i.i.i14.i:                               ; preds = %aa_get_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.cred_label) #9
  br label %cred_label.exit.i.i.i16.i

cred_label.exit.i.i.i16.i:                        ; preds = %do.end.i.i.i.i14.i, %aa_get_ns.exit.i.cred_label.exit.i.i.i16.i_crit_edge
  %68 = ptrtoint ptr %add.ptr.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i.i.i.i12.i, align 4
  %tobool.not.i.i.i15.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i15.i, label %do.end.i.i.i.i, label %cred_label.exit.i.i.i16.i.aa_current_raw_label.exit.i18.i_crit_edge, !prof !66

cred_label.exit.i.i.i16.i.aa_current_raw_label.exit.i18.i_crit_edge: ; preds = %cred_label.exit.i.i.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aa_current_raw_label.exit.i18.i

do.end.i.i.i.i:                                   ; preds = %cred_label.exit.i.i.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.aa_cred_raw_label) #9
  br label %aa_current_raw_label.exit.i18.i

aa_current_raw_label.exit.i18.i:                  ; preds = %do.end.i.i.i.i, %cred_label.exit.i.i.i16.i.aa_current_raw_label.exit.i18.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %69, %label.0.i.i
  %tobool.not.i.i17.i = icmp eq ptr %label.0.i.i, null
  %or.cond.i.i = or i1 %tobool.not.i.i17.i, %cmp.not.i.i
  br i1 %or.cond.i.i, label %aa_current_raw_label.exit.i18.i.aa_get_current_ns.exit_crit_edge, label %if.then.i.i20.i

aa_current_raw_label.exit.i18.i.aa_get_current_ns.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aa_get_current_ns.exit

if.then.i.i20.i:                                  ; preds = %aa_current_raw_label.exit.i18.i
  %call.i.i.i.i.i.i.i.i19.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label.0.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @llvm.prefetch.p0(ptr nonnull %label.0.i.i, i32 1, i32 3, i32 1) #9
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label.0.i.i, ptr nonnull %label.0.i.i, i32 1, ptr nonnull elementtype(i32) %label.0.i.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i22.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i21.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i21.i, label %if.end5.i.i.i.i.i.i.i.aa_get_current_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !69

if.end5.i.i.i.i.i.i.i.aa_get_current_ns.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aa_get_current_ns.exit

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef nonnull %label.0.i.i, i32 noundef 3) #9
  br label %aa_get_current_ns.exit

if.then.i.i.i22.i:                                ; preds = %if.then.i.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @aa_label_kref(ptr noundef nonnull %label.0.i.i) #9
  br label %aa_get_current_ns.exit

aa_get_current_ns.exit:                           ; preds = %if.then.i.i.i22.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.aa_get_current_ns.exit_crit_edge, %aa_current_raw_label.exit.i18.i.aa_get_current_ns.exit_crit_edge
  %call3 = call zeroext i1 @aa_ns_visible(ptr noundef %54, ptr noundef %5, i1 noundef zeroext true) #9
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %aa_get_current_ns.exit
  br i1 %tobool.not.i.i64, label %if.then.cleanup_crit_edge, label %if.then.i66

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i66:                                      ; preds = %if.then
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %54, i32 0, i32 4
  %71 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i65 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i65, label %if.then.i66.cleanup_crit_edge, label %if.then.i.i68

if.then.i66.cleanup_crit_edge:                    ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i68:                                    ; preds = %if.then.i66
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %72, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #9
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i67 = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i67)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i67, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i69, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i67)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i67, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !69

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #9
  br label %cleanup

if.then.i.i.i69:                                  ; preds = %if.then.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @aa_label_kref(ptr noundef %label.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %aa_get_current_ns.exit
  %call4 = call i32 @aa_label_snxprint(ptr noundef null, i32 noundef 0, ptr noundef %54, ptr noundef %label, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end.if.end19_crit_edge, !prof !66

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_getprocattr) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %add = add i32 %call4, 2
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %74 = ptrtoint ptr %string to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call9.i, ptr %string, align 4
  %tobool29.not = icmp eq ptr %call9.i, null
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end19
  br i1 %tobool.not.i.i64, label %if.then30.cleanup_crit_edge, label %if.then.i74

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i74:                                      ; preds = %if.then30
  %unconfined.i72 = getelementptr inbounds %struct.aa_ns, ptr %54, i32 0, i32 4
  %75 = ptrtoint ptr %unconfined.i72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %unconfined.i72, align 4
  %tobool.not.i.i73 = icmp eq ptr %76, null
  br i1 %tobool.not.i.i73, label %if.then.i74.cleanup_crit_edge, label %if.then.i.i79

if.then.i74.cleanup_crit_edge:                    ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i79:                                    ; preds = %if.then.i74
  %label.i.i75 = getelementptr inbounds %struct.aa_profile, ptr %76, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i75, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @llvm.prefetch.p0(ptr %label.i.i75, i32 1, i32 3, i32 1) #9
  %77 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i75, ptr %label.i.i75, i32 1, ptr elementtype(i32) %label.i.i75) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i77 = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i77)
  %cmp.i.i.i.i.i.i78 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i77, 1
  br i1 %cmp.i.i.i.i.i.i78, label %if.then.i.i.i83, label %if.end5.i.i.i.i.i.i81

if.end5.i.i.i.i.i.i81:                            ; preds = %if.then.i.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i77)
  %.not.i.i.i.i.i.i80 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i77, 0
  br i1 %.not.i.i.i.i.i.i80, label %if.end5.i.i.i.i.i.i81.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i82, !prof !69

if.end5.i.i.i.i.i.i81.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i.i82:                          ; preds = %if.end5.i.i.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %label.i.i75, i32 noundef 3) #9
  br label %cleanup

if.then.i.i.i83:                                  ; preds = %if.then.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @aa_label_kref(ptr noundef %label.i.i75) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end19
  %call33 = call i32 @aa_label_snxprint(ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef %54, ptr noundef %label, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  br i1 %tobool.not.i.i64, label %if.then35.cleanup_crit_edge, label %if.then.i89

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i89:                                      ; preds = %if.then35
  %unconfined.i87 = getelementptr inbounds %struct.aa_ns, ptr %54, i32 0, i32 4
  %78 = ptrtoint ptr %unconfined.i87 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %unconfined.i87, align 4
  %tobool.not.i.i88 = icmp eq ptr %79, null
  br i1 %tobool.not.i.i88, label %if.then.i89.cleanup_crit_edge, label %if.then.i.i94

if.then.i89.cleanup_crit_edge:                    ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i94:                                    ; preds = %if.then.i89
  %label.i.i90 = getelementptr inbounds %struct.aa_profile, ptr %79, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i91 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i90, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @llvm.prefetch.p0(ptr %label.i.i90, i32 1, i32 3, i32 1) #9
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i90, ptr %label.i.i90, i32 1, ptr elementtype(i32) %label.i.i90) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i92 = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i92)
  %cmp.i.i.i.i.i.i93 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i92, 1
  br i1 %cmp.i.i.i.i.i.i93, label %if.then.i.i.i98, label %if.end5.i.i.i.i.i.i96

if.end5.i.i.i.i.i.i96:                            ; preds = %if.then.i.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i92)
  %.not.i.i.i.i.i.i95 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i92, 0
  br i1 %.not.i.i.i.i.i.i95, label %if.end5.i.i.i.i.i.i96.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i97, !prof !69

if.end5.i.i.i.i.i.i96.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i.i97:                          ; preds = %if.end5.i.i.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %label.i.i90, i32 noundef 3) #9
  br label %cleanup

if.then.i.i.i98:                                  ; preds = %if.then.i.i94
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @aa_label_kref(ptr noundef %label.i.i90) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %81 = ptrtoint ptr %string to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %string, align 4
  %arrayidx37 = getelementptr i8, ptr %82, i32 %call33
  %83 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 10, ptr %arrayidx37, align 1
  %84 = load ptr, ptr %string, align 4
  %add38 = add nuw i32 %call33, 1
  %arrayidx39 = getelementptr i8, ptr %84, i32 %add38
  %85 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx39, align 1
  br i1 %tobool.not.i.i64, label %if.end36.cleanup_crit_edge, label %if.then.i104

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i104:                                     ; preds = %if.end36
  %unconfined.i102 = getelementptr inbounds %struct.aa_ns, ptr %54, i32 0, i32 4
  %86 = ptrtoint ptr %unconfined.i102 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %unconfined.i102, align 4
  %tobool.not.i.i103 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i103, label %if.then.i104.cleanup_crit_edge, label %if.then.i.i109

if.then.i104.cleanup_crit_edge:                   ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i109:                                   ; preds = %if.then.i104
  %label.i.i105 = getelementptr inbounds %struct.aa_profile, ptr %87, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i105, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @llvm.prefetch.p0(ptr %label.i.i105, i32 1, i32 3, i32 1) #9
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i105, ptr %label.i.i105, i32 1, ptr elementtype(i32) %label.i.i105) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i107 = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i107)
  %cmp.i.i.i.i.i.i108 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i107, 1
  br i1 %cmp.i.i.i.i.i.i108, label %if.then.i.i.i113, label %if.end5.i.i.i.i.i.i111

if.end5.i.i.i.i.i.i111:                           ; preds = %if.then.i.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i107)
  %.not.i.i.i.i.i.i110 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i107, 0
  br i1 %.not.i.i.i.i.i.i110, label %if.end5.i.i.i.i.i.i111.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i112, !prof !69

if.end5.i.i.i.i.i.i111.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i.i112:                         ; preds = %if.end5.i.i.i.i.i.i111
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %label.i.i105, i32 noundef 3) #9
  br label %cleanup

if.then.i.i.i113:                                 ; preds = %if.then.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @aa_label_kref(ptr noundef %label.i.i105) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i113, %if.then10.i.i.i.i.i.i112, %if.end5.i.i.i.i.i.i111.cleanup_crit_edge, %if.then.i104.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then.i.i.i98, %if.then10.i.i.i.i.i.i97, %if.end5.i.i.i.i.i.i96.cleanup_crit_edge, %if.then.i89.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.then.i.i.i83, %if.then10.i.i.i.i.i.i82, %if.end5.i.i.i.i.i.i81.cleanup_crit_edge, %if.then.i74.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.then.i.i.i69, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then.i66.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %if.then.cleanup_crit_edge ], [ -13, %if.then.i66.cleanup_crit_edge ], [ -13, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ -13, %if.then10.i.i.i.i.i.i ], [ -13, %if.then.i.i.i69 ], [ -12, %if.then30.cleanup_crit_edge ], [ -12, %if.then.i74.cleanup_crit_edge ], [ -12, %if.end5.i.i.i.i.i.i81.cleanup_crit_edge ], [ -12, %if.then10.i.i.i.i.i.i82 ], [ -12, %if.then.i.i.i83 ], [ %call33, %if.then35.cleanup_crit_edge ], [ %call33, %if.then.i89.cleanup_crit_edge ], [ %call33, %if.end5.i.i.i.i.i.i96.cleanup_crit_edge ], [ %call33, %if.then10.i.i.i.i.i.i97 ], [ %call33, %if.then.i.i.i98 ], [ %add38, %if.end36.cleanup_crit_edge ], [ %add38, %if.then.i104.cleanup_crit_edge ], [ %add38, %if.end5.i.i.i.i.i.i111.cleanup_crit_edge ], [ %add38, %if.then10.i.i.i.i.i.i112 ], [ %add38, %if.then.i.i.i113 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_ns_visible(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_snxprint(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_setprocattr_changehat(ptr noundef %args, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %name.i = alloca ptr, align 4
  %hats = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hats) #9
  %0 = call ptr @memset(ptr %hats, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #9
  %1 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i, align 4, !annotation !75
  %call.i = call i64 @simple_strtoull(ptr noundef %args, ptr noundef nonnull %name.i, i32 noundef 16) #9
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  %cmp.i = icmp eq ptr %3, %args
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %5)
  %cmp1.not.i = icmp eq i8 %5, 94
  br i1 %cmp1.not.i, label %if.end7.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @split_token_from_name._rs, ptr noundef nonnull @__func__.split_token_from_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then.i.split_token_from_name.exit.thread_crit_edge, label %do.end.i

if.then.i.split_token_from_name.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %split_token_from_name.exit.thread

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, ptr noundef %args) #13
  br label %split_token_from_name.exit.thread

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %incdec.ptr.i = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %incdec.ptr.i, ptr %name.i, align 4
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not.i = icmp eq i8 %8, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #9
  br i1 %tobool8.not.i, label %if.end7.i.land.lhs.true_crit_edge, label %split_token_from_name.exit

if.end7.i.land.lhs.true_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

split_token_from_name.exit.thread:                ; preds = %do.end.i, %if.then.i.split_token_from_name.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #9
  br label %if.then

split_token_from_name.exit:                       ; preds = %if.end7.i
  %cmp.i88 = icmp ugt ptr %incdec.ptr.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %split_token_from_name.exit.if.then_crit_edge, label %if.end

split_token_from_name.exit.if.then_crit_edge:     ; preds = %split_token_from_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %split_token_from_name.exit.if.then_crit_edge, %split_token_from_name.exit.thread
  %retval.0.i8795 = phi ptr [ inttoptr (i32 -22 to ptr), %split_token_from_name.exit.thread ], [ %incdec.ptr.i, %split_token_from_name.exit.if.then_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i8795 to i32
  br label %cleanup

if.end:                                           ; preds = %split_token_from_name.exit
  %tobool.not = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not, label %if.end.land.lhs.true_crit_edge, label %if.then12.critedge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end7.i.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool3.not = icmp eq i64 %call.i, 0
  br i1 %tobool3.not, label %if.then4, label %do.body37

if.then4:                                         ; preds = %land.lhs.true
  %call5 = call i32 @___ratelimit(ptr noundef nonnull @aa_setprocattr_changehat._rs, ptr noundef nonnull @__func__.aa_setprocattr_changehat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.then12.critedge:                               ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %args, i32 %size
  %cmp104 = icmp ult ptr %incdec.ptr.i, %add.ptr
  br i1 %cmp104, label %if.then12.critedge.for.body_crit_edge, label %if.then12.critedge.if.end65_crit_edge

if.then12.critedge.if.end65_crit_edge:            ; preds = %if.then12.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then12.critedge.for.body_crit_edge:            ; preds = %if.then12.critedge
  br label %for.body

for.body:                                         ; preds = %do.end36.for.body_crit_edge, %if.then12.critedge.for.body_crit_edge
  %hat.0107 = phi ptr [ %add.ptr16, %do.end36.for.body_crit_edge ], [ %incdec.ptr.i, %if.then12.critedge.for.body_crit_edge ]
  %count.0105 = phi i32 [ %inc, %do.end36.for.body_crit_edge ], [ 0, %if.then12.critedge.for.body_crit_edge ]
  %call14 = call i32 @strlen(ptr noundef %hat.0107) #14
  %add.ptr15 = getelementptr i8, ptr %hat.0107, i32 1
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i32 %call14
  %arrayidx = getelementptr [16 x ptr], ptr %hats, i32 0, i32 %count.0105
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hat.0107, ptr %arrayidx, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %11 = load i8, ptr @aa_g_debug, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %for.body.do.end36_crit_edge, label %do.body20

for.body.do.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

do.body20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_setprocattr_changehat.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_setprocattr_changehat, %land.lhs.true26)) #9
          to label %do.end36 [label %land.lhs.true26], !srcloc !77

land.lhs.true26:                                  ; preds = %do.body20
  %call27 = call i32 @___ratelimit(ptr noundef nonnull @aa_setprocattr_changehat._rs.5, ptr noundef nonnull @__func__.aa_setprocattr_changehat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end36_crit_edge, label %if.then29

land.lhs.true26.do.end36_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

if.then29:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_setprocattr_changehat.descriptor, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_setprocattr_changehat, i32 noundef %17, i64 noundef %call.i, i32 noundef %count.0105, ptr noundef %hat.0107) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then29, %land.lhs.true26.do.end36_crit_edge, %do.body20, %for.body.do.end36_crit_edge
  %inc = add nuw nsw i32 %count.0105, 1
  %cmp = icmp ult ptr %add.ptr16, %add.ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count.0105)
  %cmp13 = icmp ult i32 %count.0105, 15
  %or.cond = select i1 %cmp, i1 %cmp13, i1 false
  br i1 %or.cond, label %do.end36.for.body_crit_edge, label %do.end36.if.end65_crit_edge

do.end36.if.end65_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end36.for.body_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body37:                                        ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %18 = load i8, ptr @aa_g_debug, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool38.not = icmp eq i8 %18, 0
  br i1 %tobool38.not, label %do.body37.if.end65_crit_edge, label %do.body40

do.body37.if.end65_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.body40:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_setprocattr_changehat.descriptor.9, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_setprocattr_changehat, %land.lhs.true52)) #9
          to label %if.end65 [label %land.lhs.true52], !srcloc !77

land.lhs.true52:                                  ; preds = %do.body40
  %call53 = call i32 @___ratelimit(ptr noundef nonnull @aa_setprocattr_changehat._rs.8, ptr noundef nonnull @__func__.aa_setprocattr_changehat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.if.end65_crit_edge, label %if.then55

land.lhs.true52.if.end65_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then55:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  %19 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i89 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i89 to ptr
  %task57 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task57, align 8
  %pid58 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid58, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_setprocattr_changehat.descriptor.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.aa_setprocattr_changehat, i32 noundef %24, i64 noundef %call.i, i32 noundef 0, ptr noundef nonnull @.str.11) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then55, %land.lhs.true52.if.end65_crit_edge, %do.body40, %do.body37.if.end65_crit_edge, %do.end36.if.end65_crit_edge, %if.then12.critedge.if.end65_crit_edge
  %count.1 = phi i32 [ 0, %if.then55 ], [ 0, %land.lhs.true52.if.end65_crit_edge ], [ 0, %do.body37.if.end65_crit_edge ], [ 0, %do.body40 ], [ 0, %if.then12.critedge.if.end65_crit_edge ], [ %inc, %do.end36.if.end65_crit_edge ]
  %call66 = call i32 @aa_change_hat(ptr noundef nonnull %hats, i32 noundef %count.1, i64 noundef %call.i, i32 noundef %flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %do.end, %if.then4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %call66, %if.end65 ], [ -22, %do.end ], [ -22, %if.then4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hats) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_change_hat(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !55}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/procattr.c", i32 45, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.aa_getprocattr, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/apparmor/procattr.c", i32 107, i32 30}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/apparmor/procattr.c", i32 112, i32 3}
!8 = !{ptr @aa_setprocattr_changehat._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.aa_setprocattr_changehat, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @aa_setprocattr_changehat._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @aa_setprocattr_changehat._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @aa_setprocattr_changehat._rs.5, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../security/apparmor/procattr.c", i32 127, i32 4}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @aa_setprocattr_changehat.descriptor, !14, !"descriptor", i1 false, i1 false}
!18 = !{ptr @aa_setprocattr_changehat._rs.8, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../security/apparmor/procattr.c", i32 132, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @aa_setprocattr_changehat.descriptor.9, !19, !"descriptor", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../security/apparmor/include/cred.h", i32 89, i32 27}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/apparmor/include/cred.h", i32 51, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__func__.aa_cred_raw_label, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../security/apparmor/include/cred.h", i32 26, i32 2}
!31 = !{ptr @__func__.cred_label, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__func__.aa_get_newest_label, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @split_token_from_name._rs, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../security/apparmor/procattr.c", i32 82, i32 3}
!52 = !{ptr @__func__.split_token_from_name, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @split_token_from_name._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @split_token_from_name._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2149219547}
!68 = !{i64 884699, i64 884723, i64 884744, i64 884761, i64 884778}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2149219813}
!71 = !{i64 2148402493, i64 2148402525, i64 2148402554, i64 2148402588, i64 2148402619, i64 2148402642}
!72 = !{i64 2148490518}
!73 = !{i64 2148404958, i64 2148404990, i64 2148405019, i64 2148405053, i64 2148405084, i64 2148405107}
!74 = !{i64 2149447730}
!75 = !{!"auto-init"}
!76 = !{i8 0, i8 2}
!77 = !{i64 2148870354, i64 2148870359, i64 2148870372, i64 2148870416, i64 2148870450, i64 2148870471}
