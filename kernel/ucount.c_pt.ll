; ModuleID = '/llk/IR_all_yes/kernel/ucount.c_pt.bc'
source_filename = "../kernel/ucount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ucounts = type { %struct.hlist_node, ptr, %struct.kuid_t, %struct.atomic_t, [16 x %struct.atomic_t] }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_table_root = type { %struct.ctl_table_set, ptr, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.39, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.39 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.14 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.14 = type { %struct.callback_head }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@init_ucounts = dso_local global { %struct.ucounts, [44 x i8] } { %struct.ucounts { %struct.hlist_node zeroinitializer, ptr @init_user_ns, %struct.kuid_t zeroinitializer, %struct.atomic_t { i32 1 }, [16 x %struct.atomic_t] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@set_root = internal global { %struct.ctl_table_root, [32 x i8] } { %struct.ctl_table_root { %struct.ctl_table_set zeroinitializer, ptr @set_lookup, ptr null, ptr @set_permissions }, [32 x i8] zeroinitializer }, align 32
@user_table = internal global { [17 x %struct.ctl_table], [156 x i8] } { [17 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.3, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.4, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.5, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.6, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.7, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.8, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.9, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.10, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.11, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.12, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.13, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer], [156 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@ucounts_hashtable = internal global { [1024 x %struct.hlist_head], [1024 x i8] } zeroinitializer, align 32
@ucounts_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dec_ucount.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernel/ucount.c\00", [16 x i8] zeroinitializer }, align 32
@dec_rlimit_ucounts.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inc_rlimit_get_ucounts.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__initcall__kmod_ucount__164_380_user_namespace_sysctl_init4 = internal global ptr @user_namespace_sysctl_init, section ".initcall4.init", align 4
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_user_namespaces\00", [44 x i8] zeroinitializer }, align 32
@ue_zero = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ue_int_max = internal global { i32, [28 x i8] } { i32 2147483647, [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_pid_namespaces\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_uts_namespaces\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_ipc_namespaces\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_net_namespaces\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_mnt_namespaces\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max_cgroup_namespaces\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_time_namespaces\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max_inotify_instances\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_inotify_watches\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_fanotify_groups\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_fanotify_marks\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ucounts_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@do_dec_rlimit_put_ucounts.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@user_namespace_sysctl_init.user_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@user_namespace_sysctl_init.empty = internal global { [1 x %struct.ctl_table], [60 x i8] } zeroinitializer, align 32
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"init_ucounts\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 11, i32 16 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"set_root\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 56, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"user_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 73, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 111, i32 51 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"ucounts_hashtable\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 18, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"ucounts_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 261, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 74, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [8 x i8] c"ue_zero\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 61, i32 13 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"ue_int_max\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 62, i32 13 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 75, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 76, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 77, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 78, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 79, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 80, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 81, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 83, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 84, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 87, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 88, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 19, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"user_header\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 364, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@___asan_gen_.85 = private constant [19 x i8] c"../kernel/ucount.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 365, i32 26 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__initcall__kmod_ucount__164_380_user_namespace_sysctl_init4, ptr @init_ucounts, ptr @set_root, ptr @user_table, ptr @.str, ptr @ucounts_hashtable, ptr @ucounts_lock, ptr @.str.1, ptr @.str.2, ptr @ue_zero, ptr @ue_int_max, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @user_namespace_sysctl_init.user_header, ptr @user_namespace_sysctl_init.empty], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ucounts to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_root to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_table to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucounts_hashtable to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucounts_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ue_zero to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ue_int_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_namespace_sysctl_init.user_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_namespace_sysctl_init.empty to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @setup_userns_sysctls(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 15
  tail call void @setup_sysctl_set(ptr noundef %set, ptr noundef nonnull @set_root, ptr noundef nonnull @set_is_seen) #9
  %call = tail call ptr @kmemdup(ptr noundef nonnull @user_table, i32 noundef 612, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 0
  %data = getelementptr %struct.ctl_table, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %data, align 4
  %arrayidx.1 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 1
  %data.1 = getelementptr %struct.ctl_table, ptr %call, i32 1, i32 1
  %1 = ptrtoint ptr %data.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx.1, ptr %data.1, align 4
  %arrayidx.2 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 2
  %data.2 = getelementptr %struct.ctl_table, ptr %call, i32 2, i32 1
  %2 = ptrtoint ptr %data.2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx.2, ptr %data.2, align 4
  %arrayidx.3 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 3
  %data.3 = getelementptr %struct.ctl_table, ptr %call, i32 3, i32 1
  %3 = ptrtoint ptr %data.3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx.3, ptr %data.3, align 4
  %arrayidx.4 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 4
  %data.4 = getelementptr %struct.ctl_table, ptr %call, i32 4, i32 1
  %4 = ptrtoint ptr %data.4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.4, ptr %data.4, align 4
  %arrayidx.5 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 5
  %data.5 = getelementptr %struct.ctl_table, ptr %call, i32 5, i32 1
  %5 = ptrtoint ptr %data.5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.5, ptr %data.5, align 4
  %arrayidx.6 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 6
  %data.6 = getelementptr %struct.ctl_table, ptr %call, i32 6, i32 1
  %6 = ptrtoint ptr %data.6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.6, ptr %data.6, align 4
  %arrayidx.7 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 7
  %data.7 = getelementptr %struct.ctl_table, ptr %call, i32 7, i32 1
  %7 = ptrtoint ptr %data.7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.7, ptr %data.7, align 4
  %arrayidx.8 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 8
  %data.8 = getelementptr %struct.ctl_table, ptr %call, i32 8, i32 1
  %8 = ptrtoint ptr %data.8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.8, ptr %data.8, align 4
  %arrayidx.9 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 9
  %data.9 = getelementptr %struct.ctl_table, ptr %call, i32 9, i32 1
  %9 = ptrtoint ptr %data.9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.9, ptr %data.9, align 4
  %arrayidx.10 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 10
  %data.10 = getelementptr %struct.ctl_table, ptr %call, i32 10, i32 1
  %10 = ptrtoint ptr %data.10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.10, ptr %data.10, align 4
  %arrayidx.11 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 11
  %data.11 = getelementptr %struct.ctl_table, ptr %call, i32 11, i32 1
  %11 = ptrtoint ptr %data.11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.11, ptr %data.11, align 4
  %arrayidx.12 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 12
  %data.12 = getelementptr %struct.ctl_table, ptr %call, i32 12, i32 1
  %12 = ptrtoint ptr %data.12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.12, ptr %data.12, align 4
  %arrayidx.13 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 13
  %data.13 = getelementptr %struct.ctl_table, ptr %call, i32 13, i32 1
  %13 = ptrtoint ptr %data.13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.13, ptr %data.13, align 4
  %arrayidx.14 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 14
  %data.14 = getelementptr %struct.ctl_table, ptr %call, i32 14, i32 1
  %14 = ptrtoint ptr %data.14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.14, ptr %data.14, align 4
  %arrayidx.15 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 18, i32 15
  %data.15 = getelementptr %struct.ctl_table, ptr %call, i32 15, i32 1
  %15 = ptrtoint ptr %data.15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.15, ptr %data.15, align 4
  %call3 = tail call ptr @__register_sysctl_table(ptr noundef %set, ptr noundef nonnull @.str, ptr noundef nonnull %call) #9
  %sysctls = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 16
  %16 = ptrtoint ptr %sysctls to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %sysctls, align 4
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  %sysctls4 = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 16
  %17 = ptrtoint ptr %sysctls4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sysctls4, align 4
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %call) #9
  tail call void @retire_sysctl_set(ptr noundef %set) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge
  %19 = xor i1 %tobool5.not, true
  ret i1 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_sysctl_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_is_seen(ptr noundef readnone %set) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %set2 = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 15
  %cmp = icmp eq ptr %set2, %set
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__register_sysctl_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @retire_sysctl_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @retire_userns_sysctls(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctls = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 16
  %0 = ptrtoint ptr %sysctls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctls, align 4
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg, align 4
  tail call void @unregister_sysctl_table(ptr noundef %1) #9
  %set = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 15
  tail call void @retire_sysctl_set(ptr noundef %set) #9
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_ucounts(ptr noundef %ucounts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.ucounts, ptr %ucounts, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i, -1
  br i1 %cmp.i.i.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_ucounts(ptr noundef %ucounts)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ucounts.addr.0 = phi ptr [ %ucounts, %entry.if.end_crit_edge ], [ null, %if.then ]
  ret ptr %ucounts.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_ucounts(ptr noundef %ucounts) local_unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !73
  %count = getelementptr inbounds %struct.ucounts, ptr %ucounts, i32 0, i32 3
  %call = call i32 @_atomic_dec_and_lock_irqsave(ptr noundef %count, ptr noundef nonnull @ucounts_lock, ptr noundef nonnull %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %ucounts, i32 0, i32 1
  %1 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.not.i, label %if.then.hlist_del_init.exit_crit_edge, label %if.then.i

if.then.hlist_del_init.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.then
  %3 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ucounts, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %2, align 4
  %tobool.not.i3.i = icmp eq ptr %4, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %2, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %7 = ptrtoint ptr %ucounts to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ucounts, align 4
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.then.hlist_del_init.exit_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ucounts_lock, i32 noundef %10) #9
  %ns = getelementptr inbounds %struct.ucounts, ptr %ucounts, i32 0, i32 1
  %11 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %hlist_del_init.exit.put_user_ns.exit_crit_edge, label %land.lhs.true.i

hlist_del_init.exit.put_user_ns.exit_crit_edge:   ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %hlist_del_init.exit
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %12, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #9, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i4, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #9
  br label %put_user_ns.exit

if.then.i4:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__put_user_ns(ptr noundef nonnull %12) #9
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i4, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %hlist_del_init.exit.put_user_ns.exit_crit_edge
  call void @kfree(ptr noundef %ucounts) #9
  br label %if.end

if.end:                                           ; preds = %put_user_ns.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_ucounts(ptr noundef %ns, [1 x i32] %uid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uid.coerce.fca.0.extract = extractvalue [1 x i32] %uid.coerce, 0
  %0 = ptrtoint ptr %ns to i32
  %add = add i32 %uid.coerce.fca.0.extract, %0
  %mul.i.i = mul i32 %add, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %add.ptr = getelementptr %struct.hlist_head, ptr @ucounts_hashtable, i32 %shr.i
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @ucounts_lock) #9
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %ucounts.025.i = load ptr, ptr %add.ptr, align 4
  %tobool2.not26.i = icmp eq ptr %ucounts.025.i, null
  br i1 %tobool2.not26.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ucounts.027.i = phi ptr [ %ucounts.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ucounts.025.i, %entry.for.body.i_crit_edge ]
  %uid3.i = getelementptr inbounds %struct.ucounts, ptr %ucounts.027.i, i32 0, i32 2
  %2 = ptrtoint ptr %uid3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack.i = load i32, ptr %uid3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %uid.coerce.fca.0.extract)
  %cmp.i.i = icmp eq i32 %.unpack.i, %uid.coerce.fca.0.extract
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ns6.i = getelementptr inbounds %struct.ucounts, ptr %ucounts.027.i, i32 0, i32 1
  %3 = ptrtoint ptr %ns6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns6.i, align 4
  %cmp.i = icmp eq ptr %4, %ns
  br i1 %cmp.i, label %land.lhs.true.i.if.end17_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %5 = ptrtoint ptr %ucounts.027.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %ucounts.0.i = load ptr, ptr %ucounts.027.i, align 4
  %tobool2.not.i = icmp eq ptr %ucounts.0.i, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @ucounts_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 84) #12
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %ns8 = getelementptr inbounds %struct.ucounts, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ns8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ns, ptr %ns8, align 8
  %uid9 = getelementptr inbounds %struct.ucounts, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %uid9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %uid.coerce.fca.0.extract, ptr %uid9, align 4
  %count = getelementptr inbounds %struct.ucounts, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %count, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @ucounts_lock) #9
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %ucounts.025.i49 = load ptr, ptr %add.ptr, align 4
  %tobool2.not26.i50 = icmp eq ptr %ucounts.025.i49, null
  br i1 %tobool2.not26.i50, label %if.else.thread, label %if.end.for.body.i57_crit_edge

if.end.for.body.i57_crit_edge:                    ; preds = %if.end
  br label %for.body.i57

if.else.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %call7.i.i, align 8
  br label %hlist_add_head.exit

for.body.i57:                                     ; preds = %for.inc.i63.for.body.i57_crit_edge, %if.end.for.body.i57_crit_edge
  %ucounts.027.i53 = phi ptr [ %ucounts.0.i61, %for.inc.i63.for.body.i57_crit_edge ], [ %ucounts.025.i49, %if.end.for.body.i57_crit_edge ]
  %uid3.i54 = getelementptr inbounds %struct.ucounts, ptr %ucounts.027.i53, i32 0, i32 2
  %12 = ptrtoint ptr %uid3.i54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack.i55 = load i32, ptr %uid3.i54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i55, i32 %uid.coerce.fca.0.extract)
  %cmp.i.i56 = icmp eq i32 %.unpack.i55, %uid.coerce.fca.0.extract
  br i1 %cmp.i.i56, label %land.lhs.true.i60, label %for.body.i57.for.inc.i63_crit_edge

for.body.i57.for.inc.i63_crit_edge:               ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i63

land.lhs.true.i60:                                ; preds = %for.body.i57
  %ns6.i58 = getelementptr inbounds %struct.ucounts, ptr %ucounts.027.i53, i32 0, i32 1
  %13 = ptrtoint ptr %ns6.i58 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns6.i58, align 4
  %cmp.i59 = icmp eq ptr %14, %ns
  br i1 %cmp.i59, label %if.then13, label %land.lhs.true.i60.for.inc.i63_crit_edge

land.lhs.true.i60.for.inc.i63_crit_edge:          ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i63

for.inc.i63:                                      ; preds = %land.lhs.true.i60.for.inc.i63_crit_edge, %for.body.i57.for.inc.i63_crit_edge
  %15 = ptrtoint ptr %ucounts.027.i53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %ucounts.0.i61 = load ptr, ptr %ucounts.027.i53, align 4
  %tobool2.not.i62 = icmp eq ptr %ucounts.0.i61, null
  br i1 %tobool2.not.i62, label %do.body12.i, label %for.inc.i63.for.body.i57_crit_edge

for.inc.i63.for.body.i57_crit_edge:               ; preds = %for.inc.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i57

if.then13:                                        ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.end17

do.body12.i:                                      ; preds = %for.inc.i63
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %ucounts.025.i49, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %ucounts.025.i49, i32 0, i32 1
  %17 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.else.thread
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call7.i.i, ptr %add.ptr, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %add.ptr, ptr %pprev34.i, align 4
  %20 = ptrtoint ptr %ns8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ns8, align 8
  %tobool.not.i66 = icmp eq ptr %21, null
  br i1 %tobool.not.i66, label %hlist_add_head.exit.get_user_ns.exit_crit_edge, label %if.then.i

hlist_add_head.exit.get_user_ns.exit_crit_edge:   ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_user_ns.exit

if.then.i:                                        ; preds = %hlist_add_head.exit
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %21, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #9, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !79

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #9
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge, %hlist_add_head.exit.get_user_ns.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @ucounts_lock) #9
  br label %cleanup

if.end17:                                         ; preds = %if.then13, %land.lhs.true.i.if.end17_crit_edge
  %ucounts.0 = phi ptr [ %ucounts.027.i53, %if.then13 ], [ %ucounts.027.i, %land.lhs.true.i.if.end17_crit_edge ]
  %count.i67 = getelementptr inbounds %struct.ucounts, ptr %ucounts.0, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i67, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %count.i67, i32 1, i32 3, i32 1) #9
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i67, ptr %count.i67, i32 1, ptr elementtype(i32) %count.i67) #9, !srcloc !71
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i, -1
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @ucounts_lock) #9
  br i1 %cmp.i.i.i, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_ucounts(ptr noundef nonnull %ucounts.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end17.cleanup_crit_edge, %get_user_ns.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then20 ], [ %call7.i.i, %get_user_ns.exit ], [ null, %if.then.cleanup_crit_edge ], [ %ucounts.0, %if.end17.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock_irqsave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inc_ucount(ptr noundef %ns, [1 x i32] %uid.coerce, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_ucounts(ptr noundef %ns, [1 x i32] %uid.coerce)
  %tobool.not35 = icmp eq ptr %call, null
  br i1 %tobool.not35, label %entry.cleanup14_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.036 = phi ptr [ %8, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %ns2 = getelementptr inbounds %struct.ucounts, ptr %iter.036, i32 0, i32 1
  %0 = ptrtoint ptr %ns2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns2, align 4
  %arrayidx = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 18, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.ucounts, ptr %iter.036, i32 0, i32 4, i32 %type
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx3, i32 noundef 4) #9
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx3, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %atomic_long_cmpxchg.exit.i.for.cond.i_crit_edge, %for.body
  %c.0.i = phi i32 [ %5, %for.body ], [ %asmresult3.i.i.i.i.i, %atomic_long_cmpxchg.exit.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0.i, i32 %3)
  %cmp.not.i = icmp slt i32 %c.0.i, %3
  br i1 %cmp.not.i, label %if.end.i, label %for.cond6.preheader, !prof !76

for.cond6.preheader:                              ; preds = %for.cond.i
  %cmp.not37 = icmp eq ptr %call, %iter.036
  br i1 %cmp.not37, label %for.cond6.preheader.for.end13_crit_edge, label %for.cond6.preheader.for.body7_crit_edge

for.cond6.preheader.for.body7_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body7

for.cond6.preheader.for.end13_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13

if.end.i:                                         ; preds = %for.cond.i
  %add.i = add nsw i32 %c.0.i, 1
  %call.i.i18.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx3, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %arrayidx3, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end.i
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx3, ptr %arrayidx3, i32 %c.0.i, i32 %add.i, ptr elementtype(i32) %arrayidx3) #9, !srcloc !81
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_long_cmpxchg.exit.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

atomic_long_cmpxchg.exit.i:                       ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  %cmp3.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i
  br i1 %cmp3.i, label %for.inc, label %atomic_long_cmpxchg.exit.i.for.cond.i_crit_edge, !prof !76

atomic_long_cmpxchg.exit.i.for.cond.i_crit_edge:  ; preds = %atomic_long_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.inc:                                          ; preds = %atomic_long_cmpxchg.exit.i
  %ucounts5 = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %ucounts5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ucounts5, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.inc.cleanup14_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond6.preheader.for.body7_crit_edge
  %iter.138 = phi ptr [ %13, %for.body7.for.body7_crit_edge ], [ %call, %for.cond6.preheader.for.body7_crit_edge ]
  %arrayidx9 = getelementptr %struct.ucounts, ptr %iter.138, i32 0, i32 4, i32 %type
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx9, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx9, ptr %arrayidx9, i32 1, ptr elementtype(i32) %arrayidx9) #9, !srcloc !83
  %ns11 = getelementptr inbounds %struct.ucounts, ptr %iter.138, i32 0, i32 1
  %10 = ptrtoint ptr %ns11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ns11, align 4
  %ucounts12 = getelementptr inbounds %struct.user_namespace, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ucounts12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ucounts12, align 4
  %cmp.not = icmp eq ptr %13, %iter.036
  br i1 %cmp.not, label %for.body7.for.end13_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.body7.for.end13_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13

