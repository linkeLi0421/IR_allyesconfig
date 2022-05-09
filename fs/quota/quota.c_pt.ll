; ModuleID = '/llk/IR_all_yes/fs/quota/quota.c_pt.bc'
source_filename = "../fs/quota/quota.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon, %struct.trace_event, ptr, ptr, %union.anon.3, ptr, i32, i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.3 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.path = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.42 = type { %struct.callback_head }
%struct.quotactl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.if_dqinfo = type { i64, i64, i32, i32 }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.if_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.kqid = type { %union.anon.66, i32 }
%union.anon.66 = type { %struct.kuid_t }
%struct.if_nextdqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.fs_quota_stat = type { i8, i16, i8, %struct.fs_qfilestat, %struct.fs_qfilestat, i32, i32, i32, i32, i16, i16 }
%struct.fs_qfilestat = type { i64, i64, i32 }
%struct.fs_quota_statv = type { i8, i8, i16, i32, %struct.fs_qfilestatv, %struct.fs_qfilestatv, %struct.fs_qfilestatv, i32, i32, i32, i16, i16, i16, i16, i32, [7 x i64] }
%struct.fs_qfilestatv = type { i64, i64, i32, i32 }
%struct.fs_disk_quota = type { i8, i8, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i8, i8, i8, i8, i64, i64, i64, i32, i16, i16, [8 x i8] }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_quotactl\00", [45 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__quotactl = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 4, ptr @types__quotactl, ptr @args__quotactl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__quotactl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__quotactl, i64 20) }, ptr @event_enter__quotactl, ptr @event_exit__quotactl }, align 4
@event_enter__quotactl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__quotactl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__quotactl = internal global ptr @event_enter__quotactl, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_quotactl\00", [46 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__quotactl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__quotactl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__quotactl = internal global ptr @event_exit__quotactl, section "_ftrace_events", align 4
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_quotactl\00", [19 x i8] zeroinitializer }, align 32
@types__quotactl = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@args__quotactl = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__quotactl = internal global ptr @__syscall_meta__quotactl, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_quotactl_fd\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__quotactl_fd = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 4, ptr @types__quotactl_fd, ptr @args__quotactl_fd, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__quotactl_fd, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__quotactl_fd, i64 20) }, ptr @event_enter__quotactl_fd, ptr @event_exit__quotactl_fd }, align 4
@event_enter__quotactl_fd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__quotactl_fd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__quotactl_fd = internal global ptr @event_enter__quotactl_fd, section "_ftrace_events", align 4
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_quotactl_fd\00", [43 x i8] zeroinitializer }, align 32
@event_exit__quotactl_fd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__quotactl_fd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__quotactl_fd = internal global ptr @event_exit__quotactl_fd, section "_ftrace_events", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_quotactl_fd\00", [16 x i8] zeroinitializer }, align 32
@types__quotactl_fd = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.6, ptr @.str.6, ptr @.str.8, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@args__quotactl_fd = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.10, ptr @.str.12, ptr @.str.13], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__quotactl_fd = internal global ptr @__syscall_meta__quotactl_fd, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"special\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/quota/quota.c\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@switch.table.qtype_enforce_flag = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 8, i32 32], [20 x i8] zeroinitializer }, align 32
@switch.table.quota_quotaon = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 8, i32 32], [20 x i8] zeroinitializer }, align 32
@switch.table.quota_quotaoff = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 8, i32 32], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 22529, i64 22530, i64 22531, i64 22533, i64 22535, i64 22536, i64 22537, i64 8388609, i64 8388610, i64 8388611, i64 8388612, i64 8388613]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 22529, i64 22530, i64 8388610, i64 8388611]
@__sancov_gen_cov_switch_values.24 = internal global [10 x i64] [i64 8, i64 32, i64 22531, i64 22533, i64 22535, i64 22536, i64 22537, i64 8388609, i64 8388612, i64 8388613]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 22529, i64 22530, i64 8388610, i64 8388611]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 22529, i64 22530, i64 8388610, i64 8388611]
@__sancov_gen_cov_switch_values.27 = internal global [10 x i64] [i64 8, i64 32, i64 22531, i64 22533, i64 22535, i64 22536, i64 22537, i64 8388609, i64 8388612, i64 8388613]
@__sancov_gen_cov_switch_values.28 = internal global [10 x i64] [i64 8, i64 32, i64 22531, i64 22533, i64 22535, i64 22536, i64 8388609, i64 8388612, i64 8388613, i64 8388615]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [20 x i64] [i64 18, i64 32, i64 22529, i64 22530, i64 22531, i64 22532, i64 22533, i64 22534, i64 22535, i64 22536, i64 22537, i64 8388609, i64 8388610, i64 8388611, i64 8388612, i64 8388613, i64 8388614, i64 8388615, i64 8388616, i64 8388617]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"event_enter__quotactl\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"event_exit__quotactl\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"types__quotactl\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"args__quotactl\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [25 x i8] c"event_enter__quotactl_fd\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"event_exit__quotactl_fd\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"types__quotactl_fd\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"args__quotactl_fd\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 916, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 898, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 174, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [20 x i8] c"../fs/quota/quota.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 972, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [32 x i8] c"switch.table.qtype_enforce_flag\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"switch.table.quota_quotaon\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [28 x i8] c"switch.table.quota_quotaoff\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @__event_enter__quotactl, ptr @__event_enter__quotactl_fd, ptr @__event_exit__quotactl, ptr @__event_exit__quotactl_fd, ptr @__p_syscall_meta__quotactl, ptr @__p_syscall_meta__quotactl_fd, ptr @__syscall_meta__quotactl, ptr @__syscall_meta__quotactl_fd, ptr @event_enter__quotactl, ptr @event_enter__quotactl_fd, ptr @event_exit__quotactl, ptr @event_exit__quotactl_fd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__quotactl, ptr @args__quotactl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__quotactl_fd, ptr @args__quotactl_fd, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.19, ptr @.str.22, ptr @switch.table.qtype_enforce_flag, ptr @switch.table.quota_quotaon, ptr @switch.table.quota_quotaoff], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__quotactl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__quotactl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__quotactl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__quotactl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__quotactl_fd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__quotactl_fd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__quotactl_fd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__quotactl_fd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qtype_enforce_flag to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.quota_quotaon to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.quota_quotaoff to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_quotactl = dso_local alias i32 (i32, ptr, i32, ptr), ptr @__se_sys_quotactl
@sys_quotactl_fd = dso_local alias i32 (i32, i32, i32, ptr), ptr @__se_sys_quotactl_fd

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qtype_enforce_flag(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %0 = icmp ult i32 %type, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qtype_enforce_flag, i32 0, i32 %type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_quotactl(i32 noundef %cmd, i32 noundef %special, i32 noundef %id, i32 noundef %addr) #1 align 64 {
entry:
  %dev.i.i = alloca i32, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %type.addr.i.i = alloca i32, align 4
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %special to ptr
  %1 = inttoptr i32 %addr to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #6
  %2 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !74
  %3 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !74
  %shr.i = lshr i32 %cmd, 8
  %and.i = and i32 %cmd, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 2
  br i1 %cmp.i, label %entry.__do_sys_quotactl.exit_crit_edge, label %if.end.i

entry.__do_sys_quotactl.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_quotactl.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %special)
  %tobool.not.i = icmp eq i32 %special, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end5.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %shr.i)
  %cmp2.i = icmp eq i32 %shr.i, 8388609
  br i1 %cmp2.i, label %if.then3.i, label %if.then1.i.__do_sys_quotactl.exit_crit_edge

if.then1.i.__do_sys_quotactl.exit_crit_edge:      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_quotactl.exit

if.then3.i:                                       ; preds = %if.then1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.addr.i.i) #6
  %5 = ptrtoint ptr %type.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %type.addr.i.i, align 4
  %call.i.i = tail call i32 @security_quotactl(i32 noundef 8388609, i32 noundef %and.i, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then3.i.quota_sync_all.exit.i_crit_edge

if.then3.i.quota_sync_all.exit.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %quota_sync_all.exit.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @iterate_supers(ptr noundef nonnull @quota_sync_one, ptr noundef nonnull %type.addr.i.i) #6
  br label %quota_sync_all.exit.i

quota_sync_all.exit.i:                            ; preds = %if.then.i.i, %if.then3.i.quota_sync_all.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.addr.i.i) #6
  br label %__do_sys_quotactl.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %shr.i)
  %cmp6.i = icmp eq i32 %shr.i, 8388610
  br i1 %cmp6.i, label %if.then7.i, label %if.end5.i.if.end13.i_crit_edge

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i51.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %1, i32 noundef 5, ptr noundef nonnull %path.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool9.not.i = icmp eq i32 %call.i51.i, 0
  %6 = inttoptr i32 %call.i51.i to ptr
  %spec.select.i = select i1 %tobool9.not.i, ptr %path.i, ptr %6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then7.i, %if.end5.i.if.end13.i_crit_edge
  %pathp.0.i = phi ptr [ null, %if.end5.i.if.end13.i_crit_edge ], [ %spec.select.i, %if.then7.i ]
  %call.i52.i = call ptr @getname(ptr noundef nonnull %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev.i.i) #6
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %dev.i.i, align 4, !annotation !74
  %cmp.i.i.i = icmp ugt ptr %call.i52.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end13.i.quotactl_block.exit.i_crit_edge, label %if.end.i.i

if.end13.i.quotactl_block.exit.i_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %quotactl_block.exit.i

if.end.i.i:                                       ; preds = %if.end13.i
  %8 = ptrtoint ptr %call.i52.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i52.i, align 4
  %call3.i.i = call i32 @lookup_bdev(ptr noundef %9, ptr noundef nonnull %dev.i.i) #6
  call void @putname(ptr noundef %call.i52.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i53.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i53.i, label %if.end6.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = inttoptr i32 %call3.i.i to ptr
  br label %quotactl_block.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %11 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %if.end13.fold.split.i.i [
    i32 8388610, label %if.end6.i.i.if.end13.i.i_crit_edge
    i32 8388611, label %if.end6.i.i.if.end13.i.i_crit_edge7
    i32 22529, label %if.end6.i.i.if.end13.i.i_crit_edge8
    i32 22530, label %if.end6.i.i.if.end13.i.i_crit_edge9
    i32 8388612, label %if.end6.i.i._crit_edge
    i32 8388613, label %if.end6.i.i._crit_edge10
    i32 8388609, label %if.end6.i.i._crit_edge11
    i32 22533, label %if.end6.i.i._crit_edge12
    i32 22536, label %if.end6.i.i._crit_edge13
    i32 22531, label %if.end6.i.i._crit_edge14
    i32 22537, label %if.end6.i.i._crit_edge15
    i32 22535, label %if.end6.i.i._crit_edge16
  ]

if.end6.i.i._crit_edge16:                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end6.i.i._crit_edge15:                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end6.i.i._crit_edge14:                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end6.i.i._crit_edge13:                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end6.i.i._crit_edge12:                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end6.i.i._crit_edge11:                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end6.i.i._crit_edge10:                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end6.i.i._crit_edge:                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end6.i.i.if.end13.i.i_crit_edge9:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

if.end6.i.i.if.end13.i.i_crit_edge8:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

if.end6.i.i.if.end13.i.i_crit_edge7:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

if.end6.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

12:                                               ; preds = %if.end6.i.i._crit_edge, %if.end6.i.i._crit_edge10, %if.end6.i.i._crit_edge11, %if.end6.i.i._crit_edge12, %if.end6.i.i._crit_edge13, %if.end6.i.i._crit_edge14, %if.end6.i.i._crit_edge15, %if.end6.i.i._crit_edge16
  br label %if.end13.i.i

if.end13.fold.split.i.i:                          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end13.fold.split.i.i, %12, %if.end6.i.i.if.end13.i.i_crit_edge, %if.end6.i.i.if.end13.i.i_crit_edge7, %if.end6.i.i.if.end13.i.i_crit_edge8, %if.end6.i.i.if.end13.i.i_crit_edge9
  %13 = phi i1 [ false, %12 ], [ true, %if.end6.i.i.if.end13.i.i_crit_edge ], [ true, %if.end6.i.i.if.end13.i.i_crit_edge7 ], [ true, %if.end6.i.i.if.end13.i.i_crit_edge8 ], [ true, %if.end6.i.i.if.end13.i.i_crit_edge9 ], [ false, %if.end13.fold.split.i.i ]
  %thawed.0.off0.i.i = phi i1 [ true, %12 ], [ false, %if.end6.i.i.if.end13.i.i_crit_edge ], [ false, %if.end6.i.i.if.end13.i.i_crit_edge7 ], [ false, %if.end6.i.i.if.end13.i.i_crit_edge8 ], [ false, %if.end6.i.i.if.end13.i.i_crit_edge9 ], [ false, %if.end13.fold.split.i.i ]
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev.i.i, align 4
  %call1578.i.i = call ptr @user_get_super(i32 noundef %15, i1 noundef zeroext %13) #6
  %tobool16.not79.i.i = icmp eq ptr %call1578.i.i, null
  %brmerge80.i.i = or i1 %thawed.0.off0.i.i, %tobool16.not79.i.i
  br i1 %brmerge80.i.i, label %cleanup49.loopexit.split.loop.exit76.i.i, label %if.end13.i.i.land.lhs.true.i.i_crit_edge

if.end13.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %if.end13.i.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %do.end47.i.i.land.lhs.true.i.i_crit_edge, %if.end13.i.i.land.lhs.true.i.i_crit_edge
  %call1581.i.i = phi ptr [ %call15.i.i, %do.end47.i.i.land.lhs.true.i.i_crit_edge ], [ %call1578.i.i, %if.end13.i.i.land.lhs.true.i.i_crit_edge ]
  %s_writers.i.i = getelementptr inbounds %struct.super_block, ptr %call1581.i.i, i32 0, i32 32
  %16 = ptrtoint ptr %s_writers.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_writers.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.quotactl_block.exit.i_crit_edge, label %if.then21.i.i

land.lhs.true.i.i.quotactl_block.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %quotactl_block.exit.i

if.then21.i.i:                                    ; preds = %land.lhs.true.i.i
  %s_umount.i.i = getelementptr inbounds %struct.super_block, ptr %call1581.i.i, i32 0, i32 14
  br i1 %13, label %if.then23.i.i, label %if.else24.i.i

if.then23.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @up_write(ptr noundef %s_umount.i.i) #6
  br label %do.body27.i.i

if.else24.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @up_read(ptr noundef %s_umount.i.i) #6
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %if.else24.i.i, %if.then23.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 899) #6
  %18 = ptrtoint ptr %s_writers.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_writers.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp33.i.i = icmp eq i32 %19, 0
  br i1 %cmp33.i.i, label %do.body27.i.i.do.end47.i.i_crit_edge, label %if.end35.i.i

do.body27.i.i.do.end47.i.i_crit_edge:             ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47.i.i

if.end35.i.i:                                     ; preds = %do.body27.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #6
  %20 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #6
  %wait_unfrozen.i.i = getelementptr inbounds %struct.super_block, ptr %call1581.i.i, i32 0, i32 32, i32 1
  %call3774.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait_unfrozen.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #6
  %21 = ptrtoint ptr %s_writers.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_writers.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4075.i.i = icmp eq i32 %22, 0
  br i1 %cmp4075.i.i, label %if.end35.i.i.for.end.i.i_crit_edge, label %if.end35.i.i.cleanup.i.i_crit_edge

if.end35.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end35.i.i
  br label %cleanup.i.i

if.end35.i.i.for.end.i.i_crit_edge:               ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.end35.i.i.cleanup.i.i_crit_edge
  call void @schedule() #6
  %call37.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait_unfrozen.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #6
  %23 = ptrtoint ptr %s_writers.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_writers.i.i, align 8
  %cmp40.i.i = icmp eq i32 %24, 0
  br i1 %cmp40.i.i, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.end35.i.i.for.end.i.i_crit_edge
  call void @finish_wait(ptr noundef %wait_unfrozen.i.i, ptr noundef nonnull %__wq_entry.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #6
  br label %do.end47.i.i

do.end47.i.i:                                     ; preds = %for.end.i.i, %do.body27.i.i.do.end47.i.i_crit_edge
  call void @put_super(ptr noundef nonnull %call1581.i.i) #6
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev.i.i, align 4
  %call15.i.i = call ptr @user_get_super(i32 noundef %26, i1 noundef zeroext %13) #6
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %do.end47.i.i.quotactl_block.exit.thread.i_crit_edge, label %do.end47.i.i.land.lhs.true.i.i_crit_edge

do.end47.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %do.end47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

do.end47.i.i.quotactl_block.exit.thread.i_crit_edge: ; preds = %do.end47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %quotactl_block.exit.thread.i

cleanup49.loopexit.split.loop.exit76.i.i:         ; preds = %if.end13.i.i
  br i1 %tobool16.not79.i.i, label %cleanup49.loopexit.split.loop.exit76.i.i.quotactl_block.exit.thread.i_crit_edge, label %cleanup49.loopexit.split.loop.exit76.i.i.quotactl_block.exit.i_crit_edge

cleanup49.loopexit.split.loop.exit76.i.i.quotactl_block.exit.i_crit_edge: ; preds = %cleanup49.loopexit.split.loop.exit76.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %quotactl_block.exit.i

cleanup49.loopexit.split.loop.exit76.i.i.quotactl_block.exit.thread.i_crit_edge: ; preds = %cleanup49.loopexit.split.loop.exit76.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %quotactl_block.exit.thread.i

quotactl_block.exit.thread.i:                     ; preds = %cleanup49.loopexit.split.loop.exit76.i.i.quotactl_block.exit.thread.i_crit_edge, %do.end47.i.i.quotactl_block.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i.i) #6
  br label %if.then16.i

