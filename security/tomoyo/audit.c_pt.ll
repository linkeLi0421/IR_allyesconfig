; ModuleID = '/llk/IR_all_yes/security/tomoyo/audit.c_pt.bc'
source_filename = "../security/tomoyo/audit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tomoyo_time = type { i16, i8, i8, i8, i8, i8 }
%struct.tomoyo_request_info = type { ptr, ptr, ptr, %union.anon.130, ptr, i8, i8, i8, i8, i8, i8 }
%union.anon.130 = type { %struct.anon.133 }
%struct.anon.133 = type { ptr, i32, i32, i32, i8 }
%struct.tomoyo_domain_info = type { %struct.list_head, %struct.list_head, ptr, ptr, [8 x i32], i8, i8, [2 x i8], %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.42 }
%struct.llist_node = type { ptr }
%union.anon.42 = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.tomoyo_obj_info = type { i8, [4 x i8], %struct.path, %struct.path, [4 x %struct.tomoyo_mini_stat], ptr }
%struct.path = type { ptr, ptr }
%struct.tomoyo_mini_stat = type { %struct.kuid_t, %struct.kgid_t, i32, i16, i32, i32 }
%struct.tomoyo_execve = type { %struct.tomoyo_request_info, %struct.tomoyo_obj_info, ptr, ptr, %struct.tomoyo_page_dump, ptr }
%struct.tomoyo_page_dump = type { ptr, ptr }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.file = type { %union.anon.140, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.140 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.tomoyo_profile = type { ptr, ptr, ptr, ptr, %struct.tomoyo_preference, i8, [42 x i8], [2 x i32] }
%struct.tomoyo_preference = type { i32, i8, i8, i8 }
%struct.tomoyo_acl_info = type <{ %struct.list_head, ptr, i8, i8 }>
%struct.tomoyo_condition = type { %struct.tomoyo_shared_acl_head, i32, i16, i16, i16, i16, i16, i8, ptr }
%struct.tomoyo_shared_acl_head = type { %struct.list_head, %struct.atomic_t }
%struct.tomoyo_log = type { %struct.list_head, ptr, i32 }
%struct.__va_list = type { ptr }
%struct.tomoyo_io_buffer = type { ptr, ptr, ptr, %struct.mutex, ptr, i32, %struct.anon.156, %struct.anon.157, ptr, i32, ptr, i32, i32, i8, %struct.list_head }
%struct.anon.156 = type { ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [64 x ptr] }
%struct.anon.157 = type { ptr, ptr, i32, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c" exec={ realpath=\22%s\22 argc=%d envc=%d %s }\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" symlink.target=\22%s\22\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A%s\0A\00", [27 x i8] zeroinitializer }, align 32
@tomoyo_log_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@tomoyo_memory_quota = external dso_local local_unnamed_addr global [3 x i32], align 4
@tomoyo_memory_used = external dso_local local_unnamed_addr global [3 x i32], align 4
@tomoyo_log = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tomoyo_log, ptr @tomoyo_log }, [24 x i8] zeroinitializer }, align 32
@tomoyo_log_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tomoyo_log_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @tomoyo_log_wait, i64 44), ptr getelementptr (i8, ptr @tomoyo_log_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [166 x i8], [58 x i8] } { [166 x i8] c"#%04u/%02u/%02u %02u:%02u:%02u# profile=%u mode=%s granted=%s (global-pid=%u) task={ pid=%u ppid=%u uid=%u gid=%u euid=%u egid=%u suid=%u sgid=%u fsuid=%u fsgid=%u }\00", [58 x i8] zeroinitializer }, align 32
@tomoyo_mode = external dso_local local_unnamed_addr constant [4 x ptr], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" path%u.parent={ uid=%u gid=%u ino=%lu perm=0%o }\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c" path%u={ uid=%u gid=%u ino=%lu major=%u minor=%u perm=0%o type=%s\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" dev_major=%u dev_minor=%u\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" }\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tomoyo_sys_getppid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/tomoyo/common.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tomoyo_condition_keyword = external dso_local local_unnamed_addr constant [59 x ptr], align 4
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"argv[]={ \00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"} envp[]={ \00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"argv[]={ ... } envp[]= { ... }\00", [33 x i8] zeroinitializer }, align 32
@tomoyo_index2category = external dso_local local_unnamed_addr constant [39 x i8], align 1
@tomoyo_policy_loaded = external dso_local local_unnamed_addr global i8, align 1
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tomoyo_log_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tomoyo_log_wait.lock\00", [43 x i8] zeroinitializer }, align 32
@switch.table.tomoyo_init_log = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 14), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 18), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 17), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 14), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 16), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 14), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 15), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 14), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 14), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 14), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 13), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 14), ptr getelementptr inbounds ([59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 12)], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 279, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 284, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 287, i32 41 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 289, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"tomoyo_log_lock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"tomoyo_log\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 309, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"tomoyo_log_count\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 315, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"tomoyo_log_wait\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 166, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 198, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 207, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 218, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 222, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"../security/tomoyo/common.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 1139, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 695, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 723, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 137, i32 9 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 38, i32 48 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 41, i32 15 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 107, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 312, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [27 x i8] c"../security/tomoyo/audit.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 299, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [29 x i8] c"switch.table.tomoyo_init_log\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tomoyo_log_lock, ptr @tomoyo_log, ptr @tomoyo_log_count, ptr @tomoyo_log_wait, ptr @.str.4, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @switch.table.tomoyo_init_log], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_log_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_log to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_log_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_log_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 166, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tomoyo_init_log to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_init_log(ptr nocapture noundef readonly %r, i32 noundef %len, ptr nocapture noundef readonly %fmt, [1 x i32] %args.coerce) local_unnamed_addr #0 align 64 {
entry:
  %stamp.i = alloca %struct.tomoyo_time, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %domainname1 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %domainname1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domainname1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stamp.i) #10
  %6 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %stamp.i, align 8, !annotation !79
  %7 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid.i.i, align 8
  %13 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %r, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3136, i32 noundef 4096) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.tomoyo_print_header.exit.thread_crit_edge, label %if.end.i

entry.tomoyo_print_header.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tomoyo_print_header.exit.thread

if.end.i:                                         ; preds = %entry
  %call4.i = tail call i64 @ktime_get_real_seconds() #10
  call void @tomoyo_convert_time(i64 noundef %call4.i, ptr noundef nonnull %stamp.i) #10
  %16 = ptrtoint ptr %stamp.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %stamp.i, align 8
  %conv.i = zext i16 %17 to i32
  %month.i = getelementptr inbounds %struct.tomoyo_time, ptr %stamp.i, i32 0, i32 1
  %18 = ptrtoint ptr %month.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %month.i, align 2
  %conv5.i = zext i8 %19 to i32
  %day.i = getelementptr inbounds %struct.tomoyo_time, ptr %stamp.i, i32 0, i32 2
  %20 = ptrtoint ptr %day.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %day.i, align 1
  %conv6.i = zext i8 %21 to i32
  %hour.i = getelementptr inbounds %struct.tomoyo_time, ptr %stamp.i, i32 0, i32 3
  %22 = ptrtoint ptr %hour.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hour.i, align 4
  %conv7.i = zext i8 %23 to i32
  %min.i = getelementptr inbounds %struct.tomoyo_time, ptr %stamp.i, i32 0, i32 4
  %24 = ptrtoint ptr %min.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %min.i, align 1
  %conv8.i = zext i8 %25 to i32
  %sec.i = getelementptr inbounds %struct.tomoyo_time, ptr %stamp.i, i32 0, i32 5
  %26 = ptrtoint ptr %sec.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sec.i, align 2
  %conv9.i = zext i8 %27 to i32
  %profile.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 8
  %28 = ptrtoint ptr %profile.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %profile.i, align 1
  %conv10.i = zext i8 %29 to i32
  %mode.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 9
  %30 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode.i, align 4
  %idxprom.i = zext i8 %31 to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr @tomoyo_mode, i32 0, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %granted.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 6
  %34 = ptrtoint ptr %granted.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %granted.i, align 1, !range !80
  %36 = zext i8 %35 to i32
  %call13.i = call ptr @tomoyo_yesno(i32 noundef %36) #10
  %37 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i = call i32 @__task_pid_nr_ns(ptr noundef %40, i32 noundef 1, ptr noundef null) #10
  %41 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i235.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i235.i, label %if.end.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.rcu_read_lock.exit.i.i_crit_edge
  %45 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i236.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i236.i to ptr
  %task.i237.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i237.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i237.i, align 8
  %real_parent.i.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 71
  %49 = ptrtoint ptr %real_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %real_parent.i.i, align 4
  %call2.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @tomoyo_sys_getppid.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tomoyo_sys_getppid.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1139, ptr noundef nonnull @.str.17) #10
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge
  %call.i12.i.i = call i32 @__task_pid_nr_ns(ptr noundef %50, i32 noundef 1, ptr noundef null) #10
  %call.i13.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i13.i.i, label %do.end8.i.i.tomoyo_sys_getppid.exit.i_crit_edge, label %land.lhs.true.i16.i.i