for.end13:                                        ; preds = %for.body7.for.end13_crit_edge, %for.cond6.preheader.for.end13_crit_edge
  tail call void @put_ucounts(ptr noundef nonnull %call)
  br label %cleanup14

cleanup14:                                        ; preds = %for.end13, %for.inc.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.0 = phi ptr [ null, %for.end13 ], [ null, %entry.cleanup14_crit_edge ], [ %call, %for.inc.cleanup14_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dec_ucount(ptr noundef %ucounts, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not44 = icmp eq ptr %ucounts, null
  br i1 %tobool.not44, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.045 = phi ptr [ %6, %if.end28.for.body_crit_edge ], [ %ucounts, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ucounts, ptr %iter.045, i32 0, i32 4, i32 %type
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %for.body
  %c.0.i.i.i = phi i32 [ %1, %for.body ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.rhs, label %do.cond3.i.i.i, !prof !79

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %arrayidx) #9, !srcloc !81
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.if.end28_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !76

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.if.end28_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.rhs:                                         ; preds = %do.body1.i.i.i
  %.b42 = load i1, ptr @dec_ucount.__already_done, align 1
  br i1 %.b42, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !76

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @dec_ucount.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %arch_atomic_cmpxchg.exit.i.i.i.i.if.end28_crit_edge
  %ns = getelementptr inbounds %struct.ucounts, ptr %iter.045, i32 0, i32 1
  %3 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns, align 4
  %ucounts36 = getelementptr inbounds %struct.user_namespace, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %ucounts36 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ucounts36, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @put_ucounts(ptr noundef %ucounts)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inc_rlimit_ucounts(ptr noundef %ucounts, i32 noundef %type, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not16 = icmp eq ptr %ucounts, null
  br i1 %tobool.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.019 = phi ptr [ %6, %for.body.for.body_crit_edge ], [ %ucounts, %entry.for.body_crit_edge ]
  %ret.018 = phi i32 [ %ret.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %max.017 = phi i32 [ %4, %for.body.for.body_crit_edge ], [ 2147483647, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ucounts, ptr %iter.019, i32 0, i32 4, i32 %type
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 %v, ptr elementtype(i32) %arrayidx) #9, !srcloc !71
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %max.017)
  %cmp1 = icmp sgt i32 %asmresult.i.i.i.i, %max.017
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %cmp2 = icmp eq ptr %iter.019, %ucounts
  %spec.select = select i1 %cmp2, i32 %asmresult.i.i.i.i, i32 %ret.018
  %ret.1 = select i1 %or.cond, i32 2147483647, i32 %spec.select
  %ns = getelementptr inbounds %struct.ucounts, ptr %iter.019, i32 0, i32 1
  %1 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns, align 4
  %arrayidx5 = getelementptr %struct.user_namespace, ptr %2, i32 0, i32 18, i32 %type
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx5, align 4
  %ucounts7 = getelementptr inbounds %struct.user_namespace, ptr %2, i32 0, i32 17
  %5 = ptrtoint ptr %ucounts7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ucounts7, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.body.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef %ucounts, i32 noundef %type, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not49 = icmp eq ptr %ucounts, null
  br i1 %tobool.not49, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.051 = phi ptr [ %4, %if.end28.for.body_crit_edge ], [ %ucounts, %entry.for.body_crit_edge ]
  %new.050 = phi i32 [ %spec.select, %if.end28.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ucounts, ptr %iter.051, i32 0, i32 4, i32 %type
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 %v, ptr elementtype(i32) %arrayidx) #9, !srcloc !85
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %land.rhs, label %for.body.if.end28_crit_edge

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.rhs:                                         ; preds = %for.body
  %.b48 = load i1, ptr @dec_rlimit_ucounts.__already_done, align 1
  br i1 %.b48, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !76

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @dec_rlimit_ucounts.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 289, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %for.body.if.end28_crit_edge
  %cmp36 = icmp eq ptr %iter.051, %ucounts
  %spec.select = select i1 %cmp36, i32 %asmresult.i.i.i.i, i32 %new.050
  %ns = getelementptr inbounds %struct.ucounts, ptr %iter.051, i32 0, i32 1
  %1 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns, align 4
  %ucounts39 = getelementptr inbounds %struct.user_namespace, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %ucounts39 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ucounts39, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.end.loopexit, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %phi.cmp = icmp eq i32 %spec.select, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %new.0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  ret i1 %new.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dec_rlimit_put_ucounts(ptr noundef %ucounts, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not50.i = icmp eq ptr %ucounts, null
  br i1 %cmp.not50.i, label %entry.do_dec_rlimit_put_ucounts.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do_dec_rlimit_put_ucounts.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_dec_rlimit_put_ucounts.exit

for.body.i:                                       ; preds = %if.end39.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %iter.051.i = phi ptr [ %9, %if.end39.i.for.body.i_crit_edge ], [ %ucounts, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ucounts, ptr %iter.051.i, i32 0, i32 4, i32 %type
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #9, !srcloc !85
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp1.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp1.i, label %land.rhs.i, label %if.end28.i

land.rhs.i:                                       ; preds = %for.body.i
  %.b46.i = load i1, ptr @do_dec_rlimit_put_ucounts.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.if.end28.thread.i_crit_edge, label %if.then.i, !prof !76

land.rhs.i.if.end28.thread.i_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.thread.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @do_dec_rlimit_put_ucounts.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 302, i32 noundef 9, ptr noundef null) #9
  br label %if.end28.thread.i

if.end28.thread.i:                                ; preds = %if.then.i, %land.rhs.i.if.end28.thread.i_crit_edge
  %ns47.i = getelementptr inbounds %struct.ucounts, ptr %iter.051.i, i32 0, i32 1
  %1 = ptrtoint ptr %ns47.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns47.i, align 4
  %ucounts3648.i = getelementptr inbounds %struct.user_namespace, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %ucounts3648.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ucounts3648.i, align 4
  br label %if.end39.i

if.end28.i:                                       ; preds = %for.body.i
  %ns.i = getelementptr inbounds %struct.ucounts, ptr %iter.051.i, i32 0, i32 1
  %5 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ns.i, align 4
  %ucounts36.i = getelementptr inbounds %struct.user_namespace, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %ucounts36.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ucounts36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp37.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp37.i, label %if.then38.i, label %if.end28.i.if.end39.i_crit_edge

if.end28.i.if.end39.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then38.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_ucounts(ptr noundef nonnull %iter.051.i) #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %if.end28.i.if.end39.i_crit_edge, %if.end28.thread.i
  %9 = phi ptr [ %4, %if.end28.thread.i ], [ %8, %if.then38.i ], [ %8, %if.end28.i.if.end39.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %9, null
  br i1 %cmp.not.i, label %if.end39.i.do_dec_rlimit_put_ucounts.exit_crit_edge, label %if.end39.i.for.body.i_crit_edge

if.end39.i.for.body.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end39.i.do_dec_rlimit_put_ucounts.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_dec_rlimit_put_ucounts.exit

do_dec_rlimit_put_ucounts.exit:                   ; preds = %if.end39.i.do_dec_rlimit_put_ucounts.exit_crit_edge, %entry.do_dec_rlimit_put_ucounts.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inc_rlimit_get_ucounts(ptr noundef %ucounts, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not103 = icmp eq ptr %ucounts, null
  br i1 %tobool.not103, label %entry.cleanup60_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup60

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.0106 = phi ptr [ %9, %for.inc.for.body_crit_edge ], [ %ucounts, %entry.for.body_crit_edge ]
  %max.0105 = phi i32 [ %4, %for.inc.for.body_crit_edge ], [ 2147483647, %entry.for.body_crit_edge ]
  %ret.0104 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ucounts, ptr %iter.0106, i32 0, i32 4, i32 %type
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #9, !srcloc !71
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %max.0105)
  %cmp1 = icmp sgt i32 %asmresult.i.i.i.i, %max.0105
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %for.body.unwind_crit_edge, label %if.end

for.body.unwind_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %unwind

if.end:                                           ; preds = %for.body
  %cmp2 = icmp eq ptr %iter.0106, %ucounts
  %spec.select = select i1 %cmp2, i32 %asmresult.i.i.i.i, i32 %ret.0104
  %ns = getelementptr inbounds %struct.ucounts, ptr %iter.0106, i32 0, i32 1
  %1 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns, align 4
  %arrayidx5 = getelementptr %struct.user_namespace, ptr %2, i32 0, i32 18, i32 %type
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp6.not = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp6.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %count.i.i = getelementptr inbounds %struct.ucounts, ptr %iter.0106, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, -1
  br i1 %cmp.i.i.i.i, label %if.end8.for.inc_crit_edge, label %dec_unwind

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %6 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns, align 4
  %ucounts14 = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %ucounts14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ucounts14, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.inc.cleanup60_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup60_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup60

dec_unwind:                                       ; preds = %if.end8
  tail call void @put_ucounts(ptr noundef nonnull %iter.0106) #9
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #9, !srcloc !85
  %asmresult.i.i.i.i83 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i83)
  %cmp18 = icmp slt i32 %asmresult.i.i.i.i83, 0
  br i1 %cmp18, label %land.rhs, label %dec_unwind.unwind_crit_edge

dec_unwind.unwind_crit_edge:                      ; preds = %dec_unwind
  call void @__sanitizer_cov_trace_pc() #11
  br label %unwind

land.rhs:                                         ; preds = %dec_unwind
  %.b81 = load i1, ptr @inc_rlimit_get_ucounts.__already_done, align 1
  br i1 %.b81, label %land.rhs.unwind_crit_edge, label %if.then26, !prof !76

land.rhs.unwind_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %unwind

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @inc_rlimit_get_ucounts.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 340, i32 noundef 9, ptr noundef null) #9
  br label %unwind

unwind:                                           ; preds = %if.then26, %land.rhs.unwind_crit_edge, %dec_unwind.unwind_crit_edge, %for.body.unwind_crit_edge
  %cmp.not50.i = icmp eq ptr %iter.0106, %ucounts
  br i1 %cmp.not50.i, label %unwind.cleanup60_crit_edge, label %unwind.for.body.i_crit_edge

unwind.for.body.i_crit_edge:                      ; preds = %unwind
  br label %for.body.i

unwind.cleanup60_crit_edge:                       ; preds = %unwind
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup60

for.body.i:                                       ; preds = %if.end39.i.for.body.i_crit_edge, %unwind.for.body.i_crit_edge
  %iter.051.i = phi ptr [ %20, %if.end39.i.for.body.i_crit_edge ], [ %ucounts, %unwind.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ucounts, ptr %iter.051.i, i32 0, i32 4, i32 %type
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #9, !srcloc !85
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp1.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp1.i, label %land.rhs.i, label %if.end28.i

land.rhs.i:                                       ; preds = %for.body.i
  %.b46.i = load i1, ptr @do_dec_rlimit_put_ucounts.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.if.end28.thread.i_crit_edge, label %if.then.i84, !prof !76

land.rhs.i.if.end28.thread.i_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.thread.i

if.then.i84:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @do_dec_rlimit_put_ucounts.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 302, i32 noundef 9, ptr noundef null) #9
  br label %if.end28.thread.i

if.end28.thread.i:                                ; preds = %if.then.i84, %land.rhs.i.if.end28.thread.i_crit_edge
  %ns47.i = getelementptr inbounds %struct.ucounts, ptr %iter.051.i, i32 0, i32 1
  %12 = ptrtoint ptr %ns47.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns47.i, align 4
  %ucounts3648.i = getelementptr inbounds %struct.user_namespace, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %ucounts3648.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ucounts3648.i, align 4
  br label %if.end39.i

if.end28.i:                                       ; preds = %for.body.i
  %ns.i = getelementptr inbounds %struct.ucounts, ptr %iter.051.i, i32 0, i32 1
  %16 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ns.i, align 4
  %ucounts36.i = getelementptr inbounds %struct.user_namespace, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %ucounts36.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ucounts36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp37.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp37.i, label %if.then38.i, label %if.end28.i.if.end39.i_crit_edge

if.end28.i.if.end39.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then38.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_ucounts(ptr noundef %iter.051.i) #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %if.end28.i.if.end39.i_crit_edge, %if.end28.thread.i
  %20 = phi ptr [ %15, %if.end28.thread.i ], [ %19, %if.then38.i ], [ %19, %if.end28.i.if.end39.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %20, %iter.0106
  br i1 %cmp.not.i, label %if.end39.i.cleanup60_crit_edge, label %if.end39.i.for.body.i_crit_edge

if.end39.i.for.body.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end39.i.cleanup60_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup60

cleanup60:                                        ; preds = %if.end39.i.cleanup60_crit_edge, %unwind.cleanup60_crit_edge, %for.inc.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ 0, %unwind.cleanup60_crit_edge ], [ 0, %entry.cleanup60_crit_edge ], [ 0, %if.end39.i.cleanup60_crit_edge ], [ %spec.select, %for.inc.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_ucounts_overlimit(ptr noundef %ucounts, i32 noundef %type, i32 noundef %rlimit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not18 = icmp eq ptr %ucounts, null
  br i1 %tobool.not18, label %entry.cleanup7_crit_edge, label %for.body.preheader

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup7

for.body.preheader:                               ; preds = %entry
  %0 = tail call i32 @llvm.umin.i32(i32 %rlimit, i32 2147483647)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %max.020 = phi i32 [ %6, %for.inc.for.body_crit_edge ], [ %0, %for.body.preheader ]
  %iter.019 = phi ptr [ %8, %for.inc.for.body_crit_edge ], [ %ucounts, %for.body.preheader ]
  %arrayidx.i = getelementptr %struct.ucounts, ptr %iter.019, i32 0, i32 4, i32 %type
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #9
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp slt i32 %2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %max.020)
  %cmp2 = icmp sgt i32 %2, %max.020
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp2
  br i1 %or.cond, label %for.body.cleanup7_crit_edge, label %for.inc

for.body.cleanup7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup7

for.inc:                                          ; preds = %for.body
  %ns = getelementptr inbounds %struct.ucounts, ptr %iter.019, i32 0, i32 1
  %3 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns, align 4
  %arrayidx = getelementptr %struct.user_namespace, ptr %4, i32 0, i32 18, i32 %type
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx, align 4
  %ucounts6 = getelementptr inbounds %struct.user_namespace, ptr %4, i32 0, i32 17
  %7 = ptrtoint ptr %ucounts6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ucounts6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.inc.cleanup7_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup7

cleanup7:                                         ; preds = %for.inc.cleanup7_crit_edge, %for.body.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  %tobool.not.lcssa = phi i1 [ false, %entry.cleanup7_crit_edge ], [ %or.cond, %for.body.cleanup7_crit_edge ], [ %or.cond, %for.inc.cleanup7_crit_edge ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @user_namespace_sysctl_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_sysctl(ptr noundef nonnull @.str, ptr noundef nonnull @user_namespace_sysctl_init.empty) #9
  store ptr %call, ptr @user_namespace_sysctl_init.user_header, align 4
  tail call void @kmemleak_ignore(ptr noundef %call) #9
  %0 = load ptr, ptr @user_namespace_sysctl_init.user_header, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.body4, label %do.body8, !prof !79

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/ucount.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 373, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

do.body8:                                         ; preds = %entry
  %call9 = tail call zeroext i1 @setup_userns_sysctls(ptr noundef nonnull @init_user_ns)
  br i1 %call9, label %do.end24, label %do.body19, !prof !76

do.body19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/ucount.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 374, 0\0A.popsection", ""() #9, !srcloc !88
  unreachable

do.end24:                                         ; preds = %do.body8
  %.unpack.i = load i32, ptr getelementptr inbounds (%struct.ucounts, ptr @init_ucounts, i32 0, i32 2), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.ucounts, ptr @init_ucounts, i32 0, i32 1), align 4
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %.unpack.i, %2
  %mul.i.i.i = mul i32 %add.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %add.ptr.i = getelementptr %struct.hlist_head, ptr @ucounts_hashtable, i32 %shr.i.i
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @ucounts_lock) #9
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  store volatile ptr %4, ptr @init_ucounts, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %do.end24.hlist_add_ucounts.exit_crit_edge, label %do.body12.i.i

do.end24.hlist_add_ucounts.exit_crit_edge:        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_ucounts.exit

do.body12.i.i:                                    ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr @init_ucounts, ptr %pprev.i.i, align 4
  br label %hlist_add_ucounts.exit

hlist_add_ucounts.exit:                           ; preds = %do.body12.i.i, %do.end24.hlist_add_ucounts.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr @init_ucounts, ptr %add.ptr.i, align 4
  store volatile ptr %add.ptr.i, ptr getelementptr inbounds (%struct.ucounts, ptr @init_ucounts, i32 0, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @ucounts_lock) #9
  %call25 = tail call i32 @inc_rlimit_ucounts(ptr noundef nonnull @init_ucounts, i32 noundef 12, i32 noundef 1)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @set_lookup(ptr nocapture noundef readnone %root) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %set = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 15
  ret ptr %set
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_permissions(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.ctl_table_header, ptr %head, i32 0, i32 4
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -388
  %call = tail call zeroext i1 @ns_capable(ptr noundef %add.ptr, i32 noundef 24) #9
  %mode1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode1, align 4
  %4 = lshr i16 %3, 6
  %5 = and i16 %4, 7
  %6 = and i16 %3, 4
  %mode.0.in = select i1 %call, i16 %5, i16 %6
  %narrow = mul nuw nsw i16 %mode.0.in, 73
  %or6 = zext i16 %narrow to i32
  ret i32 %or6
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_ignore(ptr noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @init_ucounts, !1, !"init_ucounts", i1 false, i1 false}
!1 = !{!"../kernel/ucount.c", i32 11, i32 16}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/ucount.c", i32 111, i32 51}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/ucount.c", i32 261, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../kernel/ucount.c", i32 289, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../kernel/ucount.c", i32 340, i32 2}
!11 = !{ptr @__initcall__kmod_ucount__164_380_user_namespace_sysctl_init4, !12, !"__initcall__kmod_ucount__164_380_user_namespace_sysctl_init4", i1 false, i1 false}
!12 = !{!"../kernel/ucount.c", i32 380, i32 1}
!13 = !{ptr @ucounts_hashtable, !14, !"ucounts_hashtable", i1 false, i1 false}
!14 = !{!"../kernel/ucount.c", i32 18, i32 26}
!15 = !{ptr @set_root, !16, !"set_root", i1 false, i1 false}
!16 = !{!"../kernel/ucount.c", i32 56, i32 30}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../kernel/ucount.c", i32 32, i32 10}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../kernel/ucount.c", i32 37, i32 10}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/ucount.c", i32 74, i32 2}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/ucount.c", i32 75, i32 2}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/ucount.c", i32 76, i32 2}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/ucount.c", i32 77, i32 2}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/ucount.c", i32 78, i32 2}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/ucount.c", i32 79, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/ucount.c", i32 80, i32 2}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/ucount.c", i32 81, i32 2}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/ucount.c", i32 83, i32 2}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/ucount.c", i32 84, i32 2}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/ucount.c", i32 87, i32 2}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/ucount.c", i32 88, i32 2}
!45 = !{ptr @user_table, !46, !"user_table", i1 false, i1 false}
!46 = !{!"../kernel/ucount.c", i32 73, i32 25}
!47 = !{ptr @ue_zero, !48, !"ue_zero", i1 false, i1 false}
!48 = !{!"../kernel/ucount.c", i32 61, i32 13}
!49 = !{ptr @ue_int_max, !50, !"ue_int_max", i1 false, i1 false}
!50 = !{!"../kernel/ucount.c", i32 62, i32 13}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/ucount.c", i32 19, i32 8}
!53 = !{ptr @ucounts_lock, !52, !"ucounts_lock", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../kernel/ucount.c", i32 302, i32 3}
!56 = !{ptr @user_namespace_sysctl_init.user_header, !57, !"user_header", i1 false, i1 false}
!57 = !{!"../kernel/ucount.c", i32 364, i32 34}
!58 = !{ptr @user_namespace_sysctl_init.empty, !59, !"empty", i1 false, i1 false}
!59 = !{!"../kernel/ucount.c", i32 365, i32 26}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148302870}
!71 = !{i64 2148218179, i64 2148218211, i64 2148218240, i64 2148218274, i64 2148218305, i64 2148218328}
!72 = !{i64 2148303099}
!73 = !{!"auto-init"}
!74 = !{i64 2148306990}
!75 = !{i64 2148221454, i64 2148221486, i64 2148221515, i64 2148221549, i64 2148221580, i64 2148221603}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2150025013}
!78 = !{i64 2148218989, i64 2148219021, i64 2148219050, i64 2148219084, i64 2148219115, i64 2148219138}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2148319282}
!81 = !{i64 701992, i64 702016, i64 702037, i64 702054, i64 702071}
!82 = !{i64 2148319508}
!83 = !{i64 2148219924, i64 2148219950, i64 2148219979, i64 2148220013, i64 2148220044, i64 2148220067}
!84 = !{i64 2148305911}
!85 = !{i64 2148220644, i64 2148220676, i64 2148220705, i64 2148220739, i64 2148220770, i64 2148220793}
!86 = !{i64 2148306140}
!87 = !{i64 2152240473, i64 2152240953, i64 2152240510, i64 2152240566, i64 2152240600, i64 2152240624, i64 2152240665, i64 2152240686, i64 2152240714, i64 2152240748}
!88 = !{i64 2152242089, i64 2152242569, i64 2152242126, i64 2152242182, i64 2152242216, i64 2152242240, i64 2152242281, i64 2152242302, i64 2152242330, i64 2152242364}