quotactl_block.exit.i:                            ; preds = %cleanup49.loopexit.split.loop.exit76.i.i.quotactl_block.exit.i_crit_edge, %land.lhs.true.i.i.quotactl_block.exit.i_crit_edge, %if.then4.i.i, %if.end13.i.quotactl_block.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.then4.i.i ], [ %call.i52.i, %if.end13.i.quotactl_block.exit.i_crit_edge ], [ %call1578.i.i, %cleanup49.loopexit.split.loop.exit76.i.i.quotactl_block.exit.i_crit_edge ], [ %call1581.i.i, %land.lhs.true.i.i.quotactl_block.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i.i) #6
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %quotactl_block.exit.i.if.then16.i_crit_edge, label %if.end18.i

quotactl_block.exit.i.if.then16.i_crit_edge:      ; preds = %quotactl_block.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i

if.then16.i:                                      ; preds = %quotactl_block.exit.i.if.then16.i_crit_edge, %quotactl_block.exit.thread.i
  %retval.0.i57.i = phi ptr [ inttoptr (i32 -19 to ptr), %quotactl_block.exit.thread.i ], [ %retval.0.i.i, %quotactl_block.exit.i.if.then16.i_crit_edge ]
  %27 = ptrtoint ptr %retval.0.i57.i to i32
  br label %out.i

if.end18.i:                                       ; preds = %quotactl_block.exit.i
  %call19.i = call fastcc i32 @do_quotactl(ptr noundef %retval.0.i.i, i32 noundef %and.i, i32 noundef %shr.i, i32 noundef %id, ptr noundef %1, ptr noundef %pathp.0.i) #6
  %28 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr.i, label %if.then21.i [
    i32 8388610, label %if.end18.i.if.else22.i_crit_edge
    i32 8388611, label %if.end18.i.if.else22.i_crit_edge17
    i32 22529, label %if.end18.i.if.else22.i_crit_edge18
    i32 22530, label %if.end18.i.if.else22.i_crit_edge19
  ]

if.end18.i.if.else22.i_crit_edge19:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else22.i

if.end18.i.if.else22.i_crit_edge18:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else22.i

if.end18.i.if.else22.i_crit_edge17:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else22.i

if.end18.i.if.else22.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else22.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @drop_super(ptr noundef %retval.0.i.i) #6
  br label %out.i

if.else22.i:                                      ; preds = %if.end18.i.if.else22.i_crit_edge, %if.end18.i.if.else22.i_crit_edge17, %if.end18.i.if.else22.i_crit_edge18, %if.end18.i.if.else22.i_crit_edge19
  call void @drop_super_exclusive(ptr noundef %retval.0.i.i) #6
  br label %out.i

out.i:                                            ; preds = %if.else22.i, %if.then21.i, %if.then16.i
  %ret.0.i = phi i32 [ %27, %if.then16.i ], [ %call19.i, %if.else22.i ], [ %call19.i, %if.then21.i ]
  %tobool24.not.i = icmp eq ptr %pathp.0.i, null
  %cmp.i54.i = icmp ugt ptr %pathp.0.i, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool24.not.i, %cmp.i54.i
  br i1 %or.cond.i, label %out.i.__do_sys_quotactl.exit_crit_edge, label %if.then26.i

out.i.__do_sys_quotactl.exit_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_quotactl.exit

if.then26.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @path_put(ptr noundef nonnull %pathp.0.i) #6
  br label %__do_sys_quotactl.exit