do.end8.i.i.tomoyo_sys_getppid.exit.i_crit_edge:  ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tomoyo_sys_getppid.exit.i

land.lhs.true.i16.i.i:                            ; preds = %do.end8.i.i
  %call1.i14.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i.i)
  %tobool.not.i15.i.i = icmp eq i32 %call1.i14.i.i, 0
  br i1 %tobool.not.i15.i.i, label %land.lhs.true.i16.i.i.tomoyo_sys_getppid.exit.i_crit_edge, label %land.lhs.true2.i18.i.i

land.lhs.true.i16.i.i.tomoyo_sys_getppid.exit.i_crit_edge: ; preds = %land.lhs.true.i16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tomoyo_sys_getppid.exit.i

land.lhs.true2.i18.i.i:                           ; preds = %land.lhs.true.i16.i.i
  %.b4.i17.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17.i.i, label %land.lhs.true2.i18.i.i.tomoyo_sys_getppid.exit.i_crit_edge, label %if.then.i19.i.i

land.lhs.true2.i18.i.i.tomoyo_sys_getppid.exit.i_crit_edge: ; preds = %land.lhs.true2.i18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tomoyo_sys_getppid.exit.i

if.then.i19.i.i:                                  ; preds = %land.lhs.true2.i18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #10
  br label %tomoyo_sys_getppid.exit.i

tomoyo_sys_getppid.exit.i:                        ; preds = %if.then.i19.i.i, %land.lhs.true2.i18.i.i.tomoyo_sys_getppid.exit.i_crit_edge, %land.lhs.true.i16.i.i.tomoyo_sys_getppid.exit.i_crit_edge, %do.end8.i.i.tomoyo_sys_getppid.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %51 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i20.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i20.i.i to ptr
  %preempt_count.i.i.i.i21.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i21.i.i, align 4
  %sub.i.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i21.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %55 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 99
  %57 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cred.i, align 16
  %uid.i = getelementptr inbounds %struct.cred, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %uid.i, align 4
  %.fca.0.insert198.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call18.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert198.i) #10
  %60 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i, align 8
  %cred26.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 99
  %62 = ptrtoint ptr %cred26.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cred26.i, align 16
  %gid.i = getelementptr inbounds %struct.cred, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %agg.tmp19.sroa.0.0.copyload.i = load i32, ptr %gid.i, align 4
  %.fca.0.insert197.i = insertvalue [1 x i32] poison, i32 %agg.tmp19.sroa.0.0.copyload.i, 0
  %call28.i = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert197.i) #10
  %65 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i, align 8
  %cred36.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 99
  %67 = ptrtoint ptr %cred36.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cred36.i, align 16
  %euid.i = getelementptr inbounds %struct.cred, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %agg.tmp29.sroa.0.0.copyload.i = load i32, ptr %euid.i, align 4
  %.fca.0.insert196.i = insertvalue [1 x i32] poison, i32 %agg.tmp29.sroa.0.0.copyload.i, 0
  %call38.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert196.i) #10
  %70 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i, align 8
  %cred46.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 99
  %72 = ptrtoint ptr %cred46.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cred46.i, align 16
  %egid.i = getelementptr inbounds %struct.cred, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %egid.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %agg.tmp39.sroa.0.0.copyload.i = load i32, ptr %egid.i, align 4
  %.fca.0.insert195.i = insertvalue [1 x i32] poison, i32 %agg.tmp39.sroa.0.0.copyload.i, 0
  %call48.i = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert195.i) #10
  %75 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task.i, align 8
  %cred56.i = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 99
  %77 = ptrtoint ptr %cred56.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cred56.i, align 16
  %suid.i = getelementptr inbounds %struct.cred, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %suid.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %agg.tmp49.sroa.0.0.copyload.i = load i32, ptr %suid.i, align 4
  %.fca.0.insert194.i = insertvalue [1 x i32] poison, i32 %agg.tmp49.sroa.0.0.copyload.i, 0
  %call58.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert194.i) #10
  %80 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task.i, align 8
  %cred66.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 99
  %82 = ptrtoint ptr %cred66.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cred66.i, align 16
  %sgid.i = getelementptr inbounds %struct.cred, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %sgid.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %agg.tmp59.sroa.0.0.copyload.i = load i32, ptr %sgid.i, align 4
  %.fca.0.insert193.i = insertvalue [1 x i32] poison, i32 %agg.tmp59.sroa.0.0.copyload.i, 0
  %call68.i = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert193.i) #10
  %85 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i, align 8
  %cred76.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 99
  %87 = ptrtoint ptr %cred76.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cred76.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %88, i32 0, i32 10
  %89 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %agg.tmp69.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert192.i = insertvalue [1 x i32] poison, i32 %agg.tmp69.sroa.0.0.copyload.i, 0
  %call78.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert192.i) #10
  %90 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task.i, align 8
  %cred86.i = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 99
  %92 = ptrtoint ptr %cred86.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cred86.i, align 16
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %agg.tmp79.sroa.0.0.copyload.i = load i32, ptr %fsgid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp79.sroa.0.0.copyload.i, 0
  %call88.i = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #10
  %call89.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4095, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %conv10.i, ptr noundef %33, ptr noundef %call13.i, i32 noundef %12, i32 noundef %call.i.i.i, i32 noundef %call.i12.i.i, i32 noundef %call18.i, i32 noundef %call28.i, i32 noundef %call38.i, i32 noundef %call48.i, i32 noundef %call58.i, i32 noundef %call68.i, i32 noundef %call78.i, i32 noundef %call88.i) #10
  %tobool90.not.i = icmp eq ptr %14, null
  br i1 %tobool90.not.i, label %tomoyo_sys_getppid.exit.i.no_obj_info.i_crit_edge, label %if.end92.i

tomoyo_sys_getppid.exit.i.no_obj_info.i_crit_edge: ; preds = %tomoyo_sys_getppid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_obj_info.i

if.end92.i:                                       ; preds = %tomoyo_sys_getppid.exit.i
  %95 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %14, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool93.not.i = icmp eq i8 %96, 0
  br i1 %tobool93.not.i, label %if.then94.i, label %if.end92.i.for.body.i.preheader_crit_edge

