; ModuleID = '/llk/IR_all_yes/security/tomoyo/tomoyo.c_pt.bc'
source_filename = "../security/tomoyo/tomoyo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%union.security_list_options = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tomoyo_domain_info = type { %struct.list_head, %struct.list_head, ptr, ptr, [8 x i32], i8, i8, [2 x i8], %struct.atomic_t }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.47 }
%union.anon.47 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.57, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.121, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.111 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.121 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tomoyo_task = type { ptr, ptr }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@tomoyo_blob_sizes = dso_local global { %struct.lsm_blob_sizes, [36 x i8] } { %struct.lsm_blob_sizes { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tomoyo_ss.lock\00", [17 x i8] zeroinitializer }, align 32
@tomoyo_ss_srcu_data = weak dso_local global %struct.srcu_data zeroinitializer, section ".data..percpu", align 128
@tomoyo_ss = dso_local global { %struct.srcu_struct, [200 x i8] } { %struct.srcu_struct { [3 x %struct.srcu_node] zeroinitializer, [3 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @tomoyo_ss_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @tomoyo_ss, i64 700), ptr getelementptr (i8, ptr @tomoyo_ss, i64 700) }, ptr null, %struct.lockdep_map { ptr getelementptr (i8, ptr @tomoyo_ss, i64 696), [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.2, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [200 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(tomoyo_ss.work).work\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"security/tomoyo/tomoyo.c:562\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tomoyo_ss\00", [22 x i8] zeroinitializer }, align 32
@tomoyo_enabled = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tomoyo\00", [25 x i8] zeroinitializer }, align 32
@__lsm_tomoyo = internal global %struct.lsm_info { ptr @.str.4, i32 0, i32 1, ptr @tomoyo_enabled, ptr @tomoyo_init, ptr @tomoyo_blob_sizes }, section ".lsm_info.init", align 4
@__pcpu_unique_tomoyo_ss_srcu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@tomoyo_hooks = internal global { [27 x %struct.security_hook_list], [132 x i8] } { [27 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 396), %union.security_list_options { ptr @tomoyo_cred_prepare }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 72), %union.security_list_options { ptr @tomoyo_bprm_committed_creds }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 380), %union.security_list_options { ptr @tomoyo_task_alloc }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 384), %union.security_list_options { ptr @tomoyo_task_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 64), %union.security_list_options { ptr @tomoyo_bprm_check_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 360), %union.security_list_options { ptr @tomoyo_file_fcntl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 376), %union.security_list_options { ptr @tomoyo_file_open }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 172), %union.security_list_options { ptr @tomoyo_path_truncate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 156), %union.security_list_options { ptr @tomoyo_path_unlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 160), %union.security_list_options { ptr @tomoyo_path_mkdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 164), %union.security_list_options { ptr @tomoyo_path_rmdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 176), %union.security_list_options { ptr @tomoyo_path_symlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 168), %union.security_list_options { ptr @tomoyo_path_mknod }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 180), %union.security_list_options { ptr @tomoyo_path_link }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 184), %union.security_list_options { ptr @tomoyo_path_rename }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 268), %union.security_list_options { ptr @tomoyo_inode_getattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 340), %union.security_list_options { ptr @tomoyo_file_ioctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 188), %union.security_list_options { ptr @tomoyo_path_chmod }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 192), %union.security_list_options { ptr @tomoyo_path_chown }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 196), %union.security_list_options { ptr @tomoyo_path_chroot }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 124), %union.security_list_options { ptr @tomoyo_sb_mount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 128), %union.security_list_options { ptr @tomoyo_sb_umount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 132), %union.security_list_options { ptr @tomoyo_sb_pivotroot }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 664), %union.security_list_options { ptr @tomoyo_socket_bind }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 668), %union.security_list_options { ptr @tomoyo_socket_connect }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 672), %union.security_list_options { ptr @tomoyo_socket_listen }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 680), %union.security_list_options { ptr @tomoyo_socket_sendmsg }, ptr null }], [132 x i8] zeroinitializer }, align 32
@tomoyo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016TOMOYO Linux initialized\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tomoyo_init\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/tomoyo/tomoyo.c\00", [39 x i8] zeroinitializer }, align 32
@tomoyo_init._entry_ptr = internal global ptr @tomoyo_init._entry, section ".printk_index", align 4
@tomoyo_kernel_domain = external dso_local global %struct.tomoyo_domain_info, align 4
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"tomoyo_blob_sizes\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 481, i32 23 }
@___asan_gen_.15 = private unnamed_addr constant [10 x i8] c"tomoyo_ss\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 562, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"tomoyo_enabled\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 564, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 587, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"tomoyo_hooks\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 528, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private constant [28 x i8] c"../security/tomoyo/tomoyo.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 577, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 189, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__lsm_tomoyo, ptr @tomoyo_init._entry, ptr @tomoyo_init._entry_ptr, ptr @tomoyo_blob_sizes, ptr @.str, ptr @tomoyo_ss, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tomoyo_enabled, ptr @.str.4, ptr @tomoyo_hooks, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_blob_sizes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_ss to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_hooks to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_domain() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 16
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %old_domain_info = getelementptr inbounds %struct.tomoyo_task, ptr %add.ptr.i, i32 0, i32 1
  %7 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_domain_info, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %in_execve = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 65
  %9 = ptrtoint ptr %in_execve to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %in_execve, align 8
  %10 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool4.not = icmp eq i16 %10, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %users = getelementptr inbounds %struct.tomoyo_domain_info, ptr %8, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #8, !srcloc !37
  %12 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %old_domain_info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  ret ptr %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 16
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  tail call void @security_add_hooks(ptr noundef nonnull @tomoyo_hooks, i32 noundef 27, ptr noundef nonnull @.str.4) #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tomoyo_kernel_domain, ptr %add.ptr.i, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 8), i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 8), i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 8), ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 8)) #8, !srcloc !38
  %old_domain_info = getelementptr inbounds %struct.tomoyo_task, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %old_domain_info, align 4
  tail call void @tomoyo_mm_init() #11
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tomoyo_mm_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_cred_prepare(ptr nocapture noundef readnone %new, ptr nocapture noundef readnone %old, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 16
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %old_domain_info = getelementptr inbounds %struct.tomoyo_task, ptr %add.ptr.i, i32 0, i32 1
  %7 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_domain_info, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %in_execve = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 65
  %9 = ptrtoint ptr %in_execve to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %in_execve, align 8
  %10 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool4.not = icmp eq i16 %10, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %users = getelementptr inbounds %struct.tomoyo_domain_info, ptr %12, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #8, !srcloc !37
  %14 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %old_domain_info, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %add.ptr.i, align 4
  store ptr null, ptr %old_domain_info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_bprm_committed_creds(ptr nocapture noundef readnone %bprm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 16
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %old_domain_info = getelementptr inbounds %struct.tomoyo_task, ptr %add.ptr.i, i32 0, i32 1
  %7 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_domain_info, align 4
  %users = getelementptr inbounds %struct.tomoyo_domain_info, ptr %8, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #8, !srcloc !37
  %10 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %old_domain_info, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_task_alloc(ptr nocapture noundef readonly %task, i32 noundef %clone_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 16
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %security.i8 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 215
  %7 = ptrtoint ptr %security.i8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %security.i8, align 16
  %add.ptr.i9 = getelementptr i8, ptr %8, i32 %6
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %11 = ptrtoint ptr %add.ptr.i9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %add.ptr.i9, align 4
  %users = getelementptr inbounds %struct.tomoyo_domain_info, ptr %10, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #8, !srcloc !38
  %old_domain_info = getelementptr inbounds %struct.tomoyo_task, ptr %add.ptr.i9, i32 0, i32 1
  %13 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %old_domain_info, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_task_free(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 215
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %users = getelementptr inbounds %struct.tomoyo_domain_info, ptr %4, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #8, !srcloc !37
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %old_domain_info = getelementptr inbounds %struct.tomoyo_task, ptr %add.ptr.i, i32 0, i32 1
  %7 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_domain_info, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %users6 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %8, i32 0, i32 8
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users6, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users6, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users6, ptr %users6, i32 1, ptr elementtype(i32) %users6) #8, !srcloc !37
  %10 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %old_domain_info, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_bprm_check_security(ptr noundef %bprm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 16
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %old_domain_info = getelementptr inbounds %struct.tomoyo_task, ptr %add.ptr.i, i32 0, i32 1
  %7 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_domain_info, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #8
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  %call3 = tail call i32 @tomoyo_find_next_domain(ptr noundef %bprm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %if.then.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

if.then.tomoyo_read_unlock.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %if.then
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i, !prof !39

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 189, i32 noundef 9, ptr noundef null) #8
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %if.then.tomoyo_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %file = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %11 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 1
  %call4 = tail call i32 @tomoyo_check_open_permission(ptr noundef %10, ptr noundef %f_path, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tomoyo_read_unlock.exit
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call3, %tomoyo_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_file_fcntl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 4
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %xor = xor i32 %1, %arg
  %and = and i32 %xor, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.return_crit_edge, label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %2 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %security.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 215
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 16
  %8 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %old_domain_info.i = getelementptr inbounds %struct.tomoyo_task, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %old_domain_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %old_domain_info.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.tomoyo_domain.exit_crit_edge, label %land.lhs.true.i

if.end.tomoyo_domain.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_domain.exit

land.lhs.true.i:                                  ; preds = %if.end
  %in_execve.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 65
  %11 = ptrtoint ptr %in_execve.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %in_execve.i, align 8
  %12 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool4.not.i = icmp eq i16 %12, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.tomoyo_domain.exit_crit_edge

land.lhs.true.i.tomoyo_domain.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_domain.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %users.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %10, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #8, !srcloc !37
  %14 = ptrtoint ptr %old_domain_info.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %old_domain_info.i, align 4
  br label %tomoyo_domain.exit

tomoyo_domain.exit:                               ; preds = %if.then.i, %land.lhs.true.i.tomoyo_domain.exit_crit_edge, %if.end.tomoyo_domain.exit_crit_edge
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %and1 = and i32 %arg, 1024
  %or = or i32 %and1, 1
  %call2 = tail call i32 @tomoyo_check_open_permission(ptr noundef %16, ptr noundef %f_path, i32 noundef %or) #8
  br label %return

return:                                           ; preds = %tomoyo_domain.exit, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %tomoyo_domain.exit ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_file_open(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %in_execve = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %in_execve to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %in_execve, align 8
  %5 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %security.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 16
  %8 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %old_domain_info.i = getelementptr inbounds %struct.tomoyo_task, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %old_domain_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %old_domain_info.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.tomoyo_domain.exit_crit_edge, label %if.then.i

if.end.tomoyo_domain.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_domain.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %users.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %10, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #8, !srcloc !37
  %12 = ptrtoint ptr %old_domain_info.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %old_domain_info.i, align 4
  br label %tomoyo_domain.exit

tomoyo_domain.exit:                               ; preds = %if.then.i, %if.end.tomoyo_domain.exit_crit_edge
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 7
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %call2 = tail call i32 @tomoyo_check_open_permission(ptr noundef %14, ptr noundef %f_path, i32 noundef %16) #8
  br label %return

return:                                           ; preds = %tomoyo_domain.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %tomoyo_domain.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_truncate(ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tomoyo_path_perm(i8 noundef zeroext 7, ptr noundef %path, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_unlink(ptr nocapture noundef readonly %parent, ptr noundef %dentry) #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %path, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dentry, ptr %0, align 4
  %call = call i32 @tomoyo_path_perm(i8 noundef zeroext 4, ptr noundef nonnull %path, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_mkdir(ptr nocapture noundef readonly %parent, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %path, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dentry, ptr %0, align 4
  %5 = and i16 %mode, 4095
  %and = zext i16 %5 to i32
  %call = call i32 @tomoyo_path_number_perm(i8 noundef zeroext 1, ptr noundef nonnull %path, i32 noundef %and) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_rmdir(ptr nocapture noundef readonly %parent, ptr noundef %dentry) #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %path, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dentry, ptr %0, align 4
  %call = call i32 @tomoyo_path_perm(i8 noundef zeroext 6, ptr noundef nonnull %path, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_symlink(ptr nocapture noundef readonly %parent, ptr noundef %dentry, ptr noundef %old_name) #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %path, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dentry, ptr %0, align 4
  %call = call i32 @tomoyo_path_perm(i8 noundef zeroext 8, ptr noundef nonnull %path, ptr noundef %old_name) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_mknod(ptr nocapture noundef readonly %parent, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %path, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dentry, ptr %0, align 4
  %5 = and i16 %mode, 4095
  %and = zext i16 %5 to i32
  %and4 = and i16 %mode, -4096
  %6 = zext i16 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %and4, label %no_dev [
    i16 8192, label %entry.sw.epilog_crit_edge
    i16 24576, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %entry.sw.epilog_crit_edge
  %type.0 = phi i8 [ 0, %sw.bb5 ], [ 1, %entry.sw.epilog_crit_edge ]
  %call = call i32 @tomoyo_mkdev_perm(i8 noundef zeroext %type.0, ptr noundef nonnull %path, i32 noundef %and, i32 noundef %dev) #8
  br label %cleanup

no_dev:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %and4)
  %switch.selectcmp = icmp eq i16 %and4, -16384
  %switch.select = select i1 %switch.selectcmp, i8 3, i8 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %and4)
  %switch.selectcmp21 = icmp eq i16 %and4, 4096
  %switch.select22 = select i1 %switch.selectcmp21, i8 2, i8 %switch.select
  %call13 = call i32 @tomoyo_path_number_perm(i8 noundef zeroext %switch.select22, ptr noundef nonnull %path, i32 noundef %and) #8
  br label %cleanup

cleanup:                                          ; preds = %no_dev, %sw.epilog
  %retval.0 = phi i32 [ %call13, %no_dev ], [ %call, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_link(ptr noundef %old_dentry, ptr nocapture noundef readonly %new_dir, ptr noundef %new_dentry) #0 align 64 {
entry:
  %path1 = alloca %struct.path, align 4
  %path2 = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path1) #8
  %0 = getelementptr inbounds %struct.path, ptr %path1, i32 0, i32 1
  %1 = ptrtoint ptr %new_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %new_dir, align 4
  %3 = ptrtoint ptr %path1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %path1, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %old_dentry, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path2) #8
  %5 = getelementptr inbounds %struct.path, ptr %path2, i32 0, i32 1
  %6 = ptrtoint ptr %path2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %path2, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %new_dentry, ptr %5, align 4
  %call = call i32 @tomoyo_path2_perm(i8 noundef zeroext 0, ptr noundef nonnull %path1, ptr noundef nonnull %path2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_rename(ptr nocapture noundef readonly %old_parent, ptr noundef %old_dentry, ptr nocapture noundef readonly %new_parent, ptr noundef %new_dentry) #0 align 64 {
entry:
  %path1 = alloca %struct.path, align 4
  %path2 = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path1) #8
  %0 = getelementptr inbounds %struct.path, ptr %path1, i32 0, i32 1
  %1 = ptrtoint ptr %old_parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %old_parent, align 4
  %3 = ptrtoint ptr %path1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %path1, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %old_dentry, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path2) #8
  %5 = getelementptr inbounds %struct.path, ptr %path2, i32 0, i32 1
  %6 = ptrtoint ptr %new_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_parent, align 4
  %8 = ptrtoint ptr %path2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %path2, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %new_dentry, ptr %5, align 4
  %call = call i32 @tomoyo_path2_perm(i8 noundef zeroext 1, ptr noundef nonnull %path1, ptr noundef nonnull %path2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_inode_getattr(ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tomoyo_path_perm(i8 noundef zeroext 5, ptr noundef %path, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_file_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %call = tail call i32 @tomoyo_path_number_perm(i8 noundef zeroext 4, ptr noundef %f_path, i32 noundef %cmd) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_chmod(ptr noundef %path, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %mode, 4095
  %and = zext i16 %0 to i32
  %call = tail call i32 @tomoyo_path_number_perm(i8 noundef zeroext 5, ptr noundef %path, i32 noundef %and) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_chown(ptr noundef %path, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %uid.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp.i.not = icmp eq i32 %uid.coerce.fca.0.extract.i.i, -1
  br i1 %cmp.i.not, label %entry.land.lhs.true_crit_edge, label %if.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %uid.coerce) #8
  %call5 = tail call i32 @tomoyo_path_number_perm(i8 noundef zeroext 6, ptr noundef %path, i32 noundef %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %gid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %gid.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp.i24.not = icmp eq i32 %gid.coerce.fca.0.extract.i.i, -1
  br i1 %cmp.i24.not, label %land.lhs.true.if.end12_crit_edge, label %if.then8

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %gid.coerce) #8
  %call11 = tail call i32 @tomoyo_path_number_perm(i8 noundef zeroext 7, ptr noundef %path, i32 noundef %call10) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %error.1 = phi i32 [ %call5, %if.end.if.end12_crit_edge ], [ %call11, %if.then8 ], [ 0, %land.lhs.true.if.end12_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_path_chroot(ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tomoyo_path_perm(i8 noundef zeroext 9, ptr noundef %path, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_sb_mount(ptr noundef %dev_name, ptr noundef %path, ptr noundef %type, i32 noundef %flags, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tomoyo_mount_permission(ptr noundef %dev_name, ptr noundef %path, ptr noundef %type, i32 noundef %flags, ptr noundef %data) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_sb_umount(ptr noundef %mnt, i32 noundef %flags) #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mnt, ptr %path, align 4
  %2 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mnt, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %0, align 4
  %call = call i32 @tomoyo_path_perm(i8 noundef zeroext 10, ptr noundef nonnull %path, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_sb_pivotroot(ptr noundef %old_path, ptr noundef %new_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tomoyo_path2_perm(i8 noundef zeroext 2, ptr noundef %new_path, ptr noundef %old_path) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_socket_bind(ptr noundef %sock, ptr noundef %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tomoyo_socket_bind_permission(ptr noundef %sock, ptr noundef %addr, i32 noundef %addr_len) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_socket_connect(ptr noundef %sock, ptr noundef %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tomoyo_socket_connect_permission(ptr noundef %sock, ptr noundef %addr, i32 noundef %addr_len) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_socket_listen(ptr noundef %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tomoyo_socket_listen_permission(ptr noundef %sock) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_socket_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tomoyo_socket_sendmsg_permission(ptr noundef %sock, ptr noundef %msg, i32 noundef %size) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_find_next_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_check_open_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_path_perm(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_path_number_perm(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_mkdev_perm(i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_path2_perm(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_mount_permission(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_socket_bind_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_socket_connect_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_socket_listen_permission(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_socket_sendmsg_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !19, !20, !21, !22, !24, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @tomoyo_blob_sizes, !1, !"tomoyo_blob_sizes", i1 false, i1 false}
!1 = !{!"../security/tomoyo/tomoyo.c", i32 481, i32 23}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/tomoyo/tomoyo.c", i32 562, i32 1}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @tomoyo_ss, !3, !"tomoyo_ss", i1 false, i1 false}
!8 = !{ptr @tomoyo_enabled, !9, !"tomoyo_enabled", i1 false, i1 false}
!9 = !{!"../security/tomoyo/tomoyo.c", i32 564, i32 5}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/tomoyo/tomoyo.c", i32 587, i32 10}
!12 = !{ptr @__lsm_tomoyo, !13, !"__lsm_tomoyo", i1 false, i1 false}
!13 = !{!"../security/tomoyo/tomoyo.c", i32 586, i32 1}
!14 = !{ptr @__pcpu_unique_tomoyo_ss_srcu_data, !3, !"__pcpu_unique_tomoyo_ss_srcu_data", i1 false, i1 false}
!15 = !{ptr @tomoyo_ss_srcu_data, !3, !"tomoyo_ss_srcu_data", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/tomoyo/tomoyo.c", i32 577, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tomoyo_init._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @tomoyo_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tomoyo_hooks, !23, !"tomoyo_hooks", i1 false, i1 false}
!23 = !{!"../security/tomoyo/tomoyo.c", i32 528, i32 34}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148486737, i64 2148486763, i64 2148486792, i64 2148486826, i64 2148486857, i64 2148486880}
!38 = !{i64 2148484272, i64 2148484298, i64 2148484327, i64 2148484361, i64 2148484392, i64 2148484415}
!39 = !{!"branch_weights", i32 2000, i32 1}