__do_sys_quotactl.exit:                           ; preds = %if.then26.i, %out.i.__do_sys_quotactl.exit_crit_edge, %quota_sync_all.exit.i, %if.then1.i.__do_sys_quotactl.exit_crit_edge, %entry.__do_sys_quotactl.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %quota_sync_all.exit.i ], [ -22, %entry.__do_sys_quotactl.exit_crit_edge ], [ -19, %if.then1.i.__do_sys_quotactl.exit_crit_edge ], [ %ret.0.i, %if.then26.i ], [ %ret.0.i, %out.i.__do_sys_quotactl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_quotactl_fd(i32 noundef %fd, i32 noundef %cmd, i32 noundef %id, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %addr to ptr
  %shr.i = lshr i32 %cmd, 8
  %and.i = and i32 %cmd, 255
  %call.i.i = tail call i32 @__fdget_raw(i32 noundef %fd) #6, !noalias !75
  %and.i.i.i = and i32 %call.i.i, -4
  %1 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_quotactl_fd.exit_crit_edge, label %if.end.i

entry.__do_sys_quotactl_fd.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_quotactl_fd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 2
  br i1 %cmp.i, label %if.end.i.out.i_crit_edge, label %if.end2.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end2.i:                                        ; preds = %if.end.i
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %shr.i, label %if.then4.i [
    i32 8388612, label %if.end2.i.if.end10.i_crit_edge
    i32 8388613, label %if.end2.i.if.end10.i_crit_edge1
    i32 8388609, label %if.end2.i.if.end10.i_crit_edge2
    i32 22533, label %if.end2.i.if.end10.i_crit_edge3
    i32 22536, label %if.end2.i.if.end10.i_crit_edge4
    i32 22531, label %if.end2.i.if.end10.i_crit_edge5
    i32 22537, label %if.end2.i.if.end10.i_crit_edge6
    i32 22535, label %if.end2.i.if.end10.i_crit_edge7
  ]

if.end2.i.if.end10.i_crit_edge7:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end2.i.if.end10.i_crit_edge6:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end2.i.if.end10.i_crit_edge5:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end2.i.if.end10.i_crit_edge4:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end2.i.if.end10.i_crit_edge3:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end2.i.if.end10.i_crit_edge2:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end2.i.if.end10.i_crit_edge1:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end2.i.if.end10.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then4.i:                                       ; preds = %if.end2.i
  %f_path.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_path.i, align 8
  %call6.i = tail call i32 @mnt_want_write(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then4.i.if.end10.i_crit_edge, label %if.then4.i.out.i_crit_edge

if.then4.i.out.i_crit_edge:                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then4.i.if.end10.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then4.i.if.end10.i_crit_edge, %if.end2.i.if.end10.i_crit_edge, %if.end2.i.if.end10.i_crit_edge1, %if.end2.i.if.end10.i_crit_edge2, %if.end2.i.if.end10.i_crit_edge3, %if.end2.i.if.end10.i_crit_edge4, %if.end2.i.if.end10.i_crit_edge5, %if.end2.i.if.end10.i_crit_edge6, %if.end2.i.if.end10.i_crit_edge7
  %f_path12.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %f_path12.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_path12.i, align 8
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mnt_sb.i, align 4
  %9 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i, label %if.else.i [
    i32 8388610, label %if.end10.i.if.then15.i_crit_edge
    i32 8388611, label %if.end10.i.if.then15.i_crit_edge8
    i32 22529, label %if.end10.i.if.then15.i_crit_edge9
    i32 22530, label %if.end10.i.if.then15.i_crit_edge10
  ]

if.end10.i.if.then15.i_crit_edge10:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.end10.i.if.then15.i_crit_edge9:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.end10.i.if.then15.i_crit_edge8:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.end10.i.if.then15.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end10.i.if.then15.i_crit_edge, %if.end10.i.if.then15.i_crit_edge8, %if.end10.i.if.then15.i_crit_edge9, %if.end10.i.if.then15.i_crit_edge10
  %s_umount.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 14
  tail call void @down_write(ptr noundef %s_umount.i) #6
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %s_umount16.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 14
  tail call void @down_read(ptr noundef %s_umount16.i) #6
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then15.i
  %call19.i = tail call fastcc i32 @do_quotactl(ptr noundef %8, i32 noundef %and.i, i32 noundef %shr.i, i32 noundef %id, ptr noundef %0, ptr noundef nonnull inttoptr (i32 -22 to ptr)) #6
  %10 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i, label %if.else23.i [
    i32 8388610, label %if.end17.i.if.then21.i_crit_edge
    i32 8388611, label %if.end17.i.if.then21.i_crit_edge11
    i32 22529, label %if.end17.i.if.then21.i_crit_edge12
    i32 22530, label %if.end17.i.if.then21.i_crit_edge13
  ]

if.end17.i.if.then21.i_crit_edge13:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

if.end17.i.if.then21.i_crit_edge12:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

if.end17.i.if.then21.i_crit_edge11:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

if.end17.i.if.then21.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end17.i.if.then21.i_crit_edge, %if.end17.i.if.then21.i_crit_edge11, %if.end17.i.if.then21.i_crit_edge12, %if.end17.i.if.then21.i_crit_edge13
  %s_umount22.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount22.i) #6
  br label %if.end25.i

if.else23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %s_umount24.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 14
  tail call void @up_read(ptr noundef %s_umount24.i) #6
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else23.i, %if.then21.i
  %11 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %shr.i, label %if.then28.i [
    i32 8388612, label %if.end25.i.out.i_crit_edge
    i32 8388613, label %if.end25.i.out.i_crit_edge14
    i32 8388609, label %if.end25.i.out.i_crit_edge15
    i32 22533, label %if.end25.i.out.i_crit_edge16
    i32 22536, label %if.end25.i.out.i_crit_edge17
    i32 22531, label %if.end25.i.out.i_crit_edge18
    i32 22537, label %if.end25.i.out.i_crit_edge19
    i32 22535, label %if.end25.i.out.i_crit_edge20
  ]

if.end25.i.out.i_crit_edge20:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end25.i.out.i_crit_edge19:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end25.i.out.i_crit_edge18:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end25.i.out.i_crit_edge17:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end25.i.out.i_crit_edge16:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end25.i.out.i_crit_edge15:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end25.i.out.i_crit_edge14:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end25.i.out.i_crit_edge:                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %f_path12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_path12.i, align 8
  tail call void @mnt_drop_write(ptr noundef %13) #6
  br label %out.i

out.i:                                            ; preds = %if.then28.i, %if.end25.i.out.i_crit_edge, %if.end25.i.out.i_crit_edge14, %if.end25.i.out.i_crit_edge15, %if.end25.i.out.i_crit_edge16, %if.end25.i.out.i_crit_edge17, %if.end25.i.out.i_crit_edge18, %if.end25.i.out.i_crit_edge19, %if.end25.i.out.i_crit_edge20, %if.then4.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ -22, %if.end.i.out.i_crit_edge ], [ %call6.i, %if.then4.i.out.i_crit_edge ], [ %call19.i, %if.then28.i ], [ %call19.i, %if.end25.i.out.i_crit_edge ], [ %call19.i, %if.end25.i.out.i_crit_edge14 ], [ %call19.i, %if.end25.i.out.i_crit_edge15 ], [ %call19.i, %if.end25.i.out.i_crit_edge16 ], [ %call19.i, %if.end25.i.out.i_crit_edge17 ], [ %call19.i, %if.end25.i.out.i_crit_edge18 ], [ %call19.i, %if.end25.i.out.i_crit_edge19 ], [ %call19.i, %if.end25.i.out.i_crit_edge20 ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %out.i.__do_sys_quotactl_fd.exit_crit_edge, label %if.then.i.i

out.i.__do_sys_quotactl_fd.exit_crit_edge:        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_quotactl_fd.exit

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fput(ptr noundef nonnull %1) #6
  br label %__do_sys_quotactl_fd.exit

__do_sys_quotactl_fd.exit:                        ; preds = %if.then.i.i, %out.i.__do_sys_quotactl_fd.exit_crit_edge, %entry.__do_sys_quotactl_fd.exit_crit_edge
  %retval.0.i = phi i32 [ -9, %entry.__do_sys_quotactl_fd.exit_crit_edge ], [ %ret.0.i, %out.i.__do_sys_quotactl_fd.exit_crit_edge ], [ %ret.0.i, %if.then.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_quotactl(ptr noundef %sb, i32 noundef %type, i32 noundef %cmd, i32 noundef %id, ptr noundef %addr, ptr noundef %path) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %type, i32 3) #6, !srcloc !78
  %and = and i32 %0, %type
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %1 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_qcop, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_quota_types = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 30
  %3 = ptrtoint ptr %s_quota_types to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_quota_types, align 8
  %shl = shl nuw i32 1, %and
  %and4 = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %cmd, label %if.end7.sw.default.i_crit_edge [
    i32 8388612, label %if.end7.check_quotactl_permission.exit_crit_edge
    i32 8388609, label %if.end7.check_quotactl_permission.exit_crit_edge117
    i32 8388613, label %if.end7.check_quotactl_permission.exit_crit_edge118
    i32 22533, label %if.end7.check_quotactl_permission.exit_crit_edge119
    i32 22536, label %if.end7.check_quotactl_permission.exit_crit_edge120
    i32 22535, label %if.end7.check_quotactl_permission.exit_crit_edge121
    i32 8388615, label %if.end7.sw.bb1.i_crit_edge
    i32 22531, label %if.end7.sw.bb1.i_crit_edge122
  ]

if.end7.sw.bb1.i_crit_edge122:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end7.sw.bb1.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end7.check_quotactl_permission.exit_crit_edge121: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_quotactl_permission.exit

if.end7.check_quotactl_permission.exit_crit_edge120: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_quotactl_permission.exit

if.end7.check_quotactl_permission.exit_crit_edge119: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_quotactl_permission.exit

if.end7.check_quotactl_permission.exit_crit_edge118: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_quotactl_permission.exit

if.end7.check_quotactl_permission.exit_crit_edge117: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_quotactl_permission.exit

if.end7.check_quotactl_permission.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_quotactl_permission.exit

if.end7.sw.default.i_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb1.i:                                         ; preds = %if.end7.sw.bb1.i_crit_edge, %if.end7.sw.bb1.i_crit_edge122
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %and, label %sw.bb1.i.sw.default.i_crit_edge [
    i32 0, label %do.end.i
    i32 1, label %do.end19.i
  ]

sw.bb1.i.sw.default.i_crit_edge:                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

do.end.i:                                         ; preds = %sw.bb1.i
  %7 = tail call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %euid.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %euid.i, align 4
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i, align 4
  %call10.i = tail call i32 @make_kuid(ptr noundef %15, i32 noundef %id) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload.i, i32 %call10.i)
  %cmp.i.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i, %call10.i
  br i1 %cmp.i.i, label %do.end.i.check_quotactl_permission.exit_crit_edge, label %do.end.i.sw.default.i_crit_edge

do.end.i.sw.default.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

do.end.i.check_quotactl_permission.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_quotactl_permission.exit

do.end19.i:                                       ; preds = %sw.bb1.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i40.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i40.i to ptr
  %task22.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task22.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task22.i, align 8
  %cred23.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 99
  %20 = ptrtoint ptr %cred23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred23.i, align 16
  %user_ns24.i = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 25
  %22 = ptrtoint ptr %user_ns24.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user_ns24.i, align 4
  %call25.i = tail call i32 @make_kgid(ptr noundef %23, i32 noundef %id) #6
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %call25.i, 0
  %call28.i = tail call i32 @in_egroup_p([1 x i32] %.fca.0.insert.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool.not.i, label %do.end19.i.sw.default.i_crit_edge, label %do.end19.i.check_quotactl_permission.exit_crit_edge

do.end19.i.check_quotactl_permission.exit_crit_edge: ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_quotactl_permission.exit

do.end19.i.sw.default.i_crit_edge:                ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.default.i:                                     ; preds = %do.end19.i.sw.default.i_crit_edge, %do.end.i.sw.default.i_crit_edge, %sw.bb1.i.sw.default.i_crit_edge, %if.end7.sw.default.i_crit_edge
  %call29.i = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %call29.i, label %sw.default.i.check_quotactl_permission.exit_crit_edge, label %sw.default.i.cleanup_crit_edge

sw.default.i.cleanup_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default.i.check_quotactl_permission.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_quotactl_permission.exit

check_quotactl_permission.exit:                   ; preds = %sw.default.i.check_quotactl_permission.exit_crit_edge, %do.end19.i.check_quotactl_permission.exit_crit_edge, %do.end.i.check_quotactl_permission.exit_crit_edge, %if.end7.check_quotactl_permission.exit_crit_edge, %if.end7.check_quotactl_permission.exit_crit_edge117, %if.end7.check_quotactl_permission.exit_crit_edge118, %if.end7.check_quotactl_permission.exit_crit_edge119, %if.end7.check_quotactl_permission.exit_crit_edge120, %if.end7.check_quotactl_permission.exit_crit_edge121
  %call32.i = tail call i32 @security_quotactl(i32 noundef %cmd, i32 noundef %and, i32 noundef %id, ptr noundef %sb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp = icmp slt i32 %call32.i, 0
  br i1 %cmp, label %check_quotactl_permission.exit.cleanup_crit_edge, label %if.end10

check_quotactl_permission.exit.cleanup_crit_edge: ; preds = %check_quotactl_permission.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %check_quotactl_permission.exit
  %24 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %cmd, label %if.end10.cleanup_crit_edge [
    i32 8388610, label %sw.bb
    i32 8388611, label %sw.bb12
    i32 8388612, label %sw.bb14
    i32 8388613, label %sw.bb16
    i32 8388614, label %sw.bb18
    i32 8388615, label %sw.bb20
    i32 8388617, label %sw.bb22
    i32 8388616, label %sw.bb24
    i32 8388609, label %sw.bb26
    i32 22529, label %sw.bb34
    i32 22530, label %sw.bb36
    i32 22534, label %sw.bb38
    i32 22533, label %sw.bb40
    i32 22536, label %sw.bb42
    i32 22532, label %sw.bb44
    i32 22531, label %sw.bb46
    i32 22537, label %sw.bb48
    i32 22535, label %sw.bb50
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call fastcc i32 @quota_quotaon(ptr noundef %sb, i32 noundef %and, i32 noundef %id, ptr noundef %path)
  br label %cleanup

sw.bb12:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call fastcc i32 @quota_quotaoff(ptr noundef %sb, i32 noundef %and)
  br label %cleanup

sw.bb14:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call fastcc i32 @quota_getfmt(ptr noundef %sb, i32 noundef %and, ptr noundef %addr)
  br label %cleanup

sw.bb16:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @quota_getinfo(ptr noundef %sb, i32 noundef %and, ptr noundef %addr)
  br label %cleanup

sw.bb18:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call fastcc i32 @quota_setinfo(ptr noundef %sb, i32 noundef %and, ptr noundef %addr)
  br label %cleanup

sw.bb20:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call fastcc i32 @quota_getquota(ptr noundef %sb, i32 noundef %and, i32 noundef %id, ptr noundef %addr)
  br label %cleanup

sw.bb22:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call fastcc i32 @quota_getnextquota(ptr noundef %sb, i32 noundef %and, i32 noundef %id, ptr noundef %addr)
  br label %cleanup

sw.bb24:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call fastcc i32 @quota_setquota(ptr noundef %sb, i32 noundef %and, i32 noundef %id, ptr noundef %addr)
  br label %cleanup

sw.bb26:                                          ; preds = %if.end10
  %25 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_qcop, align 4
  %quota_sync = getelementptr inbounds %struct.quotactl_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %quota_sync to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %quota_sync, align 4
  %tobool28.not = icmp eq ptr %28, null
  br i1 %tobool28.not, label %sw.bb26.cleanup_crit_edge, label %if.end30

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call i32 %28(ptr noundef %sb, i32 noundef %and) #6
  br label %cleanup

sw.bb34:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call fastcc i32 @quota_enable(ptr noundef %sb, ptr noundef %addr)
  br label %cleanup

sw.bb36:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call fastcc i32 @quota_disable(ptr noundef %sb, ptr noundef %addr)
  br label %cleanup

sw.bb38:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call fastcc i32 @quota_rmxquota(ptr noundef %sb, ptr noundef %addr)
  br label %cleanup

sw.bb40:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = tail call fastcc i32 @quota_getxstate(ptr noundef %sb, i32 noundef %and, ptr noundef %addr)
  br label %cleanup

sw.bb42:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call43 = tail call fastcc i32 @quota_getxstatev(ptr noundef %sb, i32 noundef %and, ptr noundef %addr)
  br label %cleanup

sw.bb44:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call fastcc i32 @quota_setxquota(ptr noundef %sb, i32 noundef %and, i32 noundef %id, ptr noundef %addr)
  br label %cleanup

sw.bb46:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call fastcc i32 @quota_getxquota(ptr noundef %sb, i32 noundef %and, i32 noundef %id, ptr noundef %addr)
  br label %cleanup

sw.bb48:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = tail call fastcc i32 @quota_getnextxquota(ptr noundef %sb, i32 noundef %and, i32 noundef %id, ptr noundef %addr)
  br label %cleanup

sw.bb50:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %29 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %. = select i1 %tobool.i.not, i32 0, i32 -30
  br label %cleanup

cleanup:                                          ; preds = %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %if.end30, %sw.bb26.cleanup_crit_edge, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb, %if.end10.cleanup_crit_edge, %check_quotactl_permission.exit.cleanup_crit_edge, %sw.default.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %sw.bb48 ], [ %call47, %sw.bb46 ], [ %call45, %sw.bb44 ], [ %call43, %sw.bb42 ], [ %call41, %sw.bb40 ], [ %call39, %sw.bb38 ], [ %call37, %sw.bb36 ], [ %call35, %sw.bb34 ], [ %call33, %if.end30 ], [ %call25, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %call17, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb ], [ -38, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call32.i, %check_quotactl_permission.exit.cleanup_crit_edge ], [ -38, %sw.bb26.cleanup_crit_edge ], [ %., %sw.bb50 ], [ -22, %if.end10.cleanup_crit_edge ], [ -1, %sw.default.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_super_exclusive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_quotactl(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iterate_supers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @quota_sync_one(ptr noundef %sb, ptr nocapture noundef readonly %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %2 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_qcop, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %quota_sync = getelementptr inbounds %struct.quotactl_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %quota_sync to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %quota_sync, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %s_quota_types = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 30
  %6 = ptrtoint ptr %s_quota_types to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_quota_types, align 8
  %shl = shl nuw i32 1, %1
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %5(ptr noundef %sb, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_bdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @user_get_super(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_quotaon(ptr noundef %sb, i32 noundef %type, i32 noundef %id, ptr noundef %path) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %0 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_qcop, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %quota_enable = getelementptr inbounds %struct.quotactl_ops, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %quota_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %quota_enable, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %quota_enable4 = getelementptr inbounds %struct.quotactl_ops, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %quota_enable4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %quota_enable4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %8 = icmp ult i32 %type, 3
  br i1 %8, label %switch.lookup, label %if.then6.qtype_enforce_flag.exit_crit_edge

if.then6.qtype_enforce_flag.exit_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %qtype_enforce_flag.exit

switch.lookup:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.quota_quotaon, i32 0, i32 %type
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %qtype_enforce_flag.exit

qtype_enforce_flag.exit:                          ; preds = %switch.lookup, %if.then6.qtype_enforce_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then6.qtype_enforce_flag.exit_crit_edge ]
  %call9 = tail call i32 %7(ptr noundef %sb, i32 noundef %retval.0.i) #6
  br label %return

if.end10:                                         ; preds = %if.end
  %cmp.i = icmp ugt ptr %path, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %path to i32
  br label %return

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 %3(ptr noundef %sb, i32 noundef %type, i32 noundef %id, ptr noundef %path) #6
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %qtype_enforce_flag.exit, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ %call9, %qtype_enforce_flag.exit ], [ %10, %if.then12 ], [ %call17, %if.end14 ], [ -38, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_quotaoff(ptr noundef %sb, i32 noundef %type) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %0 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_qcop, align 4
  %quota_off = getelementptr inbounds %struct.quotactl_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %quota_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %quota_off, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %quota_disable = getelementptr inbounds %struct.quotactl_ops, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %quota_disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %quota_disable, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %quota_disable4 = getelementptr inbounds %struct.quotactl_ops, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %quota_disable4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %quota_disable4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %8 = icmp ult i32 %type, 3
  br i1 %8, label %switch.lookup, label %if.then6.qtype_enforce_flag.exit_crit_edge

if.then6.qtype_enforce_flag.exit_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %qtype_enforce_flag.exit

switch.lookup:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.quota_quotaoff, i32 0, i32 %type
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %qtype_enforce_flag.exit

qtype_enforce_flag.exit:                          ; preds = %switch.lookup, %if.then6.qtype_enforce_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then6.qtype_enforce_flag.exit_crit_edge ]
  %call9 = tail call i32 %7(ptr noundef %sb, i32 noundef %retval.0.i) #6
  br label %return

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 %3(ptr noundef %sb, i32 noundef %type) #6
  br label %return

return:                                           ; preds = %if.end10, %qtype_enforce_flag.exit, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ %call9, %qtype_enforce_flag.exit ], [ %call13, %if.end10 ], [ -38, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_getfmt(ptr nocapture noundef readonly %sb, i32 noundef %type, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %fmt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmt) #6
  %s_dquot.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %0 = ptrtoint ptr %s_dquot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_dquot.i.i.i.i, align 8
  %shl.i.i.i.i = shl nuw i32 1, %type
  %and.i.i.i = and i32 %1, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %shl.i.i.i = shl i32 64, %type
  %and.i.i = and i32 %1, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %2 = select i1 %tobool.i.i.i, i1 %tobool.i.not.i, i1 false
  br i1 %2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fmt, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 4, i32 -1226833920) #9, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fmt, i32 noundef 4) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %addr, ptr noundef nonnull %fmt, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmt) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_getinfo(ptr noundef %sb, i32 noundef %type, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %state = alloca %struct.qc_state, align 8
  %uinfo = alloca %struct.if_dqinfo, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %state) #6
  %0 = call ptr @memset(ptr %state, i32 255, i32 176)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uinfo) #6
  %1 = getelementptr inbounds %struct.if_dqinfo, ptr %uinfo, i32 0, i32 1
  %2 = getelementptr inbounds %struct.if_dqinfo, ptr %uinfo, i32 0, i32 2
  %3 = getelementptr inbounds %struct.if_dqinfo, ptr %uinfo, i32 0, i32 3
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %4 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_qcop, align 4
  %get_state = getelementptr inbounds %struct.quotactl_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %get_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_state, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 %7(ptr noundef %sb, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %s_state = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1
  %add.ptr = getelementptr %struct.qc_type_state, ptr %s_state, i32 %type
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %10 = getelementptr inbounds i8, ptr %uinfo, i32 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %10, align 8
  %spc_timelimit = getelementptr %struct.qc_type_state, ptr %s_state, i32 %type, i32 1
  %12 = ptrtoint ptr %spc_timelimit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spc_timelimit, align 4
  %conv = zext i32 %13 to i64
  %14 = ptrtoint ptr %uinfo to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %uinfo, align 8
  %ino_timelimit = getelementptr %struct.qc_type_state, ptr %s_state, i32 %type, i32 2
  %15 = ptrtoint ptr %ino_timelimit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ino_timelimit, align 8
  %conv9 = zext i32 %16 to i64
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv9, ptr %1, align 8
  %and11 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end8.if.end14_crit_edge, label %if.then13

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 8
  %or = or i32 %19, 65536
  store i32 %or, ptr %2, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end8.if.end14_crit_edge
  %and16 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end21_crit_edge, label %if.then18

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 8
  %or20 = or i32 %21, 1
  store i32 %or20, ptr %2, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14.if.end21_crit_edge
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 7, ptr %3, align 4
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end21.cleanup_crit_edge, label %if.end.i.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end21
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 24, i32 -1226833920) #9, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uinfo, i32 noundef 24) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %addr, ptr noundef nonnull %uinfo, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool23.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool23.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -3, %if.end5.cleanup_crit_edge ], [ -14, %if.end21.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uinfo) #6
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %state) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_setinfo(ptr noundef %sb, i32 noundef %type, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.if_dqinfo, align 8
  %qinfo = alloca %struct.qc_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #6
  %0 = getelementptr inbounds %struct.if_dqinfo, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.if_dqinfo, ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds %struct.if_dqinfo, ptr %info, i32 0, i32 3
  %3 = call ptr @memset(ptr %info, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qinfo) #6
  %4 = getelementptr inbounds %struct.qc_info, ptr %qinfo, i32 0, i32 1
  %5 = getelementptr inbounds %struct.qc_info, ptr %qinfo, i32 0, i32 2
  %6 = getelementptr inbounds %struct.qc_info, ptr %qinfo, i32 0, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 24, i32 -1226833920) #9, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !81

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info, i32 noundef 24) #6
  %8 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !82
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info, ptr noundef %addr, i32 noundef 24) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !81

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i45 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %entry.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i45
  %add.ptr.i.i = getelementptr i8, ptr %info, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i45)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %12 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_qcop, align 4
  %set_info = getelementptr inbounds %struct.quotactl_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %set_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_info, align 4
  %tobool1.not = icmp eq ptr %15, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %tobool4.not = icmp ult i32 %17, 8
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %18 = call ptr @memset(ptr %qinfo, i32 0, i32 32)
  %and8 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end21_crit_edge, label %if.then10

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then10:                                        ; preds = %if.end6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %tobool12.not = icmp ult i32 %20, 2
  br i1 %tobool12.not, label %if.end14, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %4, align 4
  %or = or i32 %22, 2
  store i32 %or, ptr %4, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %23 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qinfo, align 4
  %or20 = or i32 %24, 32768
  store i32 %or20, ptr %qinfo, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end6.if.end21_crit_edge
  %and23 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end28_crit_edge, label %if.then25

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %info, align 8
  %conv = trunc i64 %26 to i32
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %5, align 4
  %28 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qinfo, align 4
  %or27 = or i32 %29, 64
  store i32 %or27, ptr %qinfo, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end21.if.end28_crit_edge
  %and30 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end36_crit_edge, label %if.then32

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %0, align 8
  %conv33 = trunc i64 %31 to i32
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv33, ptr %6, align 4
  %33 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qinfo, align 4
  %or35 = or i32 %34, 128
  store i32 %or35, ptr %qinfo, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end28.if.end36_crit_edge
  %35 = ptrtoint ptr %set_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_info, align 4
  %call39 = call i32 %36(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %qinfo) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then10.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call39, %if.end36 ], [ -38, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.then10.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qinfo) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_getquota(ptr noundef %sb, i32 noundef %type, i32 noundef %id, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %fdq = alloca %struct.qc_dqblk, align 8
  %idq = alloca %struct.if_dqblk, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fdq) #6
  %0 = call ptr @memset(ptr %fdq, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %idq) #6
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %1 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_qcop, align 4
  %get_dqblk = getelementptr inbounds %struct.quotactl_ops, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %get_dqblk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_dqblk, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 99
  %9 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 25
  %11 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ns, align 4
  %13 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %type, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @make_kuid(ptr noundef %12, i32 noundef %id) #6, !noalias !85
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @make_kgid(ptr noundef %12, i32 noundef %id) #6, !noalias !85
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @make_kprojid(ptr noundef %12, i32 noundef %id) #6, !noalias !85
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !noalias !85, !srcloc !88
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %14 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_user_ns, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call8.sink.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %type, 1
  %call.i30 = tail call i32 @from_kqid(ptr noundef %15, [2 x i32] %.fca.1.insert) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i30)
  %cmp.i.not = icmp eq i32 %call.i30, -1
  br i1 %cmp.i.not, label %make_kqid.exit.cleanup_crit_edge, label %if.end5