if.end92.i.for.body.i.preheader_crit_edge:        ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.then94.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @tomoyo_get_attributes(ptr noundef nonnull %14) #10
  %97 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %14, align 4
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then94.i, %if.end92.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %pos.0239.i = phi i32 [ %pos.2.i, %cleanup.i.for.body.i_crit_edge ], [ %call89.i, %for.body.i.preheader ]
  %arrayidx101.i = getelementptr %struct.tomoyo_obj_info, ptr %14, i32 0, i32 1, i32 %indvars.iv.i
  %98 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx101.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool102.not.i = icmp eq i8 %99, 0
  br i1 %tobool102.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end104.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end104.i:                                      ; preds = %for.body.i
  %arrayidx107.i = getelementptr %struct.tomoyo_obj_info, ptr %14, i32 0, i32 4, i32 %indvars.iv.i
  %mode109.i = getelementptr %struct.tomoyo_obj_info, ptr %14, i32 0, i32 4, i32 %indvars.iv.i, i32 3
  %and.i = and i32 %indvars.iv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool111.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool111.not.i, label %if.end125.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 %pos.0239.i
  %sub.i = sub i32 4095, %pos.0239.i
  %100 = lshr i32 %indvars.iv.i, 1
  %add.i = add nuw nsw i32 %100, 1
  %101 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.unpack233.i = load i32, ptr %arrayidx107.i, align 4
  %102 = insertvalue [1 x i32] undef, i32 %.unpack233.i, 0
  %call116.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %102) #10
  %gid117.i = getelementptr %struct.tomoyo_obj_info, ptr %14, i32 0, i32 4, i32 %indvars.iv.i, i32 1
  %103 = ptrtoint ptr %gid117.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.unpack234.i = load i32, ptr %gid117.i, align 4
  %104 = insertvalue [1 x i32] undef, i32 %.unpack234.i, 0
  %call119.i = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %104) #10
  %ino.i = getelementptr %struct.tomoyo_obj_info, ptr %14, i32 0, i32 4, i32 %indvars.iv.i, i32 2
  %105 = ptrtoint ptr %ino.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ino.i, align 4
  %107 = ptrtoint ptr %mode109.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %mode109.i, align 4
  %109 = and i16 %108, 4095
  %and122.i = zext i16 %109 to i32
  %call123.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.12, i32 noundef %add.i, i32 noundef %call116.i, i32 noundef %call119.i, i32 noundef %106, i32 noundef %and122.i) #10
  %add124.i = add i32 %call123.i, %pos.0239.i
  br label %cleanup.i

if.end125.i:                                      ; preds = %if.end104.i
  %110 = ptrtoint ptr %mode109.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %mode109.i, align 4
  %dev108.i = getelementptr %struct.tomoyo_obj_info, ptr %14, i32 0, i32 4, i32 %indvars.iv.i, i32 4
  %112 = ptrtoint ptr %dev108.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dev108.i, align 4
  %add.ptr126.i = getelementptr i8, ptr %call7.i.i, i32 %pos.0239.i
  %sub127.i = sub i32 4095, %pos.0239.i
  %114 = lshr i32 %indvars.iv.i, 1
  %add130.i = add nuw nsw i32 %114, 1
  %115 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %.unpack.i = load i32, ptr %arrayidx107.i, align 4
  %116 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call133.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %116) #10
  %gid134.i = getelementptr %struct.tomoyo_obj_info, ptr %14, i32 0, i32 4, i32 %indvars.iv.i, i32 1
  %117 = ptrtoint ptr %gid134.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.unpack232.i = load i32, ptr %gid134.i, align 4
  %118 = insertvalue [1 x i32] undef, i32 %.unpack232.i, 0
  %call136.i = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %118) #10
  %ino137.i = getelementptr %struct.tomoyo_obj_info, ptr %14, i32 0, i32 4, i32 %indvars.iv.i, i32 2
  %119 = ptrtoint ptr %ino137.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ino137.i, align 4
  %shr138.i = lshr i32 %113, 20
  %and139.i = and i32 %113, 1048575
  %121 = and i16 %111, 4095
  %and141.i = zext i16 %121 to i32
  %122 = lshr i16 %111, 12
  %123 = zext i16 %122 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %111)
  %124 = icmp ult i16 %111, -12288
  br i1 %124, label %switch.hole_check, label %if.end125.i.tomoyo_filetype.exit.i_crit_edge

if.end125.i.tomoyo_filetype.exit.i_crit_edge:     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tomoyo_filetype.exit.i

switch.hole_check:                                ; preds = %if.end125.i
  %switch.shifted = lshr i16 5463, %122
  %125 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %switch.lobit.not = icmp eq i16 %125, 0
  br i1 %switch.lobit.not, label %switch.hole_check.tomoyo_filetype.exit.i_crit_edge, label %switch.lookup

switch.hole_check.tomoyo_filetype.exit.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %tomoyo_filetype.exit.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.tomoyo_init_log, i32 0, i32 %123
  %126 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %126)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %127 = ptrtoint ptr %switch.load to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %switch.load, align 4
  br label %tomoyo_filetype.exit.i

tomoyo_filetype.exit.i:                           ; preds = %switch.lookup, %switch.hole_check.tomoyo_filetype.exit.i_crit_edge, %if.end125.i.tomoyo_filetype.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.21, %if.end125.i.tomoyo_filetype.exit.i_crit_edge ], [ %128, %switch.lookup ], [ @.str.21, %switch.hole_check.tomoyo_filetype.exit.i_crit_edge ]
  %call143.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr126.i, i32 noundef %sub127.i, ptr noundef nonnull @.str.13, i32 noundef %add130.i, i32 noundef %call133.i, i32 noundef %call136.i, i32 noundef %120, i32 noundef %shr138.i, i32 noundef %and139.i, i32 noundef %and141.i, ptr noundef %retval.0.i.i) #10
  %add144.i = add i32 %call143.i, %pos.0239.i
  %and146.i = and i16 %111, -4096
  %129 = zext i16 %and146.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values)
  switch i16 %and146.i, label %tomoyo_filetype.exit.i.if.end160.i_crit_edge [
    i16 8192, label %tomoyo_filetype.exit.i.if.then153.i_crit_edge
    i16 24576, label %tomoyo_filetype.exit.i.if.then153.i_crit_edge154
  ]

tomoyo_filetype.exit.i.if.then153.i_crit_edge154: ; preds = %tomoyo_filetype.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then153.i

tomoyo_filetype.exit.i.if.then153.i_crit_edge:    ; preds = %tomoyo_filetype.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then153.i

tomoyo_filetype.exit.i.if.end160.i_crit_edge:     ; preds = %tomoyo_filetype.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160.i

if.then153.i:                                     ; preds = %tomoyo_filetype.exit.i.if.then153.i_crit_edge, %tomoyo_filetype.exit.i.if.then153.i_crit_edge154
  %rdev.i = getelementptr %struct.tomoyo_obj_info, ptr %14, i32 0, i32 4, i32 %indvars.iv.i, i32 5
  %130 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rdev.i, align 4
  %add.ptr154.i = getelementptr i8, ptr %call7.i.i, i32 %add144.i
  %sub155.i = sub i32 4095, %add144.i
  %shr156.i = lshr i32 %131, 20
  %and157.i = and i32 %131, 1048575
  %call158.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr154.i, i32 noundef %sub155.i, ptr noundef nonnull @.str.14, i32 noundef %shr156.i, i32 noundef %and157.i) #10
  %add159.i = add i32 %call158.i, %add144.i
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then153.i, %tomoyo_filetype.exit.i.if.end160.i_crit_edge
  %pos.1.i = phi i32 [ %add159.i, %if.then153.i ], [ %add144.i, %tomoyo_filetype.exit.i.if.end160.i_crit_edge ]
  %add.ptr161.i = getelementptr i8, ptr %call7.i.i, i32 %pos.1.i
  %sub162.i = sub i32 4095, %pos.1.i
  %call163.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr161.i, i32 noundef %sub162.i, ptr noundef nonnull @.str.15) #10
  %add164.i = add i32 %call163.i, %pos.1.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end160.i, %if.then112.i, %for.body.i.cleanup.i_crit_edge
  %pos.2.i = phi i32 [ %add124.i, %if.then112.i ], [ %add164.i, %if.end160.i ], [ %pos.0239.i, %for.body.i.cleanup.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %cleanup.i.no_obj_info.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup.i.no_obj_info.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_obj_info.i

no_obj_info.i:                                    ; preds = %cleanup.i.no_obj_info.i_crit_edge, %tomoyo_sys_getppid.exit.i.no_obj_info.i_crit_edge
  %pos.3.i = phi i32 [ %call89.i, %tomoyo_sys_getppid.exit.i.no_obj_info.i_crit_edge ], [ %pos.2.i, %cleanup.i.no_obj_info.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %pos.3.i)
  %cmp167.i = icmp slt i32 %pos.3.i, 4095
  br i1 %cmp167.i, label %tomoyo_print_header.exit, label %if.end170.i

if.end170.i:                                      ; preds = %no_obj_info.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %tomoyo_print_header.exit.thread

tomoyo_print_header.exit.thread:                  ; preds = %if.end170.i, %entry.tomoyo_print_header.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stamp.i) #10
  br label %cleanup66