make_kqid.exit.cleanup_crit_edge:                 ; preds = %make_kqid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %make_kqid.exit
  %16 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_qcop, align 4
  %get_dqblk7 = getelementptr inbounds %struct.quotactl_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %get_dqblk7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_dqblk7, align 4
  %call8 = call i32 %19(ptr noundef %sb, [2 x i32] %.fca.1.insert, ptr noundef nonnull %fdq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %20 = getelementptr inbounds i8, ptr %idq, i32 64
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %20, align 8
  %d_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 1
  %22 = ptrtoint ptr %d_spc_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %d_spc_hardlimit.i, align 8
  %sub.i.i = add i64 %23, 1023
  %shr.i.i = ashr i64 %sub.i.i, 10
  %24 = ptrtoint ptr %idq to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shr.i.i, ptr %idq, align 8
  %d_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 2
  %25 = ptrtoint ptr %d_spc_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %d_spc_softlimit.i, align 8
  %sub.i18.i = add i64 %26, 1023
  %shr.i19.i = ashr i64 %sub.i18.i, 10
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 1
  %27 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %shr.i19.i, ptr %dqb_bsoftlimit.i, align 8
  %d_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 5
  %28 = ptrtoint ptr %d_space.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %d_space.i, align 8
  %dqb_curspace.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 2
  %30 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %dqb_curspace.i, align 8
  %d_ino_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 3
  %31 = ptrtoint ptr %d_ino_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %d_ino_hardlimit.i, align 8
  %dqb_ihardlimit.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 3
  %33 = ptrtoint ptr %dqb_ihardlimit.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %dqb_ihardlimit.i, align 8
  %d_ino_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 4
  %34 = ptrtoint ptr %d_ino_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %d_ino_softlimit.i, align 8
  %dqb_isoftlimit.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 4
  %36 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %dqb_isoftlimit.i, align 8
  %d_ino_count.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 6
  %37 = ptrtoint ptr %d_ino_count.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %d_ino_count.i, align 8
  %dqb_curinodes.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 5
  %39 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %dqb_curinodes.i, align 8
  %d_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 8
  %40 = ptrtoint ptr %d_spc_timer.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %d_spc_timer.i, align 8
  %dqb_btime.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 6
  %42 = ptrtoint ptr %dqb_btime.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %dqb_btime.i, align 8
  %d_ino_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 7
  %43 = ptrtoint ptr %d_ino_timer.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %d_ino_timer.i, align 8
  %dqb_itime.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 7
  %45 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %dqb_itime.i, align 8
  %dqb_valid.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 8
  %46 = ptrtoint ptr %dqb_valid.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 63, ptr %dqb_valid.i, align 8
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end11.cleanup_crit_edge, label %if.end.i.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end11
  %47 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 72, i32 -1226833920) #9, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %idq, i32 noundef 72) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %addr, ptr noundef nonnull %idq, i32 noundef 72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool13.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %make_kqid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ -22, %make_kqid.exit.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ -14, %if.end11.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %idq) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fdq) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_getnextquota(ptr noundef %sb, i32 noundef %type, i32 noundef %id, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %qid = alloca %struct.kqid, align 8
  %fdq = alloca %struct.qc_dqblk, align 8
  %idq = alloca %struct.if_nextdqblk, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qid) #6
  %0 = getelementptr inbounds %struct.kqid, ptr %qid, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fdq) #6
  %1 = call ptr @memset(ptr %fdq, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %idq) #6
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %2 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_qcop, align 4
  %get_nextdqblk = getelementptr inbounds %struct.quotactl_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %get_nextdqblk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_nextdqblk, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %14 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %type, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @make_kuid(ptr noundef %13, i32 noundef %id) #6, !noalias !89
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @make_kgid(ptr noundef %13, i32 noundef %id) #6, !noalias !89
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @make_kprojid(ptr noundef %13, i32 noundef %id) #6, !noalias !89
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !noalias !89, !srcloc !88
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %tmp.sroa.4.0.insert.ext = zext i32 %type to i64
  %tmp.sroa.0.0.insert.ext = zext i32 %call8.sink.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.insert.shift, %tmp.sroa.4.0.insert.ext
  %15 = ptrtoint ptr %qid to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %qid, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %16 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_user_ns, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call8.sink.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %type, 1
  %call.i39 = tail call i32 @from_kqid(ptr noundef %17, [2 x i32] %.fca.1.insert) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i39)
  %cmp.i.not = icmp eq i32 %call.i39, -1
  br i1 %cmp.i.not, label %make_kqid.exit.cleanup_crit_edge, label %if.end5

make_kqid.exit.cleanup_crit_edge:                 ; preds = %make_kqid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %make_kqid.exit
  %18 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_qcop, align 4
  %get_nextdqblk7 = getelementptr inbounds %struct.quotactl_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %get_nextdqblk7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_nextdqblk7, align 4
  %call8 = call i32 %21(ptr noundef %sb, ptr noundef nonnull %qid, ptr noundef nonnull %fdq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %d_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 1
  %22 = ptrtoint ptr %d_spc_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %d_spc_hardlimit.i, align 8
  %sub.i.i = add i64 %23, 1023
  %shr.i.i = ashr i64 %sub.i.i, 10
  %24 = ptrtoint ptr %idq to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shr.i.i, ptr %idq, align 8
  %d_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 2
  %25 = ptrtoint ptr %d_spc_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %d_spc_softlimit.i, align 8
  %sub.i18.i = add i64 %26, 1023
  %shr.i19.i = ashr i64 %sub.i18.i, 10
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 1
  %27 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %shr.i19.i, ptr %dqb_bsoftlimit.i, align 8
  %d_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 5
  %28 = ptrtoint ptr %d_space.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %d_space.i, align 8
  %dqb_curspace.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 2
  %30 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %dqb_curspace.i, align 8
  %d_ino_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 3
  %31 = ptrtoint ptr %d_ino_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %d_ino_hardlimit.i, align 8
  %dqb_ihardlimit.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 3
  %33 = ptrtoint ptr %dqb_ihardlimit.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %dqb_ihardlimit.i, align 8
  %d_ino_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 4
  %34 = ptrtoint ptr %d_ino_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %d_ino_softlimit.i, align 8
  %dqb_isoftlimit.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 4
  %36 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %dqb_isoftlimit.i, align 8
  %d_ino_count.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 6
  %37 = ptrtoint ptr %d_ino_count.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %d_ino_count.i, align 8
  %dqb_curinodes.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 5
  %39 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %dqb_curinodes.i, align 8
  %d_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 8
  %40 = ptrtoint ptr %d_spc_timer.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %d_spc_timer.i, align 8
  %dqb_btime.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 6
  %42 = ptrtoint ptr %dqb_btime.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %dqb_btime.i, align 8
  %d_ino_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 7
  %43 = ptrtoint ptr %d_ino_timer.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %d_ino_timer.i, align 8
  %dqb_itime.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 7
  %45 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %dqb_itime.i, align 8
  %dqb_valid.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 8
  %46 = ptrtoint ptr %dqb_valid.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 63, ptr %dqb_valid.i, align 8
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %cred19 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 99
  %49 = ptrtoint ptr %cred19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cred19, align 16
  %user_ns20 = getelementptr inbounds %struct.cred, ptr %50, i32 0, i32 25
  %51 = ptrtoint ptr %user_ns20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user_ns20, align 4
  %53 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %53)
  %.fca.0.load31 = load i32, ptr %qid, align 8
  %.fca.0.insert32 = insertvalue [2 x i32] poison, i32 %.fca.0.load31, 0
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.1.load34 = load i32, ptr %0, align 4
  %.fca.1.insert35 = insertvalue [2 x i32] %.fca.0.insert32, i32 %.fca.1.load34, 1
  %call21 = call i32 @from_kqid(ptr noundef %52, [2 x i32] %.fca.1.insert35) #6
  %dqb_id = getelementptr inbounds %struct.if_nextdqblk, ptr %idq, i32 0, i32 9
  %55 = ptrtoint ptr %dqb_id to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call21, ptr %dqb_id, align 4
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end11.cleanup_crit_edge, label %if.end.i.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end11
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 72, i32 -1226833920) #9, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %idq, i32 noundef 72) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %addr, ptr noundef nonnull %idq, i32 noundef 72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool23.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool23.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %make_kqid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ -22, %make_kqid.exit.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ -14, %if.end11.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %idq) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fdq) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qid) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_setquota(ptr noundef %sb, i32 noundef %type, i32 noundef %id, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %fdq = alloca %struct.qc_dqblk, align 8
  %idq = alloca %struct.if_dqblk, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fdq) #6
  %0 = call ptr @memset(ptr %fdq, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %idq) #6
  %1 = call ptr @memset(ptr %idq, i32 255, i32 72)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 72, i32 -1226833920) #9, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !81

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %idq, i32 noundef 72) #6
  %3 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !82
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %idq, ptr noundef %addr, i32 noundef 72) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !81

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i29 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 72, %entry.if.then11.i.i_crit_edge ], [ 72, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 72, %res.0.i.i29
  %add.ptr.i.i = getelementptr i8, ptr %idq, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i29)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %7 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_qcop, align 4
  %set_dqblk = getelementptr inbounds %struct.quotactl_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %set_dqblk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_dqblk, align 4
  %tobool1.not = icmp eq ptr %10, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %11 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_ns, align 4
  %19 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %type, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @make_kuid(ptr noundef %18, i32 noundef %id) #6, !noalias !92
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = call i32 @make_kgid(ptr noundef %18, i32 noundef %id) #6, !noalias !92
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 @make_kprojid(ptr noundef %18, i32 noundef %id) #6, !noalias !92
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !noalias !92, !srcloc !88
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %20 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_user_ns, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call8.sink.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %type, 1
  %call.i25 = call i32 @from_kqid(ptr noundef %21, [2 x i32] %.fca.1.insert) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i25)
  %cmp.i.not = icmp eq i32 %call.i25, -1
  br i1 %cmp.i.not, label %make_kqid.exit.cleanup_crit_edge, label %if.end9

make_kqid.exit.cleanup_crit_edge:                 ; preds = %make_kqid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %make_kqid.exit
  %22 = ptrtoint ptr %idq to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %idq, align 8
  %shl.i.i = shl i64 %23, 10
  %d_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 1
  %24 = ptrtoint ptr %d_spc_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shl.i.i, ptr %d_spc_hardlimit.i, align 8
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 1
  %25 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dqb_bsoftlimit.i, align 8
  %shl.i65.i = shl i64 %26, 10
  %d_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 2
  %27 = ptrtoint ptr %d_spc_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %shl.i65.i, ptr %d_spc_softlimit.i, align 8
  %dqb_curspace.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 2
  %28 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dqb_curspace.i, align 8
  %d_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 5
  %30 = ptrtoint ptr %d_space.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %d_space.i, align 8
  %dqb_ihardlimit.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 3
  %31 = ptrtoint ptr %dqb_ihardlimit.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dqb_ihardlimit.i, align 8
  %d_ino_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 3
  %33 = ptrtoint ptr %d_ino_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %d_ino_hardlimit.i, align 8
  %dqb_isoftlimit.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 4
  %34 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dqb_isoftlimit.i, align 8
  %d_ino_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 4
  %36 = ptrtoint ptr %d_ino_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %d_ino_softlimit.i, align 8
  %dqb_curinodes.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 5
  %37 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %dqb_curinodes.i, align 8
  %d_ino_count.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 6
  %39 = ptrtoint ptr %d_ino_count.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %d_ino_count.i, align 8
  %dqb_btime.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 6
  %40 = ptrtoint ptr %dqb_btime.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dqb_btime.i, align 8
  %d_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 8
  %42 = ptrtoint ptr %d_spc_timer.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %d_spc_timer.i, align 8
  %dqb_itime.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 7
  %43 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %dqb_itime.i, align 8
  %d_ino_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 7
  %45 = ptrtoint ptr %d_ino_timer.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %d_ino_timer.i, align 8
  %dqb_valid.i = getelementptr inbounds %struct.if_dqblk, ptr %idq, i32 0, i32 8
  %46 = ptrtoint ptr %dqb_valid.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dqb_valid.i, align 8
  %and.i26 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i = icmp eq i32 %and.i26, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 0, i32 12
  %and4.i = shl i32 %47, 11
  %48 = and i32 %and4.i, 4096
  %49 = or i32 %48, %spec.store.select.i
  %50 = ptrtoint ptr %fdq to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %fdq, align 8
  %and11.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.if.end16.i_crit_edge, label %if.then13.i

if.end9.if.end16.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fdq, align 8
  %or15.i = or i32 %52, 3
  store i32 %or15.i, ptr %fdq, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end9.if.end16.i_crit_edge
  %and18.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.if.end23.i_crit_edge, label %if.then20.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fdq, align 8
  %or22.i = or i32 %54, 8192
  store i32 %or22.i, ptr %fdq, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end23.i_crit_edge
  %and25.i = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.end30.i_crit_edge, label %if.then27.i

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fdq, align 8
  %or29.i = or i32 %56, 64
  store i32 %or29.i, ptr %fdq, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.end23.i.if.end30.i_crit_edge
  %and32.i = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end30.i.copy_from_if_dqblk.exit_crit_edge, label %if.then34.i

if.end30.i.copy_from_if_dqblk.exit_crit_edge:     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_from_if_dqblk.exit

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fdq, align 8
  %or36.i = or i32 %58, 128
  store i32 %or36.i, ptr %fdq, align 8
  br label %copy_from_if_dqblk.exit

copy_from_if_dqblk.exit:                          ; preds = %if.then34.i, %if.end30.i.copy_from_if_dqblk.exit_crit_edge
  %59 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_qcop, align 4
  %set_dqblk11 = getelementptr inbounds %struct.quotactl_ops, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %set_dqblk11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_dqblk11, align 4
  %call12 = call i32 %62(ptr noundef %sb, [2 x i32] %.fca.1.insert, ptr noundef nonnull %fdq) #6
  br label %cleanup