tomoyo_print_header.exit:                         ; preds = %no_obj_info.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stamp.i) #10
  %call2 = call i32 @strlen(ptr noundef %5) #14
  %call3 = call i32 @strlen(ptr noundef nonnull %call7.i.i) #14
  %add = add i32 %len, 10
  %add4 = add i32 %add, %call2
  %add5 = add i32 %add4, %call3
  %ee = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 1
  %132 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ee, align 4
  %tobool6.not = icmp eq ptr %133, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %tomoyo_print_header.exit
  %bprm = getelementptr inbounds %struct.tomoyo_execve, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %bprm to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bprm, align 4
  %file9 = getelementptr inbounds %struct.linux_binprm, ptr %135, i32 0, i32 8
  %136 = ptrtoint ptr %file9 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %file9, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %137, i32 0, i32 1
  %call10 = call ptr @tomoyo_realpath_from_path(ptr noundef %f_path) #10
  %138 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ee, align 4
  %bprm12 = getelementptr inbounds %struct.tomoyo_execve, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %bprm12 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bprm12, align 4
  %dump = getelementptr inbounds %struct.tomoyo_execve, ptr %139, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %142 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %142, i32 noundef 3392, i32 noundef 8192) #13
  %p.i = getelementptr inbounds %struct.linux_binprm, ptr %141, i32 0, i32 3
  %143 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %p.i, align 4
  %rem.i = and i32 %144, 4095
  %argc.i = getelementptr inbounds %struct.linux_binprm, ptr %141, i32 0, i32 12
  %145 = ptrtoint ptr %argc.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %argc.i, align 4
  %envc.i = getelementptr inbounds %struct.linux_binprm, ptr %141, i32 0, i32 13
  %147 = ptrtoint ptr %envc.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %envc.i, align 4
  %tobool.not.i125 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i125, label %if.then7.out_crit_edge, label %if.end.i127

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i127:                                      ; preds = %if.then7
  %149 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.22, i32 10)
  %add.ptr.i126 = getelementptr i8, ptr %call7.i.i.i, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool2.not.i = icmp eq i32 %146, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %if.end.i127.while.body.lr.ph.i_crit_edge

if.end.i127.while.body.lr.ph.i_crit_edge:         ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph.i

if.end5.i:                                        ; preds = %if.end.i127
  %150 = call ptr @memcpy(ptr %add.ptr.i126, ptr @.str.23, i32 11)
  %add.ptr4.i = getelementptr i8, ptr %call7.i.i.i, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool7.not223.i = icmp eq i32 %148, 0
  br i1 %tobool7.not223.i, label %if.end5.i.while.end93.i_crit_edge, label %if.end5.i.while.body.lr.ph.i_crit_edge

if.end5.i.while.body.lr.ph.i_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph.i

if.end5.i.while.end93.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end93.i

while.body.lr.ph.i:                               ; preds = %if.end5.i.while.body.lr.ph.i_crit_edge, %if.end.i127.while.body.lr.ph.i_crit_edge
  %cp.0235.i = phi ptr [ %add.ptr4.i, %if.end5.i.while.body.lr.ph.i_crit_edge ], [ %add.ptr.i126, %if.end.i127.while.body.lr.ph.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.tomoyo_execve, ptr %139, i32 0, i32 4, i32 1
  %add.ptr17.i = getelementptr i8, ptr %call7.i.i.i, i32 8160
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %truncated.0.off0231.i = phi i1 [ false, %while.body.lr.ph.i ], [ %truncated.5.off0.i, %while.end.i.while.body.i_crit_edge ]
  %envp_count.0230.i = phi i32 [ %148, %while.body.lr.ph.i ], [ %envp_count.4.i, %while.end.i.while.body.i_crit_edge ]
  %argv_count.0229.i = phi i32 [ %146, %while.body.lr.ph.i ], [ %argv_count.4.i, %while.end.i.while.body.i_crit_edge ]
  %offset.0228.i = phi i32 [ %rem.i, %while.body.lr.ph.i ], [ 0, %while.end.i.while.body.i_crit_edge ]
  %pos.0227.i = phi i32 [ %144, %while.body.lr.ph.i ], [ %add.i129, %while.end.i.while.body.i_crit_edge ]
  %last_start.0226.i = phi ptr [ %cp.0235.i, %while.body.lr.ph.i ], [ %last_start.5.i, %while.end.i.while.body.i_crit_edge ]
  %cp.1225.i = phi ptr [ %cp.0235.i, %while.body.lr.ph.i ], [ %cp.8.i, %while.end.i.while.body.i_crit_edge ]
  %call8.i = call zeroext i1 @tomoyo_dump_page(ptr noundef %141, i32 noundef %pos.0227.i, ptr noundef %dump) #10
  br i1 %call8.i, label %if.end10.i, label %out.i

if.end10.i:                                       ; preds = %while.body.i
  %sub.i128 = sub nuw nsw i32 4096, %offset.0228.i
  %add.i129 = add i32 %sub.i128, %pos.0227.i
  br label %while.body12.i

while.body12.i:                                   ; preds = %cleanup.i133.while.body12.i_crit_edge, %if.end10.i
  %truncated.1.off0221.i = phi i1 [ %truncated.0.off0231.i, %if.end10.i ], [ %truncated.4.off0.i, %cleanup.i133.while.body12.i_crit_edge ]
  %envp_count.1220.i = phi i32 [ %envp_count.0230.i, %if.end10.i ], [ %envp_count.3.i, %cleanup.i133.while.body12.i_crit_edge ]
  %argv_count.1217.i = phi i32 [ %argv_count.0229.i, %if.end10.i ], [ %argv_count.3.i, %cleanup.i133.while.body12.i_crit_edge ]
  %offset.1216.i = phi i32 [ %offset.0228.i, %if.end10.i ], [ %inc.i, %cleanup.i133.while.body12.i_crit_edge ]
  %last_start.1214.i = phi ptr [ %last_start.0226.i, %if.end10.i ], [ %last_start.4.i, %cleanup.i133.while.body12.i_crit_edge ]
  %cp.2213.i = phi ptr [ %cp.1225.i, %if.end10.i ], [ %cp.7.i, %cleanup.i133.while.body12.i_crit_edge ]
  %151 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data.i, align 4
  %inc.i = add nuw nsw i32 %offset.1216.i, 1
  %arrayidx.i130 = getelementptr i8, ptr %152, i32 %offset.1216.i
  %153 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i130, align 1
  %cmp13.i = icmp eq ptr %cp.2213.i, %last_start.1214.i
  br i1 %cmp13.i, label %if.then14.i, label %while.body12.i.if.end15.i_crit_edge

while.body12.i.if.end15.i_crit_edge:              ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then14.i:                                      ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i = getelementptr i8, ptr %last_start.1214.i, i32 1
  %155 = ptrtoint ptr %last_start.1214.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 34, ptr %last_start.1214.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %while.body12.i.if.end15.i_crit_edge
  %cp.3.i = phi ptr [ %incdec.ptr.i, %if.then14.i ], [ %cp.2213.i, %while.body12.i.if.end15.i_crit_edge ]
  %cmp18.not.i = icmp ult ptr %cp.3.i, %add.ptr17.i
  br i1 %cmp18.not.i, label %if.else.i, label %if.end15.i.if.end58.i_crit_edge

if.end15.i.if.end58.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.else.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %154)
  %cmp20.i = icmp eq i8 %154, 92
  br i1 %cmp20.i, label %if.then22.i, label %if.else25.i

if.then22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr23.i = getelementptr i8, ptr %cp.3.i, i32 1
  %156 = ptrtoint ptr %cp.3.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 92, ptr %cp.3.i, align 1
  %incdec.ptr24.i = getelementptr i8, ptr %cp.3.i, i32 2
  %157 = ptrtoint ptr %incdec.ptr23.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 92, ptr %incdec.ptr23.i, align 1
  br label %cleanup.i133