cleanup:                                          ; preds = %copy_from_if_dqblk.exit, %make_kqid.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call12, %copy_from_if_dqblk.exit ], [ -38, %if.end.cleanup_crit_edge ], [ -22, %make_kqid.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %idq) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fdq) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_enable(ptr noundef %sb, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !74
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 4, i32 -1226833920) #9, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !81

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %flags, i32 noundef 4) #6
  %2 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !82
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %flags, ptr noundef %addr, i32 noundef 4) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !81

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i11 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %entry.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i11
  %add.ptr.i.i = getelementptr i8, ptr %flags, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i11)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %6 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_qcop, align 4
  %quota_enable = getelementptr inbounds %struct.quotactl_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %quota_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %quota_enable, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %call6 = call i32 %9(ptr noundef %sb, i32 noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ -38, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_disable(ptr noundef %sb, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !74
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 4, i32 -1226833920) #9, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !81

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %flags, i32 noundef 4) #6
  %2 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !82
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %flags, ptr noundef %addr, i32 noundef 4) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !81

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i11 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %entry.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i11
  %add.ptr.i.i = getelementptr i8, ptr %flags, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i11)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %6 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_qcop, align 4
  %quota_disable = getelementptr inbounds %struct.quotactl_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %quota_disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %quota_disable, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %call6 = call i32 %9(ptr noundef %sb, i32 noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ -38, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_rmxquota(ptr noundef %sb, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !74
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 4, i32 -1226833920) #9, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !81

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %flags, i32 noundef 4) #6
  %2 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !82
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %flags, ptr noundef %addr, i32 noundef 4) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !81

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i11 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %entry.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i11
  %add.ptr.i.i = getelementptr i8, ptr %flags, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i11)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %6 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_qcop, align 4
  %rm_xquota = getelementptr inbounds %struct.quotactl_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %rm_xquota to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rm_xquota, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %call6 = call i32 %9(ptr noundef %sb, i32 noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ -38, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_getxstate(ptr noundef %sb, i32 noundef %type, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %state.i = alloca %struct.qc_state, align 8
  %fqs = alloca %struct.fs_quota_stat, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %fqs) #6
  %0 = call ptr @memset(ptr %fqs, i32 255, i32 80)
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %1 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_qcop, align 4
  %get_state = getelementptr inbounds %struct.quotactl_ops, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %get_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_state, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %state.i) #6
  %5 = call ptr @memset(ptr %state.i, i32 0, i32 176)
  %6 = ptrtoint ptr %get_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_state, align 4
  %call.i = call i32 %7(ptr noundef %sb, ptr noundef nonnull %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.quota_getstate.exit_crit_edge, label %if.end.i

if.end.quota_getstate.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %quota_getstate.exit

if.end.i:                                         ; preds = %if.end
  %8 = call ptr @memset(ptr %fqs, i32 0, i32 80)
  %9 = ptrtoint ptr %fqs to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %fqs, align 8
  %s_state.i.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1
  %10 = ptrtoint ptr %s_state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_state.i.i, align 8
  %and.i.i = lshr i32 %11, 2
  %12 = and i32 %and.i.i, 3
  %arrayidx11.i.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11.i.i, align 8
  %and13.i.i = and i32 %14, 4
  %15 = or i32 %12, %and13.i.i
  %and21.i.i = and i32 %14, 8
  %16 = or i32 %15, %and21.i.i
  %arrayidx27.i.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx27.i.i, align 8
  %and29.i.i = shl i32 %18, 2
  %19 = and i32 %and29.i.i, 16
  %20 = or i32 %16, %19
  %21 = and i32 %and29.i.i, 32
  %22 = or i32 %20, %21
  %conv.i = trunc i32 %22 to i16
  %qs_flags.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 1
  %23 = ptrtoint ptr %qs_flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %qs_flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool.not.i = icmp eq i16 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i.quota_getstate.exit_crit_edge, label %if.end4.i

if.end.i.quota_getstate.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %quota_getstate.exit

if.end4.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 8
  %qs_incoredqs.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 5
  %26 = ptrtoint ptr %qs_incoredqs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %qs_incoredqs.i, align 8
  %spc_timelimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 1
  %27 = ptrtoint ptr %spc_timelimit.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %spc_timelimit.i, align 4
  %qs_btimelimit.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 6
  %29 = ptrtoint ptr %qs_btimelimit.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %qs_btimelimit.i, align 4
  %ino_timelimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 2
  %30 = ptrtoint ptr %ino_timelimit.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ino_timelimit.i, align 8
  %qs_itimelimit.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 7
  %32 = ptrtoint ptr %qs_itimelimit.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %qs_itimelimit.i, align 8
  %rt_spc_timelimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 3
  %33 = ptrtoint ptr %rt_spc_timelimit.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rt_spc_timelimit.i, align 4
  %qs_rtbtimelimit.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 8
  %35 = ptrtoint ptr %qs_rtbtimelimit.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %qs_rtbtimelimit.i, align 4
  %spc_warnlimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 4
  %36 = ptrtoint ptr %spc_warnlimit.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %spc_warnlimit.i, align 8
  %conv11.i = trunc i32 %37 to i16
  %qs_bwarnlimit.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 9
  %38 = ptrtoint ptr %qs_bwarnlimit.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv11.i, ptr %qs_bwarnlimit.i, align 8
  %ino_warnlimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 5
  %39 = ptrtoint ptr %ino_warnlimit.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ino_warnlimit.i, align 4
  %conv14.i = trunc i32 %40 to i16
  %qs_iwarnlimit.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 10
  %41 = ptrtoint ptr %qs_iwarnlimit.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv14.i, ptr %qs_iwarnlimit.i, align 2
  %ino.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 0, i32 7
  %42 = ptrtoint ptr %ino.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool17.not.i = icmp eq i64 %43, 0
  br i1 %tobool17.not.i, label %if.end4.i.if.end29.i_crit_edge, label %if.then18.i

if.end4.i.if.end29.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then18.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %qs_uquota.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 3
  %44 = ptrtoint ptr %qs_uquota.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %qs_uquota.i, align 8
  %blocks.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 0, i32 8
  %45 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %blocks.i, align 8
  %qfs_nblks.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %qfs_nblks.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %qfs_nblks.i, align 8
  %nextents.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 0, i32 9
  %48 = ptrtoint ptr %nextents.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %nextents.i, align 8
  %conv27.i = trunc i64 %49 to i32
  %qfs_nextents.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %qfs_nextents.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv27.i, ptr %qfs_nextents.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then18.i, %if.end4.i.if.end29.i_crit_edge
  %ino32.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 1, i32 7
  %51 = ptrtoint ptr %ino32.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ino32.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %tobool33.not.i = icmp eq i64 %52, 0
  br i1 %tobool33.not.i, label %if.end29.i.if.end50.i_crit_edge, label %if.then34.i

if.end29.i.if.end50.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.then34.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %qs_gquota.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 4
  %53 = ptrtoint ptr %qs_gquota.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %qs_gquota.i, align 8
  %blocks41.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 1, i32 8
  %54 = ptrtoint ptr %blocks41.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %blocks41.i, align 8
  %qfs_nblks43.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %qfs_nblks43.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %qfs_nblks43.i, align 8
  %nextents46.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 1, i32 9
  %57 = ptrtoint ptr %nextents46.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %nextents46.i, align 8
  %conv47.i = trunc i64 %58 to i32
  %qfs_nextents49.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 4, i32 2
  %59 = ptrtoint ptr %qfs_nextents49.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv47.i, ptr %qfs_nextents49.i, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then34.i, %if.end29.i.if.end50.i_crit_edge
  %ino53.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 2, i32 7
  %60 = ptrtoint ptr %ino53.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %ino53.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool54.not.i = icmp ne i64 %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool58.not.i = icmp eq i32 %and13.i.i, 0
  %or.cond.i = select i1 %tobool54.not.i, i1 %tobool58.not.i, i1 false
  br i1 %or.cond.i, label %if.then59.i, label %if.end50.i.if.end3_crit_edge

if.end50.i.if.end3_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then59.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  %qs_gquota63.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 4
  %62 = ptrtoint ptr %qs_gquota63.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %qs_gquota63.i, align 8
  %blocks67.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 2, i32 8
  %63 = ptrtoint ptr %blocks67.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %blocks67.i, align 8
  %qfs_nblks69.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %qfs_nblks69.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %qfs_nblks69.i, align 8
  %nextents72.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 2, i32 9
  %66 = ptrtoint ptr %nextents72.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %nextents72.i, align 8
  %conv73.i = trunc i64 %67 to i32
  %qfs_nextents75.i = getelementptr inbounds %struct.fs_quota_stat, ptr %fqs, i32 0, i32 4, i32 2
  %68 = ptrtoint ptr %qfs_nextents75.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv73.i, ptr %qfs_nextents75.i, align 8
  br label %if.end3

quota_getstate.exit:                              ; preds = %if.end.i.quota_getstate.exit_crit_edge, %if.end.quota_getstate.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.quota_getstate.exit_crit_edge ], [ -38, %if.end.i.quota_getstate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %state.i) #6
  br label %cleanup

if.end3:                                          ; preds = %if.then59.i, %if.end50.i.if.end3_crit_edge
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %state.i) #6
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end3.cleanup_crit_edge, label %if.end.i.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end3
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 80, i32 -1226833920) #9, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fqs, i32 noundef 80) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %addr, ptr noundef nonnull %fqs, i32 noundef 80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %quota_getstate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ %retval.0.i, %quota_getstate.exit ], [ -14, %if.end3.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %fqs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_getxstatev(ptr noundef %sb, i32 noundef %type, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %state.i = alloca %struct.qc_state, align 8
  %fqs = alloca %struct.fs_quota_statv, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %fqs) #6
  %0 = call ptr @memset(ptr %fqs, i32 255, i32 160)
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %1 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_qcop, align 4
  %get_state = getelementptr inbounds %struct.quotactl_ops, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %get_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_state, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %fqs, i32 0, i32 160)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 1, i32 -1226833920) #9, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !81

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fqs, i32 noundef 1) #6
  %7 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !82
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %fqs, ptr noundef %addr, i32 noundef 1) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !81

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i26 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 1, %if.end.if.then11.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 1, %res.0.i.i26
  %add.ptr.i.i = getelementptr i8, ptr %fqs, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i26)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %11 = ptrtoint ptr %fqs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fqs, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cond = icmp eq i8 %12, 1
  br i1 %cond, label %sw.epilog, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %state.i) #6
  %13 = call ptr @memset(ptr %state.i, i32 0, i32 176)
  %14 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_qcop, align 4
  %get_state.i = getelementptr inbounds %struct.quotactl_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %get_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_state.i, align 4
  %call.i = call i32 %17(ptr noundef %sb, ptr noundef nonnull %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog.quota_getstatev.exit_crit_edge, label %if.end.i

sw.epilog.quota_getstatev.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %quota_getstatev.exit

if.end.i:                                         ; preds = %sw.epilog
  %18 = call ptr @memset(ptr %fqs, i32 0, i32 160)
  %19 = ptrtoint ptr %fqs to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %fqs, align 8
  %s_state.i.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1
  %20 = ptrtoint ptr %s_state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_state.i.i, align 8
  %and.i.i = lshr i32 %21, 2
  %22 = and i32 %and.i.i, 3
  %arrayidx11.i.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11.i.i, align 8
  %and13.i.i = and i32 %24, 4
  %25 = or i32 %22, %and13.i.i
  %and21.i.i = and i32 %24, 8
  %26 = or i32 %25, %and21.i.i
  %arrayidx27.i.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx27.i.i, align 8
  %and29.i.i = shl i32 %28, 2
  %29 = and i32 %and29.i.i, 16
  %30 = or i32 %26, %29
  %31 = and i32 %and29.i.i, 32
  %32 = or i32 %30, %31
  %conv.i = trunc i32 %32 to i16
  %qs_flags.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 2
  %33 = ptrtoint ptr %qs_flags.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i, ptr %qs_flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool.not.i = icmp eq i16 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i.quota_getstatev.exit_crit_edge, label %if.end4.i

if.end.i.quota_getstatev.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %quota_getstatev.exit

if.end4.i:                                        ; preds = %if.end.i
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i, align 8
  %qs_incoredqs.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 3
  %36 = ptrtoint ptr %qs_incoredqs.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %qs_incoredqs.i, align 4
  %spc_timelimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 1
  %37 = ptrtoint ptr %spc_timelimit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %spc_timelimit.i, align 4
  %qs_btimelimit.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 7
  %39 = ptrtoint ptr %qs_btimelimit.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %qs_btimelimit.i, align 8
  %ino_timelimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 2
  %40 = ptrtoint ptr %ino_timelimit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ino_timelimit.i, align 8
  %qs_itimelimit.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 8
  %42 = ptrtoint ptr %qs_itimelimit.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %qs_itimelimit.i, align 4
  %rt_spc_timelimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 3
  %43 = ptrtoint ptr %rt_spc_timelimit.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rt_spc_timelimit.i, align 4
  %qs_rtbtimelimit.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 9
  %45 = ptrtoint ptr %qs_rtbtimelimit.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %qs_rtbtimelimit.i, align 8
  %spc_warnlimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 4
  %46 = ptrtoint ptr %spc_warnlimit.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %spc_warnlimit.i, align 8
  %conv11.i = trunc i32 %47 to i16
  %qs_bwarnlimit.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 10
  %48 = ptrtoint ptr %qs_bwarnlimit.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv11.i, ptr %qs_bwarnlimit.i, align 4
  %ino_warnlimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 5
  %49 = ptrtoint ptr %ino_warnlimit.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ino_warnlimit.i, align 4
  %conv14.i = trunc i32 %50 to i16
  %qs_iwarnlimit.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 11
  %51 = ptrtoint ptr %qs_iwarnlimit.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv14.i, ptr %qs_iwarnlimit.i, align 2
  %rt_spc_warnlimit.i = getelementptr %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 %type, i32 6
  %52 = ptrtoint ptr %rt_spc_warnlimit.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rt_spc_warnlimit.i, align 8
  %conv17.i = trunc i32 %53 to i16
  %qs_rtbwarnlimit.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 12
  %54 = ptrtoint ptr %qs_rtbwarnlimit.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv17.i, ptr %qs_rtbwarnlimit.i, align 8
  %ino.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 0, i32 7
  %55 = ptrtoint ptr %ino.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool20.not.i = icmp eq i64 %56, 0
  br i1 %tobool20.not.i, label %if.end4.i.if.end32.i_crit_edge, label %if.then21.i

if.end4.i.if.end32.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then21.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %qs_uquota.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 4
  %57 = ptrtoint ptr %qs_uquota.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %qs_uquota.i, align 8
  %blocks.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 0, i32 8
  %58 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %blocks.i, align 8
  %qfs_nblks.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %qfs_nblks.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %qfs_nblks.i, align 8
  %nextents.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 0, i32 9
  %61 = ptrtoint ptr %nextents.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %nextents.i, align 8
  %conv30.i = trunc i64 %62 to i32
  %qfs_nextents.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %qfs_nextents.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv30.i, ptr %qfs_nextents.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then21.i, %if.end4.i.if.end32.i_crit_edge
  %ino35.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 1, i32 7
  %64 = ptrtoint ptr %ino35.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ino35.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %tobool36.not.i = icmp eq i64 %65, 0
  br i1 %tobool36.not.i, label %if.end32.i.if.end53.i_crit_edge, label %if.then37.i

if.end32.i.if.end53.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %qs_gquota.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 5
  %66 = ptrtoint ptr %qs_gquota.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %qs_gquota.i, align 8
  %blocks44.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 1, i32 8
  %67 = ptrtoint ptr %blocks44.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %blocks44.i, align 8
  %qfs_nblks46.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %qfs_nblks46.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %qfs_nblks46.i, align 8
  %nextents49.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 1, i32 9
  %70 = ptrtoint ptr %nextents49.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %nextents49.i, align 8
  %conv50.i = trunc i64 %71 to i32
  %qfs_nextents52.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 5, i32 2
  %72 = ptrtoint ptr %qfs_nextents52.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv50.i, ptr %qfs_nextents52.i, align 8
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then37.i, %if.end32.i.if.end53.i_crit_edge
  %ino56.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 2, i32 7
  %73 = ptrtoint ptr %ino56.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %ino56.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %tobool57.not.i = icmp eq i64 %74, 0
  br i1 %tobool57.not.i, label %if.end53.i.land.lhs.true_crit_edge, label %if.then58.i

if.end53.i.land.lhs.true_crit_edge:               ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %qs_pquota.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 6
  %75 = ptrtoint ptr %qs_pquota.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %qs_pquota.i, align 8
  %blocks65.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 2, i32 8
  %76 = ptrtoint ptr %blocks65.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %blocks65.i, align 8
  %qfs_nblks67.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 6, i32 1
  %78 = ptrtoint ptr %qfs_nblks67.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %qfs_nblks67.i, align 8
  %nextents70.i = getelementptr inbounds %struct.qc_state, ptr %state.i, i32 0, i32 1, i32 2, i32 9
  %79 = ptrtoint ptr %nextents70.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %nextents70.i, align 8
  %conv71.i = trunc i64 %80 to i32
  %qfs_nextents73.i = getelementptr inbounds %struct.fs_quota_statv, ptr %fqs, i32 0, i32 6, i32 2
  %81 = ptrtoint ptr %qfs_nextents73.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv71.i, ptr %qfs_nextents73.i, align 8
  br label %land.lhs.true

quota_getstatev.exit:                             ; preds = %if.end.i.quota_getstatev.exit_crit_edge, %sw.epilog.quota_getstatev.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %sw.epilog.quota_getstatev.exit_crit_edge ], [ -38, %if.end.i.quota_getstatev.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %state.i) #6
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then58.i, %if.end53.i.land.lhs.true_crit_edge
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %state.i) #6
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #6
  %call.i.i18 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i18, label %land.lhs.true.cleanup_crit_edge, label %if.end.i.i21

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i21:                                     ; preds = %land.lhs.true
  %82 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 160, i32 -1226833920) #9, !srcloc !79
  %asmresult.i.i19 = extractvalue { i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i19)
  %cmp.i6.i20 = icmp eq i32 %asmresult.i.i19, 0
  br i1 %cmp.i6.i20, label %copy_to_user.exit, label %if.end.i.i21.cleanup_crit_edge

if.end.i.i21.cleanup_crit_edge:                   ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i21
  %call.i.i.i22 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fqs, i32 noundef 160) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %addr, ptr noundef nonnull %fqs, i32 noundef 160) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool7.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool7.not, label %copy_to_user.exit.if.end9_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit.if.end9_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end9:                                          ; preds = %copy_to_user.exit.if.end9_crit_edge, %quota_getstatev.exit
  %retval.0.i31 = phi i32 [ 0, %copy_to_user.exit.if.end9_crit_edge ], [ %retval.0.i, %quota_getstatev.exit ]
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i31, %if.end9 ], [ -38, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %land.lhs.true.cleanup_crit_edge ], [ -14, %if.end.i.i21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %fqs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_setxquota(ptr noundef %sb, i32 noundef %type, i32 noundef %id, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %fdq = alloca %struct.fs_disk_quota, align 8
  %qdq = alloca %struct.qc_dqblk, align 8
  %qinfo = alloca %struct.qc_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %fdq) #6
  %0 = call ptr @memset(ptr %fdq, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %qdq) #6
  %1 = call ptr @memset(ptr %qdq, i32 255, i32 120)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 112, i32 -1226833920) #9, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !81

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fdq, i32 noundef 112) #6
  %3 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !82
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %fdq, ptr noundef %addr, i32 noundef 112) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !81

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i64 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 112, %entry.if.then11.i.i_crit_edge ], [ 112, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 112, %res.0.i.i64
  %add.ptr.i.i = getelementptr i8, ptr %fdq, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i64)
  br label %cleanup33

if.end:                                           ; preds = %if.end.i.i
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %7 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_qcop, align 4
  %set_dqblk = getelementptr inbounds %struct.quotactl_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %set_dqblk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_dqblk, align 4
  %tobool1.not = icmp eq ptr %10, null
  br i1 %tobool1.not, label %if.end.cleanup33_crit_edge, label %if.end3

if.end.cleanup33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end3:                                          ; preds = %if.end
  %11 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_ns, align 4
  %19 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %type, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @make_kuid(ptr noundef %18, i32 noundef %id) #6, !noalias !95
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = call i32 @make_kgid(ptr noundef %18, i32 noundef %id) #6, !noalias !95
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 @make_kprojid(ptr noundef %18, i32 noundef %id) #6, !noalias !95
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !noalias !95, !srcloc !88
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %20 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_user_ns, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call8.sink.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %type, 1
  %call.i59 = call i32 @from_kqid(ptr noundef %21, [2 x i32] %.fca.1.insert) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i59)
  %cmp.i.not = icmp eq i32 %call.i59, -1
  br i1 %cmp.i.not, label %make_kqid.exit.cleanup33_crit_edge, label %if.end9

make_kqid.exit.cleanup33_crit_edge:               ; preds = %make_kqid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end9:                                          ; preds = %make_kqid.exit
  %22 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_user_ns, align 8
  %call11 = call i32 @from_kqid(ptr noundef %23, [2 x i32] %.fca.1.insert) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %land.lhs.true, label %if.end9.if.end29_crit_edge

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end9
  %d_fieldmask = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 2
  %24 = ptrtoint ptr %d_fieldmask to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %d_fieldmask, align 2
  %26 = and i16 %25, 4032
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool12.not = icmp eq i16 %26, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end29_crit_edge, label %if.then13

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then13:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qinfo) #6
  %27 = call ptr @memset(ptr %qinfo, i32 255, i32 32)
  %28 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_qcop, align 4
  %set_info = getelementptr inbounds %struct.quotactl_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %set_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_info, align 4
  %tobool15.not = icmp eq ptr %31, null
  br i1 %tobool15.not, label %if.then13.cleanup.thread_crit_edge, label %if.end17

if.then13.cleanup.thread_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end17:                                         ; preds = %if.then13
  call fastcc void @copy_qcinfo_from_xfs_dqblk(ptr noundef nonnull %qinfo, ptr noundef nonnull %fdq)
  %32 = ptrtoint ptr %set_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_info, align 4
  %call20 = call i32 %33(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %qinfo) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end17.cleanup.thread_crit_edge

if.end17.cleanup.thread_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end17.cleanup.thread_crit_edge, %if.then13.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call20, %if.end17.cleanup.thread_crit_edge ], [ -22, %if.then13.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qinfo) #6
  br label %cleanup33

cleanup:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %d_fieldmask to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %d_fieldmask, align 2
  %36 = and i16 %35, -4033
  store i16 %36, ptr %d_fieldmask, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qinfo) #6
  br label %if.end29

if.end29:                                         ; preds = %cleanup, %land.lhs.true.if.end29_crit_edge, %if.end9.if.end29_crit_edge
  %d_blk_hardlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 4
  %37 = ptrtoint ptr %d_blk_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %d_blk_hardlimit.i, align 8
  %shl.i.i = shl i64 %38, 9
  %d_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 1
  %39 = ptrtoint ptr %d_spc_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %shl.i.i, ptr %d_spc_hardlimit.i, align 8
  %d_blk_softlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 5
  %40 = ptrtoint ptr %d_blk_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %d_blk_softlimit.i, align 8
  %shl.i193.i = shl i64 %41, 9
  %d_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 2
  %42 = ptrtoint ptr %d_spc_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %shl.i193.i, ptr %d_spc_softlimit.i, align 8
  %d_ino_hardlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 6
  %43 = ptrtoint ptr %d_ino_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %d_ino_hardlimit.i, align 8
  %d_ino_hardlimit2.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 3
  %45 = ptrtoint ptr %d_ino_hardlimit2.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %d_ino_hardlimit2.i, align 8
  %d_ino_softlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 7
  %46 = ptrtoint ptr %d_ino_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %d_ino_softlimit.i, align 8
  %d_ino_softlimit3.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 4
  %48 = ptrtoint ptr %d_ino_softlimit3.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %d_ino_softlimit3.i, align 8
  %d_bcount.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 8
  %49 = ptrtoint ptr %d_bcount.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %d_bcount.i, align 8
  %shl.i194.i = shl i64 %50, 9
  %d_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 5
  %51 = ptrtoint ptr %d_space.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %shl.i194.i, ptr %d_space.i, align 8
  %d_icount.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 9
  %52 = ptrtoint ptr %d_icount.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %d_icount.i, align 8
  %d_ino_count.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 6
  %54 = ptrtoint ptr %d_ino_count.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %d_ino_count.i, align 8
  %d_itimer.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 10
  %55 = ptrtoint ptr %d_itimer.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %d_itimer.i, align 8
  %d_fieldmask.i.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 2
  %57 = ptrtoint ptr %d_fieldmask.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %d_fieldmask.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %58)
  %tobool.not.i.i = icmp sgt i16 %58, -1
  br i1 %tobool.not.i.i, label %if.end.i204.i, label %if.then.i202.i

if.then.i202.i:                                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %d_itimer_hi.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 14
  %59 = ptrtoint ptr %d_itimer_hi.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %d_itimer_hi.i, align 4
  %conv1.i.i = zext i32 %56 to i64
  %conv2.i.i = sext i8 %60 to i64
  %shl.i195.i = shl nsw i64 %conv2.i.i, 32
  %or.i.i = or i64 %shl.i195.i, %conv1.i.i
  %d_btimer.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 11
  %61 = ptrtoint ptr %d_btimer.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %d_btimer.i, align 4
  %d_btimer_hi.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 15
  %63 = ptrtoint ptr %d_btimer_hi.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %d_btimer_hi.i, align 1
  %conv1.i198.i = zext i32 %62 to i64
  %conv2.i199.i = sext i8 %64 to i64
  %shl.i200.i = shl nsw i64 %conv2.i199.i, 32
  %or.i201.i = or i64 %shl.i200.i, %conv1.i198.i
  br label %copy_from_xfs_dqblk_ts.exit206.i

if.end.i204.i:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i.i = sext i32 %56 to i64
  %d_btimer.i71 = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 11
  %65 = ptrtoint ptr %d_btimer.i71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %d_btimer.i71, align 4
  %conv3.i203.i = sext i32 %66 to i64
  br label %copy_from_xfs_dqblk_ts.exit206.i

copy_from_xfs_dqblk_ts.exit206.i:                 ; preds = %if.end.i204.i, %if.then.i202.i
  %or.i.i.sink = phi i64 [ %conv3.i.i, %if.end.i204.i ], [ %or.i.i, %if.then.i202.i ]
  %retval.0.i205.i = phi i64 [ %conv3.i203.i, %if.end.i204.i ], [ %or.i201.i, %if.then.i202.i ]
  %67 = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 7
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %or.i.i.sink, ptr %67, align 8
  %d_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 8
  %69 = ptrtoint ptr %d_spc_timer.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %retval.0.i205.i, ptr %d_spc_timer.i, align 8
  %d_iwarns.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 12
  %70 = ptrtoint ptr %d_iwarns.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %d_iwarns.i, align 8
  %conv.i = zext i16 %71 to i32
  %d_ino_warns.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 9
  %72 = ptrtoint ptr %d_ino_warns.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv.i, ptr %d_ino_warns.i, align 8
  %d_bwarns.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 13
  %73 = ptrtoint ptr %d_bwarns.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %d_bwarns.i, align 2
  %conv7.i = zext i16 %74 to i32
  %d_spc_warns.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 10
  %75 = ptrtoint ptr %d_spc_warns.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv7.i, ptr %d_spc_warns.i, align 4
  %d_rtb_hardlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 18
  %76 = ptrtoint ptr %d_rtb_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %d_rtb_hardlimit.i, align 8
  %shl.i207.i = shl i64 %77, 9
  %d_rt_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 11
  %78 = ptrtoint ptr %d_rt_spc_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %shl.i207.i, ptr %d_rt_spc_hardlimit.i, align 8
  %d_rtb_softlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 19
  %79 = ptrtoint ptr %d_rtb_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %d_rtb_softlimit.i, align 8
  %shl.i208.i = shl i64 %80, 9
  %d_rt_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 12
  %81 = ptrtoint ptr %d_rt_spc_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %shl.i208.i, ptr %d_rt_spc_softlimit.i, align 8
  %d_rtbcount.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 20
  %82 = ptrtoint ptr %d_rtbcount.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %d_rtbcount.i, align 8
  %shl.i209.i = shl i64 %83, 9
  %d_rt_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 13
  %84 = ptrtoint ptr %d_rt_space.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %shl.i209.i, ptr %d_rt_space.i, align 8
  %d_rtbtimer.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 21
  %85 = ptrtoint ptr %d_rtbtimer.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %d_rtbtimer.i, align 8
  br i1 %tobool.not.i.i, label %if.end.i218.i, label %if.then.i216.i

if.then.i216.i:                                   ; preds = %copy_from_xfs_dqblk_ts.exit206.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_rtbtimer_hi.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 16
  %87 = ptrtoint ptr %d_rtbtimer_hi.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %d_rtbtimer_hi.i, align 2
  %conv1.i212.i = zext i32 %86 to i64
  %conv2.i213.i = sext i8 %88 to i64
  %shl.i214.i = shl nsw i64 %conv2.i213.i, 32
  %or.i215.i = or i64 %shl.i214.i, %conv1.i212.i
  br label %copy_from_xfs_dqblk_ts.exit220.i

if.end.i218.i:                                    ; preds = %copy_from_xfs_dqblk_ts.exit206.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i217.i = sext i32 %86 to i64
  br label %copy_from_xfs_dqblk_ts.exit220.i

copy_from_xfs_dqblk_ts.exit220.i:                 ; preds = %if.end.i218.i, %if.then.i216.i
  %retval.0.i219.i = phi i64 [ %or.i215.i, %if.then.i216.i ], [ %conv3.i217.i, %if.end.i218.i ]
  %d_rt_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 14
  %89 = ptrtoint ptr %d_rt_spc_timer.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %retval.0.i219.i, ptr %d_rt_spc_timer.i, align 8
  %d_rtbwarns.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 22
  %90 = ptrtoint ptr %d_rtbwarns.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %d_rtbwarns.i, align 4
  %conv12.i = zext i16 %91 to i32
  %d_rt_spc_warns.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 15
  %92 = ptrtoint ptr %d_rt_spc_warns.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv12.i, ptr %d_rt_spc_warns.i, align 8
  %93 = and i16 %58, 3
  %94 = zext i16 %93 to i32
  %95 = ptrtoint ptr %qdq to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %qdq, align 8
  %96 = and i16 %58, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool27.not.i = icmp eq i16 %96, 0
  br i1 %tobool27.not.i, label %copy_from_xfs_dqblk_ts.exit220.i.if.end31.i_crit_edge, label %if.then28.i

copy_from_xfs_dqblk_ts.exit220.i.if.end31.i_crit_edge: ; preds = %copy_from_xfs_dqblk_ts.exit220.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then28.i:                                      ; preds = %copy_from_xfs_dqblk_ts.exit220.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %qdq, align 8
  %or30.i = or i32 %98, 4
  store i32 %or30.i, ptr %qdq, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then28.i, %copy_from_xfs_dqblk_ts.exit220.i.if.end31.i_crit_edge
  %99 = and i16 %58, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool35.not.i = icmp eq i16 %99, 0
  br i1 %tobool35.not.i, label %if.end31.i.if.end39.i_crit_edge, label %if.then36.i

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %qdq, align 8
  %or38.i = or i32 %101, 8
  store i32 %or38.i, ptr %qdq, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %if.end31.i.if.end39.i_crit_edge
  %102 = and i16 %58, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool43.not.i = icmp eq i16 %102, 0
  br i1 %tobool43.not.i, label %if.end39.i.if.end47.i_crit_edge, label %if.then44.i

if.end39.i.if.end47.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %qdq, align 8
  %or46.i = or i32 %104, 16
  store i32 %or46.i, ptr %qdq, align 8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %if.end39.i.if.end47.i_crit_edge
  %105 = and i16 %58, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool51.not.i = icmp eq i16 %105, 0
  br i1 %tobool51.not.i, label %if.end47.i.if.end55.i_crit_edge, label %if.then52.i

if.end47.i.if.end55.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

if.then52.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %qdq, align 8
  %or54.i = or i32 %107, 32
  store i32 %or54.i, ptr %qdq, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %if.end47.i.if.end55.i_crit_edge
  %108 = and i16 %58, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool59.not.i = icmp eq i16 %108, 0
  br i1 %tobool59.not.i, label %if.end55.i.if.end63.i_crit_edge, label %if.then60.i

if.end55.i.if.end63.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

if.then60.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %qdq, align 8
  %or62.i = or i32 %110, 64
  store i32 %or62.i, ptr %qdq, align 8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then60.i, %if.end55.i.if.end63.i_crit_edge
  %111 = and i16 %58, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool67.not.i = icmp eq i16 %111, 0
  br i1 %tobool67.not.i, label %if.end63.i.if.end71.i_crit_edge, label %if.then68.i

if.end63.i.if.end71.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i

if.then68.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %qdq, align 8
  %or70.i = or i32 %113, 128
  store i32 %or70.i, ptr %qdq, align 8
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then68.i, %if.end63.i.if.end71.i_crit_edge
  %114 = and i16 %58, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool75.not.i = icmp eq i16 %114, 0
  br i1 %tobool75.not.i, label %if.end71.i.if.end79.i_crit_edge, label %if.then76.i

if.end71.i.if.end79.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79.i

if.then76.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qdq, align 8
  %or78.i = or i32 %116, 256
  store i32 %or78.i, ptr %qdq, align 8
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then76.i, %if.end71.i.if.end79.i_crit_edge
  %117 = and i16 %58, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool83.not.i = icmp eq i16 %117, 0
  br i1 %tobool83.not.i, label %if.end79.i.if.end87.i_crit_edge, label %if.then84.i

if.end79.i.if.end87.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i

if.then84.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %qdq, align 8
  %or86.i = or i32 %119, 512
  store i32 %or86.i, ptr %qdq, align 8
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then84.i, %if.end79.i.if.end87.i_crit_edge
  %120 = and i16 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool91.not.i = icmp eq i16 %120, 0
  br i1 %tobool91.not.i, label %if.end87.i.if.end95.i_crit_edge, label %if.then92.i

if.end87.i.if.end95.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.then92.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %qdq, align 8
  %or94.i = or i32 %122, 1024
  store i32 %or94.i, ptr %qdq, align 8
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then92.i, %if.end87.i.if.end95.i_crit_edge
  %123 = and i16 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool99.not.i = icmp eq i16 %123, 0
  br i1 %tobool99.not.i, label %if.end95.i.if.end103.i_crit_edge, label %if.then100.i

if.end95.i.if.end103.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103.i

if.then100.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %qdq, align 8
  %or102.i = or i32 %125, 2048
  store i32 %or102.i, ptr %qdq, align 8
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then100.i, %if.end95.i.if.end103.i_crit_edge
  %126 = and i16 %58, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool107.not.i = icmp eq i16 %126, 0
  br i1 %tobool107.not.i, label %if.end103.i.if.end111.i_crit_edge, label %if.then108.i

if.end103.i.if.end111.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111.i

if.then108.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %qdq, align 8
  %or110.i = or i32 %128, 4096
  store i32 %or110.i, ptr %qdq, align 8
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then108.i, %if.end103.i.if.end111.i_crit_edge
  %129 = and i16 %58, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool115.not.i = icmp eq i16 %129, 0
  br i1 %tobool115.not.i, label %if.end111.i.if.end119.i_crit_edge, label %if.then116.i

if.end111.i.if.end119.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.i

if.then116.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %qdq, align 8
  %or118.i = or i32 %131, 8192
  store i32 %or118.i, ptr %qdq, align 8
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then116.i, %if.end111.i.if.end119.i_crit_edge
  %132 = and i16 %58, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool123.not.i = icmp eq i16 %132, 0
  br i1 %tobool123.not.i, label %if.end119.i.copy_from_xfs_dqblk.exit_crit_edge, label %if.then124.i

if.end119.i.copy_from_xfs_dqblk.exit_crit_edge:   ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_from_xfs_dqblk.exit

if.then124.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %qdq to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %qdq, align 8
  %or126.i = or i32 %134, 16384
  store i32 %or126.i, ptr %qdq, align 8
  br label %copy_from_xfs_dqblk.exit

copy_from_xfs_dqblk.exit:                         ; preds = %if.then124.i, %if.end119.i.copy_from_xfs_dqblk.exit_crit_edge
  %135 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %s_qcop, align 4
  %set_dqblk31 = getelementptr inbounds %struct.quotactl_ops, ptr %136, i32 0, i32 8
  %137 = ptrtoint ptr %set_dqblk31 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %set_dqblk31, align 4
  %call32 = call i32 %138(ptr noundef %sb, [2 x i32] %.fca.1.insert, ptr noundef nonnull %qdq) #6
  br label %cleanup33