if.else25.i:                                      ; preds = %if.else.i
  %158 = add i8 %154, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %158)
  %159 = icmp ult i8 %158, 94
  br i1 %159, label %if.then32.i, label %if.else34.i

if.then32.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr33.i = getelementptr i8, ptr %cp.3.i, i32 1
  %160 = ptrtoint ptr %cp.3.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %154, ptr %cp.3.i, align 1
  br label %cleanup.i133

if.else34.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool35.not.i = icmp eq i8 %154, 0
  %incdec.ptr37.i = getelementptr i8, ptr %cp.3.i, i32 1
  br i1 %tobool35.not.i, label %if.end58.thread183.i, label %if.else39.i

if.end58.thread183.i:                             ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %cp.3.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 34, ptr %cp.3.i, align 1
  %incdec.ptr38.i = getelementptr i8, ptr %cp.3.i, i32 2
  %162 = ptrtoint ptr %incdec.ptr37.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 32, ptr %incdec.ptr37.i, align 1
  br label %if.end61.i

if.else39.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %cp.3.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 92, ptr %cp.3.i, align 1
  %164 = lshr i8 %154, 6
  %add42.i = or i8 %164, 48
  %incdec.ptr44.i = getelementptr i8, ptr %cp.3.i, i32 2
  %165 = ptrtoint ptr %incdec.ptr37.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %add42.i, ptr %incdec.ptr37.i, align 1
  %166 = lshr i8 %154, 3
  %and.i131 = and i8 %166, 7
  %add47.i = or i8 %and.i131, 48
  %incdec.ptr49.i = getelementptr i8, ptr %cp.3.i, i32 3
  %167 = ptrtoint ptr %incdec.ptr44.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %add47.i, ptr %incdec.ptr44.i, align 1
  %and51.i = and i8 %154, 7
  %add52.i = or i8 %and51.i, 48
  %incdec.ptr54.i = getelementptr i8, ptr %cp.3.i, i32 4
  %168 = ptrtoint ptr %incdec.ptr49.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %add52.i, ptr %incdec.ptr49.i, align 1
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else39.i, %if.end15.i.if.end58.i_crit_edge
  %cp.4.i = phi ptr [ %incdec.ptr54.i, %if.else39.i ], [ %cp.3.i, %if.end15.i.if.end58.i_crit_edge ]
  %truncated.2.off0.i = phi i1 [ %truncated.1.off0221.i, %if.else39.i ], [ true, %if.end15.i.if.end58.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool59.not.i = icmp eq i8 %154, 0
  br i1 %tobool59.not.i, label %if.end58.i.if.end61.i_crit_edge, label %if.end58.i.cleanup.i133_crit_edge

if.end58.i.cleanup.i133_crit_edge:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i133

if.end58.i.if.end61.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end58.i.if.end61.i_crit_edge, %if.end58.thread183.i
  %truncated.2.off0190.i = phi i1 [ %truncated.1.off0221.i, %if.end58.thread183.i ], [ %truncated.2.off0.i, %if.end58.i.if.end61.i_crit_edge ]
  %last_start.2189.i = phi ptr [ %incdec.ptr38.i, %if.end58.thread183.i ], [ %last_start.1214.i, %if.end58.i.if.end61.i_crit_edge ]
  %cp.4188.i = phi ptr [ %incdec.ptr38.i, %if.end58.thread183.i ], [ %cp.4.i, %if.end58.i.if.end61.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argv_count.1217.i)
  %tobool62.not.i = icmp eq i32 %argv_count.1217.i, 0
  br i1 %tobool62.not.i, label %if.else73.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end61.i
  %dec.i = add i32 %argv_count.1217.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp64.i = icmp eq i32 %dec.i, 0
  br i1 %cmp64.i, label %if.then66.i, label %if.then63.i.cleanup.i133_crit_edge

if.then63.i.cleanup.i133_crit_edge:               ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i133

if.then66.i:                                      ; preds = %if.then63.i
  br i1 %truncated.2.off0190.i, label %if.then68.i, label %if.then66.i.if.end86.i_crit_edge

if.then66.i.if.end86.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

if.then68.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %last_start.2189.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 774778400, ptr %last_start.2189.i, align 1
  %add.ptr69.i = getelementptr i8, ptr %last_start.2189.i, i32 4
  br label %if.end86.i

if.else73.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %envp_count.1220.i)
  %tobool74.not.i = icmp eq i32 %envp_count.1220.i, 0
  br i1 %tobool74.not.i, label %if.else73.i.while.end.i_crit_edge, label %if.then75.i

if.else73.i.while.end.i_crit_edge:                ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.then75.i:                                      ; preds = %if.else73.i
  %dec76.i = add i32 %envp_count.1220.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec76.i)
  %cmp77.i = icmp eq i32 %dec76.i, 0
  br i1 %cmp77.i, label %if.then79.i, label %if.then75.i.cleanup.i133_crit_edge

if.then75.i.cleanup.i133_crit_edge:               ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i133

if.then79.i:                                      ; preds = %if.then75.i
  br i1 %truncated.2.off0190.i, label %if.then81.i, label %if.then79.i.while.end.i_crit_edge

if.then79.i.while.end.i_crit_edge:                ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.then81.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #12
  %170 = ptrtoint ptr %last_start.2189.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 774778400, ptr %last_start.2189.i, align 1
  %add.ptr82.i = getelementptr i8, ptr %last_start.2189.i, i32 4
  br label %while.end.i

if.end86.i:                                       ; preds = %if.then68.i, %if.then66.i.if.end86.i_crit_edge
  %cp.5.i = phi ptr [ %add.ptr69.i, %if.then68.i ], [ %cp.4188.i, %if.then66.i.if.end86.i_crit_edge ]
  %171 = call ptr @memcpy(ptr %cp.5.i, ptr @.str.23, i32 11)
  %add.ptr71.i = getelementptr i8, ptr %cp.5.i, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %envp_count.1220.i)
  %tobool89.not.i = icmp eq i32 %envp_count.1220.i, 0
  br i1 %tobool89.not.i, label %if.end86.i.while.end.i_crit_edge, label %if.end86.i.cleanup.i133_crit_edge

if.end86.i.cleanup.i133_crit_edge:                ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i133

if.end86.i.while.end.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

cleanup.i133:                                     ; preds = %if.end86.i.cleanup.i133_crit_edge, %if.then75.i.cleanup.i133_crit_edge, %if.then63.i.cleanup.i133_crit_edge, %if.end58.i.cleanup.i133_crit_edge, %if.then32.i, %if.then22.i
  %cp.7.i = phi ptr [ %cp.4.i, %if.end58.i.cleanup.i133_crit_edge ], [ %incdec.ptr33.i, %if.then32.i ], [ %incdec.ptr24.i, %if.then22.i ], [ %add.ptr71.i, %if.end86.i.cleanup.i133_crit_edge ], [ %cp.4188.i, %if.then63.i.cleanup.i133_crit_edge ], [ %cp.4188.i, %if.then75.i.cleanup.i133_crit_edge ]
  %last_start.4.i = phi ptr [ %last_start.1214.i, %if.end58.i.cleanup.i133_crit_edge ], [ %last_start.1214.i, %if.then32.i ], [ %last_start.1214.i, %if.then22.i ], [ %add.ptr71.i, %if.end86.i.cleanup.i133_crit_edge ], [ %last_start.2189.i, %if.then63.i.cleanup.i133_crit_edge ], [ %last_start.2189.i, %if.then75.i.cleanup.i133_crit_edge ]
  %argv_count.3.i = phi i32 [ %argv_count.1217.i, %if.end58.i.cleanup.i133_crit_edge ], [ %argv_count.1217.i, %if.then32.i ], [ %argv_count.1217.i, %if.then22.i ], [ 0, %if.end86.i.cleanup.i133_crit_edge ], [ %dec.i, %if.then63.i.cleanup.i133_crit_edge ], [ 0, %if.then75.i.cleanup.i133_crit_edge ]
  %envp_count.3.i = phi i32 [ %envp_count.1220.i, %if.end58.i.cleanup.i133_crit_edge ], [ %envp_count.1220.i, %if.then32.i ], [ %envp_count.1220.i, %if.then22.i ], [ %envp_count.1220.i, %if.end86.i.cleanup.i133_crit_edge ], [ %envp_count.1220.i, %if.then63.i.cleanup.i133_crit_edge ], [ %dec76.i, %if.then75.i.cleanup.i133_crit_edge ]
  %truncated.4.off0.i = phi i1 [ %truncated.2.off0.i, %if.end58.i.cleanup.i133_crit_edge ], [ %truncated.1.off0221.i, %if.then32.i ], [ %truncated.1.off0221.i, %if.then22.i ], [ false, %if.end86.i.cleanup.i133_crit_edge ], [ %truncated.2.off0190.i, %if.then63.i.cleanup.i133_crit_edge ], [ %truncated.2.off0190.i, %if.then75.i.cleanup.i133_crit_edge ]
  %exitcond.not.i132 = icmp eq i32 %inc.i, 4096
  br i1 %exitcond.not.i132, label %cleanup.i133.while.end.i_crit_edge, label %cleanup.i133.while.body12.i_crit_edge