cleanup33:                                        ; preds = %copy_from_xfs_dqblk.exit, %cleanup.thread, %make_kqid.exit.cleanup33_crit_edge, %if.end.cleanup33_crit_edge, %if.then11.i.i
  %retval.1 = phi i32 [ %call32, %copy_from_xfs_dqblk.exit ], [ -38, %if.end.cleanup33_crit_edge ], [ -22, %make_kqid.exit.cleanup33_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %qdq) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %fdq) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_getxquota(ptr noundef %sb, i32 noundef %type, i32 noundef %id, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %fdq = alloca %struct.fs_disk_quota, align 8
  %qdq = alloca %struct.qc_dqblk, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %fdq) #6
  %0 = call ptr @memset(ptr %fdq, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %qdq) #6
  %1 = call ptr @memset(ptr %qdq, i32 255, i32 120)
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %2 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_qcop, align 4
  %get_dqblk = getelementptr inbounds %struct.quotactl_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_dqblk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_dqblk, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %14 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %type, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @make_kuid(ptr noundef %13, i32 noundef %id) #6, !noalias !98
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @make_kgid(ptr noundef %13, i32 noundef %id) #6, !noalias !98
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @make_kprojid(ptr noundef %13, i32 noundef %id) #6, !noalias !98
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !noalias !98, !srcloc !88
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %15 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_user_ns, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call8.sink.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %type, 1
  %call.i33 = tail call i32 @from_kqid(ptr noundef %16, [2 x i32] %.fca.1.insert) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i33)
  %cmp.i.not = icmp eq i32 %call.i33, -1
  br i1 %cmp.i.not, label %make_kqid.exit.cleanup_crit_edge, label %if.end5

make_kqid.exit.cleanup_crit_edge:                 ; preds = %make_kqid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %make_kqid.exit
  %17 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_qcop, align 4
  %get_dqblk7 = getelementptr inbounds %struct.quotactl_ops, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %get_dqblk7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_dqblk7, align 4
  %call8 = call i32 %20(ptr noundef %sb, [2 x i32] %.fca.1.insert, ptr noundef nonnull %qdq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %21 = call ptr @memset(ptr %fdq, i32 0, i32 112)
  %d_ino_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 7
  %22 = ptrtoint ptr %d_ino_timer.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %d_ino_timer.i, align 8
  %24 = add i64 %23, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967296, i64 %24)
  %25 = icmp ult i64 %24, -4294967296
  br i1 %25, label %if.end11.if.then.i_crit_edge, label %lor.lhs.false.i

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end11
  %d_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 8
  %26 = ptrtoint ptr %d_spc_timer.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %d_spc_timer.i, align 8
  %28 = add i64 %27, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967296, i64 %28)
  %29 = icmp ult i64 %28, -4294967296
  br i1 %29, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %d_rt_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 14
  %30 = ptrtoint ptr %d_rt_spc_timer.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %d_rt_spc_timer.i, align 8
  %32 = add i64 %31, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967296, i64 %32)
  %33 = icmp ult i64 %32, -4294967296
  br i1 %33, label %lor.lhs.false2.i.if.then.i_crit_edge, label %lor.lhs.false2.i.if.end.i_crit_edge

lor.lhs.false2.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end11.if.then.i_crit_edge
  %d_fieldmask.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 2
  %34 = ptrtoint ptr %d_fieldmask.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %d_fieldmask.i, align 2
  %36 = or i16 %35, -32768
  store i16 %36, ptr %d_fieldmask.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false2.i.if.end.i_crit_edge
  %37 = ptrtoint ptr %fdq to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %fdq, align 8
  %d_id.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 3
  %38 = ptrtoint ptr %d_id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %id, ptr %d_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %switch.selectcmp.i = icmp eq i32 %type, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i8 2, i8 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %switch.selectcmp100.i = icmp eq i32 %type, 0
  %switch.select101.i = select i1 %switch.selectcmp100.i, i8 1, i8 %switch.select.i
  %d_flags10.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 1
  %39 = ptrtoint ptr %d_flags10.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %switch.select101.i, ptr %d_flags10.i, align 1
  %d_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 1
  %40 = ptrtoint ptr %d_spc_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %d_spc_hardlimit.i, align 8
  %sub.i.i = add i64 %41, 511
  %shr.i.i = lshr i64 %sub.i.i, 9
  %d_blk_hardlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 4
  %42 = ptrtoint ptr %d_blk_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %shr.i.i, ptr %d_blk_hardlimit.i, align 8
  %d_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 2
  %43 = ptrtoint ptr %d_spc_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %d_spc_softlimit.i, align 8
  %sub.i74.i = add i64 %44, 511
  %shr.i75.i = lshr i64 %sub.i74.i, 9
  %d_blk_softlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 5
  %45 = ptrtoint ptr %d_blk_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %shr.i75.i, ptr %d_blk_softlimit.i, align 8
  %d_ino_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 3
  %46 = ptrtoint ptr %d_ino_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %d_ino_hardlimit.i, align 8
  %d_ino_hardlimit17.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 6
  %48 = ptrtoint ptr %d_ino_hardlimit17.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %d_ino_hardlimit17.i, align 8
  %d_ino_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 4
  %49 = ptrtoint ptr %d_ino_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %d_ino_softlimit.i, align 8
  %d_ino_softlimit18.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 7
  %51 = ptrtoint ptr %d_ino_softlimit18.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %d_ino_softlimit18.i, align 8
  %d_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 5
  %52 = ptrtoint ptr %d_space.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %d_space.i, align 8
  %sub.i76.i = add i64 %53, 511
  %shr.i77.i = lshr i64 %sub.i76.i, 9
  %d_bcount.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 8
  %54 = ptrtoint ptr %d_bcount.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %shr.i77.i, ptr %d_bcount.i, align 8
  %d_ino_count.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 6
  %55 = ptrtoint ptr %d_ino_count.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %d_ino_count.i, align 8
  %d_icount.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 9
  %57 = ptrtoint ptr %d_icount.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %d_icount.i, align 8
  %d_itimer.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 10
  %conv.i.i = trunc i64 %23 to i32
  %58 = ptrtoint ptr %d_itimer.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv.i.i, ptr %d_itimer.i, align 8
  %d_fieldmask.i.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 2
  %59 = ptrtoint ptr %d_fieldmask.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %d_fieldmask.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %60)
  %tobool.not.i.i = icmp sgt i16 %60, -1
  br i1 %tobool.not.i.i, label %copy_to_xfs_dqblk_ts.exit.thread.i, label %if.then.i82.i

copy_to_xfs_dqblk_ts.exit.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_spc_timer2198.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 8
  %61 = ptrtoint ptr %d_spc_timer2198.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %d_spc_timer2198.i, align 8
  %conv.i7899.i = trunc i64 %62 to i32
  br label %copy_to_xfs_dqblk_ts.exit83.i

if.then.i82.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_itimer_hi.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 14
  %63 = lshr i64 %23, 32
  %conv2.i.i = trunc i64 %63 to i8
  %64 = ptrtoint ptr %d_itimer_hi.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv2.i.i, ptr %d_itimer_hi.i, align 4
  %d_btimer_hi.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 15
  %d_spc_timer21.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 8
  %65 = ptrtoint ptr %d_spc_timer21.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %d_spc_timer21.i, align 8
  %conv.i78.i = trunc i64 %66 to i32
  %67 = lshr i64 %66, 32
  %conv2.i81.i = trunc i64 %67 to i8
  %68 = ptrtoint ptr %d_btimer_hi.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv2.i81.i, ptr %d_btimer_hi.i, align 1
  br label %copy_to_xfs_dqblk_ts.exit83.i

copy_to_xfs_dqblk_ts.exit83.i:                    ; preds = %if.then.i82.i, %copy_to_xfs_dqblk_ts.exit.thread.i
  %conv.i78.sink.i = phi i32 [ %conv.i7899.i, %copy_to_xfs_dqblk_ts.exit.thread.i ], [ %conv.i78.i, %if.then.i82.i ]
  %69 = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 11
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv.i78.sink.i, ptr %69, align 4
  %d_ino_warns.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 9
  %71 = ptrtoint ptr %d_ino_warns.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %d_ino_warns.i, align 8
  %conv22.i = trunc i32 %72 to i16
  %d_iwarns.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 12
  %73 = ptrtoint ptr %d_iwarns.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv22.i, ptr %d_iwarns.i, align 8
  %d_spc_warns.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 10
  %74 = ptrtoint ptr %d_spc_warns.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %d_spc_warns.i, align 4
  %conv23.i = trunc i32 %75 to i16
  %d_bwarns.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 13
  %76 = ptrtoint ptr %d_bwarns.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv23.i, ptr %d_bwarns.i, align 2
  %d_rt_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 11
  %77 = ptrtoint ptr %d_rt_spc_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %d_rt_spc_hardlimit.i, align 8
  %sub.i84.i = add i64 %78, 511
  %shr.i85.i = lshr i64 %sub.i84.i, 9
  %d_rtb_hardlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 18
  %79 = ptrtoint ptr %d_rtb_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %shr.i85.i, ptr %d_rtb_hardlimit.i, align 8
  %d_rt_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 12
  %80 = ptrtoint ptr %d_rt_spc_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %d_rt_spc_softlimit.i, align 8
  %sub.i86.i = add i64 %81, 511
  %shr.i87.i = lshr i64 %sub.i86.i, 9
  %d_rtb_softlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 19
  %82 = ptrtoint ptr %d_rtb_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %shr.i87.i, ptr %d_rtb_softlimit.i, align 8
  %d_rt_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 13
  %83 = ptrtoint ptr %d_rt_space.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %d_rt_space.i, align 8
  %sub.i88.i = add i64 %84, 511
  %shr.i89.i = lshr i64 %sub.i88.i, 9
  %d_rtbcount.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 20
  %85 = ptrtoint ptr %d_rtbcount.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %shr.i89.i, ptr %d_rtbcount.i, align 8
  %d_rtbtimer.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 21
  %d_rt_spc_timer27.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 14
  %86 = ptrtoint ptr %d_rt_spc_timer27.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %d_rt_spc_timer27.i, align 8
  %conv.i90.i = trunc i64 %87 to i32
  %88 = ptrtoint ptr %d_rtbtimer.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i90.i, ptr %d_rtbtimer.i, align 8
  br i1 %tobool.not.i.i, label %copy_to_xfs_dqblk_ts.exit83.i.copy_to_xfs_dqblk.exit_crit_edge, label %if.then.i94.i

copy_to_xfs_dqblk_ts.exit83.i.copy_to_xfs_dqblk.exit_crit_edge: ; preds = %copy_to_xfs_dqblk_ts.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_xfs_dqblk.exit

if.then.i94.i:                                    ; preds = %copy_to_xfs_dqblk_ts.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_rtbtimer_hi.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 16
  %89 = lshr i64 %87, 32
  %conv2.i93.i = trunc i64 %89 to i8
  %90 = ptrtoint ptr %d_rtbtimer_hi.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv2.i93.i, ptr %d_rtbtimer_hi.i, align 2
  br label %copy_to_xfs_dqblk.exit

copy_to_xfs_dqblk.exit:                           ; preds = %if.then.i94.i, %copy_to_xfs_dqblk_ts.exit83.i.copy_to_xfs_dqblk.exit_crit_edge
  %d_rt_spc_warns.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 15
  %91 = ptrtoint ptr %d_rt_spc_warns.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %d_rt_spc_warns.i, align 8
  %conv28.i = trunc i32 %92 to i16
  %d_rtbwarns.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 22
  %93 = ptrtoint ptr %d_rtbwarns.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv28.i, ptr %d_rtbwarns.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %copy_to_xfs_dqblk.exit.cleanup_crit_edge, label %if.end.i.i

copy_to_xfs_dqblk.exit.cleanup_crit_edge:         ; preds = %copy_to_xfs_dqblk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %copy_to_xfs_dqblk.exit
  %94 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 112, i32 -1226833920) #9, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fdq, i32 noundef 112) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %addr, ptr noundef nonnull %fdq, i32 noundef 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool13.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %copy_to_xfs_dqblk.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %make_kqid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ -22, %make_kqid.exit.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ -14, %copy_to_xfs_dqblk.exit.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %qdq) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %fdq) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quota_getnextxquota(ptr noundef %sb, i32 noundef %type, i32 noundef %id, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %fdq = alloca %struct.fs_disk_quota, align 8
  %qdq = alloca %struct.qc_dqblk, align 8
  %qid = alloca %struct.kqid, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %fdq) #6
  %0 = call ptr @memset(ptr %fdq, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %qdq) #6
  %1 = call ptr @memset(ptr %qdq, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qid) #6
  %2 = getelementptr inbounds %struct.kqid, ptr %qid, i32 0, i32 1
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %3 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_qcop, align 4
  %get_nextdqblk = getelementptr inbounds %struct.quotactl_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %get_nextdqblk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_nextdqblk, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_ns, align 4
  %15 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %type, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @make_kuid(ptr noundef %14, i32 noundef %id) #6, !noalias !101
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @make_kgid(ptr noundef %14, i32 noundef %id) #6, !noalias !101
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @make_kprojid(ptr noundef %14, i32 noundef %id) #6, !noalias !101
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !noalias !101, !srcloc !88
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %tmp.sroa.4.0.insert.ext = zext i32 %type to i64
  %tmp.sroa.0.0.insert.ext = zext i32 %call8.sink.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.insert.shift, %tmp.sroa.4.0.insert.ext
  %16 = ptrtoint ptr %qid to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %qid, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %17 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_user_ns, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call8.sink.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %type, 1
  %call.i42 = tail call i32 @from_kqid(ptr noundef %18, [2 x i32] %.fca.1.insert) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i42)
  %cmp.i.not = icmp eq i32 %call.i42, -1
  br i1 %cmp.i.not, label %make_kqid.exit.cleanup_crit_edge, label %if.end5

make_kqid.exit.cleanup_crit_edge:                 ; preds = %make_kqid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %make_kqid.exit
  %19 = ptrtoint ptr %s_qcop to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_qcop, align 4
  %get_nextdqblk7 = getelementptr inbounds %struct.quotactl_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %get_nextdqblk7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_nextdqblk7, align 4
  %call8 = call i32 %22(ptr noundef %sb, ptr noundef nonnull %qid, ptr noundef nonnull %qdq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end15, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end15:                                         ; preds = %if.end5
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %cred19 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 99
  %25 = ptrtoint ptr %cred19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cred19, align 16
  %user_ns20 = getelementptr inbounds %struct.cred, ptr %26, i32 0, i32 25
  %27 = ptrtoint ptr %user_ns20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %user_ns20, align 4
  %29 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.0.load33 = load i32, ptr %qid, align 8
  %.fca.0.insert34 = insertvalue [2 x i32] poison, i32 %.fca.0.load33, 0
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.1.load36 = load i32, ptr %2, align 4
  %.fca.1.insert37 = insertvalue [2 x i32] %.fca.0.insert34, i32 %.fca.1.load36, 1
  %call21 = call i32 @from_kqid(ptr noundef %28, [2 x i32] %.fca.1.insert37) #6
  %31 = call ptr @memset(ptr %fdq, i32 0, i32 112)
  %d_ino_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 7
  %32 = ptrtoint ptr %d_ino_timer.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %d_ino_timer.i, align 8
  %34 = add i64 %33, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967296, i64 %34)
  %35 = icmp ult i64 %34, -4294967296
  br i1 %35, label %do.end15.if.then.i_crit_edge, label %lor.lhs.false.i

do.end15.if.then.i_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.end15
  %d_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 8
  %36 = ptrtoint ptr %d_spc_timer.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %d_spc_timer.i, align 8
  %38 = add i64 %37, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967296, i64 %38)
  %39 = icmp ult i64 %38, -4294967296
  br i1 %39, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %d_rt_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 14
  %40 = ptrtoint ptr %d_rt_spc_timer.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %d_rt_spc_timer.i, align 8
  %42 = add i64 %41, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967296, i64 %42)
  %43 = icmp ult i64 %42, -4294967296
  br i1 %43, label %lor.lhs.false2.i.if.then.i_crit_edge, label %lor.lhs.false2.i.if.end.i_crit_edge

lor.lhs.false2.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %do.end15.if.then.i_crit_edge
  %d_fieldmask.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 2
  %44 = ptrtoint ptr %d_fieldmask.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %d_fieldmask.i, align 2
  %46 = or i16 %45, -32768
  store i16 %46, ptr %d_fieldmask.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false2.i.if.end.i_crit_edge
  %47 = ptrtoint ptr %fdq to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %fdq, align 8
  %d_id.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 3
  %48 = ptrtoint ptr %d_id.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call21, ptr %d_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %switch.selectcmp.i = icmp eq i32 %type, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i8 2, i8 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %switch.selectcmp100.i = icmp eq i32 %type, 0
  %switch.select101.i = select i1 %switch.selectcmp100.i, i8 1, i8 %switch.select.i
  %d_flags10.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 1
  %49 = ptrtoint ptr %d_flags10.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %switch.select101.i, ptr %d_flags10.i, align 1
  %d_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 1
  %50 = ptrtoint ptr %d_spc_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %d_spc_hardlimit.i, align 8
  %sub.i.i = add i64 %51, 511
  %shr.i.i = lshr i64 %sub.i.i, 9
  %d_blk_hardlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 4
  %52 = ptrtoint ptr %d_blk_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %shr.i.i, ptr %d_blk_hardlimit.i, align 8
  %d_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 2
  %53 = ptrtoint ptr %d_spc_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %d_spc_softlimit.i, align 8
  %sub.i74.i = add i64 %54, 511
  %shr.i75.i = lshr i64 %sub.i74.i, 9
  %d_blk_softlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 5
  %55 = ptrtoint ptr %d_blk_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %shr.i75.i, ptr %d_blk_softlimit.i, align 8
  %d_ino_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 3
  %56 = ptrtoint ptr %d_ino_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %d_ino_hardlimit.i, align 8
  %d_ino_hardlimit17.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 6
  %58 = ptrtoint ptr %d_ino_hardlimit17.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %d_ino_hardlimit17.i, align 8
  %d_ino_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 4
  %59 = ptrtoint ptr %d_ino_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %d_ino_softlimit.i, align 8
  %d_ino_softlimit18.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 7
  %61 = ptrtoint ptr %d_ino_softlimit18.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %d_ino_softlimit18.i, align 8
  %d_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 5
  %62 = ptrtoint ptr %d_space.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %d_space.i, align 8
  %sub.i76.i = add i64 %63, 511
  %shr.i77.i = lshr i64 %sub.i76.i, 9
  %d_bcount.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 8
  %64 = ptrtoint ptr %d_bcount.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %shr.i77.i, ptr %d_bcount.i, align 8
  %d_ino_count.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 6
  %65 = ptrtoint ptr %d_ino_count.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %d_ino_count.i, align 8
  %d_icount.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 9
  %67 = ptrtoint ptr %d_icount.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %d_icount.i, align 8
  %d_itimer.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 10
  %conv.i.i = trunc i64 %33 to i32
  %68 = ptrtoint ptr %d_itimer.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv.i.i, ptr %d_itimer.i, align 8
  %d_fieldmask.i.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 2
  %69 = ptrtoint ptr %d_fieldmask.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %d_fieldmask.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %70)
  %tobool.not.i.i = icmp sgt i16 %70, -1
  br i1 %tobool.not.i.i, label %copy_to_xfs_dqblk_ts.exit.thread.i, label %if.then.i82.i

copy_to_xfs_dqblk_ts.exit.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_spc_timer2198.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 8
  %71 = ptrtoint ptr %d_spc_timer2198.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %d_spc_timer2198.i, align 8
  %conv.i7899.i = trunc i64 %72 to i32
  br label %copy_to_xfs_dqblk_ts.exit83.i

if.then.i82.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_itimer_hi.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 14
  %73 = lshr i64 %33, 32
  %conv2.i.i = trunc i64 %73 to i8
  %74 = ptrtoint ptr %d_itimer_hi.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv2.i.i, ptr %d_itimer_hi.i, align 4
  %d_btimer_hi.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 15
  %d_spc_timer21.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 8
  %75 = ptrtoint ptr %d_spc_timer21.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %d_spc_timer21.i, align 8
  %conv.i78.i = trunc i64 %76 to i32
  %77 = lshr i64 %76, 32
  %conv2.i81.i = trunc i64 %77 to i8
  %78 = ptrtoint ptr %d_btimer_hi.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv2.i81.i, ptr %d_btimer_hi.i, align 1
  br label %copy_to_xfs_dqblk_ts.exit83.i

copy_to_xfs_dqblk_ts.exit83.i:                    ; preds = %if.then.i82.i, %copy_to_xfs_dqblk_ts.exit.thread.i
  %conv.i78.sink.i = phi i32 [ %conv.i7899.i, %copy_to_xfs_dqblk_ts.exit.thread.i ], [ %conv.i78.i, %if.then.i82.i ]
  %79 = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 11
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i78.sink.i, ptr %79, align 4
  %d_ino_warns.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 9
  %81 = ptrtoint ptr %d_ino_warns.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %d_ino_warns.i, align 8
  %conv22.i = trunc i32 %82 to i16
  %d_iwarns.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 12
  %83 = ptrtoint ptr %d_iwarns.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv22.i, ptr %d_iwarns.i, align 8
  %d_spc_warns.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 10
  %84 = ptrtoint ptr %d_spc_warns.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %d_spc_warns.i, align 4
  %conv23.i = trunc i32 %85 to i16
  %d_bwarns.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 13
  %86 = ptrtoint ptr %d_bwarns.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv23.i, ptr %d_bwarns.i, align 2
  %d_rt_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 11
  %87 = ptrtoint ptr %d_rt_spc_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %d_rt_spc_hardlimit.i, align 8
  %sub.i84.i = add i64 %88, 511
  %shr.i85.i = lshr i64 %sub.i84.i, 9
  %d_rtb_hardlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 18
  %89 = ptrtoint ptr %d_rtb_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %shr.i85.i, ptr %d_rtb_hardlimit.i, align 8
  %d_rt_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 12
  %90 = ptrtoint ptr %d_rt_spc_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %d_rt_spc_softlimit.i, align 8
  %sub.i86.i = add i64 %91, 511
  %shr.i87.i = lshr i64 %sub.i86.i, 9
  %d_rtb_softlimit.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 19
  %92 = ptrtoint ptr %d_rtb_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %shr.i87.i, ptr %d_rtb_softlimit.i, align 8
  %d_rt_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 13
  %93 = ptrtoint ptr %d_rt_space.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %d_rt_space.i, align 8
  %sub.i88.i = add i64 %94, 511
  %shr.i89.i = lshr i64 %sub.i88.i, 9
  %d_rtbcount.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 20
  %95 = ptrtoint ptr %d_rtbcount.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %shr.i89.i, ptr %d_rtbcount.i, align 8
  %d_rtbtimer.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 21
  %d_rt_spc_timer27.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 14
  %96 = ptrtoint ptr %d_rt_spc_timer27.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %d_rt_spc_timer27.i, align 8
  %conv.i90.i = trunc i64 %97 to i32
  %98 = ptrtoint ptr %d_rtbtimer.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv.i90.i, ptr %d_rtbtimer.i, align 8
  br i1 %tobool.not.i.i, label %copy_to_xfs_dqblk_ts.exit83.i.copy_to_xfs_dqblk.exit_crit_edge, label %if.then.i94.i

copy_to_xfs_dqblk_ts.exit83.i.copy_to_xfs_dqblk.exit_crit_edge: ; preds = %copy_to_xfs_dqblk_ts.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_xfs_dqblk.exit

if.then.i94.i:                                    ; preds = %copy_to_xfs_dqblk_ts.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_rtbtimer_hi.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 16
  %99 = lshr i64 %97, 32
  %conv2.i93.i = trunc i64 %99 to i8
  %100 = ptrtoint ptr %d_rtbtimer_hi.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv2.i93.i, ptr %d_rtbtimer_hi.i, align 2
  br label %copy_to_xfs_dqblk.exit

copy_to_xfs_dqblk.exit:                           ; preds = %if.then.i94.i, %copy_to_xfs_dqblk_ts.exit83.i.copy_to_xfs_dqblk.exit_crit_edge
  %d_rt_spc_warns.i = getelementptr inbounds %struct.qc_dqblk, ptr %qdq, i32 0, i32 15
  %101 = ptrtoint ptr %d_rt_spc_warns.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %d_rt_spc_warns.i, align 8
  %conv28.i = trunc i32 %102 to i16
  %d_rtbwarns.i = getelementptr inbounds %struct.fs_disk_quota, ptr %fdq, i32 0, i32 22
  %103 = ptrtoint ptr %d_rtbwarns.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv28.i, ptr %d_rtbwarns.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %copy_to_xfs_dqblk.exit.cleanup_crit_edge, label %if.end.i.i

copy_to_xfs_dqblk.exit.cleanup_crit_edge:         ; preds = %copy_to_xfs_dqblk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %copy_to_xfs_dqblk.exit
  %104 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addr, i32 112, i32 -1226833920) #9, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fdq, i32 noundef 112) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %addr, ptr noundef nonnull %fdq, i32 noundef 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool23.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool23.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %copy_to_xfs_dqblk.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %make_kqid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ -22, %make_kqid.exit.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ -14, %copy_to_xfs_dqblk.exit.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qid) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %qdq) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %fdq) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_egroup_p([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kqid(ptr noundef, [2 x i32]) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @copy_qcinfo_from_xfs_dqblk(ptr nocapture noundef %dst, ptr nocapture noundef readonly %src) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %dst, i32 0, i32 32)
  %d_btimer = getelementptr inbounds %struct.fs_disk_quota, ptr %src, i32 0, i32 11
  %1 = ptrtoint ptr %d_btimer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %d_btimer, align 4
  %i_spc_timelimit = getelementptr inbounds %struct.qc_info, ptr %dst, i32 0, i32 2
  %3 = ptrtoint ptr %i_spc_timelimit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %i_spc_timelimit, align 4
  %d_itimer = getelementptr inbounds %struct.fs_disk_quota, ptr %src, i32 0, i32 10
  %4 = ptrtoint ptr %d_itimer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_itimer, align 8
  %i_ino_timelimit = getelementptr inbounds %struct.qc_info, ptr %dst, i32 0, i32 3
  %6 = ptrtoint ptr %i_ino_timelimit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %i_ino_timelimit, align 4
  %d_rtbtimer = getelementptr inbounds %struct.fs_disk_quota, ptr %src, i32 0, i32 21
  %7 = ptrtoint ptr %d_rtbtimer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_rtbtimer, align 8
  %i_rt_spc_timelimit = getelementptr inbounds %struct.qc_info, ptr %dst, i32 0, i32 4
  %9 = ptrtoint ptr %i_rt_spc_timelimit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %i_rt_spc_timelimit, align 4
  %d_iwarns = getelementptr inbounds %struct.fs_disk_quota, ptr %src, i32 0, i32 12
  %10 = ptrtoint ptr %d_iwarns to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %d_iwarns, align 8
  %conv = zext i16 %11 to i32
  %i_ino_warnlimit = getelementptr inbounds %struct.qc_info, ptr %dst, i32 0, i32 6
  %12 = ptrtoint ptr %i_ino_warnlimit to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %i_ino_warnlimit, align 4
  %d_bwarns = getelementptr inbounds %struct.fs_disk_quota, ptr %src, i32 0, i32 13
  %13 = ptrtoint ptr %d_bwarns to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %d_bwarns, align 2
  %conv1 = zext i16 %14 to i32
  %i_spc_warnlimit = getelementptr inbounds %struct.qc_info, ptr %dst, i32 0, i32 5
  %15 = ptrtoint ptr %i_spc_warnlimit to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv1, ptr %i_spc_warnlimit, align 4
  %d_rtbwarns = getelementptr inbounds %struct.fs_disk_quota, ptr %src, i32 0, i32 22
  %16 = ptrtoint ptr %d_rtbwarns to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %d_rtbwarns, align 4
  %conv2 = zext i16 %17 to i32
  %i_rt_spc_warnlimit = getelementptr inbounds %struct.qc_info, ptr %dst, i32 0, i32 7
  %18 = ptrtoint ptr %i_rt_spc_warnlimit to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv2, ptr %i_rt_spc_warnlimit, align 4
  %d_fieldmask = getelementptr inbounds %struct.fs_disk_quota, ptr %src, i32 0, i32 2
  %19 = ptrtoint ptr %d_fieldmask to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %d_fieldmask, align 2
  %21 = and i16 %20, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp eq i16 %21, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dst, align 4
  %or = or i32 %23, 512
  store i32 %or, ptr %dst, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %d_fieldmask to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %d_fieldmask, align 2
  %26 = and i16 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool7.not = icmp eq i16 %26, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dst, align 4
  %or10 = or i32 %28, 1024
  store i32 %or10, ptr %dst, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %29 = ptrtoint ptr %d_fieldmask to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %d_fieldmask, align 2
  %31 = and i16 %30, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool15.not = icmp eq i16 %31, 0
  br i1 %tobool15.not, label %if.end11.if.end19_crit_edge, label %if.then16

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dst, align 4
  %or18 = or i32 %33, 2048
  store i32 %or18, ptr %dst, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end11.if.end19_crit_edge
  %34 = ptrtoint ptr %d_fieldmask to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %d_fieldmask, align 2
  %36 = and i16 %35, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool23.not = icmp eq i16 %36, 0
  br i1 %tobool23.not, label %if.end19.if.end27_crit_edge, label %if.then24

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dst, align 4
  %or26 = or i32 %38, 64
  store i32 %or26, ptr %dst, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end19.if.end27_crit_edge
  %39 = ptrtoint ptr %d_fieldmask to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %d_fieldmask, align 2
  %41 = and i16 %40, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool31.not = icmp eq i16 %41, 0
  br i1 %tobool31.not, label %if.end27.if.end35_crit_edge, label %if.then32

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dst, align 4
  %or34 = or i32 %43, 128
  store i32 %or34, ptr %dst, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end27.if.end35_crit_edge
  %44 = ptrtoint ptr %d_fieldmask to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %d_fieldmask, align 2
  %46 = and i16 %45, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool39.not = icmp eq i16 %46, 0
  br i1 %tobool39.not, label %if.end35.if.end43_crit_edge, label %if.then40

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dst, align 4
  %or42 = or i32 %48, 256
  store i32 %or42, ptr %dst, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end35.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/quota/quota.c", i32 916, i32 1}
!2 = !{ptr @event_enter__quotactl, !1, !"event_enter__quotactl", i1 false, i1 false}
!3 = !{ptr @__event_enter__quotactl, !1, !"__event_enter__quotactl", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__quotactl, !1, !"event_exit__quotactl", i1 false, i1 false}
!6 = !{ptr @__event_exit__quotactl, !1, !"__event_exit__quotactl", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__quotactl, !1, !"__syscall_meta__quotactl", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__quotactl, !1, !"__p_syscall_meta__quotactl", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/quota/quota.c", i32 972, i32 1}
!12 = !{ptr @event_enter__quotactl_fd, !11, !"event_enter__quotactl_fd", i1 false, i1 false}
!13 = !{ptr @__event_enter__quotactl_fd, !11, !"__event_enter__quotactl_fd", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__quotactl_fd, !11, !"event_exit__quotactl_fd", i1 false, i1 false}
!16 = !{ptr @__event_exit__quotactl_fd, !11, !"__event_exit__quotactl_fd", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__quotactl_fd, !11, !"__syscall_meta__quotactl_fd", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__quotactl_fd, !11, !"__p_syscall_meta__quotactl_fd", i1 false, i1 false}
!20 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @types__quotactl, !1, !"types__quotactl", i1 false, i1 false}
!25 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @args__quotactl, !1, !"args__quotactl", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/quota/quota.c", i32 898, i32 3}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../fs/quota/quota.c", i32 42, i32 35}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../fs/quota/quota.c", i32 42, i32 61}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../fs/quota/quota.c", i32 43, i32 50}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!40 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../fs/quota/quota.c", i32 211, i32 18}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../fs/quota/quota.c", i32 247, i32 18}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../fs/quota/quota.c", i32 255, i32 25}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../fs/quota/quota.c", i32 306, i32 18}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../fs/quota/quota.c", i32 635, i32 18}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../fs/quota/quota.c", i32 715, i32 18}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../fs/quota/quota.c", i32 742, i32 18}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../fs/quota/quota.c", i32 748, i32 21}
!61 = !{ptr @types__quotactl_fd, !11, !"types__quotactl_fd", i1 false, i1 false}
!62 = !{ptr @.str.22, !11, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @args__quotactl_fd, !11, !"args__quotactl_fd", i1 false, i1 false}
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
!74 = !{!"auto-init"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"fdget_raw: %agg.result"}
!77 = distinct !{!77, !"fdget_raw"}
!78 = !{i64 792757, i64 792774}
!79 = !{i64 2152191740, i64 2152191765}
!80 = !{i64 2152191059, i64 2152191084}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 4686614}
!83 = !{i64 4686811}
!84 = !{i64 2152172044}
!85 = !{!86}
!86 = distinct !{!86, !87, !"make_kqid: %agg.result"}
!87 = distinct !{!87, !"make_kqid"}
!88 = !{i64 2152500205, i64 2152500691, i64 2152500242, i64 2152500298, i64 2152500332, i64 2152500356, i64 2152500397, i64 2152500418, i64 2152500446, i64 2152500480}
!89 = !{!90}
!90 = distinct !{!90, !91, !"make_kqid: %agg.result"}
!91 = distinct !{!91, !"make_kqid"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"make_kqid: %agg.result"}
!94 = distinct !{!94, !"make_kqid"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"make_kqid: %agg.result"}
!97 = distinct !{!97, !"make_kqid"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"make_kqid: %agg.result"}
!100 = distinct !{!100, !"make_kqid"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"make_kqid: %agg.result"}
!103 = distinct !{!103, !"make_kqid"}