cleanup.i133.while.body12.i_crit_edge:            ; preds = %cleanup.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body12.i

cleanup.i133.while.end.i_crit_edge:               ; preds = %cleanup.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i133.while.end.i_crit_edge, %if.end86.i.while.end.i_crit_edge, %if.then81.i, %if.then79.i.while.end.i_crit_edge, %if.else73.i.while.end.i_crit_edge
  %cp.8.i = phi ptr [ %cp.4188.i, %if.then79.i.while.end.i_crit_edge ], [ %add.ptr82.i, %if.then81.i ], [ %cp.7.i, %cleanup.i133.while.end.i_crit_edge ], [ %add.ptr71.i, %if.end86.i.while.end.i_crit_edge ], [ %cp.4188.i, %if.else73.i.while.end.i_crit_edge ]
  %last_start.5.i = phi ptr [ %last_start.2189.i, %if.then79.i.while.end.i_crit_edge ], [ %last_start.2189.i, %if.then81.i ], [ %last_start.4.i, %cleanup.i133.while.end.i_crit_edge ], [ %add.ptr71.i, %if.end86.i.while.end.i_crit_edge ], [ %last_start.2189.i, %if.else73.i.while.end.i_crit_edge ]
  %argv_count.4.i = phi i32 [ 0, %if.then79.i.while.end.i_crit_edge ], [ 0, %if.then81.i ], [ %argv_count.3.i, %cleanup.i133.while.end.i_crit_edge ], [ 0, %if.end86.i.while.end.i_crit_edge ], [ 0, %if.else73.i.while.end.i_crit_edge ]
  %envp_count.4.i = phi i32 [ 0, %if.then79.i.while.end.i_crit_edge ], [ 0, %if.then81.i ], [ %envp_count.3.i, %cleanup.i133.while.end.i_crit_edge ], [ 0, %if.end86.i.while.end.i_crit_edge ], [ 0, %if.else73.i.while.end.i_crit_edge ]
  %truncated.5.off0.i = phi i1 [ false, %if.then79.i.while.end.i_crit_edge ], [ true, %if.then81.i ], [ %truncated.4.off0.i, %cleanup.i133.while.end.i_crit_edge ], [ false, %if.end86.i.while.end.i_crit_edge ], [ %truncated.2.off0190.i, %if.else73.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argv_count.4.i)
  %tobool6.not.i = icmp eq i32 %argv_count.4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %envp_count.4.i)
  %tobool7.not.i = icmp eq i32 %envp_count.4.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 %tobool7.not.i, i1 false
  br i1 %or.cond.i, label %while.end.i.while.end93.i_crit_edge, label %while.end.i.while.body.i_crit_edge

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i.while.end93.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end93.i

while.end93.i:                                    ; preds = %while.end.i.while.end93.i_crit_edge, %if.end5.i.while.end93.i_crit_edge
  %cp.1.lcssa.i = phi ptr [ %add.ptr4.i, %if.end5.i.while.end93.i_crit_edge ], [ %cp.8.i, %while.end.i.while.end93.i_crit_edge ]
  %incdec.ptr94.i = getelementptr i8, ptr %cp.1.lcssa.i, i32 1
  %172 = ptrtoint ptr %cp.1.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 125, ptr %cp.1.lcssa.i, align 1
  %173 = ptrtoint ptr %incdec.ptr94.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %incdec.ptr94.i, align 1
  br label %tomoyo_print_bprm.exit

out.i:                                            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %174 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.25, i32 31)
  br label %tomoyo_print_bprm.exit

tomoyo_print_bprm.exit:                           ; preds = %out.i, %while.end93.i
  %tobool15.not = icmp eq ptr %call10, null
  br i1 %tobool15.not, label %tomoyo_print_bprm.exit.out_crit_edge, label %cleanup

tomoyo_print_bprm.exit.out_crit_edge:             ; preds = %tomoyo_print_bprm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cleanup:                                          ; preds = %tomoyo_print_bprm.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call i32 @strlen(ptr noundef nonnull %call10) #14
  %call21 = call i32 @strlen(ptr noundef nonnull %call7.i.i.i) #14
  %add20 = add i32 %add5, 80
  %add22 = add i32 %add20, %call19
  %add23 = add i32 %add22, %call21
  br label %if.end35

if.else:                                          ; preds = %tomoyo_print_header.exit
  %175 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %r, align 4
  %tobool24.not = icmp eq ptr %176, null
  br i1 %tobool24.not, label %if.else.if.end35_crit_edge, label %land.lhs.true

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %if.else
  %symlink_target = getelementptr inbounds %struct.tomoyo_obj_info, ptr %176, i32 0, i32 5
  %177 = ptrtoint ptr %symlink_target to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %symlink_target, align 4
  %tobool26.not = icmp eq ptr %178, null
  br i1 %tobool26.not, label %land.lhs.true.if.end35_crit_edge, label %if.then27

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %call31 = call i32 @strlen(ptr noundef %180) #14
  %add32 = add i32 %add5, 18
  %add33 = add i32 %add32, %call31
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %land.lhs.true.if.end35_crit_edge, %if.else.if.end35_crit_edge, %cleanup
  %bprm_info.0 = phi ptr [ %call7.i.i.i, %cleanup ], [ null, %if.then27 ], [ null, %land.lhs.true.if.end35_crit_edge ], [ null, %if.else.if.end35_crit_edge ]
  %realpath.0 = phi ptr [ %call10, %cleanup ], [ null, %if.then27 ], [ null, %land.lhs.true.if.end35_crit_edge ], [ null, %if.else.if.end35_crit_edge ]
  %symlink.0 = phi ptr [ null, %cleanup ], [ %180, %if.then27 ], [ null, %land.lhs.true.if.end35_crit_edge ], [ null, %if.else.if.end35_crit_edge ]
  %len.addr.1 = phi i32 [ %add23, %cleanup ], [ %add33, %if.then27 ], [ %add5, %land.lhs.true.if.end35_crit_edge ], [ %add5, %if.else.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1)
  %tobool.not.i134 = icmp eq i32 %len.addr.1, 0
  br i1 %tobool.not.i134, label %if.end35.if.end8.i.i_crit_edge, label %if.end35.while.cond.i_crit_edge

if.end35.while.cond.i_crit_edge:                  ; preds = %if.end35
  br label %while.cond.i

if.end35.if.end8.i.i_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end35.while.cond.i_crit_edge
  %bsize.0.i = phi i32 [ %shl.i, %while.cond.i.while.cond.i_crit_edge ], [ 32, %if.end35.while.cond.i_crit_edge ]
  %cmp.i = icmp ult i32 %bsize.0.i, %len.addr.1
  %shl.i = shl i32 %bsize.0.i, 1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.if.end8.i.i_crit_edge

while.cond.i.if.end8.i.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.end8.i.i:                                      ; preds = %while.cond.i.if.end8.i.i_crit_edge, %if.end35.if.end8.i.i_crit_edge
  %retval.0.i135 = phi i32 [ 0, %if.end35.if.end8.i.i_crit_edge ], [ %bsize.0.i, %while.cond.i.if.end8.i.i_crit_edge ]
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i135, i32 noundef 3392) #15
  %tobool38.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool38.not, label %if.end8.i.i.out_crit_edge, label %if.end40

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end40:                                         ; preds = %if.end8.i.i
  %dec = add i32 %retval.0.i135, -1
  %call41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i, i32 noundef %dec, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i)
  %tobool42.not = icmp eq ptr %realpath.0, null
  br i1 %tobool42.not, label %if.else49, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ee, align 4
  %bprm46 = getelementptr inbounds %struct.tomoyo_execve, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %bprm46 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bprm46, align 4
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %call41
  %sub = sub i32 %dec, %call41
  %argc = getelementptr inbounds %struct.linux_binprm, ptr %184, i32 0, i32 12
  %185 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %argc, align 4
  %envc = getelementptr inbounds %struct.linux_binprm, ptr %184, i32 0, i32 13
  %187 = ptrtoint ptr %envc to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %envc, align 4
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.1, ptr noundef nonnull %realpath.0, i32 noundef %186, i32 noundef %188, ptr noundef %bprm_info.0)
  %add48 = add i32 %call47, %call41
  br label %if.end57

if.else49:                                        ; preds = %if.end40
  %tobool50.not = icmp eq ptr %symlink.0, null
  br i1 %tobool50.not, label %if.else49.if.end57_crit_edge, label %if.then51

if.else49.if.end57_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then51:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr52 = getelementptr i8, ptr %call9.i.i, i32 %call41
  %sub53 = sub i32 %dec, %call41
  %call54 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.2, ptr noundef nonnull %symlink.0)
  %add55 = add i32 %call54, %call41
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.else49.if.end57_crit_edge, %if.then43
  %pos.0 = phi i32 [ %add48, %if.then43 ], [ %add55, %if.then51 ], [ %call41, %if.else49.if.end57_crit_edge ]
  %add.ptr58 = getelementptr i8, ptr %call9.i.i, i32 %pos.0
  %sub59 = sub i32 %dec, %pos.0
  %call60 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.3, ptr noundef %5)
  %add61 = add i32 %call60, %pos.0
  %add.ptr62 = getelementptr i8, ptr %call9.i.i, i32 %add61
  %sub63 = sub i32 %dec, %add61
  %call65 = call i32 @vsnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef %fmt, [1 x i32] %args.coerce)
  br label %out

out:                                              ; preds = %if.end57, %if.end8.i.i.out_crit_edge, %tomoyo_print_bprm.exit.out_crit_edge, %if.then7.out_crit_edge
  %buf.0 = phi ptr [ %call9.i.i, %if.end57 ], [ null, %if.end8.i.i.out_crit_edge ], [ null, %tomoyo_print_bprm.exit.out_crit_edge ], [ null, %if.then7.out_crit_edge ]
  %bprm_info.1 = phi ptr [ %bprm_info.0, %if.end57 ], [ %bprm_info.0, %if.end8.i.i.out_crit_edge ], [ %call7.i.i.i, %tomoyo_print_bprm.exit.out_crit_edge ], [ null, %if.then7.out_crit_edge ]
  %realpath.1 = phi ptr [ %realpath.0, %if.end57 ], [ %realpath.0, %if.end8.i.i.out_crit_edge ], [ null, %tomoyo_print_bprm.exit.out_crit_edge ], [ %call10, %if.then7.out_crit_edge ]
  call void @kfree(ptr noundef %realpath.1) #10
  call void @kfree(ptr noundef %bprm_info.1) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup66

cleanup66:                                        ; preds = %out, %tomoyo_print_header.exit.thread
  %retval.0 = phi ptr [ %buf.0, %out ], [ null, %tomoyo_print_header.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_realpath_from_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_write_log2(ptr nocapture noundef readonly %r, i32 noundef %len, ptr nocapture noundef readonly %fmt, [1 x i32] %args.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 10
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %matched_acl = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 4
  %2 = ptrtoint ptr %matched_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %matched_acl, align 4
  %granted = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 6
  %4 = ptrtoint ptr %granted to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %granted, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [39 x i8], ptr @tomoyo_index2category, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %add.i = add i8 %7, 39
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_policy_loaded to i32))
  %8 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %entry
  %profile = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 8
  %9 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %profile, align 1
  %domain = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %11 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %domain, align 4
  %ns = getelementptr inbounds %struct.tomoyo_domain_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns, align 4
  %call.i = tail call ptr @tomoyo_profile(ptr noundef %14, i8 noundef zeroext %10) #10
  %15 = load i32, ptr @tomoyo_log_count, align 4
  %pref.i = getelementptr inbounds %struct.tomoyo_profile, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %pref.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pref.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not.i = icmp ult i32 %15, %17
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5.i:                                        ; preds = %if.end.i
  %tobool8.not.i = icmp ne ptr %3, null
  %18 = and i1 %tobool8.not.i, %tobool
  br i1 %18, label %land.lhs.true9.i, label %if.end5.i.if.end22.i_crit_edge

if.end5.i.if.end22.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

land.lhs.true9.i:                                 ; preds = %if.end5.i
  %cond.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %cond.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load ptr, ptr %cond.i, align 1
  %tobool10.not.i = icmp eq ptr %20, null
  br i1 %tobool10.not.i, label %land.lhs.true9.i.if.end22.i_crit_edge, label %land.lhs.true11.i

land.lhs.true9.i.if.end22.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

land.lhs.true11.i:                                ; preds = %land.lhs.true9.i
  %grant_log.i = getelementptr inbounds %struct.tomoyo_condition, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %grant_log.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %grant_log.i, align 2
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %22, label %land.lhs.true11.i.out_crit_edge [
    i8 0, label %land.lhs.true11.i.if.end22.i_crit_edge
    i8 2, label %land.lhs.true11.i.if.end_crit_edge
  ]

land.lhs.true11.i.if.end_crit_edge:               ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true11.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

land.lhs.true11.i.out_crit_edge:                  ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end22.i:                                       ; preds = %land.lhs.true11.i.if.end22.i_crit_edge, %land.lhs.true9.i.if.end22.i_crit_edge, %if.end5.i.if.end22.i_crit_edge
  %arrayidx24.i = getelementptr %struct.tomoyo_profile, ptr %call.i, i32 0, i32 6, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp26.i = icmp eq i8 %25, -1
  br i1 %cmp26.i, label %if.end32.i, label %if.end22.i.if.end37.i_crit_edge

if.end22.i.if.end37.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.end32.i:                                       ; preds = %if.end22.i
  %idxprom30.i = zext i8 %add.i to i32
  %arrayidx31.i = getelementptr %struct.tomoyo_profile, ptr %call.i, i32 0, i32 6, i32 %idxprom30.i
  %26 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp34.i = icmp eq i8 %27, -1
  br i1 %cmp34.i, label %if.then36.i, label %if.end32.i.if.end37.i_crit_edge

if.end32.i.if.end37.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %default_config.i = getelementptr inbounds %struct.tomoyo_profile, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %default_config.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %default_config.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %if.end32.i.if.end37.i_crit_edge, %if.end22.i.if.end37.i_crit_edge
  %mode.1.i = phi i8 [ %29, %if.then36.i ], [ %27, %if.end32.i.if.end37.i_crit_edge ], [ %25, %if.end22.i.if.end37.i_crit_edge ]
  br i1 %tobool, label %if.then39.i, label %tomoyo_get_audit.exit

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode.1.i)
  %tobool41.i = icmp slt i8 %mode.1.i, 0
  br i1 %tobool41.i, label %if.then39.i.if.end_crit_edge, label %if.then39.i.out_crit_edge

if.then39.i.out_crit_edge:                        ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then39.i.if.end_crit_edge:                     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

tomoyo_get_audit.exit:                            ; preds = %if.end37.i
  %30 = and i8 %mode.1.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool45.i.not = icmp eq i8 %30, 0
  br i1 %tobool45.i.not, label %tomoyo_get_audit.exit.out_crit_edge, label %tomoyo_get_audit.exit.if.end_crit_edge

tomoyo_get_audit.exit.if.end_crit_edge:           ; preds = %tomoyo_get_audit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

tomoyo_get_audit.exit.out_crit_edge:              ; preds = %tomoyo_get_audit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %tomoyo_get_audit.exit.if.end_crit_edge, %if.then39.i.if.end_crit_edge, %land.lhs.true11.i.if.end_crit_edge
  %call3 = tail call ptr @tomoyo_init_log(ptr noundef %r, i32 noundef %len, ptr noundef %fmt, [1 x i32] %args.coerce)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3392, i32 noundef 16) #13
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call3) #10
  br label %out

if.end10:                                         ; preds = %if.end6
  %log = getelementptr inbounds %struct.tomoyo_log, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %log to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call3, ptr %log, align 8
  %call11 = tail call i32 @strlen(ptr noundef nonnull %call3) #14
  %add = add i32 %call11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not.i41 = icmp eq i32 %add, 0
  br i1 %tobool.not.i41, label %if.end10.tomoyo_round2.exit_crit_edge, label %if.end10.while.cond.i_crit_edge

if.end10.while.cond.i_crit_edge:                  ; preds = %if.end10
  br label %while.cond.i

if.end10.tomoyo_round2.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %tomoyo_round2.exit

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end10.while.cond.i_crit_edge
  %bsize.0.i = phi i32 [ %shl.i, %while.cond.i.while.cond.i_crit_edge ], [ 32, %if.end10.while.cond.i_crit_edge ]
  %cmp.i = icmp ult i32 %bsize.0.i, %add
  %shl.i = shl i32 %bsize.0.i, 1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.tomoyo_round2.exit_crit_edge

while.cond.i.tomoyo_round2.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tomoyo_round2.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

tomoyo_round2.exit:                               ; preds = %while.cond.i.tomoyo_round2.exit_crit_edge, %if.end10.tomoyo_round2.exit_crit_edge
  %retval.0.i42 = phi i32 [ 0, %if.end10.tomoyo_round2.exit_crit_edge ], [ %bsize.0.i, %while.cond.i.tomoyo_round2.exit_crit_edge ]
  %add14 = add i32 %retval.0.i42, 32
  %size = getelementptr inbounds %struct.tomoyo_log, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add14, ptr %size, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_log_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_quota, i32 0, i32 1) to i32))
  %34 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_quota, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool15.not = icmp eq i32 %34, 0
  br i1 %tobool15.not, label %tomoyo_round2.exit.if.else_crit_edge, label %land.lhs.true

tomoyo_round2.exit.if.else_crit_edge:             ; preds = %tomoyo_round2.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %tomoyo_round2.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 1) to i32))
  %35 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 1), align 4
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size, align 4
  %add17 = add i32 %37, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %34)
  %cmp.not = icmp ult i32 %add17, %34
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.end21

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %tomoyo_round2.exit.if.else_crit_edge
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 1) to i32))
  %40 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 1), align 4
  %add20 = add i32 %40, %39
  store i32 %add20, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 1), align 4
  %41 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tomoyo_log, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %41, ptr noundef nonnull @tomoyo_log) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @tomoyo_log, i32 0, i32 1), align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @tomoyo_log, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else.list_add_tail.exit_crit_edge
  %45 = load i32, ptr @tomoyo_log_count, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr @tomoyo_log_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_log_lock) #10
  tail call void @__wake_up(ptr noundef nonnull @tomoyo_log_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %out

if.end21:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_log_lock) #10
  tail call void @kfree(ptr noundef nonnull %call3) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %out

out:                                              ; preds = %if.end21, %list_add_tail.exit, %if.then9, %if.end.out_crit_edge, %tomoyo_get_audit.exit.out_crit_edge, %if.then39.i.out_crit_edge, %land.lhs.true11.i.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_write_log(ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !79
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %len, i32 noundef 1, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  %add = add i32 %call, 1
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load3 = load i32, ptr %args, align 4
  %.fca.0.insert4 = insertvalue [1 x i32] poison, i32 %.fca.0.load3, 0
  call void @tomoyo_write_log2(ptr noundef %r, i32 noundef %add, ptr noundef %fmt, [1 x i32] %.fca.0.insert4)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_read_log(ptr nocapture noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %w_pos = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %w_pos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %w_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 8
  %2 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_buf, align 4
  tail call void @kfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %read_buf, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_log_lock) #10
  %5 = load volatile ptr, ptr @tomoyo_log, align 4
  %cmp.i.not = icmp eq ptr %5, @tomoyo_log
  br i1 %cmp.i.not, label %if.end4.thread, label %if.then3

if.end4.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_log_lock) #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end.i.i, %if.then3.if.end4_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = load i32, ptr @tomoyo_log_count, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr @tomoyo_log_count, align 4
  %size = getelementptr inbounds %struct.tomoyo_log, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 1) to i32))
  %17 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 1), align 4
  %sub = sub i32 %17, %16
  store i32 %sub, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_log_lock) #10
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %log = getelementptr inbounds %struct.tomoyo_log, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %log, align 4
  %20 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %read_buf, align 4
  %21 = ptrtoint ptr %w_pos to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %w_pos, align 1
  %inc = add i8 %22, 1
  store i8 %inc, ptr %w_pos, align 1
  %idxprom = zext i8 %22 to i32
  %arrayidx = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %19, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.end4.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_poll_log(ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tomoyo_log_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end
  %1 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %2(ptr noundef %file, ptr noundef nonnull @tomoyo_log_wait, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  %3 = load i32, ptr @tomoyo_log_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  %. = select i1 %tobool1.not, i32 0, i32 65
  br label %return

return:                                           ; preds = %poll_wait.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 65, %entry.return_crit_edge ], [ %., %poll_wait.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_convert_time(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_yesno(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_get_attributes(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_dump_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_profile(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/tomoyo/audit.c", i32 279, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/tomoyo/audit.c", i32 284, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/tomoyo/audit.c", i32 287, i32 41}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/tomoyo/audit.c", i32 289, i32 40}
!8 = !{ptr @tomoyo_log_count, !9, !"tomoyo_log_count", i1 false, i1 false}
!9 = !{!"../security/tomoyo/audit.c", i32 315, i32 21}
!10 = distinct !{null, !11, !"tomoyo_buffer_len", i1 false, i1 false}
!11 = !{!"../security/tomoyo/audit.c", i32 155, i32 19}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/tomoyo/audit.c", i32 166, i32 10}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../security/tomoyo/audit.c", i32 171, i32 35}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../security/tomoyo/audit.c", i32 172, i32 35}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../security/tomoyo/audit.c", i32 173, i32 35}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../security/tomoyo/audit.c", i32 174, i32 35}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../security/tomoyo/audit.c", i32 175, i32 35}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../security/tomoyo/audit.c", i32 176, i32 35}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../security/tomoyo/audit.c", i32 177, i32 35}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../security/tomoyo/audit.c", i32 178, i32 35}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/tomoyo/audit.c", i32 198, i32 6}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/tomoyo/audit.c", i32 207, i32 5}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/tomoyo/audit.c", i32 218, i32 6}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/tomoyo/audit.c", i32 222, i32 5}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../security/tomoyo/common.h", i32 1139, i32 22}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../security/tomoyo/audit.c", i32 137, i32 9}
!51 = distinct !{null, !52, !"tomoyo_buffer_len", i1 false, i1 false}
!52 = !{!"../security/tomoyo/audit.c", i32 25, i32 19}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../security/tomoyo/audit.c", i32 38, i32 48}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../security/tomoyo/audit.c", i32 41, i32 15}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/tomoyo/audit.c", i32 80, i32 19}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../security/tomoyo/audit.c", i32 107, i32 4}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../security/tomoyo/audit.c", i32 312, i32 8}
!63 = !{ptr @tomoyo_log_lock, !62, !"tomoyo_log_lock", i1 false, i1 false}
!64 = !{ptr @tomoyo_log, !65, !"tomoyo_log", i1 false, i1 false}
!65 = !{!"../security/tomoyo/audit.c", i32 309, i32 8}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/tomoyo/audit.c", i32 299, i32 8}
!68 = !{ptr @tomoyo_log_wait, !67, !"tomoyo_log_wait", i1 false, i1 false}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i8 0, i8 2}
!81 = !{i64 2150055469}
!82 = !{i64 2150055735}
