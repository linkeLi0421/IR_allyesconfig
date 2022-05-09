; ModuleID = '/llk/IR_all_yes/security/tomoyo/common.c_pt.bc'
source_filename = "../security/tomoyo/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.tomoyo_profile = type { ptr, ptr, ptr, ptr, %struct.tomoyo_preference, i8, [42 x i8], [2 x i32] }
%struct.tomoyo_preference = type { i32, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tomoyo_policy_namespace = type { [256 x ptr], [3 x %struct.list_head], [11 x %struct.list_head], [256 x %struct.list_head], %struct.list_head, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.158 = type { ptr, ptr }
%struct.tomoyo_domain_info = type { %struct.list_head, %struct.list_head, ptr, ptr, [8 x i32], i8, i8, [2 x i8], %struct.atomic_t }
%struct.pid_namespace = type opaque
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list = type { ptr }
%struct.tomoyo_query = type { %struct.list_head, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tomoyo_request_info = type { ptr, ptr, ptr, %union.anon.130, ptr, i8, i8, i8, i8, i8, i8 }
%union.anon.130 = type { %struct.anon.133 }
%struct.anon.133 = type { ptr, i32, i32, i32, i8 }
%struct.tomoyo_io_buffer = type { ptr, ptr, ptr, %struct.mutex, ptr, i32, %struct.anon.156, %struct.anon.157, ptr, i32, ptr, i32, i32, i8, %struct.list_head }
%struct.anon.156 = type { ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [64 x ptr] }
%struct.anon.157 = type { ptr, ptr, i32, i8 }
%struct.file = type { %union.anon.140, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.140 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.tomoyo_path_info = type { ptr, i32, i16, i8, i8 }
%struct.tomoyo_acl_param = type { ptr, ptr, ptr, i8 }
%struct.tomoyo_acl_head = type <{ %struct.list_head, i8 }>
%struct.tomoyo_transition_control = type { %struct.tomoyo_acl_head, i8, i8, ptr, ptr }
%struct.tomoyo_aggregator = type { %struct.tomoyo_acl_head, ptr, ptr }
%struct.tomoyo_group = type { %struct.tomoyo_shared_acl_head, ptr, %struct.list_head }
%struct.tomoyo_shared_acl_head = type { %struct.list_head, %struct.atomic_t }
%struct.tomoyo_path_group = type { %struct.tomoyo_acl_head, ptr }
%struct.tomoyo_number_group = type { %struct.tomoyo_acl_head, %struct.tomoyo_number_union }
%struct.tomoyo_number_union = type { [2 x i32], ptr, [2 x i8] }
%struct.tomoyo_address_group = type { %struct.tomoyo_acl_head, %struct.tomoyo_ipaddr_union }
%struct.tomoyo_ipaddr_union = type { [2 x %struct.in6_addr], ptr, i8 }
%struct.in6_addr = type { %union.anon.80 }
%union.anon.80 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.110 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tomoyo_time = type { i16, i8, i8, i8, i8, i8 }
%struct.tomoyo_manager = type { %struct.tomoyo_acl_head, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.tomoyo_task_acl = type { %struct.tomoyo_acl_info, ptr }
%struct.tomoyo_acl_info = type <{ %struct.list_head, ptr, i8, i8 }>
%struct.tomoyo_path_acl = type { %struct.tomoyo_acl_info, i16, %struct.tomoyo_name_union }
%struct.tomoyo_name_union = type { ptr, ptr }
%struct.tomoyo_path2_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_name_union }
%struct.tomoyo_path_number_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_number_union }
%struct.tomoyo_mkdev_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_number_union, %struct.tomoyo_number_union, %struct.tomoyo_number_union }
%struct.tomoyo_inet_acl = type { %struct.tomoyo_acl_info, i8, i8, %struct.tomoyo_ipaddr_union, %struct.tomoyo_number_union }
%struct.tomoyo_unix_acl = type { %struct.tomoyo_acl_info, i8, i8, %struct.tomoyo_name_union }
%struct.tomoyo_mount_acl = type { %struct.tomoyo_acl_info, %struct.tomoyo_name_union, %struct.tomoyo_name_union, %struct.tomoyo_name_union, %struct.tomoyo_number_union }
%struct.tomoyo_env_acl = type { %struct.tomoyo_acl_info, ptr }
%struct.tomoyo_condition = type { %struct.tomoyo_shared_acl_head, i32, i16, i16, i16, i16, i16, i8, ptr }
%struct.tomoyo_condition_element = type { i8, i8, i8 }
%struct.tomoyo_argv = type { i32, ptr, i8 }
%struct.tomoyo_envp = type { ptr, ptr, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"learning\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"permissive\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enforcing\00", [22 x i8] zeroinitializer }, align 32
@tomoyo_mode = dso_local constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"execute\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unlink\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"getattr\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mkdir\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rmdir\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mkfifo\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mksock\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"truncate\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"symlink\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mkblock\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mkchar\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rename\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chmod\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chown\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chgrp\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ioctl\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chroot\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mount\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unmount\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pivot_root\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inet_stream_bind\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inet_stream_listen\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inet_stream_connect\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inet_dgram_bind\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inet_dgram_send\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inet_raw_bind\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inet_raw_send\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unix_stream_bind\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unix_stream_listen\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unix_stream_connect\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unix_dgram_bind\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unix_dgram_send\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unix_seqpacket_bind\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unix_seqpacket_listen\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unix_seqpacket_connect\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"env\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"network\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@tomoyo_mac_keywords = dso_local constant { [42 x ptr], [56 x i8] } { [42 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"task.uid\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"task.euid\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"task.suid\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"task.fsuid\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"task.gid\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"task.egid\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"task.sgid\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"task.fsgid\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"task.pid\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"task.ppid\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exec.argc\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exec.envc\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"socket\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"block\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"directory\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"char\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fifo\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"setuid\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"setgid\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sticky\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"owner_read\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"owner_write\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"owner_execute\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"group_read\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"group_write\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"group_execute\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"others_read\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"others_write\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"others_execute\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exec.realpath\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"symlink.target\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path1.uid\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path1.gid\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path1.ino\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"path1.major\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"path1.minor\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"path1.perm\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"path1.type\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"path1.dev_major\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"path1.dev_minor\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path2.uid\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path2.gid\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path2.ino\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"path2.major\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"path2.minor\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"path2.perm\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"path2.type\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"path2.dev_major\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"path2.dev_minor\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"path1.parent.uid\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"path1.parent.gid\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"path1.parent.ino\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"path1.parent.perm\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"path2.parent.uid\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"path2.parent.gid\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"path2.parent.ino\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"path2.parent.perm\00", [46 x i8] zeroinitializer }, align 32
@tomoyo_condition_keyword = dso_local constant { [59 x ptr], [52 x i8] } { [59 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.14, ptr @.str.43, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], [52 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"append\00", [25 x i8] zeroinitializer }, align 32
@tomoyo_path_keyword = dso_local constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.4, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.23, ptr @.str.25], [52 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bind\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"listen\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"connect\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"send\00", [27 x i8] zeroinitializer }, align 32
@tomoyo_socket_keyword = dso_local constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@tomoyo_namespace_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tomoyo_namespace_list, ptr @tomoyo_namespace_list }, [24 x i8] zeroinitializer }, align 32
@tomoyo_namespace_enabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@tomoyo_profile.tomoyo_null_profile = internal global { %struct.tomoyo_profile, [52 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"quota_exceeded\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"transition_failed\0A\00", [45 x i8] zeroinitializer }, align 32
@tomoyo_dif = dso_local constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.112, ptr @.str.113], [24 x i8] zeroinitializer }, align 32
@tomoyo_supervisor.tomoyo_serial = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tomoyo_query_observers = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@tomoyo_query_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.153, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@tomoyo_memory_quota = external dso_local global [3 x i32], align 4
@tomoyo_memory_used = external dso_local local_unnamed_addr global [3 x i32], align 4
@tomoyo_query_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tomoyo_query_list, ptr @tomoyo_query_list }, [24 x i8] zeroinitializer }, align 32
@tomoyo_query_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.154, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @tomoyo_query_wait, i64 44), ptr getelementptr (i8, ptr @tomoyo_query_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/tomoyo/common.c\00", [39 x i8] zeroinitializer }, align 32
@tomoyo_answer_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.155, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @tomoyo_answer_wait, i64 44), ptr getelementptr (i8, ptr @tomoyo_answer_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@tomoyo_stat_updated = internal global { [4 x %struct.atomic_t], [16 x i8] } zeroinitializer, align 32
@tomoyo_stat_modified = internal global { [4 x i64], [32 x i8] } zeroinitializer, align 32
@tomoyo_open_control.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&head->io_sem\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@tomoyo_kernel_namespace = external dso_local global %struct.tomoyo_policy_namespace, align 4
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"select transition_only\00", [41 x i8] zeroinitializer }, align 32
@tomoyo_policy_loaded = external dso_local local_unnamed_addr global i8, align 1
@tomoyo_check_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.114, i32 2777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016TOMOYO: 2.6.0\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tomoyo_check_profile\00", [43 x i8] zeroinitializer }, align 32
@tomoyo_check_profile._entry_ptr = internal global ptr @tomoyo_check_profile._entry, section ".printk_index", align 4
@tomoyo_check_profile.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_ss = external dso_local global %struct.srcu_struct, align 4
@.str.120 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@tomoyo_domain_list = external dso_local global %struct.list_head, align 4
@tomoyo_check_profile.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tomoyo_check_profile._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.119, ptr @.str.114, i32 2785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016Converting profile version from %u to %u.\0A\00", [51 x i8] zeroinitializer }, align 32
@tomoyo_check_profile._entry_ptr.123 = internal global ptr @tomoyo_check_profile._entry.121, section ".printk_index", align 4
@tomoyo_check_profile._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.119, ptr @.str.114, i32 2790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Profile version %u is not supported.\0A\00", [56 x i8] zeroinitializer }, align 32
@tomoyo_check_profile._entry_ptr.126 = internal global ptr @tomoyo_check_profile._entry.124, section ".printk_index", align 4
@tomoyo_check_profile._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.119, ptr @.str.114, i32 2793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Profile %u (used by '%s') is not defined.\0A\00", [51 x i8] zeroinitializer }, align 32
@tomoyo_check_profile._entry_ptr.129 = internal global ptr @tomoyo_check_profile._entry.127, section ".printk_index", align 4
@tomoyo_check_profile._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.119, ptr @.str.114, i32 2796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013Userland tools for TOMOYO 2.6 must be installed and policy must be initialized.\0A\00", [45 x i8] zeroinitializer }, align 32
@tomoyo_check_profile._entry_ptr.132 = internal global ptr @tomoyo_check_profile._entry.130, section ".printk_index", align 4
@tomoyo_check_profile._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.119, ptr @.str.114, i32 2797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013Please see https://tomoyo.osdn.jp/2.6/ for more information.\0A\00", [32 x i8] zeroinitializer }, align 32
@tomoyo_check_profile._entry_ptr.135 = internal global ptr @tomoyo_check_profile._entry.133, section ".printk_index", align 4
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"STOP!\00", [26 x i8] zeroinitializer }, align 32
@tomoyo_check_profile._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.119, ptr @.str.114, i32 2801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016Mandatory Access Control activated.\0A\00", [57 x i8] zeroinitializer }, align 32
@tomoyo_check_profile._entry_ptr.139 = internal global ptr @tomoyo_check_profile._entry.137, section ".printk_index", align 4
@tomoyo_load_builtin_policy.tomoyo_builtin_profile = internal global [81 x i8] c"PROFILE_VERSION=20150505\0A0-CONFIG={ mode=learning grant_log=no reject_log=yes }\0A\00", section ".init.data", align 1
@tomoyo_load_builtin_policy.tomoyo_builtin_exception_policy = internal global [42 x i8] c"aggregator proc:/self/exe /proc/self/exe\0A\00", section ".init.data", align 1
@tomoyo_load_builtin_policy.tomoyo_builtin_domain_policy = internal global [1 x i8] zeroinitializer, section ".init.data", align 1
@tomoyo_load_builtin_policy.tomoyo_builtin_manager = internal global [1 x i8] zeroinitializer, section ".init.data", align 1
@tomoyo_load_builtin_policy.tomoyo_builtin_stat = internal global [1 x i8] zeroinitializer, section ".init.data", align 1
@.str.140 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" argv[]={ \22\00", [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" exec={ realpath=\22\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" symlink.target=\22\00", [46 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" exec.%s\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" exec.argv[0]=%s\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tomoyo_write_domain2.tomoyo_callback = internal constant { [5 x %struct.anon.158], [56 x i8] } { [5 x %struct.anon.158] [%struct.anon.158 { ptr @.str.147, ptr @tomoyo_write_file }, %struct.anon.158 { ptr @.str.148, ptr @tomoyo_write_inet_network }, %struct.anon.158 { ptr @.str.149, ptr @tomoyo_write_unix_network }, %struct.anon.158 { ptr @.str.150, ptr @tomoyo_write_misc }, %struct.anon.158 { ptr @.str.151, ptr @tomoyo_write_task }], [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"file \00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"network inet \00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"network unix \00", [18 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"misc \00", [26 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"task \00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"manual_domain_transition \00", [38 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tomoyo_query_list_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tomoyo_query_wait.lock\00", [41 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tomoyo_answer_wait.lock\00", [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"select \00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"use_profile %u\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"use_group %u\0A\00", [18 x i8] zeroinitializer }, align 32
@tomoyo_policy_lock = external dso_local global %struct.mutex, align 4
@tomoyo_delete_domain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_kernel_domain = external dso_local global %struct.tomoyo_domain_info, align 4
@tomoyo_read_domain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.159 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"use_profile %u\0A\00", [16 x i8] zeroinitializer }, align 32
@tomoyo_read_domain.__warned.161 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.162 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@tomoyo_read_domain2.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_read_domain2.__warned.163 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_pp2mac = external dso_local local_unnamed_addr constant [3 x i8], align 1
@tomoyo_pn2mac = external dso_local local_unnamed_addr constant [8 x i8], align 1
@tomoyo_pnnn2mac = external dso_local local_unnamed_addr constant [2 x i8], align 1
@tomoyo_proto_keyword = external dso_local local_unnamed_addr constant [6 x ptr], align 4
@.str.164 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"@\00", [30 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"file mount\00", [21 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"misc env \00", [22 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acl_group %u \00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%lX\00", [26 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0%lo\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%lu\00", [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exec.argv[%lu]%s=\22\00", [45 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"!\00", [30 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\22\00", [30 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exec.envp[\22\00", [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\22]%s=\00", [26 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"=\00", [30 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"!=\00", [29 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" grant_log=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aggregator \00", [20 x i8] zeroinitializer }, align 32
@tomoyo_transition_type = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190], [40 x i8] zeroinitializer }, align 32
@tomoyo_group_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.191, ptr @.str.192, ptr @.str.193], [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"acl_group \00", [21 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no_reset_domain \00", [47 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset_domain \00", [18 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no_initialize_domain \00", [42 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"initialize_domain \00", [45 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no_keep_domain \00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"keep_domain \00", [19 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"path_group \00", [20 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"number_group \00", [18 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"address_group \00", [17 x i8] zeroinitializer }, align 32
@tomoyo_read_policy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.194 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" from \00", [25 x i8] zeroinitializer }, align 32
@tomoyo_read_policy.__warned.196 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_read_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_read_group.__warned.197 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.198 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@tomoyo_read_group.__warned.199 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_read_group.__warned.200 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"global-pid \00", [20 x i8] zeroinitializer }, align 32
@init_pid_ns = external dso_local global %struct.pid_namespace, align 1
@.str.202 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %u \00", [25 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.203 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@tomoyo_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.205 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.6.0\00", [26 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Memory used by \00", [16 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"policy:\00", [24 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audit log:\00", [21 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"query message:\00", [17 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Policy %-30s %10u\00", [46 x i8] zeroinitializer }, align 32
@tomoyo_policy_headers = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220], [16 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" (Last: %04u/%02u/%02u %02u:%02u:%02u)\00", [57 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Memory used by %-22s %10u\00", [38 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" (Quota: %10u)\00", [17 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Total memory used:                    %10u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"update:\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"violation in learning mode:\00", [36 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"violation in permissive mode:\00", [34 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"violation in enforcing mode:\00", [35 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PROFILE_VERSION=%u\00", [45 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COMMENT\00", [24 x i8] zeroinitializer }, align 32
@tomoyo_write_profile.lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.223, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PREFERENCE\00", [21 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"=%u\00", [28 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_audit_log\00", [18 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_learning_entry\00", [45 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CONFIG\00", [25 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CONFIG::\00", [23 x i8] zeroinitializer }, align 32
@tomoyo_index2category = external dso_local local_unnamed_addr constant [39 x i8], align 1
@tomoyo_category_keywords = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45], [20 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"use_default\00", [20 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"grant_log\00", [22 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reject_log\00", [21 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"=yes\00", [27 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"=no\00", [28 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PROFILE_VERSION=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u-COMMENT=\00", [20 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%u-PREFERENCE={ \00", [47 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s=%u \00", [25 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"}\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%u-CONFIG::%s::%s\00", [46 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%u-CONFIG::%s\00", [18 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"={ mode=%s grant_log=%s reject_log=%s }\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"A%u=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Q%u-%hu\0A%s\00", [21 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"manage_by_non_root\00", [45 x i8] zeroinitializer }, align 32
@tomoyo_manage_by_non_root = internal global { i8, [31 x i8] } zeroinitializer, align 32
@tomoyo_read_manager.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_read_manager.__warned.247 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.248 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.251 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"global-pid=%u\00", [18 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"domain=\00", [24 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Q=%u\00", [27 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"# select %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"# This is a deleted domain.\0A\00", [35 x i8] zeroinitializer }, align 32
@tomoyo_manager.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_manager._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.259, ptr @.str.114, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s ( %s ) is not permitted to update policies.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tomoyo_manager\00", [17 x i8] zeroinitializer }, align 32
@tomoyo_manager._entry_ptr = internal global ptr @tomoyo_manager._entry, section ".printk_index", align 4
@.str.260 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"delete \00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.262 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.263 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.265 = internal global [5 x i64] [i64 3, i64 32, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.266 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.269 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.271 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 6, i64 8]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.273 = internal global [4 x i64] [i64 2, i64 32, i64 20110903, i64 20150505]
@__sancov_gen_cov_switch_values.274 = internal global [7 x i64] [i64 5, i64 7, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.276 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.277 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.278 = internal global [5 x i64] [i64 3, i64 8, i64 60, i64 62, i64 63]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 8, i64 60, i64 61]
@__sancov_gen_cov_switch_values.280 = internal global [5 x i64] [i64 3, i64 8, i64 60, i64 62, i64 63]
@__sancov_gen_cov_switch_values.281 = internal global [4 x i64] [i64 2, i64 8, i64 60, i64 61]
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 15, i32 31 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 16, i32 31 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 17, i32 31 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 18, i32 31 }
@___asan_gen_.294 = private unnamed_addr constant [12 x i8] c"tomoyo_mode\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 14, i32 20 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 25, i32 33 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 26, i32 33 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 27, i32 33 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 28, i32 33 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 29, i32 33 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 30, i32 33 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 31, i32 33 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 32, i32 33 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 33, i32 33 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 34, i32 33 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 35, i32 33 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 36, i32 33 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 37, i32 33 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 38, i32 33 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 39, i32 33 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 40, i32 33 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 41, i32 33 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 42, i32 33 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 43, i32 33 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 44, i32 33 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 45, i32 33 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 46, i32 33 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 47, i32 33 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 49, i32 48 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 50, i32 48 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 51, i32 48 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 52, i32 48 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 53, i32 48 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 54, i32 48 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 55, i32 48 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 56, i32 48 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 57, i32 48 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 58, i32 48 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 59, i32 48 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 60, i32 48 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 61, i32 48 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 62, i32 48 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 63, i32 48 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 65, i32 25 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 67, i32 54 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 68, i32 57 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 69, i32 54 }
@___asan_gen_.423 = private unnamed_addr constant [20 x i8] c"tomoyo_mac_keywords\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 22, i32 20 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 74, i32 34 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 75, i32 34 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 76, i32 34 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 77, i32 34 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 78, i32 34 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 79, i32 34 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 80, i32 34 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 81, i32 34 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 82, i32 34 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 83, i32 34 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 84, i32 34 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 85, i32 34 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 86, i32 34 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 89, i32 34 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 90, i32 34 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 91, i32 34 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 92, i32 34 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 93, i32 34 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 94, i32 34 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 95, i32 34 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 96, i32 34 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 97, i32 34 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 98, i32 34 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 99, i32 34 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 100, i32 34 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 101, i32 34 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 102, i32 34 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 103, i32 34 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 104, i32 34 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 105, i32 34 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 106, i32 34 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 107, i32 34 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 108, i32 34 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 109, i32 34 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 110, i32 34 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 111, i32 34 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 112, i32 34 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 113, i32 34 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 114, i32 34 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 115, i32 34 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 116, i32 34 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 117, i32 34 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 118, i32 34 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 119, i32 34 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 120, i32 34 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 121, i32 34 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 122, i32 34 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 123, i32 34 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 124, i32 34 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 125, i32 34 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 126, i32 34 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 127, i32 34 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 128, i32 34 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 129, i32 34 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 130, i32 34 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 131, i32 34 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 132, i32 34 }
@___asan_gen_.597 = private unnamed_addr constant [25 x i8] c"tomoyo_condition_keyword\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 73, i32 20 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 144, i32 29 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 145, i32 29 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 146, i32 29 }
@___asan_gen_.609 = private unnamed_addr constant [20 x i8] c"tomoyo_path_keyword\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 142, i32 20 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 158, i32 29 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 159, i32 29 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 160, i32 29 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 161, i32 29 }
@___asan_gen_.624 = private unnamed_addr constant [22 x i8] c"tomoyo_socket_keyword\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 157, i32 20 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 184, i32 17 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 184, i32 25 }
@___asan_gen_.633 = private unnamed_addr constant [22 x i8] c"tomoyo_namespace_list\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 336, i32 1 }
@___asan_gen_.636 = private unnamed_addr constant [25 x i8] c"tomoyo_namespace_enabled\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 338, i32 13 }
@___asan_gen_.639 = private unnamed_addr constant [20 x i8] c"tomoyo_null_profile\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 537, i32 31 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1159, i32 35 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1160, i32 35 }
@___asan_gen_.648 = private unnamed_addr constant [11 x i8] c"tomoyo_dif\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1158, i32 20 }
@___asan_gen_.651 = private unnamed_addr constant [14 x i8] c"tomoyo_serial\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2064, i32 22 }
@___asan_gen_.654 = private unnamed_addr constant [23 x i8] c"tomoyo_query_observers\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1972, i32 17 }
@___asan_gen_.657 = private unnamed_addr constant [23 x i8] c"tomoyo_query_list_lock\00", align 1
@___asan_gen_.660 = private unnamed_addr constant [18 x i8] c"tomoyo_query_list\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1963, i32 8 }
@___asan_gen_.663 = private unnamed_addr constant [18 x i8] c"tomoyo_query_wait\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2125, i32 7 }
@___asan_gen_.669 = private unnamed_addr constant [19 x i8] c"tomoyo_answer_wait\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [20 x i8] c"tomoyo_stat_updated\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2326, i32 17 }
@___asan_gen_.675 = private unnamed_addr constant [21 x i8] c"tomoyo_stat_modified\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2328, i32 17 }
@___asan_gen_.678 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2420, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2699, i32 20 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2715, i32 21 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2777, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2778, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2784, i32 4 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2789, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2792, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2796, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2797, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2798, i32 9 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2801, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2834, i32 17 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2017, i32 26 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2022, i32 29 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2027, i32 28 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2034, i32 28 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2036, i32 33 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2038, i32 33 }
@___asan_gen_.762 = private unnamed_addr constant [16 x i8] c"tomoyo_callback\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1139, i32 4 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1140, i32 5 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1141, i32 5 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1142, i32 5 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1143, i32 5 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1144, i32 5 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1065, i32 38 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1966, i32 8 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1946, i32 8 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1948, i32 8 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1178, i32 58 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1197, i32 19 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1204, i32 19 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1622, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1635, i32 27 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 319, i32 26 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1524, i32 28 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1560, i32 26 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1569, i32 26 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1378, i32 26 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 332, i32 26 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 446, i32 8 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 450, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 453, i32 46 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 459, i32 45 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 307, i32 26 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1298, i32 9 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1299, i32 37 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1302, i32 30 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1307, i32 10 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1310, i32 29 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1317, i32 11 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1330, i32 37 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1330, i32 43 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1356, i32 27 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1766, i32 37 }
@___asan_gen_.870 = private unnamed_addr constant [23 x i8] c"tomoyo_transition_type\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1731, i32 20 }
@___asan_gen_.873 = private unnamed_addr constant [18 x i8] c"tomoyo_group_name\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1741, i32 20 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1774, i32 37 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1732, i32 46 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1733, i32 46 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1734, i32 46 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1735, i32 46 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1736, i32 46 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1737, i32 46 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1742, i32 27 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1743, i32 27 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1744, i32 27 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1879, i32 30 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1880, i32 29 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1836, i32 28 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1712, i32 30 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1726, i32 25 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.928, i32 695, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.928, i32 723, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2305, i32 26 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2399, i32 31 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2402, i32 18 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2320, i32 27 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2321, i32 27 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2322, i32 27 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2358, i32 26 }
@___asan_gen_.951 = private unnamed_addr constant [22 x i8] c"tomoyo_policy_headers\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2311, i32 27 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2365, i32 27 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2375, i32 26 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2379, i32 27 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2382, i32 25 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2312, i32 36 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2313, i32 36 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2314, i32 36 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2315, i32 36 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 681, i32 19 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 695, i32 20 }
@___asan_gen_.984 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 696, i32 10 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 710, i32 20 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 582, i32 29 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 137, i32 37 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 138, i32 37 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 600, i32 20 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 603, i32 38 }
@___asan_gen_.1008 = private unnamed_addr constant [25 x i8] c"tomoyo_category_keywords\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 165, i32 27 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 629, i32 20 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 642, i32 37 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 650, i32 37 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 559, i32 20 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 561, i32 25 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 759, i32 26 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 781, i32 27 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 785, i32 27 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 787, i32 28 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 790, i32 28 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 797, i32 27 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 813, i32 28 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 819, i32 28 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 731, i32 25 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2277, i32 19 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2242, i32 28 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 897, i32 20 }
@___asan_gen_.1062 = private unnamed_addr constant [26 x i8] c"tomoyo_manage_by_non_root\00", align 1
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 173, i32 13 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1069, i32 230, i32 6 }
@___asan_gen_.1069 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1069, i32 214, i32 2 }
@___asan_gen_.1072 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 174, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 189, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1000, i32 19 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1001, i32 39 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1012, i32 28 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1015, i32 26 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1029, i32 25 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 1031, i32 26 }
@___asan_gen_.1095 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 968, i32 4 }
@___asan_gen_.1104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1105 = private constant [28 x i8] c"../security/tomoyo/common.c\00", align 1
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1105, i32 2621, i32 37 }
@llvm.compiler.used = appending global [283 x ptr] [ptr @tomoyo_check_profile._entry, ptr @tomoyo_check_profile._entry.121, ptr @tomoyo_check_profile._entry.124, ptr @tomoyo_check_profile._entry.127, ptr @tomoyo_check_profile._entry.130, ptr @tomoyo_check_profile._entry.133, ptr @tomoyo_check_profile._entry.137, ptr @tomoyo_check_profile._entry_ptr, ptr @tomoyo_check_profile._entry_ptr.123, ptr @tomoyo_check_profile._entry_ptr.126, ptr @tomoyo_check_profile._entry_ptr.129, ptr @tomoyo_check_profile._entry_ptr.132, ptr @tomoyo_check_profile._entry_ptr.135, ptr @tomoyo_check_profile._entry_ptr.139, ptr @tomoyo_manager._entry, ptr @tomoyo_manager._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tomoyo_mode, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @tomoyo_mac_keywords, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @tomoyo_condition_keyword, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @tomoyo_path_keyword, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @tomoyo_socket_keyword, ptr @.str.110, ptr @.str.111, ptr @tomoyo_namespace_list, ptr @tomoyo_namespace_enabled, ptr @tomoyo_profile.tomoyo_null_profile, ptr @.str.112, ptr @.str.113, ptr @tomoyo_dif, ptr @tomoyo_supervisor.tomoyo_serial, ptr @tomoyo_query_observers, ptr @tomoyo_query_list_lock, ptr @tomoyo_query_list, ptr @tomoyo_query_wait, ptr @.str.114, ptr @tomoyo_answer_wait, ptr @tomoyo_stat_updated, ptr @tomoyo_stat_modified, ptr @tomoyo_open_control.__key, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @tomoyo_write_domain2.tomoyo_callback, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @tomoyo_transition_type, ptr @tomoyo_group_name, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @tomoyo_policy_headers, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @tomoyo_write_profile.lock, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @tomoyo_category_keywords, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @tomoyo_manage_by_non_root, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260], section "llvm.metadata"
@0 = internal global [275 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_mac_keywords to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_condition_keyword to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_path_keyword to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_socket_keyword to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_namespace_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_namespace_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_profile.tomoyo_null_profile to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_dif to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_supervisor.tomoyo_serial to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_query_observers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_query_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_query_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_query_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_answer_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_stat_updated to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_stat_modified to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_open_control.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_check_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_check_profile._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_check_profile._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_check_profile._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_check_profile._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_check_profile._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_check_profile._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_write_domain2.tomoyo_callback to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_transition_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_group_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_policy_headers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_write_profile.lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_category_keywords to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_manage_by_non_root to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_manager._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @tomoyo_yesno(i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool.not, ptr @.str.111, ptr @.str.110
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_init_policy_namespace(ptr noundef %ns) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.029 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 3, i32 %idx.029
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 3, i32 %idx.029, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %idx.029, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body3.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body3.preheader:                              ; preds = %for.body
  %arrayidx4 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %arrayidx4, ptr %arrayidx4, align 4
  %prev.i27 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx4, ptr %prev.i27, align 4
  %arrayidx4.1 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %arrayidx4.1, ptr %arrayidx4.1, align 4
  %prev.i27.1 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i27.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx4.1, ptr %prev.i27.1, align 4
  %arrayidx4.2 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %arrayidx4.2, ptr %arrayidx4.2, align 4
  %prev.i27.2 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 1, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i27.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx4.2, ptr %prev.i27.2, align 4
  %arrayidx11 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx11, ptr %arrayidx11, align 4
  %prev.i28 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx11, ptr %prev.i28, align 4
  %arrayidx11.1 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx11.1, ptr %arrayidx11.1, align 4
  %prev.i28.1 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i28.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx11.1, ptr %prev.i28.1, align 4
  %arrayidx11.2 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx11.2, ptr %arrayidx11.2, align 4
  %prev.i28.2 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i28.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx11.2, ptr %prev.i28.2, align 4
  %arrayidx11.3 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx11.3, ptr %arrayidx11.3, align 4
  %prev.i28.3 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i28.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx11.3, ptr %prev.i28.3, align 4
  %arrayidx11.4 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx11.4, ptr %arrayidx11.4, align 4
  %prev.i28.4 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i28.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx11.4, ptr %prev.i28.4, align 4
  %arrayidx11.5 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %arrayidx11.5, ptr %arrayidx11.5, align 4
  %prev.i28.5 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 5, i32 1
  %19 = ptrtoint ptr %prev.i28.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx11.5, ptr %prev.i28.5, align 4
  %arrayidx11.6 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx11.6, ptr %arrayidx11.6, align 4
  %prev.i28.6 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 6, i32 1
  %21 = ptrtoint ptr %prev.i28.6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx11.6, ptr %prev.i28.6, align 4
  %arrayidx11.7 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx11.7, ptr %arrayidx11.7, align 4
  %prev.i28.7 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 7, i32 1
  %23 = ptrtoint ptr %prev.i28.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx11.7, ptr %prev.i28.7, align 4
  %arrayidx11.8 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 8
  %24 = ptrtoint ptr %arrayidx11.8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %arrayidx11.8, ptr %arrayidx11.8, align 4
  %prev.i28.8 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 8, i32 1
  %25 = ptrtoint ptr %prev.i28.8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx11.8, ptr %prev.i28.8, align 4
  %arrayidx11.9 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 9
  %26 = ptrtoint ptr %arrayidx11.9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx11.9, ptr %arrayidx11.9, align 4
  %prev.i28.9 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 9, i32 1
  %27 = ptrtoint ptr %prev.i28.9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx11.9, ptr %prev.i28.9, align 4
  %arrayidx11.10 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 10
  %28 = ptrtoint ptr %arrayidx11.10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx11.10, ptr %arrayidx11.10, align 4
  %prev.i28.10 = getelementptr %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 2, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i28.10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx11.10, ptr %prev.i28.10, align 4
  %profile_version = getelementptr inbounds %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 5
  %30 = ptrtoint ptr %profile_version to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 20150505, ptr %profile_version, align 4
  %31 = load volatile ptr, ptr @tomoyo_namespace_list, align 4
  %cmp.i = icmp ne ptr %31, @tomoyo_namespace_list
  %frombool = zext i1 %cmp.i to i8
  store i8 %frombool, ptr @tomoyo_namespace_enabled, align 1
  %namespace_list = getelementptr inbounds %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 4
  %32 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tomoyo_namespace_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %namespace_list, ptr noundef %32, ptr noundef nonnull @tomoyo_namespace_list) #19
  br i1 %call.i.i, label %if.end.i.i, label %for.body3.preheader.list_add_tail_rcu.exit_crit_edge

for.body3.preheader.list_add_tail_rcu.exit_crit_edge: ; preds = %for.body3.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %for.body3.preheader
  call void @__sanitizer_cov_trace_pc() #21
  %33 = ptrtoint ptr %namespace_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tomoyo_namespace_list, ptr %namespace_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.tomoyo_policy_namespace, ptr %ns, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !595
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %namespace_list, ptr %32, align 4
  store ptr %namespace_list, ptr getelementptr inbounds (%struct.list_head, ptr @tomoyo_namespace_list, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %for.body3.preheader.list_add_tail_rcu.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tomoyo_profile(ptr nocapture noundef readonly %ns, i8 noundef zeroext %profile) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %profile to i32
  %arrayidx = getelementptr [256 x ptr], ptr %ns, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %tobool.not, ptr @tomoyo_profile.tomoyo_null_profile, ptr %1
  ret ptr %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_supervisor(ptr noundef %r, ptr noundef %fmt, ...) local_unnamed_addr #1 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %len = alloca i32, align 4
  %entry1 = alloca %struct.tomoyo_query, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #19
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !596
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #19
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !596
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %entry1) #19
  %2 = call ptr @memset(ptr %entry1, i32 0, i32 28)
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %len, i32 noundef 1, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  %add = add i32 %call, 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %len, align 4
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.va_start(ptr nonnull %args)
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %.fca.0.load135 = load i32, ptr %args, align 4
  %.fca.0.insert136 = insertvalue [1 x i32] poison, i32 %.fca.0.load135, 0
  call void @tomoyo_write_log2(ptr noundef %r, i32 noundef %add, ptr noundef %fmt, [1 x i32] %.fca.0.insert136) #19
  call void @llvm.va_end(ptr nonnull %args)
  %granted = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 6
  %6 = ptrtoint ptr %granted to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %granted, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup119_crit_edge

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup119

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 9
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end.cleanup119_crit_edge, label %if.end6

if.end.cleanup119_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup119

if.end6:                                          ; preds = %if.end
  %idxprom.i = zext i8 %9 to i32
  %arrayidx.i = getelementptr [4 x %struct.atomic_t], ptr @tomoyo_stat_updated, i32 0, i32 %idxprom.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #19
  %10 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #19, !srcloc !598
  %call.i = call i64 @ktime_get_real_seconds() #19
  %arrayidx2.i = getelementptr [4 x i64], ptr @tomoyo_stat_modified, i32 0, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i, ptr %arrayidx2.i, align 8
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %mode, align 4
  %13 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.pr, label %if.end6.cleanup119_crit_edge [
    i8 3, label %sw.bb
    i8 1, label %sw.bb12
  ]

if.end6.cleanup119_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup119

sw.bb:                                            ; preds = %if.end6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @tomoyo_query_observers, i32 noundef 4) #19
  %14 = load volatile i32, ptr @tomoyo_query_observers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %sw.bb.out_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

sw.bb12:                                          ; preds = %if.end6
  %call13 = call zeroext i1 @tomoyo_domain_quota_is_ok(ptr noundef %r) #19
  br i1 %call13, label %sw.bb12.sw.epilog_crit_edge, label %sw.bb12.cleanup119_crit_edge

sw.bb12.cleanup119_crit_edge:                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup119

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %tobool25.not = phi i1 [ true, %sw.bb12.sw.epilog_crit_edge ], [ false, %sw.bb.sw.epilog_crit_edge ]
  %error.0 = phi i32 [ 0, %sw.bb12.sw.epilog_crit_edge ], [ -1, %sw.bb.sw.epilog_crit_edge ]
  call void @llvm.va_start(ptr nonnull %args)
  %15 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.0.load138 = load i32, ptr %args, align 4
  %.fca.0.insert139 = insertvalue [1 x i32] poison, i32 %.fca.0.load138, 0
  %call17 = call ptr @tomoyo_init_log(ptr noundef %r, i32 noundef %add, ptr noundef %fmt, [1 x i32] %.fca.0.insert139) #19
  %query = getelementptr inbounds %struct.tomoyo_query, ptr %entry1, i32 0, i32 2
  %16 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %query, align 4
  call void @llvm.va_end(ptr nonnull %args)
  %17 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %query, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %sw.epilog.out_crit_edge, label %if.end21

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end21:                                         ; preds = %sw.epilog
  %call23 = call i32 @strlen(ptr noundef nonnull %18) #22
  %add24 = add i32 %call23, 1
  %query_len = getelementptr inbounds %struct.tomoyo_query, ptr %entry1, i32 0, i32 3
  %19 = ptrtoint ptr %query_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add24, ptr %query_len, align 4
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  %domain = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %20 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain, align 4
  %call.i156 = call ptr @strchr(ptr noundef nonnull %18, i32 noundef 10) #19
  %tobool.not.i = icmp eq ptr %call.i156, null
  br i1 %tobool.not.i, label %if.then26.out_crit_edge, label %if.end.i

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end.i:                                         ; preds = %if.then26
  %add.ptr.i = getelementptr i8, ptr %call.i156, i32 1
  %call1.i = call ptr @strchr(ptr noundef %add.ptr.i, i32 noundef 10) #19
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.out_crit_edge, label %if.end4.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end4.i:                                        ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i8, ptr %call1.i, i32 1
  %22 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %call1.i, align 1
  %call5.i = call i32 @strlen(ptr noundef %incdec.ptr.i) #23
  %add.i = add i32 %call5.i, 1
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %24)
  %cmp.i = icmp eq i8 %24, 102
  br i1 %cmp.i, label %if.then7.i, label %if.end4.i.if.end8.i.i_crit_edge

if.end4.i.if.end8.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i

if.then7.i:                                       ; preds = %if.end4.i
  %call8.i = call ptr @strstr(ptr noundef nonnull %18, ptr noundef nonnull @.str.141) #19
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.then7.i.if.end15.i_crit_edge, label %if.then10.i

if.then7.i.if.end15.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.then7.i
  %add.ptr11.i = getelementptr i8, ptr %call8.i, i32 10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then10.i
  %str.addr.0.i.i = phi ptr [ %add.ptr11.i, %if.then10.i ], [ %incdec.ptr.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %25 = ptrtoint ptr %str.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %str.addr.0.i.i, align 1
  %cmp.i91.i = icmp ugt i8 %26, 32
  %incdec.ptr.i.i = getelementptr i8, ptr %str.addr.0.i.i, i32 1
  br i1 %cmp.i91.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %tomoyo_truncate.exit.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i.i

tomoyo_truncate.exit.i:                           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %27 = ptrtoint ptr %str.addr.0.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %str.addr.0.i.i, align 1
  %call.i.i157 = call i32 @strlen(ptr noundef %add.ptr11.i) #23
  %add13.i = add i32 %call5.i, 16
  %add14.i = add i32 %add13.i, %call.i.i157
  br label %if.end15.i

if.end15.i:                                       ; preds = %tomoyo_truncate.exit.i, %if.then7.i.if.end15.i_crit_edge
  %argv0.0.i = phi ptr [ %add.ptr11.i, %tomoyo_truncate.exit.i ], [ null, %if.then7.i.if.end15.i_crit_edge ]
  %len.0.i = phi i32 [ %add14.i, %tomoyo_truncate.exit.i ], [ %add.i, %if.then7.i.if.end15.i_crit_edge ]
  %call16.i = call ptr @strstr(ptr noundef nonnull %18, ptr noundef nonnull @.str.142) #19
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end23.i_crit_edge, label %if.then18.i

if.end15.i.if.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.end15.i
  %add.ptr19.i = getelementptr i8, ptr %call16.i, i32 8
  br label %while.cond.i95.i

while.cond.i95.i:                                 ; preds = %while.cond.i95.i.while.cond.i95.i_crit_edge, %if.then18.i
  %str.addr.0.i92.i = phi ptr [ %add.ptr19.i, %if.then18.i ], [ %incdec.ptr.i94.i, %while.cond.i95.i.while.cond.i95.i_crit_edge ]
  %28 = ptrtoint ptr %str.addr.0.i92.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %str.addr.0.i92.i, align 1
  %cmp.i93.i = icmp ugt i8 %29, 32
  %incdec.ptr.i94.i = getelementptr i8, ptr %str.addr.0.i92.i, i32 1
  br i1 %cmp.i93.i, label %while.cond.i95.i.while.cond.i95.i_crit_edge, label %tomoyo_truncate.exit98.i

while.cond.i95.i.while.cond.i95.i_crit_edge:      ; preds = %while.cond.i95.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i95.i

tomoyo_truncate.exit98.i:                         ; preds = %while.cond.i95.i
  call void @__sanitizer_cov_trace_pc() #21
  %30 = ptrtoint ptr %str.addr.0.i92.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %str.addr.0.i92.i, align 1
  %call.i96.i = call i32 @strlen(ptr noundef %add.ptr19.i) #23
  %add21.i = add i32 %len.0.i, 7
  %add22.i = add i32 %add21.i, %call.i96.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %tomoyo_truncate.exit98.i, %if.end15.i.if.end23.i_crit_edge
  %realpath.0.i = phi ptr [ %add.ptr19.i, %tomoyo_truncate.exit98.i ], [ null, %if.end15.i.if.end23.i_crit_edge ]
  %len.1.i = phi i32 [ %add22.i, %tomoyo_truncate.exit98.i ], [ %len.0.i, %if.end15.i.if.end23.i_crit_edge ]
  %call24.i = call ptr @strstr(ptr noundef nonnull %18, ptr noundef nonnull @.str.143) #19
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end8.i.i_crit_edge, label %if.then26.i

if.end23.i.if.end8.i.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i

if.then26.i:                                      ; preds = %if.end23.i
  %add.ptr27.i = getelementptr i8, ptr %call24.i, i32 1
  br label %while.cond.i102.i

while.cond.i102.i:                                ; preds = %while.cond.i102.i.while.cond.i102.i_crit_edge, %if.then26.i
  %str.addr.0.i99.i = phi ptr [ %add.ptr27.i, %if.then26.i ], [ %incdec.ptr.i101.i, %while.cond.i102.i.while.cond.i102.i_crit_edge ]
  %31 = ptrtoint ptr %str.addr.0.i99.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %str.addr.0.i99.i, align 1
  %cmp.i100.i = icmp ugt i8 %32, 32
  %incdec.ptr.i101.i = getelementptr i8, ptr %str.addr.0.i99.i, i32 1
  br i1 %cmp.i100.i, label %while.cond.i102.i.while.cond.i102.i_crit_edge, label %tomoyo_truncate.exit105.i

while.cond.i102.i.while.cond.i102.i_crit_edge:    ; preds = %while.cond.i102.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i102.i

tomoyo_truncate.exit105.i:                        ; preds = %while.cond.i102.i
  call void @__sanitizer_cov_trace_pc() #21
  %33 = ptrtoint ptr %str.addr.0.i99.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %str.addr.0.i99.i, align 1
  %call.i103.i = call i32 @strlen(ptr noundef %add.ptr27.i) #23
  %add29.i = add i32 %len.1.i, 2
  %add30.i = add i32 %add29.i, %call.i103.i
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %tomoyo_truncate.exit105.i, %if.end23.i.if.end8.i.i_crit_edge, %if.end4.i.if.end8.i.i_crit_edge
  %realpath.1.i = phi ptr [ %realpath.0.i, %tomoyo_truncate.exit105.i ], [ %realpath.0.i, %if.end23.i.if.end8.i.i_crit_edge ], [ null, %if.end4.i.if.end8.i.i_crit_edge ]
  %argv0.1.i = phi ptr [ %argv0.0.i, %tomoyo_truncate.exit105.i ], [ %argv0.0.i, %if.end23.i.if.end8.i.i_crit_edge ], [ null, %if.end4.i.if.end8.i.i_crit_edge ]
  %symlink.0.i = phi ptr [ %call24.i, %tomoyo_truncate.exit105.i ], [ null, %if.end23.i.if.end8.i.i_crit_edge ], [ null, %if.end4.i.if.end8.i.i_crit_edge ]
  %len.2.i = phi i32 [ %add30.i, %tomoyo_truncate.exit105.i ], [ %len.1.i, %if.end23.i.if.end8.i.i_crit_edge ], [ %add.i, %if.end4.i.if.end8.i.i_crit_edge ]
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %len.2.i, i32 noundef 3136) #24
  %tobool34.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool34.not.i, label %if.end8.i.i.out_crit_edge, label %if.end36.i

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end36.i:                                       ; preds = %if.end8.i.i
  %sub.i = add i32 %len.2.i, -1
  %call37.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i, i32 noundef %sub.i, ptr noundef nonnull @.str.144, ptr noundef %incdec.ptr.i) #19
  %tobool38.not.i = icmp eq ptr %realpath.1.i, null
  br i1 %tobool38.not.i, label %if.end36.i.if.end40.i_crit_edge, label %if.then39.i

if.end36.i.if.end40.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end40.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, ptr, ...) @tomoyo_addprintf(ptr noundef nonnull %call9.i.i, i32 noundef %len.2.i, ptr noundef nonnull @.str.145, ptr noundef nonnull %realpath.1.i) #19
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then39.i, %if.end36.i.if.end40.i_crit_edge
  %tobool41.not.i = icmp eq ptr %argv0.1.i, null
  br i1 %tobool41.not.i, label %if.end40.i.if.end43.i_crit_edge, label %if.then42.i

if.end40.i.if.end43.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end43.i

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, ptr, ...) @tomoyo_addprintf(ptr noundef nonnull %call9.i.i, i32 noundef %len.2.i, ptr noundef nonnull @.str.146, ptr noundef nonnull %argv0.1.i) #19
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %if.end40.i.if.end43.i_crit_edge
  %tobool44.not.i = icmp eq ptr %symlink.0.i, null
  br i1 %tobool44.not.i, label %if.end43.i.if.end46.i_crit_edge, label %if.then45.i

if.end43.i.if.end46.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end46.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, ptr, ...) @tomoyo_addprintf(ptr noundef nonnull %call9.i.i, i32 noundef %len.2.i, ptr noundef nonnull @.str.144, ptr noundef nonnull %symlink.0.i) #19
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then45.i, %if.end43.i.if.end46.i_crit_edge
  call void @tomoyo_normalize_line(ptr noundef nonnull %call9.i.i) #19
  %ns.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %21, i32 0, i32 3
  %34 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ns.i, align 4
  %acl_info_list.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %21, i32 0, i32 1
  %call47.i = call fastcc i32 @tomoyo_write_domain2(ptr noundef %35, ptr noundef %acl_info_list.i, ptr noundef nonnull %call9.i.i, i1 noundef zeroext false) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %if.end46.i.if.end50.i_crit_edge

if.end46.i.if.end50.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tomoyo_stat_updated, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr nonnull @tomoyo_stat_updated, i32 1, i32 3, i32 1) #19
  %36 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @tomoyo_stat_updated, ptr nonnull @tomoyo_stat_updated, i32 1, ptr nonnull elementtype(i32) @tomoyo_stat_updated) #19, !srcloc !598
  %call.i106.i = call i64 @ktime_get_real_seconds() #19
  store i64 %call.i106.i, ptr @tomoyo_stat_modified, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end46.i.if.end50.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #19
  br label %out

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add24)
  %tobool.not.i158 = icmp eq i32 %add24, 0
  br i1 %tobool.not.i158, label %if.end28.tomoyo_round2.exit_crit_edge, label %if.end28.while.cond.i_crit_edge

if.end28.while.cond.i_crit_edge:                  ; preds = %if.end28
  br label %while.cond.i

if.end28.tomoyo_round2.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_round2.exit

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end28.while.cond.i_crit_edge
  %bsize.0.i = phi i32 [ %shl.i, %while.cond.i.while.cond.i_crit_edge ], [ 32, %if.end28.while.cond.i_crit_edge ]
  %cmp.i159 = icmp ult i32 %bsize.0.i, %add24
  %shl.i = shl i32 %bsize.0.i, 1
  br i1 %cmp.i159, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.tomoyo_round2.exit_crit_edge

while.cond.i.tomoyo_round2.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_round2.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i

tomoyo_round2.exit:                               ; preds = %while.cond.i.tomoyo_round2.exit_crit_edge, %if.end28.tomoyo_round2.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end28.tomoyo_round2.exit_crit_edge ], [ %bsize.0.i, %while.cond.i.tomoyo_round2.exit_crit_edge ]
  %37 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i, ptr %len, align 4
  %domain31 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %38 = ptrtoint ptr %domain31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %domain31, align 4
  %domain32 = getelementptr inbounds %struct.tomoyo_query, ptr %entry1, i32 0, i32 1
  %40 = ptrtoint ptr %domain32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %domain32, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_quota, i32 0, i32 2) to i32))
  %41 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_quota, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool33.not = icmp eq i32 %41, 0
  br i1 %tobool33.not, label %tomoyo_round2.exit.if.else_crit_edge, label %land.lhs.true

tomoyo_round2.exit.if.else_crit_edge:             ; preds = %tomoyo_round2.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

land.lhs.true:                                    ; preds = %tomoyo_round2.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 2) to i32))
  %42 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 2), align 4
  %add34 = add i32 %42, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %41)
  %cmp.not = icmp ult i32 %add34, %41
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.end39

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %tomoyo_round2.exit.if.else_crit_edge
  %43 = load i32, ptr @tomoyo_supervisor.tomoyo_serial, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr @tomoyo_supervisor.tomoyo_serial, align 4
  %serial = getelementptr inbounds %struct.tomoyo_query, ptr %entry1, i32 0, i32 4
  %44 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %serial, align 4
  %retry = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 7
  %45 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %retry, align 2
  %retry37 = getelementptr inbounds %struct.tomoyo_query, ptr %entry1, i32 0, i32 7
  %47 = ptrtoint ptr %retry37 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %retry37, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 2) to i32))
  %48 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 2), align 4
  %add38 = add i32 %48, %retval.0.i
  store i32 %add38, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 2), align 4
  %49 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tomoyo_query_list, i32 0, i32 1), align 4
  %call.i.i160 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entry1, ptr noundef %49, ptr noundef nonnull @tomoyo_query_list) #19
  br i1 %call.i.i160, label %if.end.i.i161, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add_tail.exit

if.end.i.i161:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  store ptr %entry1, ptr getelementptr inbounds (%struct.list_head, ptr @tomoyo_query_list, i32 0, i32 1), align 4
  %50 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @tomoyo_query_list, ptr %entry1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %entry1, ptr %49, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i161, %if.else.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  %timer = getelementptr inbounds %struct.tomoyo_query, ptr %entry1, i32 0, i32 5
  %53 = ptrtoint ptr %timer to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %timer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %54)
  %cmp44187 = icmp ult i8 %54, 10
  br i1 %cmp44187, label %while.body.lr.ph, label %list_add_tail.exit.while.end_crit_edge

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.lr.ph:                                 ; preds = %list_add_tail.exit
  %answer = getelementptr inbounds %struct.tomoyo_query, ptr %entry1, i32 0, i32 6
  br label %while.body

if.end39:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  br label %out

while.body:                                       ; preds = %if.end102.while.body_crit_edge, %while.body.lr.ph
  call void @__wake_up(ptr noundef nonnull @tomoyo_query_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #19
  call void @__might_sleep(ptr noundef nonnull @.str.114, i32 noundef 2127) #19
  %55 = ptrtoint ptr %answer to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %answer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool50.not = icmp eq i8 %56, 0
  br i1 %tobool50.not, label %lor.rhs, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

lor.rhs:                                          ; preds = %while.body
  %call.i.i154 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @tomoyo_query_observers, i32 noundef 4) #19
  %57 = load volatile i32, ptr @tomoyo_query_observers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool52.not = icmp eq i32 %57, 0
  br i1 %tobool52.not, label %lor.rhs.while.end_crit_edge, label %if.then66

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

if.then66:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #19
  %58 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #19
  %call68183 = call i32 @prepare_to_wait_event(ptr noundef nonnull @tomoyo_answer_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #19
  %59 = ptrtoint ptr %answer to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %answer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool72.not184 = icmp eq i8 %60, 0
  br i1 %tobool72.not184, label %if.then66.lor.end77_crit_edge, label %if.then66.if.end102.thread180_crit_edge

if.then66.if.end102.thread180_crit_edge:          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end102.thread180

if.then66.lor.end77_crit_edge:                    ; preds = %if.then66
  br label %lor.end77

lor.end77:                                        ; preds = %cleanup.lor.end77_crit_edge, %if.then66.lor.end77_crit_edge
  %call68186 = phi i32 [ %call68, %cleanup.lor.end77_crit_edge ], [ %call68183, %if.then66.lor.end77_crit_edge ]
  %__ret67.0185 = phi i32 [ %call100, %cleanup.lor.end77_crit_edge ], [ 100, %if.then66.lor.end77_crit_edge ]
  %call.i.i155 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @tomoyo_query_observers, i32 noundef 4) #19
  %61 = load volatile i32, ptr @tomoyo_query_observers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool75.not = icmp eq i32 %61, 0
  br i1 %tobool75.not, label %lor.end77.if.end102.thread180_crit_edge, label %62

lor.end77.if.end102.thread180_crit_edge:          ; preds = %lor.end77
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end102.thread180

if.end102.thread180:                              ; preds = %cleanup.if.end102.thread180_crit_edge, %lor.end77.if.end102.thread180_crit_edge, %if.then66.if.end102.thread180_crit_edge
  call void @finish_wait(ptr noundef nonnull @tomoyo_answer_wait, ptr noundef nonnull %__wq_entry) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #19
  br label %while.end

62:                                               ; preds = %lor.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret67.0185)
  %tobool90.not = icmp eq i32 %__ret67.0185, 0
  br i1 %tobool90.not, label %if.end102, label %if.end96

if.end96:                                         ; preds = %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68186)
  %tobool97.not = icmp eq i32 %call68186, 0
  br i1 %tobool97.not, label %cleanup, label %if.end102.thread177

if.end102.thread177:                              ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #19
  br label %while.end

cleanup:                                          ; preds = %if.end96
  %call100 = call i32 @schedule_timeout(i32 noundef %__ret67.0185) #19
  %call68 = call i32 @prepare_to_wait_event(ptr noundef nonnull @tomoyo_answer_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #19
  %63 = ptrtoint ptr %answer to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %answer, align 1
  %tobool72.not = icmp eq i8 %64, 0
  br i1 %tobool72.not, label %cleanup.lor.end77_crit_edge, label %cleanup.if.end102.thread180_crit_edge

cleanup.if.end102.thread180_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end102.thread180

cleanup.lor.end77_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.end77

if.end102:                                        ; preds = %62
  call void @finish_wait(ptr noundef nonnull @tomoyo_answer_wait, ptr noundef nonnull %__wq_entry) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #19
  %65 = ptrtoint ptr %timer to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %timer, align 4
  %inc108 = add i8 %66, 1
  store i8 %inc108, ptr %timer, align 4
  %cmp44 = icmp ult i8 %inc108, 10
  br i1 %cmp44, label %if.end102.while.body_crit_edge, label %if.end102.while.end_crit_edge

if.end102.while.end_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

if.end102.while.body_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.end:                                        ; preds = %if.end102.while.end_crit_edge, %if.end102.thread177, %if.end102.thread180, %lor.rhs.while.end_crit_edge, %while.body.while.end_crit_edge, %list_add_tail.exit.while.end_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  %call.i.i162 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1) #19
  br i1 %call.i.i162, label %if.end.i.i163, label %while.end.list_del.exit_crit_edge

while.end.list_del.exit_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit

if.end.i.i163:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i, align 4
  %69 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %entry1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i163, %while.end.list_del.exit_crit_edge
  %73 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 2) to i32))
  %75 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 2), align 4
  %sub = sub i32 %75, %retval.0.i
  store i32 %sub, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 2), align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  %answer110 = getelementptr inbounds %struct.tomoyo_query, ptr %entry1, i32 0, i32 6
  %76 = ptrtoint ptr %answer110 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %answer110, align 1
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.261)
  switch i8 %77, label %list_del.exit.out_crit_edge [
    i8 3, label %sw.bb112
    i8 1, label %sw.bb115
  ]

list_del.exit.out_crit_edge:                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

sw.bb112:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #21
  %79 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %retry, align 2
  %inc114 = add i8 %80, 1
  store i8 %inc114, ptr %retry, align 2
  br label %out

sw.bb115:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

out:                                              ; preds = %sw.bb115, %sw.bb112, %list_del.exit.out_crit_edge, %if.end39, %if.end50.i, %if.end8.i.i.out_crit_edge, %if.end.i.out_crit_edge, %if.then26.out_crit_edge, %sw.epilog.out_crit_edge, %sw.bb.out_crit_edge
  %error.1 = phi i32 [ -1, %if.end39 ], [ -1, %list_del.exit.out_crit_edge ], [ 0, %sw.bb115 ], [ 1, %sw.bb112 ], [ %error.0, %sw.epilog.out_crit_edge ], [ -1, %sw.bb.out_crit_edge ], [ 0, %if.then26.out_crit_edge ], [ 0, %if.end.i.out_crit_edge ], [ 0, %if.end8.i.i.out_crit_edge ], [ 0, %if.end50.i ]
  %query118 = getelementptr inbounds %struct.tomoyo_query, ptr %entry1, i32 0, i32 2
  %81 = ptrtoint ptr %query118 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %query118, align 4
  call void @kfree(ptr noundef %82) #19
  br label %cleanup119

cleanup119:                                       ; preds = %out, %sw.bb12.cleanup119_crit_edge, %if.end6.cleanup119_crit_edge, %if.end.cleanup119_crit_edge, %entry.cleanup119_crit_edge
  %retval.0 = phi i32 [ %error.1, %out ], [ 0, %entry.cleanup119_crit_edge ], [ 0, %sw.bb12.cleanup119_crit_edge ], [ 0, %if.end6.cleanup119_crit_edge ], [ 0, %if.end.cleanup119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %entry1) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #19
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_write_log2(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_update_stat(i8 noundef zeroext %index) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr [4 x %struct.atomic_t], ptr @tomoyo_stat_updated, i32 0, i32 %idxprom
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #19
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #19, !srcloc !598
  %call = tail call i64 @ktime_get_real_seconds() #19
  %arrayidx2 = getelementptr [4 x i64], ptr @tomoyo_stat_modified, i32 0, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call, ptr %arrayidx2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_domain_quota_is_ok(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_init_log(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_open_control(i8 noundef zeroext %type, ptr nocapture noundef %file) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 456) #25
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body:                                          ; preds = %entry
  %io_sem = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %io_sem, ptr noundef nonnull @.str.115, ptr noundef nonnull @tomoyo_open_control.__key) #19
  %conv = zext i8 %type to i32
  %type1 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 12
  %1 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %type1, align 8
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.262)
  switch i8 %type, label %do.body.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 4, label %sw.bb6
    i8 2, label %sw.bb8
    i8 5, label %sw.bb11
    i8 3, label %sw.bb13
    i8 6, label %sw.bb17
    i8 7, label %sw.bb20
    i8 8, label %sw.bb24
  ]

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %write = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tomoyo_write_domain, ptr %write, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tomoyo_read_domain, ptr %call7.i.i, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %write4 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %write4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tomoyo_write_exception, ptr %write4, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tomoyo_read_exception, ptr %call7.i.i, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %poll = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tomoyo_poll_log, ptr %poll, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tomoyo_read_log, ptr %call7.i.i, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %write9 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %write9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tomoyo_write_pid, ptr %write9, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tomoyo_read_pid, ptr %call7.i.i, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tomoyo_read_version, ptr %call7.i.i, align 8
  %readbuf_size = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %readbuf_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %readbuf_size, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %write14 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %write14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tomoyo_write_stat, ptr %write14, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tomoyo_read_stat, ptr %call7.i.i, align 8
  %readbuf_size16 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %readbuf_size16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1024, ptr %readbuf_size16, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %write18 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %write18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tomoyo_write_profile, ptr %write18, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tomoyo_read_profile, ptr %call7.i.i, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %poll21 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %poll21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tomoyo_poll_query, ptr %poll21, align 8
  %write22 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %write22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tomoyo_write_answer, ptr %write22, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tomoyo_read_query, ptr %call7.i.i, align 8
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %write25 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %write25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tomoyo_write_manager, ptr %write25, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tomoyo_read_manager, ptr %call7.i.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb20, %sw.bb17, %sw.bb13, %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb3, %sw.bb, %do.body.sw.epilog_crit_edge
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %23 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f_mode, align 8
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %call7.i.i, align 8
  %poll30 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %poll30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %poll30, align 8
  br label %if.end46

if.else:                                          ; preds = %sw.epilog
  %poll31 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %poll31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %poll31, align 8
  %tobool32.not = icmp eq ptr %28, null
  br i1 %tobool32.not, label %if.then33, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end46

if.then33:                                        ; preds = %if.else
  %readbuf_size34 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %readbuf_size34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %readbuf_size34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool35.not = icmp eq i32 %30, 0
  br i1 %tobool35.not, label %if.then36, label %if.then33.if.end8.i.i_crit_edge

if.then33.if.end8.i.i_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #21
  %31 = ptrtoint ptr %readbuf_size34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8192, ptr %readbuf_size34, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then36, %if.then33.if.end8.i.i_crit_edge
  %32 = phi i32 [ 8192, %if.then36 ], [ %30, %if.then33.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3392) #24
  %read_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i.i, ptr %read_buf, align 8
  %tobool42.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool42.not, label %if.then43, label %if.end8.i.i.if.end46_crit_edge

if.end8.i.i.if.end46_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end46

if.then43:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #19
  br label %cleanup

if.end46:                                         ; preds = %if.end8.i.i.if.end46_crit_edge, %if.else.if.end46_crit_edge, %if.then28
  %34 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %f_mode, align 8
  %and48 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %write51 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 1
  br i1 %tobool49.not, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21
  %36 = ptrtoint ptr %write51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %write51, align 4
  br label %if.end64

if.else52:                                        ; preds = %if.end46
  %37 = ptrtoint ptr %write51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write51, align 4
  %tobool54.not = icmp eq ptr %38, null
  br i1 %tobool54.not, label %if.else52.if.end64_crit_edge, label %if.then55

if.else52.if.end64_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end64

if.then55:                                        ; preds = %if.else52
  %writebuf_size = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 11
  %39 = ptrtoint ptr %writebuf_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8192, ptr %writebuf_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i126 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3392, i32 noundef 8192) #25
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 10
  %41 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i126, ptr %write_buf, align 8
  %tobool59.not = icmp eq ptr %call7.i.i126, null
  br i1 %tobool59.not, label %if.then60, label %if.then55.if.end64_crit_edge

if.then55.if.end64_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end64

if.then60:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #21
  %read_buf61 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %call7.i.i, i32 0, i32 8
  %42 = ptrtoint ptr %read_buf61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_buf61, align 8
  tail call void @kfree(ptr noundef %43) #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #19
  br label %cleanup

if.end64:                                         ; preds = %if.then55.if.end64_crit_edge, %if.else52.if.end64_crit_edge, %if.then50
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %type)
  %cmp = icmp eq i8 %type, 7
  br i1 %cmp, label %if.then67, label %if.end64.if.end68_crit_edge

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tomoyo_query_observers, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @tomoyo_query_observers, i32 1, i32 3, i32 1) #19
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @tomoyo_query_observers, ptr nonnull @tomoyo_query_observers, i32 1, ptr nonnull elementtype(i32) @tomoyo_query_observers) #19, !srcloc !598
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end64.if.end68_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %45 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @tomoyo_notify_gc(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then60, %if.then43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end68 ], [ -12, %if.then60 ], [ -12, %if.then43 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_write_domain(ptr nocapture noundef %head) #1 align 64 {
entry:
  %name.i = alloca %struct.tomoyo_path_info, align 4
  %data = alloca ptr, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #19
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 10
  %0 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_buf, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %data, align 4
  %domain1 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %domain1, align 4
  %is_delete3 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %is_delete3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_delete3, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %land.end, label %land.end.thread

land.end:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #19
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %idx, align 4, !annotation !596
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %11)
  %cmp = icmp eq i8 %11, 60
  br i1 %cmp, label %if.then8, label %land.end.if.end18_crit_edge

land.end.if.end18_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

land.end.thread:                                  ; preds = %entry
  %call = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %data, ptr noundef nonnull @.str.156) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #19
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %idx, align 4, !annotation !596
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %16)
  %cmp91 = icmp eq i8 %16, 60
  br i1 %cmp91, label %if.else, label %land.end.thread.if.end18_crit_edge

land.end.thread.if.end18_crit_edge:               ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then8:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name.i) #19
  %17 = getelementptr inbounds %struct.tomoyo_path_info, ptr %name.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 -1, ptr %17, align 4
  %19 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %9, ptr %name.i, align 4
  call void @tomoyo_fill_path_info(ptr noundef nonnull %name.i) #19
  %call.i = call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then8.tomoyo_delete_domain.exit_crit_edge

if.then8.tomoyo_delete_domain.exit_crit_edge:     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_delete_domain.exit

do.body.i:                                        ; preds = %if.then8
  %call.i.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.do.end.i_crit_edge, label %srcu_read_lock_held.exit.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

srcu_read_lock_held.exit.i:                       ; preds = %do.body.i
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %srcu_read_lock_held.exit.i.do.end.i_crit_edge

srcu_read_lock_held.exit.i.do.end.i_crit_edge:    ; preds = %srcu_read_lock_held.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %srcu_read_lock_held.exit.i
  %call4.i = call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %call7.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true6.i
  %.b40.i = load i1, ptr @tomoyo_delete_domain.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true9.i.do.end.i_crit_edge, label %if.then11.i

land.lhs.true9.i.do.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_delete_domain.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1100, ptr noundef nonnull @.str.120) #19
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %land.lhs.true9.i.do.end.i_crit_edge, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %srcu_read_lock_held.exit.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_domain_list to i32))
  %domain.044.i = load volatile ptr, ptr @tomoyo_domain_list, align 4
  %cmp.not45.i = icmp eq ptr %domain.044.i, @tomoyo_domain_list
  br i1 %cmp.not45.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %domain.046.i = phi ptr [ %domain.0.i, %for.inc.i.for.body.i_crit_edge ], [ %domain.044.i, %do.end.i.for.body.i_crit_edge ]
  %cmp17.i = icmp eq ptr %domain.046.i, @tomoyo_kernel_domain
  br i1 %cmp17.i, label %for.body.i.for.inc.i_crit_edge, label %if.end19.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.end19.i:                                       ; preds = %for.body.i
  %is_deleted.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.046.i, i32 0, i32 6
  %20 = ptrtoint ptr %is_deleted.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_deleted.i, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool20.not.i = icmp eq i8 %21, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i, label %if.end19.i.for.inc.i_crit_edge

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end19.i
  %domainname21.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.046.i, i32 0, i32 2
  %22 = ptrtoint ptr %domainname21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domainname21.i, align 4
  %hash.i.i = getelementptr inbounds %struct.tomoyo_path_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash.i.i, align 4
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not.i.i = icmp eq i32 %25, %27
  br i1 %cmp.not.i.i, label %tomoyo_pathcmp.exit.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

tomoyo_pathcmp.exit.i:                            ; preds = %lor.lhs.false.i
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 4
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 4
  %call.i41.i = call i32 @strcmp(ptr noundef %29, ptr noundef %31) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool.i.not.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool.i.not.i, label %if.end24.i, label %tomoyo_pathcmp.exit.i.for.inc.i_crit_edge

tomoyo_pathcmp.exit.i.for.inc.i_crit_edge:        ; preds = %tomoyo_pathcmp.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.end24.i:                                       ; preds = %tomoyo_pathcmp.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %is_deleted.i.le = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.046.i, i32 0, i32 6
  %32 = ptrtoint ptr %is_deleted.i.le to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %is_deleted.i.le, align 1
  br label %for.end.i

for.inc.i:                                        ; preds = %tomoyo_pathcmp.exit.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end19.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %33 = ptrtoint ptr %domain.046.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %domain.0.i = load volatile ptr, ptr %domain.046.i, align 4
  %cmp.not.i = icmp eq ptr %domain.0.i, @tomoyo_domain_list
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end24.i, %do.end.i.for.end.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #19
  br label %tomoyo_delete_domain.exit

tomoyo_delete_domain.exit:                        ; preds = %for.end.i, %if.then8.tomoyo_delete_domain.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i ], [ -4, %if.then8.tomoyo_delete_domain.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name.i) #19
  br label %if.end15

if.else:                                          ; preds = %land.end.thread
  br i1 %call, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %call12 = call ptr @tomoyo_find_domain(ptr noundef %14) #19
  br label %if.end15

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %call14 = call ptr @tomoyo_assign_domain(ptr noundef %14, i1 noundef zeroext false) #19
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11, %tomoyo_delete_domain.exit
  %domain.0 = phi ptr [ null, %tomoyo_delete_domain.exit ], [ %call12, %if.then11 ], [ %call14, %if.else13 ]
  %ret.0 = phi i32 [ %retval.0.i, %tomoyo_delete_domain.exit ], [ 0, %if.then11 ], [ 0, %if.else13 ]
  %34 = ptrtoint ptr %domain1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %domain.0, ptr %domain1, align 4
  br label %cleanup65

if.end18:                                         ; preds = %land.end.thread.if.end18_crit_edge, %land.end.if.end18_crit_edge
  %35 = phi ptr [ %14, %land.end.thread.if.end18_crit_edge ], [ %9, %land.end.if.end18_crit_edge ]
  %tobool19.not = icmp eq ptr %4, null
  br i1 %tobool19.not, label %if.end18.cleanup65_crit_edge, label %if.end21

if.end18.cleanup65_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup65

if.end21:                                         ; preds = %if.end18
  %ns22 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %4, i32 0, i32 3
  %36 = ptrtoint ptr %ns22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ns22, align 4
  %call23 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %35, ptr noundef nonnull @.str.157, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 1
  br i1 %cmp24, label %land.lhs.true, label %if.end21.if.end37_crit_edge

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end21
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %39)
  %cmp26 = icmp ult i32 %39, 256
  br i1 %cmp26, label %if.then28, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.then28:                                        ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_policy_loaded to i32))
  %40 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool29.not = icmp eq i8 %40, 0
  br i1 %tobool29.not, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then28
  %arrayidx = getelementptr [256 x ptr], ptr %37, i32 0, i32 %39
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %tobool30.not = icmp eq ptr %42, null
  %brmerge = select i1 %tobool30.not, i1 true, i1 %tobool
  br i1 %brmerge, label %lor.lhs.false.cleanup65_crit_edge, label %lor.lhs.false.if.then33_crit_edge

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then33

lor.lhs.false.cleanup65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup65

if.then31:                                        ; preds = %if.then28
  br i1 %tobool, label %if.then31.cleanup65_crit_edge, label %if.then31.if.then33_crit_edge

if.then31.if.then33_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then33

if.then31.cleanup65_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup65

if.then33:                                        ; preds = %if.then31.if.then33_crit_edge, %lor.lhs.false.if.then33_crit_edge
  %conv34 = trunc i32 %39 to i8
  %profile = getelementptr inbounds %struct.tomoyo_domain_info, ptr %4, i32 0, i32 5
  %43 = ptrtoint ptr %profile to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv34, ptr %profile, align 4
  br label %cleanup65

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %if.end21.if.end37_crit_edge
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %call38 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %45, ptr noundef nonnull @.str.158, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 1
  br i1 %cmp39, label %land.lhs.true41, label %if.end37.if.end51_crit_edge

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end51

land.lhs.true41:                                  ; preds = %if.end37
  %46 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %47)
  %cmp42 = icmp ult i32 %47, 256
  br i1 %cmp42, label %if.then44, label %land.lhs.true41.if.end51_crit_edge

land.lhs.true41.if.end51_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end51

if.then44:                                        ; preds = %land.lhs.true41
  %group48 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %4, i32 0, i32 4
  br i1 %tobool, label %if.else47, label %if.then46

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #21
  call void @_set_bit(i32 noundef %47, ptr noundef %group48) #19
  br label %cleanup65

if.else47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #21
  call void @_clear_bit(i32 noundef %47, ptr noundef %group48) #19
  br label %cleanup65

if.end51:                                         ; preds = %land.lhs.true41.if.end51_crit_edge, %if.end37.if.end51_crit_edge
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %idx, align 4
  %call56 = call i32 @strncmp(ptr noundef %49, ptr noundef nonnull dereferenceable(16) @.str.112, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end51.if.end59_crit_edge, label %for.inc.critedge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end59

if.end59:                                         ; preds = %for.inc.critedge.if.end59_crit_edge, %if.end51.if.end59_crit_edge
  %storemerge93.lcssa = phi i32 [ 0, %if.end51.if.end59_crit_edge ], [ 1, %for.inc.critedge.if.end59_crit_edge ]
  %lnot = xor i1 %tobool, true
  %arrayidx61 = getelementptr %struct.tomoyo_domain_info, ptr %4, i32 0, i32 7, i32 %storemerge93.lcssa
  %frombool62 = zext i1 %lnot to i8
  %51 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %frombool62, ptr %arrayidx61, align 1
  br label %cleanup65

for.inc.critedge:                                 ; preds = %if.end51
  %52 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %idx, align 4
  %call56.1 = call i32 @strncmp(ptr noundef %49, ptr noundef nonnull dereferenceable(19) @.str.113, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.1)
  %tobool57.not.1 = icmp eq i32 %call56.1, 0
  br i1 %tobool57.not.1, label %for.inc.critedge.if.end59_crit_edge, label %for.inc.critedge.1

for.inc.critedge.if.end59_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end59

for.inc.critedge.1:                               ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #21
  %53 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %idx, align 4
  %acl_info_list = getelementptr inbounds %struct.tomoyo_domain_info, ptr %4, i32 0, i32 1
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %call64 = call fastcc i32 @tomoyo_write_domain2(ptr noundef %37, ptr noundef %acl_info_list, ptr noundef %55, i1 noundef zeroext %tobool)
  br label %cleanup65

cleanup65:                                        ; preds = %for.inc.critedge.1, %if.end59, %if.else47, %if.then46, %if.then33, %if.then31.cleanup65_crit_edge, %lor.lhs.false.cleanup65_crit_edge, %if.end18.cleanup65_crit_edge, %if.end15
  %retval.2 = phi i32 [ %ret.0, %if.end15 ], [ %call64, %for.inc.critedge.1 ], [ -22, %if.end18.cleanup65_crit_edge ], [ 0, %lor.lhs.false.cleanup65_crit_edge ], [ 0, %if.then31.cleanup65_crit_edge ], [ 0, %if.then33 ], [ 0, %if.else47 ], [ 0, %if.then46 ], [ 0, %if.end59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #19
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_read_domain(ptr noundef %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %eof = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  %0 = ptrtoint ptr %eof to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eof, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  %domain = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_domain_list to i32))
  %4 = load volatile ptr, ptr @tomoyo_domain_list, align 4
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then3.do.end13_crit_edge, label %srcu_read_lock_held.exit

if.then3.do.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end13

srcu_read_lock_held.exit:                         ; preds = %if.then3
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end13_crit_edge

srcu_read_lock_held.exit.do.end13_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end13

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b154 = load i1, ptr @tomoyo_read_domain.__warned, align 1
  br i1 %.b154, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_domain.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1622, ptr noundef nonnull @.str.159) #19
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %srcu_read_lock_held.exit.do.end13_crit_edge, %if.then3.do.end13_crit_edge
  %5 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %domain, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.end13, %if.end.if.end17_crit_edge
  %.pr = phi ptr [ %4, %do.end13 ], [ %3, %if.end.if.end17_crit_edge ]
  %cmp.not207 = icmp eq ptr %.pr, @tomoyo_domain_list
  br i1 %cmp.not207, label %if.end17.done_crit_edge, label %for.body.lr.ph

if.end17.done_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

for.body.lr.ph:                                   ; preds = %if.end17
  %step = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 5
  %print_this_domain_only = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 14
  %w_pos.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %index = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 7
  br label %for.body

for.body:                                         ; preds = %do.end108.for.body_crit_edge, %for.body.lr.ph
  %6 = phi ptr [ %.pr, %for.body.lr.ph ], [ %73, %do.end108.for.body_crit_edge ]
  %7 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %step, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %8, label %for.body.for.inc90_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb46
    i32 2, label %for.body.sw.bb71_crit_edge
    i32 3, label %for.body.sw.bb81_crit_edge
  ]

for.body.sw.bb81_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb81

for.body.sw.bb71_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb71

for.body.for.inc90_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc90

sw.bb:                                            ; preds = %for.body
  %is_deleted = getelementptr inbounds %struct.tomoyo_domain_info, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_deleted, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool25.not = icmp eq i8 %11, 0
  br i1 %tobool25.not, label %sw.bb.if.end30_crit_edge, label %land.lhs.true26

sw.bb.if.end30_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

land.lhs.true26:                                  ; preds = %sw.bb
  %12 = ptrtoint ptr %print_this_domain_only to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %print_this_domain_only, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not = icmp eq i8 %13, 0
  br i1 %tobool28.not, label %land.lhs.true26.for.inc90_crit_edge, label %land.lhs.true26.if.end30_crit_edge

land.lhs.true26.if.end30_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

land.lhs.true26.for.inc90_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc90

if.end30:                                         ; preds = %land.lhs.true26.if.end30_crit_edge, %sw.bb.if.end30_crit_edge
  %14 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %15)
  %cmp.i = icmp ult i8 %15, 64
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  %domainname = getelementptr inbounds %struct.tomoyo_domain_info, ptr %6, i32 0, i32 2
  %16 = ptrtoint ptr %domainname to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domainname, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %conv.i = zext i8 %15 to i32
  %inc.i = add nuw nsw i8 %15, 1
  %20 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %inc.i, ptr %w_pos.i, align 1
  %arrayidx.i155 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %21 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %arrayidx.i155, align 4
  %call.i156 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit

tomoyo_set_string.exit:                           ; preds = %do.end.i, %if.then.i
  %22 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %23)
  %cmp.i.i = icmp ult i8 %23, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i = zext i8 %23 to i32
  %inc.i.i = add nuw nsw i8 %23, 1
  %24 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %inc.i.i, ptr %w_pos.i, align 1
  %arrayidx.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.162, ptr %arrayidx.i.i, align 4
  %call.i.i157 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_lf.exit

do.end.i.i:                                       ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_lf.exit

tomoyo_set_lf.exit:                               ; preds = %do.end.i.i, %if.then.i.i
  %profile = getelementptr inbounds %struct.tomoyo_domain_info, ptr %6, i32 0, i32 5
  %26 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %profile, align 4
  %conv = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.160, i32 noundef %conv)
  %arrayidx = getelementptr %struct.tomoyo_domain_info, ptr %6, i32 0, i32 7, i32 0
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool37.not = icmp eq i8 %29, 0
  br i1 %tobool37.not, label %tomoyo_set_lf.exit.for.inc_crit_edge, label %if.then38

tomoyo_set_lf.exit.for.inc_crit_edge:             ; preds = %tomoyo_set_lf.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then38:                                        ; preds = %tomoyo_set_lf.exit
  %30 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %31)
  %cmp.i160 = icmp ult i8 %31, 64
  br i1 %cmp.i160, label %if.then.i165, label %do.end.i166

if.then.i165:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i161 = zext i8 %31 to i32
  %inc.i162 = add nuw nsw i8 %31, 1
  %32 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %inc.i162, ptr %w_pos.i, align 1
  %arrayidx.i163 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i161
  %33 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.112, ptr %arrayidx.i163, align 4
  %call.i164 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc

do.end.i166:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc

for.inc:                                          ; preds = %do.end.i166, %if.then.i165, %tomoyo_set_lf.exit.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.tomoyo_domain_info, ptr %6, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.1, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool37.not.1 = icmp eq i8 %35, 0
  br i1 %tobool37.not.1, label %for.inc.sw.bb46.thread_crit_edge, label %if.then38.1

for.inc.sw.bb46.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb46.thread

if.then38.1:                                      ; preds = %for.inc
  %36 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %37)
  %cmp.i160.1 = icmp ult i8 %37, 64
  br i1 %cmp.i160.1, label %if.then.i165.1, label %do.end.i166.1

do.end.i166.1:                                    ; preds = %if.then38.1
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %sw.bb46.thread

if.then.i165.1:                                   ; preds = %if.then38.1
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i161.1 = zext i8 %37 to i32
  %inc.i162.1 = add nuw nsw i8 %37, 1
  %38 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %inc.i162.1, ptr %w_pos.i, align 1
  %arrayidx.i163.1 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i161.1
  %39 = ptrtoint ptr %arrayidx.i163.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.113, ptr %arrayidx.i163.1, align 4
  %call.i164.1 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %sw.bb46.thread

sw.bb46.thread:                                   ; preds = %if.then.i165.1, %do.end.i166.1, %for.inc.sw.bb46.thread_crit_edge
  %40 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %step, align 4
  %inc45 = add i32 %41, 1
  store i32 %inc45, ptr %step, align 4
  br label %while.body.lr.ph

sw.bb46:                                          ; preds = %for.body
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %42)
  %.pr209 = load i16, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %.pr209)
  %cmp50206 = icmp ult i16 %.pr209, 256
  br i1 %cmp50206, label %sw.bb46.while.body.lr.ph_crit_edge, label %sw.bb46.while.end_crit_edge

sw.bb46.while.end_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

sw.bb46.while.body.lr.ph_crit_edge:               ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %sw.bb46.while.body.lr.ph_crit_edge, %sw.bb46.thread
  %43 = phi i16 [ 0, %sw.bb46.thread ], [ %.pr209, %sw.bb46.while.body.lr.ph_crit_edge ]
  %group = getelementptr inbounds %struct.tomoyo_domain_info, ptr %6, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %44 = phi i16 [ %43, %while.body.lr.ph ], [ %51, %while.cond.backedge.while.body_crit_edge ]
  %inc54 = add nuw nsw i16 %44, 1
  %45 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %inc54, ptr %index, align 4
  %conv56 = zext i16 %44 to i32
  %div3.i = lshr i32 %conv56, 5
  %arrayidx.i = getelementptr i32, ptr %group, i32 %div3.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv56, 31
  %48 = shl nuw i32 1, %and.i
  %49 = and i32 %47, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool58.not = icmp eq i32 %49, 0
  br i1 %tobool58.not, label %while.body.while.cond.backedge_crit_edge, label %if.end60

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end60.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %50 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %index, align 4
  %cmp50 = icmp ult i16 %51, 256
  br i1 %cmp50, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

if.end60:                                         ; preds = %while.body
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.158, i32 noundef %conv56)
  %call62 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head)
  br i1 %call62, label %if.end60.while.cond.backedge_crit_edge, label %if.end60.return_crit_edge

if.end60.return_crit_edge:                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end60.while.cond.backedge_crit_edge:           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %sw.bb46.while.end_crit_edge
  %52 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %index, align 4
  %53 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %step, align 4
  %inc69 = add i32 %54, 1
  store i32 %inc69, ptr %step, align 4
  %55 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %56)
  %cmp.i.i169 = icmp ult i8 %56, 64
  br i1 %cmp.i.i169, label %if.then.i.i174, label %do.end.i.i175

if.then.i.i174:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i170 = zext i8 %56 to i32
  %inc.i.i171 = add nuw nsw i8 %56, 1
  %57 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %inc.i.i171, ptr %w_pos.i, align 1
  %arrayidx.i.i172 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i170
  %58 = ptrtoint ptr %arrayidx.i.i172 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.162, ptr %arrayidx.i.i172, align 4
  %call.i.i173 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %sw.bb71

do.end.i.i175:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %sw.bb71

sw.bb71:                                          ; preds = %do.end.i.i175, %if.then.i.i174, %for.body.sw.bb71_crit_edge
  %acl_info_list = getelementptr inbounds %struct.tomoyo_domain_info, ptr %6, i32 0, i32 1
  %call72 = tail call fastcc zeroext i1 @tomoyo_read_domain2(ptr noundef %head, ptr noundef %acl_info_list)
  br i1 %call72, label %if.end74, label %sw.bb71.return_crit_edge

sw.bb71.return_crit_edge:                         ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end74:                                         ; preds = %sw.bb71
  %59 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %step, align 4
  %inc77 = add i32 %60, 1
  store i32 %inc77, ptr %step, align 4
  %61 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %62)
  %cmp.i.i179 = icmp ult i8 %62, 64
  br i1 %cmp.i.i179, label %if.then.i.i184, label %do.end.i.i185

if.then.i.i184:                                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i180 = zext i8 %62 to i32
  %inc.i.i181 = add nuw nsw i8 %62, 1
  %63 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %inc.i.i181, ptr %w_pos.i, align 1
  %arrayidx.i.i182 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i180
  %64 = ptrtoint ptr %arrayidx.i.i182 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.162, ptr %arrayidx.i.i182, align 4
  %call.i.i183 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_lf.exit187

do.end.i.i185:                                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_lf.exit187

tomoyo_set_lf.exit187:                            ; preds = %do.end.i.i185, %if.then.i.i184
  %65 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i186 = icmp eq i8 %66, 0
  br i1 %tobool.not.i186, label %tomoyo_set_lf.exit187.sw.bb81_crit_edge, label %tomoyo_set_lf.exit187.return_crit_edge

tomoyo_set_lf.exit187.return_crit_edge:           ; preds = %tomoyo_set_lf.exit187
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

tomoyo_set_lf.exit187.sw.bb81_crit_edge:          ; preds = %tomoyo_set_lf.exit187
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb81

sw.bb81:                                          ; preds = %tomoyo_set_lf.exit187.sw.bb81_crit_edge, %for.body.sw.bb81_crit_edge
  %67 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %step, align 4
  %68 = ptrtoint ptr %print_this_domain_only to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %print_this_domain_only, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool86.not = icmp eq i8 %69, 0
  br i1 %tobool86.not, label %sw.bb81.for.inc90_crit_edge, label %sw.bb81.done_crit_edge

sw.bb81.done_crit_edge:                           ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

sw.bb81.for.inc90_crit_edge:                      ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc90

for.inc90:                                        ; preds = %sw.bb81.for.inc90_crit_edge, %land.lhs.true26.for.inc90_crit_edge, %for.body.for.inc90_crit_edge
  %70 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %domain, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %71, align 4
  %call.i188 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool.not.i189 = icmp eq i32 %call.i188, 0
  br i1 %tobool.not.i189, label %for.inc90.do.end108_crit_edge, label %srcu_read_lock_held.exit193

for.inc90.do.end108_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end108

srcu_read_lock_held.exit193:                      ; preds = %for.inc90
  %call.i.i190 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i190)
  %tobool99.not = icmp eq i32 %call.i.i190, 0
  br i1 %tobool99.not, label %land.lhs.true100, label %srcu_read_lock_held.exit193.do.end108_crit_edge

srcu_read_lock_held.exit193.do.end108_crit_edge:  ; preds = %srcu_read_lock_held.exit193
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end108

land.lhs.true100:                                 ; preds = %srcu_read_lock_held.exit193
  %call101 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.lhs.true100.do.end108_crit_edge, label %land.lhs.true103

land.lhs.true100.do.end108_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end108

land.lhs.true103:                                 ; preds = %land.lhs.true100
  %.b152153 = load i1, ptr @tomoyo_read_domain.__warned.161, align 1
  br i1 %.b152153, label %land.lhs.true103.do.end108_crit_edge, label %if.then105

land.lhs.true103.do.end108_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end108

if.then105:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_domain.__warned.161, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1622, ptr noundef nonnull @.str.159) #19
  br label %do.end108

do.end108:                                        ; preds = %if.then105, %land.lhs.true103.do.end108_crit_edge, %land.lhs.true100.do.end108_crit_edge, %srcu_read_lock_held.exit193.do.end108_crit_edge, %for.inc90.do.end108_crit_edge
  %74 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %domain, align 4
  %cmp.not = icmp eq ptr %73, @tomoyo_domain_list
  br i1 %cmp.not, label %do.end108.done_crit_edge, label %do.end108.for.body_crit_edge

do.end108.for.body_crit_edge:                     ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

do.end108.done_crit_edge:                         ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

done:                                             ; preds = %do.end108.done_crit_edge, %sw.bb81.done_crit_edge, %if.end17.done_crit_edge
  %75 = ptrtoint ptr %eof to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %eof, align 4
  br label %return

return:                                           ; preds = %done, %tomoyo_set_lf.exit187.return_crit_edge, %sw.bb71.return_crit_edge, %if.end60.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_write_exception(ptr nocapture noundef readonly %head) #1 align 64 {
entry:
  %param = alloca %struct.tomoyo_acl_param, align 4
  %data33 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %w = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7
  %is_delete1 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %is_delete1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_delete1, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %param) #19
  %2 = getelementptr inbounds i8, ptr %param, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 10
  %4 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_buf, align 4
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %param, align 4
  %list = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %list, align 4
  %ns = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 2
  %8 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %w, align 4
  %10 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ns, align 4
  %is_delete4 = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 3
  %11 = ptrtoint ptr %is_delete4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %1, ptr %is_delete4, align 4
  %call = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.183) #19
  br i1 %call, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call11 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.185) #19
  br i1 %call11, label %for.body.preheader.if.then12_crit_edge, label %for.inc

for.body.preheader.if.then12_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call8 = call i32 @tomoyo_write_aggregator(ptr noundef nonnull %param) #19
  br label %cleanup52

if.then12:                                        ; preds = %for.inc.4.if.then12_crit_edge, %for.inc.3.if.then12_crit_edge, %for.inc.2.if.then12_crit_edge, %for.inc.1.if.then12_crit_edge, %for.inc.if.then12_crit_edge, %for.body.preheader.if.then12_crit_edge
  %i.072.lcssa.wide = phi i8 [ 0, %for.body.preheader.if.then12_crit_edge ], [ 1, %for.inc.if.then12_crit_edge ], [ 2, %for.inc.1.if.then12_crit_edge ], [ 3, %for.inc.2.if.then12_crit_edge ], [ 4, %for.inc.3.if.then12_crit_edge ], [ 5, %for.inc.4.if.then12_crit_edge ]
  %call13 = call i32 @tomoyo_write_transition_control(ptr noundef nonnull %param, i8 noundef zeroext %i.072.lcssa.wide) #19
  br label %cleanup52

for.inc:                                          ; preds = %for.body.preheader
  %call11.1 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.186) #19
  br i1 %call11.1, label %for.inc.if.then12_crit_edge, label %for.inc.1

for.inc.if.then12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then12

for.inc.1:                                        ; preds = %for.inc
  %call11.2 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.187) #19
  br i1 %call11.2, label %for.inc.1.if.then12_crit_edge, label %for.inc.2

for.inc.1.if.then12_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then12

for.inc.2:                                        ; preds = %for.inc.1
  %call11.3 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.188) #19
  br i1 %call11.3, label %for.inc.2.if.then12_crit_edge, label %for.inc.3

for.inc.2.if.then12_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then12

for.inc.3:                                        ; preds = %for.inc.2
  %call11.4 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.189) #19
  br i1 %call11.4, label %for.inc.3.if.then12_crit_edge, label %for.inc.4

for.inc.3.if.then12_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then12

for.inc.4:                                        ; preds = %for.inc.3
  %call11.5 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.190) #19
  br i1 %call11.5, label %for.inc.4.if.then12_crit_edge, label %for.inc.5

for.inc.4.if.then12_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then12

for.inc.5:                                        ; preds = %for.inc.4
  %call23 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.191) #19
  br i1 %call23, label %for.inc.5.if.then24_crit_edge, label %for.inc27

for.inc.5.if.then24_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24

if.then24:                                        ; preds = %for.inc27.1.if.then24_crit_edge, %for.inc27.if.then24_crit_edge, %for.inc.5.if.then24_crit_edge
  %i.173.lcssa.wide = phi i8 [ 0, %for.inc.5.if.then24_crit_edge ], [ 1, %for.inc27.if.then24_crit_edge ], [ 2, %for.inc27.1.if.then24_crit_edge ]
  %call25 = call i32 @tomoyo_write_group(ptr noundef nonnull %param, i8 noundef zeroext %i.173.lcssa.wide) #19
  br label %cleanup52

for.inc27:                                        ; preds = %for.inc.5
  %call23.1 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.192) #19
  br i1 %call23.1, label %for.inc27.if.then24_crit_edge, label %for.inc27.1

for.inc27.if.then24_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24

for.inc27.1:                                      ; preds = %for.inc27
  %call23.2 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.193) #19
  br i1 %call23.2, label %for.inc27.1.if.then24_crit_edge, label %for.inc27.2

for.inc27.1.if.then24_crit_edge:                  ; preds = %for.inc27.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24

for.inc27.2:                                      ; preds = %for.inc27.1
  %call31 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.184) #19
  br i1 %call31, label %if.then32, label %for.inc27.2.cleanup52_crit_edge

for.inc27.2.cleanup52_crit_edge:                  ; preds = %for.inc27.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup52

if.then32:                                        ; preds = %for.inc27.2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data33) #19
  %12 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %data33, align 4, !annotation !596
  %13 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %param, align 4
  %call35 = call i32 @simple_strtoul(ptr noundef %14, ptr noundef nonnull %data33, i32 noundef 10) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call35)
  %cmp36 = icmp ult i32 %call35, 256
  br i1 %cmp36, label %land.lhs.true, label %if.then32.cleanup.thread_crit_edge

if.then32.cleanup.thread_crit_edge:               ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.then32
  %15 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data33, align 4
  %incdec.ptr = getelementptr i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %data33, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %18)
  %cmp39 = icmp eq i8 %18, 32
  br i1 %cmp39, label %cleanup, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true.cleanup.thread_crit_edge, %if.then32.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data33) #19
  br label %cleanup52

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %19 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %w, align 4
  %arrayidx46 = getelementptr %struct.tomoyo_policy_namespace, ptr %20, i32 0, i32 3, i32 %call35
  %call48 = call fastcc i32 @tomoyo_write_domain2(ptr noundef %20, ptr noundef %arrayidx46, ptr noundef %incdec.ptr, i1 noundef zeroext %tobool)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data33) #19
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup, %cleanup.thread, %for.inc27.2.cleanup52_crit_edge, %if.then24, %if.then12, %if.then
  %retval.1 = phi i32 [ %call8, %if.then ], [ %call13, %if.then12 ], [ %call25, %if.then24 ], [ %call48, %cleanup ], [ -22, %cleanup.thread ], [ -22, %for.inc27.2.cleanup52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %param) #19
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_read_exception(ptr noundef %head) #1 align 64 {
entry:
  %buffer.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %r = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r, align 4
  %eof = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  %2 = ptrtoint ptr %eof to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eof, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %step = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp119 = icmp ult i32 %5, 11
  br i1 %cmp119, label %land.rhs.lr.ph, label %while.cond.preheader.while.cond13thread-pre-split_crit_edge

while.cond.preheader.while.cond13thread-pre-split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond13thread-pre-split

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %acl.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 3
  %w_pos.i139.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %6 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr123 = load ptr, ptr %acl.i, align 4
  %phi.cmp127 = icmp eq ptr %.pr123, null
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %7 = phi i1 [ %phi.cmp127, %land.rhs.lr.ph ], [ true, %while.body.land.rhs_crit_edge ]
  %8 = phi i32 [ %5, %land.rhs.lr.ph ], [ %inc, %while.body.land.rhs_crit_edge ]
  %9 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %r, align 4
  %policy_list.i = getelementptr i8, ptr %10, i32 -2136
  %arrayidx.i = getelementptr [11 x %struct.list_head], ptr %policy_list.i, i32 0, i32 %8
  br i1 %7, label %if.then.i, label %land.rhs.if.end16.i_crit_edge

land.rhs.if.end16.i_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16.i

if.then.i:                                        ; preds = %land.rhs
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.do.end12.i_crit_edge, label %srcu_read_lock_held.exit.i

if.then.i.do.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end12.i

srcu_read_lock_held.exit.i:                       ; preds = %if.then.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %srcu_read_lock_held.exit.i.do.end12.i_crit_edge

srcu_read_lock_held.exit.i.do.end12.i_crit_edge:  ; preds = %srcu_read_lock_held.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %srcu_read_lock_held.exit.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end12.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b110.i = load i1, ptr @tomoyo_read_policy.__warned, align 1
  br i1 %.b110.i, label %land.lhs.true8.i.do.end12.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end12.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_policy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1862, ptr noundef nonnull @.str.159) #19
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %srcu_read_lock_held.exit.i.do.end12.i_crit_edge, %if.then.i.do.end12.i_crit_edge
  %13 = ptrtoint ptr %acl.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %acl.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end12.i, %land.rhs.if.end16.i_crit_edge
  %14 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %acl.i, align 4
  %cmp.not189.i = icmp eq ptr %15, %arrayidx.i
  br i1 %cmp.not189.i, label %if.end16.i.while.body_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  br label %for.body.i

if.end16.i.while.body_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

for.body.i:                                       ; preds = %do.end70.i.for.body.i_crit_edge, %if.end16.i.for.body.i_crit_edge
  %16 = phi ptr [ %79, %do.end70.i.for.body.i_crit_edge ], [ %15, %if.end16.i.for.body.i_crit_edge ]
  %is_deleted.i = getelementptr inbounds %struct.tomoyo_acl_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %is_deleted.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_deleted.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not.i = icmp eq i8 %18, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.end27.i:                                       ; preds = %for.body.i
  %call28.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br i1 %call28.i, label %if.end30.i, label %while.end

if.end30.i:                                       ; preds = %if.end27.i
  %19 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %8, label %if.end30.i.for.inc.i_crit_edge [
    i32 4, label %sw.bb.i
    i32 5, label %sw.bb44.i
  ]

if.end30.i.for.inc.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end30.i
  tail call fastcc void @tomoyo_print_namespace(ptr noundef %head) #19
  %20 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %w_pos.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %21)
  %cmp.i.i = icmp ult i8 %21, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  %type.i = getelementptr inbounds %struct.tomoyo_transition_control, ptr %16, i32 0, i32 1
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type.i, align 1
  %idxprom.i = zext i8 %23 to i32
  %arrayidx34.i = getelementptr [6 x ptr], ptr @tomoyo_transition_type, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx34.i, align 4
  %conv.i.i = zext i8 %21 to i32
  %inc.i.i = add nuw nsw i8 %21, 1
  %26 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %inc.i.i, ptr %w_pos.i139.i, align 1
  %arrayidx.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %arrayidx.i.i, align 4
  %call.i111.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit.i

tomoyo_set_string.exit.i:                         ; preds = %do.end.i.i, %if.then.i.i
  %program.i = getelementptr inbounds %struct.tomoyo_transition_control, ptr %16, i32 0, i32 4
  %28 = ptrtoint ptr %program.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %program.i, align 4
  %tobool35.not.i = icmp eq ptr %29, null
  br i1 %tobool35.not.i, label %tomoyo_set_string.exit.i.cond.end.i_crit_edge, label %cond.true.i

tomoyo_set_string.exit.i.cond.end.i_crit_edge:    ; preds = %tomoyo_set_string.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end.i

cond.true.i:                                      ; preds = %tomoyo_set_string.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %tomoyo_set_string.exit.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %31, %cond.true.i ], [ @.str.194, %tomoyo_set_string.exit.i.cond.end.i_crit_edge ]
  %32 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %w_pos.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %33)
  %cmp.i113.i = icmp ult i8 %33, 64
  br i1 %cmp.i113.i, label %if.then.i118.i, label %do.end.i119.i

if.then.i118.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i114.i = zext i8 %33 to i32
  %inc.i115.i = add nuw nsw i8 %33, 1
  %34 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %inc.i115.i, ptr %w_pos.i139.i, align 1
  %arrayidx.i116.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i114.i
  %35 = ptrtoint ptr %arrayidx.i116.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cond.i, ptr %arrayidx.i116.i, align 4
  %call.i117.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit120.i

do.end.i119.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit120.i

tomoyo_set_string.exit120.i:                      ; preds = %do.end.i119.i, %if.then.i118.i
  %36 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %w_pos.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %37)
  %cmp.i122.i = icmp ult i8 %37, 64
  br i1 %cmp.i122.i, label %if.then.i127.i, label %do.end.i128.i

if.then.i127.i:                                   ; preds = %tomoyo_set_string.exit120.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i123.i = zext i8 %37 to i32
  %inc.i124.i = add nuw nsw i8 %37, 1
  %38 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %inc.i124.i, ptr %w_pos.i139.i, align 1
  %arrayidx.i125.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i123.i
  %39 = ptrtoint ptr %arrayidx.i125.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.195, ptr %arrayidx.i125.i, align 4
  %call.i126.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit129.i

do.end.i128.i:                                    ; preds = %tomoyo_set_string.exit120.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit129.i

tomoyo_set_string.exit129.i:                      ; preds = %do.end.i128.i, %if.then.i127.i
  %domainname.i = getelementptr inbounds %struct.tomoyo_transition_control, ptr %16, i32 0, i32 3
  %40 = ptrtoint ptr %domainname.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %domainname.i, align 4
  %tobool37.not.i = icmp eq ptr %41, null
  br i1 %tobool37.not.i, label %tomoyo_set_string.exit129.i.cond.end42.i_crit_edge, label %cond.true38.i

tomoyo_set_string.exit129.i.cond.end42.i_crit_edge: ; preds = %tomoyo_set_string.exit129.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end42.i

cond.true38.i:                                    ; preds = %tomoyo_set_string.exit129.i
  call void @__sanitizer_cov_trace_pc() #21
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  br label %cond.end42.i

cond.end42.i:                                     ; preds = %cond.true38.i, %tomoyo_set_string.exit129.i.cond.end42.i_crit_edge
  %cond43.i = phi ptr [ %43, %cond.true38.i ], [ @.str.194, %tomoyo_set_string.exit129.i.cond.end42.i_crit_edge ]
  %44 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %w_pos.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %45)
  %cmp.i131.i = icmp ult i8 %45, 64
  br i1 %cmp.i131.i, label %if.then.i136.i, label %do.end.i137.i

if.then.i136.i:                                   ; preds = %cond.end42.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i132.i = zext i8 %45 to i32
  %inc.i133.i = add nuw nsw i8 %45, 1
  %46 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %inc.i133.i, ptr %w_pos.i139.i, align 1
  %arrayidx.i134.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i132.i
  %47 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cond43.i, ptr %arrayidx.i134.i, align 4
  %call.i135.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %sw.epilog.i

do.end.i137.i:                                    ; preds = %cond.end42.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %sw.epilog.i

sw.bb44.i:                                        ; preds = %if.end30.i
  tail call fastcc void @tomoyo_print_namespace(ptr noundef %head) #19
  %48 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %w_pos.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %49)
  %cmp.i140.i = icmp ult i8 %49, 64
  br i1 %cmp.i140.i, label %if.then.i145.i, label %do.end.i146.i

if.then.i145.i:                                   ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i141.i = zext i8 %49 to i32
  %inc.i142.i = add nuw nsw i8 %49, 1
  %50 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %inc.i142.i, ptr %w_pos.i139.i, align 1
  %arrayidx.i143.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i141.i
  %51 = ptrtoint ptr %arrayidx.i143.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.183, ptr %arrayidx.i143.i, align 4
  %call.i144.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit147.i

do.end.i146.i:                                    ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit147.i

tomoyo_set_string.exit147.i:                      ; preds = %do.end.i146.i, %if.then.i145.i
  %52 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %w_pos.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %53)
  %cmp.i149.i = icmp ult i8 %53, 64
  br i1 %cmp.i149.i, label %if.then.i154.i, label %do.end.i155.i

if.then.i154.i:                                   ; preds = %tomoyo_set_string.exit147.i
  call void @__sanitizer_cov_trace_pc() #21
  %original_name.i = getelementptr inbounds %struct.tomoyo_aggregator, ptr %16, i32 0, i32 1
  %54 = ptrtoint ptr %original_name.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %original_name.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %conv.i150.i = zext i8 %53 to i32
  %inc.i151.i = add nuw nsw i8 %53, 1
  %58 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %inc.i151.i, ptr %w_pos.i139.i, align 1
  %arrayidx.i152.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i150.i
  %59 = ptrtoint ptr %arrayidx.i152.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %arrayidx.i152.i, align 4
  %call.i153.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit156.i

do.end.i155.i:                                    ; preds = %tomoyo_set_string.exit147.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit156.i

tomoyo_set_string.exit156.i:                      ; preds = %do.end.i155.i, %if.then.i154.i
  %60 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %w_pos.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %61)
  %cmp.i.i.i = icmp ult i8 %61, 64
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %tomoyo_set_string.exit156.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i = zext i8 %61 to i32
  %inc.i.i.i = add nuw nsw i8 %61, 1
  %62 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %inc.i.i.i, ptr %w_pos.i139.i, align 1
  %arrayidx.i.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i.i
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.173, ptr %arrayidx.i.i.i, align 4
  %call.i.i157.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_space.exit.i

do.end.i.i.i:                                     ; preds = %tomoyo_set_string.exit156.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_space.exit.i

tomoyo_set_space.exit.i:                          ; preds = %do.end.i.i.i, %if.then.i.i.i
  %64 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %w_pos.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %65)
  %cmp.i159.i = icmp ult i8 %65, 64
  br i1 %cmp.i159.i, label %if.then.i164.i, label %do.end.i165.i

if.then.i164.i:                                   ; preds = %tomoyo_set_space.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %aggregated_name.i = getelementptr inbounds %struct.tomoyo_aggregator, ptr %16, i32 0, i32 2
  %66 = ptrtoint ptr %aggregated_name.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %aggregated_name.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %conv.i160.i = zext i8 %65 to i32
  %inc.i161.i = add nuw nsw i8 %65, 1
  %70 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %inc.i161.i, ptr %w_pos.i139.i, align 1
  %arrayidx.i162.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i160.i
  %71 = ptrtoint ptr %arrayidx.i162.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %arrayidx.i162.i, align 4
  %call.i163.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %sw.epilog.i

do.end.i165.i:                                    ; preds = %tomoyo_set_space.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i165.i, %if.then.i164.i, %do.end.i137.i, %if.then.i136.i
  %72 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %w_pos.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %73)
  %cmp.i.i168.i = icmp ult i8 %73, 64
  br i1 %cmp.i.i168.i, label %if.then.i.i173.i, label %do.end.i.i174.i

if.then.i.i173.i:                                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i169.i = zext i8 %73 to i32
  %inc.i.i170.i = add nuw nsw i8 %73, 1
  %74 = ptrtoint ptr %w_pos.i139.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %inc.i.i170.i, ptr %w_pos.i139.i, align 1
  %arrayidx.i.i171.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i169.i
  %75 = ptrtoint ptr %arrayidx.i.i171.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.162, ptr %arrayidx.i.i171.i, align 4
  %call.i.i172.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc.i

do.end.i.i174.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i.i174.i, %if.then.i.i173.i, %if.end30.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %76 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %acl.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %77, align 4
  %call.i176.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176.i)
  %tobool.not.i177.i = icmp eq i32 %call.i176.i, 0
  br i1 %tobool.not.i177.i, label %for.inc.i.do.end70.i_crit_edge, label %srcu_read_lock_held.exit181.i

for.inc.i.do.end70.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end70.i

srcu_read_lock_held.exit181.i:                    ; preds = %for.inc.i
  %call.i.i178.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178.i)
  %tobool61.not.i = icmp eq i32 %call.i.i178.i, 0
  br i1 %tobool61.not.i, label %land.lhs.true62.i, label %srcu_read_lock_held.exit181.i.do.end70.i_crit_edge

srcu_read_lock_held.exit181.i.do.end70.i_crit_edge: ; preds = %srcu_read_lock_held.exit181.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end70.i

land.lhs.true62.i:                                ; preds = %srcu_read_lock_held.exit181.i
  %call63.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %land.lhs.true62.i.do.end70.i_crit_edge, label %land.lhs.true65.i

land.lhs.true62.i.do.end70.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end70.i

land.lhs.true65.i:                                ; preds = %land.lhs.true62.i
  %.b108109.i = load i1, ptr @tomoyo_read_policy.__warned.196, align 1
  br i1 %.b108109.i, label %land.lhs.true65.i.do.end70.i_crit_edge, label %if.then67.i

land.lhs.true65.i.do.end70.i_crit_edge:           ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end70.i

if.then67.i:                                      ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_policy.__warned.196, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1862, ptr noundef nonnull @.str.159) #19
  br label %do.end70.i

do.end70.i:                                       ; preds = %if.then67.i, %land.lhs.true65.i.do.end70.i_crit_edge, %land.lhs.true62.i.do.end70.i_crit_edge, %srcu_read_lock_held.exit181.i.do.end70.i_crit_edge, %for.inc.i.do.end70.i_crit_edge
  %80 = ptrtoint ptr %acl.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %acl.i, align 4
  %cmp.not.i = icmp eq ptr %79, %arrayidx.i
  br i1 %cmp.not.i, label %do.end70.i.while.body_crit_edge, label %do.end70.i.for.body.i_crit_edge

do.end70.i.for.body.i_crit_edge:                  ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

do.end70.i.while.body_crit_edge:                  ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.body:                                       ; preds = %do.end70.i.while.body_crit_edge, %if.end16.i.while.body_crit_edge
  %81 = ptrtoint ptr %acl.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %acl.i, align 4
  %82 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %step, align 4
  %inc = add i32 %83, 1
  store i32 %inc, ptr %step, align 4
  %cmp = icmp ult i32 %inc, 11
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.while.cond13thread-pre-split_crit_edge

while.body.while.cond13thread-pre-split_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond13thread-pre-split

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs

while.end:                                        ; preds = %if.end27.i
  %84 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr = load i32, ptr %step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %.pr)
  %cmp10 = icmp ult i32 %.pr, 11
  br i1 %cmp10, label %while.end.cleanup_crit_edge, label %while.end.while.cond13thread-pre-split_crit_edge

while.end.while.cond13thread-pre-split_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond13thread-pre-split

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

while.cond13thread-pre-split:                     ; preds = %while.end.while.cond13thread-pre-split_crit_edge, %while.body.while.cond13thread-pre-split_crit_edge, %while.cond.preheader.while.cond13thread-pre-split_crit_edge
  %.pr112 = phi i32 [ %5, %while.cond.preheader.while.cond13thread-pre-split_crit_edge ], [ %.pr, %while.end.while.cond13thread-pre-split_crit_edge ], [ %inc, %while.body.while.cond13thread-pre-split_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %.pr112)
  %cmp16120 = icmp ult i32 %.pr112, 14
  br i1 %cmp16120, label %land.rhs17.lr.ph, label %while.cond13thread-pre-split.while.end26_crit_edge

while.cond13thread-pre-split.while.end26_crit_edge: ; preds = %while.cond13thread-pre-split
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end26

land.rhs17.lr.ph:                                 ; preds = %while.cond13thread-pre-split
  %group.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 2
  %acl.i89 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 3
  %w_pos.i.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %85 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr124 = load ptr, ptr %group.i, align 4
  %phi.cmp = icmp eq ptr %.pr124, null
  br label %land.rhs17

land.rhs17:                                       ; preds = %while.body22.land.rhs17_crit_edge, %land.rhs17.lr.ph
  %86 = phi i1 [ %phi.cmp, %land.rhs17.lr.ph ], [ true, %while.body22.land.rhs17_crit_edge ]
  %87 = phi i32 [ %.pr112, %land.rhs17.lr.ph ], [ %inc25, %while.body22.land.rhs17_crit_edge ]
  %sub = add nsw i32 %87, -11
  %88 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %r, align 4
  %group_list.i = getelementptr i8, ptr %89, i32 -2160
  %arrayidx.i74 = getelementptr [3 x %struct.list_head], ptr %group_list.i, i32 0, i32 %sub
  br i1 %86, label %if.then.i78, label %land.rhs17.if.end16.i88_crit_edge

land.rhs17.if.end16.i88_crit_edge:                ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16.i88

if.then.i78:                                      ; preds = %land.rhs17
  %90 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %arrayidx.i74, align 4
  %call.i.i76 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %call.i.i76, 0
  br i1 %tobool.not.i.i77, label %if.then.i78.do.end12.i87_crit_edge, label %srcu_read_lock_held.exit.i81

if.then.i78.do.end12.i87_crit_edge:               ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end12.i87

srcu_read_lock_held.exit.i81:                     ; preds = %if.then.i78
  %call.i.i.i79 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i79)
  %tobool5.not.i80 = icmp eq i32 %call.i.i.i79, 0
  br i1 %tobool5.not.i80, label %land.lhs.true.i84, label %srcu_read_lock_held.exit.i81.do.end12.i87_crit_edge

srcu_read_lock_held.exit.i81.do.end12.i87_crit_edge: ; preds = %srcu_read_lock_held.exit.i81
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end12.i87

land.lhs.true.i84:                                ; preds = %srcu_read_lock_held.exit.i81
  %call6.i82 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i82)
  %tobool7.not.i83 = icmp eq i32 %call6.i82, 0
  br i1 %tobool7.not.i83, label %land.lhs.true.i84.do.end12.i87_crit_edge, label %land.lhs.true8.i85

land.lhs.true.i84.do.end12.i87_crit_edge:         ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end12.i87

land.lhs.true8.i85:                               ; preds = %land.lhs.true.i84
  %.b185.i = load i1, ptr @tomoyo_read_group.__warned, align 1
  br i1 %.b185.i, label %land.lhs.true8.i85.do.end12.i87_crit_edge, label %if.then10.i86

land.lhs.true8.i85.do.end12.i87_crit_edge:        ; preds = %land.lhs.true8.i85
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end12.i87

if.then10.i86:                                    ; preds = %land.lhs.true8.i85
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1803, ptr noundef nonnull @.str.159) #19
  br label %do.end12.i87

do.end12.i87:                                     ; preds = %if.then10.i86, %land.lhs.true8.i85.do.end12.i87_crit_edge, %land.lhs.true.i84.do.end12.i87_crit_edge, %srcu_read_lock_held.exit.i81.do.end12.i87_crit_edge, %if.then.i78.do.end12.i87_crit_edge
  %92 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %group.i, align 4
  br label %if.end16.i88

if.end16.i88:                                     ; preds = %do.end12.i87, %land.rhs17.if.end16.i88_crit_edge
  %93 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %group.i, align 4
  %cmp.not247.i = icmp eq ptr %94, %arrayidx.i74
  br i1 %cmp.not247.i, label %if.end16.i88.while.body22_crit_edge, label %for.body.lr.ph.i90

if.end16.i88.while.body22_crit_edge:              ; preds = %if.end16.i88
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body22

for.body.lr.ph.i90:                               ; preds = %if.end16.i88
  %arrayidx66.i = getelementptr [3 x ptr], ptr @tomoyo_group_name, i32 0, i32 %sub
  br label %for.body.i91

for.body.i91:                                     ; preds = %do.end135.i.for.body.i91_crit_edge, %for.body.lr.ph.i90
  %95 = phi ptr [ %94, %for.body.lr.ph.i90 ], [ %151, %do.end135.i.for.body.i91_crit_edge ]
  %96 = ptrtoint ptr %acl.i89 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %acl.i89, align 4
  %tobool26.not.i = icmp eq ptr %97, null
  br i1 %tobool26.not.i, label %if.then27.i, label %for.body.i91.if.end48.i_crit_edge

for.body.i91.if.end48.i_crit_edge:                ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48.i

if.then27.i:                                      ; preds = %for.body.i91
  %member_list.i = getelementptr inbounds %struct.tomoyo_group, ptr %95, i32 0, i32 2
  %98 = ptrtoint ptr %member_list.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %member_list.i, align 4
  %call.i186.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186.i)
  %tobool.not.i187.i = icmp eq i32 %call.i186.i, 0
  br i1 %tobool.not.i187.i, label %if.then27.i.do.end44.i_crit_edge, label %srcu_read_lock_held.exit191.i

if.then27.i.do.end44.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end44.i

srcu_read_lock_held.exit191.i:                    ; preds = %if.then27.i
  %call.i.i188.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i188.i)
  %tobool35.not.i92 = icmp eq i32 %call.i.i188.i, 0
  br i1 %tobool35.not.i92, label %land.lhs.true36.i, label %srcu_read_lock_held.exit191.i.do.end44.i_crit_edge

srcu_read_lock_held.exit191.i.do.end44.i_crit_edge: ; preds = %srcu_read_lock_held.exit191.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end44.i

land.lhs.true36.i:                                ; preds = %srcu_read_lock_held.exit191.i
  %call37.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true36.i.do.end44.i_crit_edge, label %land.lhs.true39.i

land.lhs.true36.i.do.end44.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end44.i

land.lhs.true39.i:                                ; preds = %land.lhs.true36.i
  %.b179184.i = load i1, ptr @tomoyo_read_group.__warned.197, align 1
  br i1 %.b179184.i, label %land.lhs.true39.i.do.end44.i_crit_edge, label %if.then41.i

land.lhs.true39.i.do.end44.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end44.i

if.then41.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_group.__warned.197, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1807, ptr noundef nonnull @.str.159) #19
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then41.i, %land.lhs.true39.i.do.end44.i_crit_edge, %land.lhs.true36.i.do.end44.i_crit_edge, %srcu_read_lock_held.exit191.i.do.end44.i_crit_edge, %if.then27.i.do.end44.i_crit_edge
  %100 = ptrtoint ptr %acl.i89 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %acl.i89, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end44.i, %for.body.i91.if.end48.i_crit_edge
  %member_list52.i = getelementptr inbounds %struct.tomoyo_group, ptr %95, i32 0, i32 2
  %101 = ptrtoint ptr %acl.i89 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %acl.i89, align 4
  %cmp53.not246.i = icmp eq ptr %102, %member_list52.i
  br i1 %cmp53.not246.i, label %if.end48.i.for.inc116.i_crit_edge, label %for.body54.lr.ph.i

if.end48.i.for.inc116.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc116.i

for.body54.lr.ph.i:                               ; preds = %if.end48.i
  %group_name.i = getelementptr inbounds %struct.tomoyo_group, ptr %95, i32 0, i32 1
  br label %for.body54.i

for.body54.i:                                     ; preds = %do.end107.i.for.body54.i_crit_edge, %for.body54.lr.ph.i
  %103 = phi ptr [ %102, %for.body54.lr.ph.i ], [ %145, %do.end107.i.for.body54.i_crit_edge ]
  %is_deleted.i93 = getelementptr inbounds %struct.tomoyo_acl_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %is_deleted.i93 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %is_deleted.i93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool60.not.i = icmp eq i8 %105, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %for.body54.i.for.inc.i109_crit_edge

for.body54.i.for.inc.i109_crit_edge:              ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i109

if.end62.i:                                       ; preds = %for.body54.i
  %call63.i94 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br i1 %call63.i94, label %if.end65.i, label %if.end62.i.while.end26_crit_edge

if.end62.i.while.end26_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end26

if.end65.i:                                       ; preds = %if.end62.i
  call fastcc void @tomoyo_print_namespace(ptr noundef %head) #19
  %106 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %107)
  %cmp.i.i95 = icmp ult i8 %107, 64
  br i1 %cmp.i.i95, label %if.then.i.i99, label %do.end.i.i100

if.then.i.i99:                                    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #21
  %108 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx66.i, align 4
  %conv.i.i96 = zext i8 %107 to i32
  %inc.i.i97 = add nuw nsw i8 %107, 1
  %110 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %inc.i.i97, ptr %w_pos.i.i, align 1
  %arrayidx.i.i98 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i96
  %111 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %109, ptr %arrayidx.i.i98, align 4
  %call.i192.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit.i101

do.end.i.i100:                                    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit.i101

tomoyo_set_string.exit.i101:                      ; preds = %do.end.i.i100, %if.then.i.i99
  %112 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %113)
  %cmp.i194.i = icmp ult i8 %113, 64
  br i1 %cmp.i194.i, label %if.then.i199.i, label %do.end.i200.i

if.then.i199.i:                                   ; preds = %tomoyo_set_string.exit.i101
  call void @__sanitizer_cov_trace_pc() #21
  %114 = ptrtoint ptr %group_name.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %group_name.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %conv.i195.i = zext i8 %113 to i32
  %inc.i196.i = add nuw nsw i8 %113, 1
  %118 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %inc.i196.i, ptr %w_pos.i.i, align 1
  %arrayidx.i197.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i195.i
  %119 = ptrtoint ptr %arrayidx.i197.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %117, ptr %arrayidx.i197.i, align 4
  %call.i198.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit201.i

do.end.i200.i:                                    ; preds = %tomoyo_set_string.exit.i101
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit201.i

tomoyo_set_string.exit201.i:                      ; preds = %do.end.i200.i, %if.then.i199.i
  %120 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %87, label %tomoyo_set_string.exit201.i.if.end87.i_crit_edge [
    i32 11, label %if.then68.i
    i32 12, label %if.then74.i
    i32 13, label %if.then80.i
  ]

tomoyo_set_string.exit201.i.if.end87.i_crit_edge: ; preds = %tomoyo_set_string.exit201.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end87.i

if.then68.i:                                      ; preds = %tomoyo_set_string.exit201.i
  %121 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %122)
  %cmp.i.i.i102 = icmp ult i8 %122, 64
  br i1 %cmp.i.i.i102, label %if.then.i.i.i106, label %do.end.i.i.i107

if.then.i.i.i106:                                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i103 = zext i8 %122 to i32
  %inc.i.i.i104 = add nuw nsw i8 %122, 1
  %123 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %inc.i.i.i104, ptr %w_pos.i.i, align 1
  %arrayidx.i.i.i105 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i.i103
  %124 = ptrtoint ptr %arrayidx.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.173, ptr %arrayidx.i.i.i105, align 4
  %call.i.i202.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_space.exit.i108

do.end.i.i.i107:                                  ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_space.exit.i108

tomoyo_set_space.exit.i108:                       ; preds = %do.end.i.i.i107, %if.then.i.i.i106
  %125 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %126)
  %cmp.i204.i = icmp ult i8 %126, 64
  br i1 %cmp.i204.i, label %if.then.i209.i, label %do.end.i210.i

if.then.i209.i:                                   ; preds = %tomoyo_set_space.exit.i108
  call void @__sanitizer_cov_trace_pc() #21
  %member_name.i = getelementptr inbounds %struct.tomoyo_path_group, ptr %103, i32 0, i32 1
  %127 = ptrtoint ptr %member_name.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %member_name.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %conv.i205.i = zext i8 %126 to i32
  %inc.i206.i = add nuw nsw i8 %126, 1
  %131 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %inc.i206.i, ptr %w_pos.i.i, align 1
  %arrayidx.i207.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i205.i
  %132 = ptrtoint ptr %arrayidx.i207.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %130, ptr %arrayidx.i207.i, align 4
  %call.i208.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end87.i

do.end.i210.i:                                    ; preds = %tomoyo_set_space.exit.i108
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end87.i

if.then74.i:                                      ; preds = %tomoyo_set_string.exit201.i
  %number.i = getelementptr inbounds %struct.tomoyo_number_group, ptr %103, i32 0, i32 1
  %133 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %134)
  %cmp.i.i.i.i = icmp ult i8 %134, 64
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i.i = zext i8 %134 to i32
  %inc.i.i.i.i = add nuw nsw i8 %134, 1
  %135 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %inc.i.i.i.i, ptr %w_pos.i.i, align 1
  %arrayidx.i.i.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i.i.i
  %136 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.173, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_print_number_union.exit.i

do.end.i.i.i.i:                                   ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_print_number_union.exit.i

tomoyo_print_number_union.exit.i:                 ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i
  call fastcc void @tomoyo_print_number_union_nospace(ptr noundef %head, ptr noundef %number.i) #19
  br label %if.end87.i

if.then80.i:                                      ; preds = %tomoyo_set_string.exit201.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buffer.i) #19
  %137 = call ptr @memset(ptr %buffer.i, i32 255, i32 128)
  %address.i = getelementptr inbounds %struct.tomoyo_address_group, ptr %103, i32 0, i32 1
  call void @tomoyo_print_ip(ptr noundef nonnull %buffer.i, i32 noundef 128, ptr noundef %address.i) #19
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.198, ptr noundef nonnull %buffer.i) #19
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buffer.i) #19
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then80.i, %tomoyo_print_number_union.exit.i, %do.end.i210.i, %if.then.i209.i, %tomoyo_set_string.exit201.i.if.end87.i_crit_edge
  %138 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %139)
  %cmp.i.i213.i = icmp ult i8 %139, 64
  br i1 %cmp.i.i213.i, label %if.then.i.i218.i, label %do.end.i.i219.i

if.then.i.i218.i:                                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i214.i = zext i8 %139 to i32
  %inc.i.i215.i = add nuw nsw i8 %139, 1
  %140 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %inc.i.i215.i, ptr %w_pos.i.i, align 1
  %arrayidx.i.i216.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i214.i
  %141 = ptrtoint ptr %arrayidx.i.i216.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @.str.162, ptr %arrayidx.i.i216.i, align 4
  %call.i.i217.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc.i109

do.end.i.i219.i:                                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc.i109

for.inc.i109:                                     ; preds = %do.end.i.i219.i, %if.then.i.i218.i, %for.body54.i.for.inc.i109_crit_edge
  %142 = ptrtoint ptr %acl.i89 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %acl.i89, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %143, align 4
  %call.i221.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221.i)
  %tobool.not.i222.i = icmp eq i32 %call.i221.i, 0
  br i1 %tobool.not.i222.i, label %for.inc.i109.do.end107.i_crit_edge, label %srcu_read_lock_held.exit226.i

for.inc.i109.do.end107.i_crit_edge:               ; preds = %for.inc.i109
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end107.i

srcu_read_lock_held.exit226.i:                    ; preds = %for.inc.i109
  %call.i.i223.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i223.i)
  %tobool98.not.i = icmp eq i32 %call.i.i223.i, 0
  br i1 %tobool98.not.i, label %land.lhs.true99.i, label %srcu_read_lock_held.exit226.i.do.end107.i_crit_edge

srcu_read_lock_held.exit226.i.do.end107.i_crit_edge: ; preds = %srcu_read_lock_held.exit226.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end107.i

land.lhs.true99.i:                                ; preds = %srcu_read_lock_held.exit226.i
  %call100.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %land.lhs.true99.i.do.end107.i_crit_edge, label %land.lhs.true102.i

land.lhs.true99.i.do.end107.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end107.i

land.lhs.true102.i:                               ; preds = %land.lhs.true99.i
  %.b180183.i = load i1, ptr @tomoyo_read_group.__warned.199, align 1
  br i1 %.b180183.i, label %land.lhs.true102.i.do.end107.i_crit_edge, label %if.then104.i

land.lhs.true102.i.do.end107.i_crit_edge:         ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end107.i

if.then104.i:                                     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_group.__warned.199, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1807, ptr noundef nonnull @.str.159) #19
  br label %do.end107.i

do.end107.i:                                      ; preds = %if.then104.i, %land.lhs.true102.i.do.end107.i_crit_edge, %land.lhs.true99.i.do.end107.i_crit_edge, %srcu_read_lock_held.exit226.i.do.end107.i_crit_edge, %for.inc.i109.do.end107.i_crit_edge
  %146 = ptrtoint ptr %acl.i89 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %acl.i89, align 4
  %cmp53.not.i = icmp eq ptr %145, %member_list52.i
  br i1 %cmp53.not.i, label %do.end107.i.for.inc116.i_crit_edge, label %do.end107.i.for.body54.i_crit_edge

do.end107.i.for.body54.i_crit_edge:               ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body54.i

do.end107.i.for.inc116.i_crit_edge:               ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc116.i

for.inc116.i:                                     ; preds = %do.end107.i.for.inc116.i_crit_edge, %if.end48.i.for.inc116.i_crit_edge
  %147 = ptrtoint ptr %acl.i89 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %acl.i89, align 4
  %148 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %group.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile ptr, ptr %149, align 4
  %call.i227.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227.i)
  %tobool.not.i228.i = icmp eq i32 %call.i227.i, 0
  br i1 %tobool.not.i228.i, label %for.inc116.i.do.end135.i_crit_edge, label %srcu_read_lock_held.exit232.i

for.inc116.i.do.end135.i_crit_edge:               ; preds = %for.inc116.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end135.i

srcu_read_lock_held.exit232.i:                    ; preds = %for.inc116.i
  %call.i.i229.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i229.i)
  %tobool126.not.i = icmp eq i32 %call.i.i229.i, 0
  br i1 %tobool126.not.i, label %land.lhs.true127.i, label %srcu_read_lock_held.exit232.i.do.end135.i_crit_edge

srcu_read_lock_held.exit232.i.do.end135.i_crit_edge: ; preds = %srcu_read_lock_held.exit232.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end135.i

land.lhs.true127.i:                               ; preds = %srcu_read_lock_held.exit232.i
  %call128.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool129.not.i = icmp eq i32 %call128.i, 0
  br i1 %tobool129.not.i, label %land.lhs.true127.i.do.end135.i_crit_edge, label %land.lhs.true130.i

land.lhs.true127.i.do.end135.i_crit_edge:         ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end135.i

land.lhs.true130.i:                               ; preds = %land.lhs.true127.i
  %.b181182.i = load i1, ptr @tomoyo_read_group.__warned.200, align 1
  br i1 %.b181182.i, label %land.lhs.true130.i.do.end135.i_crit_edge, label %if.then132.i

land.lhs.true130.i.do.end135.i_crit_edge:         ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end135.i

if.then132.i:                                     ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_group.__warned.200, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1803, ptr noundef nonnull @.str.159) #19
  br label %do.end135.i

do.end135.i:                                      ; preds = %if.then132.i, %land.lhs.true130.i.do.end135.i_crit_edge, %land.lhs.true127.i.do.end135.i_crit_edge, %srcu_read_lock_held.exit232.i.do.end135.i_crit_edge, %for.inc116.i.do.end135.i_crit_edge
  %152 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %group.i, align 4
  %cmp.not.i110 = icmp eq ptr %151, %arrayidx.i74
  br i1 %cmp.not.i110, label %do.end135.i.while.body22_crit_edge, label %do.end135.i.for.body.i91_crit_edge

do.end135.i.for.body.i91_crit_edge:               ; preds = %do.end135.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i91

do.end135.i.while.body22_crit_edge:               ; preds = %do.end135.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body22

while.body22:                                     ; preds = %do.end135.i.while.body22_crit_edge, %if.end16.i88.while.body22_crit_edge
  %153 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %group.i, align 4
  %154 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %step, align 4
  %inc25 = add i32 %155, 1
  store i32 %inc25, ptr %step, align 4
  %cmp16 = icmp ult i32 %inc25, 14
  br i1 %cmp16, label %while.body22.land.rhs17_crit_edge, label %while.body22.while.cond32.preheader_crit_edge

while.body22.while.cond32.preheader_crit_edge:    ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond32.preheader

while.body22.land.rhs17_crit_edge:                ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs17

while.end26:                                      ; preds = %if.end62.i.while.end26_crit_edge, %while.cond13thread-pre-split.while.end26_crit_edge
  %156 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pr125 = load i32, ptr %step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %.pr125)
  %cmp29 = icmp ult i32 %.pr125, 14
  br i1 %cmp29, label %while.end26.cleanup_crit_edge, label %while.end26.while.cond32.preheader_crit_edge

while.end26.while.cond32.preheader_crit_edge:     ; preds = %while.end26
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond32.preheader

while.end26.cleanup_crit_edge:                    ; preds = %while.end26
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

while.cond32.preheader:                           ; preds = %while.end26.while.cond32.preheader_crit_edge, %while.body22.while.cond32.preheader_crit_edge
  %157 = phi i32 [ %.pr125, %while.end26.while.cond32.preheader_crit_edge ], [ %inc25, %while.body22.while.cond32.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 270, i32 %157)
  %cmp35121 = icmp ult i32 %157, 270
  br i1 %cmp35121, label %while.body36.lr.ph, label %while.cond32.preheader.while.end50_crit_edge

while.cond32.preheader.while.end50_crit_edge:     ; preds = %while.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end50

while.body36.lr.ph:                               ; preds = %while.cond32.preheader
  %acl_group_index = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 9
  %acl_group = getelementptr i8, ptr %1, i32 -2048
  br label %while.body36

while.body36:                                     ; preds = %if.end46.while.body36_crit_edge, %while.body36.lr.ph
  %158 = phi i32 [ %157, %while.body36.lr.ph ], [ %inc49, %if.end46.while.body36_crit_edge ]
  %159 = trunc i32 %158 to i8
  %conv = add i8 %159, -14
  %160 = ptrtoint ptr %acl_group_index to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv, ptr %acl_group_index, align 4
  %idxprom = zext i8 %conv to i32
  %arrayidx = getelementptr [256 x %struct.list_head], ptr %acl_group, i32 0, i32 %idxprom
  %call44 = call fastcc zeroext i1 @tomoyo_read_domain2(ptr noundef %head, ptr noundef %arrayidx)
  br i1 %call44, label %if.end46, label %while.body36.cleanup_crit_edge

while.body36.cleanup_crit_edge:                   ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end46:                                         ; preds = %while.body36
  %161 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %step, align 4
  %inc49 = add i32 %162, 1
  store i32 %inc49, ptr %step, align 4
  %cmp35 = icmp ult i32 %inc49, 270
  br i1 %cmp35, label %if.end46.while.body36_crit_edge, label %if.end46.while.end50_crit_edge

if.end46.while.end50_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end50

if.end46.while.body36_crit_edge:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body36

while.end50:                                      ; preds = %if.end46.while.end50_crit_edge, %while.cond32.preheader.while.end50_crit_edge
  %163 = ptrtoint ptr %eof to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %eof, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end50, %while.body36.cleanup_crit_edge, %while.end26.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_poll_log(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_read_log(ptr noundef) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tomoyo_write_pid(ptr nocapture noundef writeonly %head) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %eof = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  %0 = ptrtoint ptr %eof to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %eof, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_read_pid(ptr nocapture noundef %head) #1 align 64 {
entry:
  %buf = alloca ptr, align 4
  %pid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #19
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 10
  %0 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_buf, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pid) #19
  %3 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pid, align 4, !annotation !596
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %eof = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  %4 = ptrtoint ptr %eof to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %eof, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %w_pos = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %5 = ptrtoint ptr %w_pos to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %w_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %eof4 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  %7 = ptrtoint ptr %eof4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %eof4, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %eof4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %eof4, align 4
  %call = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %buf, ptr noundef nonnull @.str.201) #19
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %call13 = call i32 @kstrtouint(ptr noundef %11, i32 noundef 10, ptr noundef nonnull %pid) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %12 = call i32 @llvm.read_register.i32(metadata !585) #19
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !599
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %if.end16.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end16.rcu_read_lock.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.203, i32 noundef 696, ptr noundef nonnull @.str.204) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end16.rcu_read_lock.exit_crit_edge
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 4
  br i1 %call, label %if.then18, label %if.else

if.then18:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call19 = call ptr @find_task_by_pid_ns(i32 noundef %17, ptr noundef nonnull @init_pid_ns) #19
  br label %if.end21

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call20 = call ptr @find_task_by_vpid(i32 noundef %17) #19
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %p.0 = phi ptr [ %call19, %if.then18 ], [ %call20, %if.else ]
  %tobool22.not = icmp eq ptr %p.0, null
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  %security.i = getelementptr inbounds %struct.task_struct, ptr %p.0, i32 0, i32 215
  %18 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6) to i32))
  %20 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %20
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %domain.0 = phi ptr [ %22, %if.then23 ], [ null, %if.end21.if.end25_crit_edge ]
  %call.i43 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i43, label %if.end25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

if.end25.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %if.end25
  %call1.i44 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.203, i32 noundef 724, ptr noundef nonnull @.str.205) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %if.end25.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !600
  %23 = call i32 @llvm.read_register.i32(metadata !585) #19
  %and.i.i.i.i.i50 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  %tobool26.not = icmp eq ptr %domain.0, null
  br i1 %tobool26.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end28

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end28:                                         ; preds = %rcu_read_unlock.exit
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid, align 4
  %profile = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.0, i32 0, i32 5
  %29 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %profile, align 4
  %conv29 = zext i8 %30 to i32
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.202, i32 noundef %28, i32 noundef %conv29)
  %31 = ptrtoint ptr %w_pos to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %w_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %32)
  %cmp.i = icmp ult i8 %32, 64
  br i1 %cmp.i, label %if.then.i53, label %do.end.i

if.then.i53:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  %domainname = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.0, i32 0, i32 2
  %33 = ptrtoint ptr %domainname to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %domainname, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %conv.i = zext i8 %32 to i32
  %inc.i = add nuw nsw i8 %32, 1
  %37 = ptrtoint ptr %w_pos to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %inc.i, ptr %w_pos, align 1
  %arrayidx.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %arrayidx.i, align 4
  %call.i52 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %cleanup

do.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then.i53, %rcu_read_unlock.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pid) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_read_version(ptr nocapture noundef %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %eof = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  %0 = ptrtoint ptr %eof to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eof, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.206)
  %2 = ptrtoint ptr %eof to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %eof, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_write_stat(ptr nocapture noundef readonly %head) #1 align 64 {
entry:
  %data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #19
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 10
  %0 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_buf, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %data, align 4
  %call = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %data, ptr noundef nonnull @.str.207) #19
  br i1 %call, label %for.body.preheader, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

for.body.preheader:                               ; preds = %entry
  %call2 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %data, ptr noundef nonnull @.str.209) #19
  br i1 %call2, label %if.then3, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then3:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #21
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef nonnull @.str.208, ptr noundef nonnull @tomoyo_memory_quota)
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.preheader.for.inc_crit_edge
  %call2.1 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %data, ptr noundef nonnull @.str.210) #19
  br i1 %call2.1, label %if.then3.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call6.1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %6, ptr noundef nonnull @.str.208, ptr noundef getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_quota, i32 0, i32 1))
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc.for.inc.1_crit_edge
  %call2.2 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %data, ptr noundef nonnull @.str.211) #19
  br i1 %call2.2, label %if.then3.2, label %for.inc.1.if.end7_crit_edge

for.inc.1.if.end7_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.then3.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call6.2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %8, ptr noundef nonnull @.str.208, ptr noundef getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_quota, i32 0, i32 2))
  br label %if.end7

if.end7:                                          ; preds = %if.then3.2, %for.inc.1.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_read_stat(ptr nocapture noundef %head) #1 align 64 {
entry:
  %stamp = alloca %struct.tomoyo_time, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %eof = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  %0 = ptrtoint ptr %eof to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eof, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %month = getelementptr inbounds %struct.tomoyo_time, ptr %stamp, i32 0, i32 1
  %day = getelementptr inbounds %struct.tomoyo_time, ptr %stamp, i32 0, i32 2
  %hour = getelementptr inbounds %struct.tomoyo_time, ptr %stamp, i32 0, i32 3
  %min = getelementptr inbounds %struct.tomoyo_time, ptr %stamp, i32 0, i32 4
  %sec = getelementptr inbounds %struct.tomoyo_time, ptr %stamp, i32 0, i32 5
  %w_pos.i.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  br label %for.body

for.cond18.preheader:                             ; preds = %tomoyo_set_lf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_memory_used to i32))
  %2 = load i32, ptr @tomoyo_memory_used, align 4
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.209, i32 noundef %2)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_memory_quota to i32))
  %3 = load i32, ptr @tomoyo_memory_quota, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool29.not = icmp eq i32 %3, 0
  br i1 %tobool29.not, label %for.cond18.preheader.if.end31_crit_edge, label %if.then30

for.cond18.preheader.if.end31_crit_edge:          ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31

for.body:                                         ; preds = %tomoyo_set_lf.exit.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %tomoyo_set_lf.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @tomoyo_policy_headers, i32 0, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [4 x %struct.atomic_t], ptr @tomoyo_stat_updated, i32 0, i32 %indvars.iv
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx3, i32 noundef 4) #19
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx3, align 4
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.212, ptr noundef %5, i32 noundef %7)
  %arrayidx5 = getelementptr [4 x i64], ptr @tomoyo_stat_modified, i32 0, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool6.not = icmp eq i64 %9, 0
  br i1 %tobool6.not, label %for.body.if.end16_crit_edge, label %if.then7

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stamp) #19
  %10 = ptrtoint ptr %stamp to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %stamp, align 8, !annotation !596
  call void @tomoyo_convert_time(i64 noundef %9, ptr noundef nonnull %stamp) #19
  %11 = ptrtoint ptr %stamp to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %stamp, align 8
  %conv10 = zext i16 %12 to i32
  %13 = ptrtoint ptr %month to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %month, align 2
  %conv11 = zext i8 %14 to i32
  %15 = ptrtoint ptr %day to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %day, align 1
  %conv12 = zext i8 %16 to i32
  %17 = ptrtoint ptr %hour to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hour, align 4
  %conv13 = zext i8 %18 to i32
  %19 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %min, align 1
  %conv14 = zext i8 %20 to i32
  %21 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sec, align 2
  %conv15 = zext i8 %22 to i32
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.213, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stamp) #19
  br label %if.end16

if.end16:                                         ; preds = %if.then7, %for.body.if.end16_crit_edge
  %23 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %24)
  %cmp.i.i = icmp ult i8 %24, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i = zext i8 %24 to i32
  %inc.i.i = add nuw nsw i8 %24, 1
  %25 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %inc.i.i, ptr %w_pos.i.i, align 1
  %arrayidx.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.162, ptr %arrayidx.i.i, align 4
  %call.i.i61 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_lf.exit

do.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_lf.exit

tomoyo_set_lf.exit:                               ; preds = %do.end.i.i, %if.then.i.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.cond18.preheader, label %tomoyo_set_lf.exit.for.body_crit_edge

tomoyo_set_lf.exit.for.body_crit_edge:            ; preds = %tomoyo_set_lf.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.then30:                                        ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.215, i32 noundef %3)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %for.cond18.preheader.if.end31_crit_edge
  %27 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %28)
  %cmp.i.i63 = icmp ult i8 %28, 64
  br i1 %cmp.i.i63, label %if.then.i.i68, label %do.end.i.i69

if.then.i.i68:                                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i64 = zext i8 %28 to i32
  %inc.i.i65 = add nuw nsw i8 %28, 1
  %29 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %inc.i.i65, ptr %w_pos.i.i, align 1
  %arrayidx.i.i66 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i64
  %30 = ptrtoint ptr %arrayidx.i.i66 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.162, ptr %arrayidx.i.i66, align 4
  %call.i.i67 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_lf.exit71

do.end.i.i69:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_lf.exit71

tomoyo_set_lf.exit71:                             ; preds = %do.end.i.i69, %if.then.i.i68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 1) to i32))
  %31 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 1), align 4
  %add.1 = add i32 %31, %2
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.210, i32 noundef %31)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_quota, i32 0, i32 1) to i32))
  %32 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_quota, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool29.not.1 = icmp eq i32 %32, 0
  br i1 %tobool29.not.1, label %tomoyo_set_lf.exit71.if.end31.1_crit_edge, label %if.then30.1

tomoyo_set_lf.exit71.if.end31.1_crit_edge:        ; preds = %tomoyo_set_lf.exit71
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31.1

if.then30.1:                                      ; preds = %tomoyo_set_lf.exit71
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.215, i32 noundef %32)
  br label %if.end31.1

if.end31.1:                                       ; preds = %if.then30.1, %tomoyo_set_lf.exit71.if.end31.1_crit_edge
  %33 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %34)
  %cmp.i.i63.1 = icmp ult i8 %34, 64
  br i1 %cmp.i.i63.1, label %if.then.i.i68.1, label %do.end.i.i69.1

do.end.i.i69.1:                                   ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_lf.exit71.1

if.then.i.i68.1:                                  ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i64.1 = zext i8 %34 to i32
  %inc.i.i65.1 = add nuw nsw i8 %34, 1
  %35 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %inc.i.i65.1, ptr %w_pos.i.i, align 1
  %arrayidx.i.i66.1 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i64.1
  %36 = ptrtoint ptr %arrayidx.i.i66.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.162, ptr %arrayidx.i.i66.1, align 4
  %call.i.i67.1 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_lf.exit71.1

tomoyo_set_lf.exit71.1:                           ; preds = %if.then.i.i68.1, %do.end.i.i69.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 2) to i32))
  %37 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_used, i32 0, i32 2), align 4
  %add.2 = add i32 %37, %add.1
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.211, i32 noundef %37)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_quota, i32 0, i32 2) to i32))
  %38 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @tomoyo_memory_quota, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool29.not.2 = icmp eq i32 %38, 0
  br i1 %tobool29.not.2, label %tomoyo_set_lf.exit71.1.if.end31.2_crit_edge, label %if.then30.2

tomoyo_set_lf.exit71.1.if.end31.2_crit_edge:      ; preds = %tomoyo_set_lf.exit71.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31.2

if.then30.2:                                      ; preds = %tomoyo_set_lf.exit71.1
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.215, i32 noundef %38)
  br label %if.end31.2

if.end31.2:                                       ; preds = %if.then30.2, %tomoyo_set_lf.exit71.1.if.end31.2_crit_edge
  %39 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %40)
  %cmp.i.i63.2 = icmp ult i8 %40, 64
  br i1 %cmp.i.i63.2, label %if.then.i.i68.2, label %do.end.i.i69.2

do.end.i.i69.2:                                   ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_lf.exit71.2

if.then.i.i68.2:                                  ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i64.2 = zext i8 %40 to i32
  %inc.i.i65.2 = add nuw nsw i8 %40, 1
  %41 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %inc.i.i65.2, ptr %w_pos.i.i, align 1
  %arrayidx.i.i66.2 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i64.2
  %42 = ptrtoint ptr %arrayidx.i.i66.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.162, ptr %arrayidx.i.i66.2, align 4
  %call.i.i67.2 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_lf.exit71.2

tomoyo_set_lf.exit71.2:                           ; preds = %if.then.i.i68.2, %do.end.i.i69.2
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.216, i32 noundef %add.2)
  %43 = ptrtoint ptr %eof to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %eof, align 4
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_set_lf.exit71.2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_write_profile(ptr nocapture noundef readonly %head) #1 align 64 {
entry:
  %name.addr.i = alloca ptr, align 4
  %cp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 10
  %0 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp) #19
  %2 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cp, align 4, !annotation !596
  %w = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7
  %3 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %w, align 4
  %profile_version = getelementptr inbounds %struct.tomoyo_policy_namespace, ptr %4, i32 0, i32 5
  %call = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.221, ptr noundef %profile_version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup33

if.end:                                           ; preds = %entry
  %call1 = call i32 @simple_strtoul(ptr noundef %1, ptr noundef nonnull %cp, i32 noundef 10) #19
  %5 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %8)
  %cmp2.not = icmp eq i8 %8, 45
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup33_crit_edge

if.end.cleanup33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup33

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %6, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1)
  %cmp.i = icmp ugt i32 %call1, 255
  br i1 %cmp.i, label %if.end5.cleanup33_crit_edge, label %if.end.i

if.end5.cleanup33_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup33

if.end.i:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %w, align 4
  %arrayidx.i = getelementptr [256 x ptr], ptr %10, i32 0, i32 %call1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 11584, i32 noundef 76) #25
  %call4.i = call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %tomoyo_assign_profile.exit.thread74

tomoyo_assign_profile.exit.thread74:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @kfree(ptr noundef %call7.i.i.i) #19
  br label %cleanup33

if.end7.i:                                        ; preds = %if.end3.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %15, null
  br i1 %tobool10.not.i, label %land.lhs.true.i, label %if.end7.i.tomoyo_assign_profile.exit_crit_edge

if.end7.i.tomoyo_assign_profile.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_assign_profile.exit

land.lhs.true.i:                                  ; preds = %if.end7.i
  %call11.i = call zeroext i1 @tomoyo_memory_ok(ptr noundef %call7.i.i.i) #19
  br i1 %call11.i, label %if.then12.i, label %land.lhs.true.i.tomoyo_assign_profile.exit_crit_edge

land.lhs.true.i.tomoyo_assign_profile.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_assign_profile.exit

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %default_config.i = getelementptr inbounds %struct.tomoyo_profile, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %default_config.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -64, ptr %default_config.i, align 8
  %config.i = getelementptr inbounds %struct.tomoyo_profile, ptr %call7.i.i.i, i32 0, i32 6
  %17 = call ptr @memset(ptr %config.i, i32 255, i32 42)
  %pref.i = getelementptr inbounds %struct.tomoyo_profile, ptr %call7.i.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %pref.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1024, ptr %pref.i, align 4
  %arrayidx15.i = getelementptr %struct.tomoyo_profile, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2048, ptr %arrayidx15.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !601
  call void @arm_heavy_mb() #19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  br label %tomoyo_assign_profile.exit

tomoyo_assign_profile.exit:                       ; preds = %if.then12.i, %land.lhs.true.i.tomoyo_assign_profile.exit_crit_edge, %if.end7.i.tomoyo_assign_profile.exit_crit_edge
  %ptr.0.i = phi ptr [ %15, %if.end7.i.tomoyo_assign_profile.exit_crit_edge ], [ %call7.i.i.i, %if.then12.i ], [ null, %land.lhs.true.i.tomoyo_assign_profile.exit_crit_edge ]
  %entry1.0.i = phi ptr [ %call7.i.i.i, %if.end7.i.tomoyo_assign_profile.exit_crit_edge ], [ null, %if.then12.i ], [ %call7.i.i.i, %land.lhs.true.i.tomoyo_assign_profile.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #19
  call void @kfree(ptr noundef %entry1.0.i) #19
  %tobool.not = icmp eq ptr %ptr.0.i, null
  br i1 %tobool.not, label %tomoyo_assign_profile.exit.cleanup33_crit_edge, label %tomoyo_assign_profile.exit.if.end10_crit_edge

tomoyo_assign_profile.exit.if.end10_crit_edge:    ; preds = %tomoyo_assign_profile.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

tomoyo_assign_profile.exit.cleanup33_crit_edge:   ; preds = %tomoyo_assign_profile.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup33

if.end10:                                         ; preds = %tomoyo_assign_profile.exit.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %retval.0.i73 = phi ptr [ %ptr.0.i, %tomoyo_assign_profile.exit.if.end10_crit_edge ], [ %12, %if.end.i.if.end10_crit_edge ]
  %call11 = call ptr @strchr(ptr noundef %add.ptr, i32 noundef 61)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup33_crit_edge, label %if.end14

if.end10.cleanup33_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup33

if.end14:                                         ; preds = %if.end10
  %incdec.ptr = getelementptr i8, ptr %call11, i32 1
  %21 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %incdec.ptr, ptr %cp, align 4
  %22 = ptrtoint ptr %call11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %call11, align 1
  %call15 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(8) @.str.222) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end14
  %23 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cp, align 4
  %call18 = call ptr @tomoyo_get_name(ptr noundef %24) #19
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then17.cleanup33_crit_edge, label %if.end21

if.then17.cleanup33_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup33

if.end21:                                         ; preds = %if.then17
  call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_write_profile.lock) #19
  %25 = ptrtoint ptr %retval.0.i73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %retval.0.i73, align 4
  store ptr %call18, ptr %retval.0.i73, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_write_profile.lock) #19
  %tobool.not.i53 = icmp eq ptr %26, null
  br i1 %tobool.not.i53, label %if.end21.cleanup33_crit_edge, label %if.then.i

if.end21.cleanup33_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup33

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  %users.i = getelementptr i8, ptr %26, i32 -4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #19
  %27 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #19, !srcloc !602
  br label %cleanup33

if.end24:                                         ; preds = %if.end14
  %call25 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(11) @.str.224) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %28 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cp, align 4
  br i1 %tobool26.not, label %for.body.preheader, label %if.end31

for.body.preheader:                               ; preds = %if.end24
  %call.i = call ptr @strstr(ptr noundef %29, ptr noundef nonnull @.str.226) #19
  %tobool.not.i55 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i55, label %for.body.preheader.tomoyo_set_uint.exit_crit_edge, label %if.then.i56

for.body.preheader.tomoyo_set_uint.exit_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_set_uint.exit

if.then.i56:                                      ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx = getelementptr %struct.tomoyo_profile, ptr %retval.0.i73, i32 0, i32 7, i32 0
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 13
  %call2.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.225, ptr noundef %arrayidx) #19
  br label %tomoyo_set_uint.exit

tomoyo_set_uint.exit:                             ; preds = %if.then.i56, %for.body.preheader.tomoyo_set_uint.exit_crit_edge
  %30 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cp, align 4
  %call.i.1 = call ptr @strstr(ptr noundef %31, ptr noundef nonnull @.str.227) #19
  %tobool.not.i55.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i55.1, label %tomoyo_set_uint.exit.cleanup33_crit_edge, label %if.then.i56.1

tomoyo_set_uint.exit.cleanup33_crit_edge:         ; preds = %tomoyo_set_uint.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup33

if.then.i56.1:                                    ; preds = %tomoyo_set_uint.exit
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.1 = getelementptr %struct.tomoyo_profile, ptr %retval.0.i73, i32 0, i32 7, i32 1
  %add.ptr.i.1 = getelementptr i8, ptr %call.i.1, i32 18
  %call2.i.1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i.1, ptr noundef nonnull @.str.225, ptr noundef %arrayidx.1) #19
  br label %cleanup33

if.end31:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.addr.i)
  %32 = ptrtoint ptr %name.addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %name.addr.i, align 4
  %call.i58 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(7) @.str.228) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i59 = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i59, label %if.end45.thread.i, label %if.else.i

if.else.i:                                        ; preds = %if.end31
  %call1.i60 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %name.addr.i, ptr noundef nonnull @.str.229) #19
  br i1 %call1.i60, label %if.else.i.for.body.i_crit_edge, label %if.else.i.tomoyo_set_mode.exit_crit_edge

if.else.i.tomoyo_set_mode.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_set_mode.exit

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %indvars.iv.i)
  %cmp5.i = icmp ult i32 %indvars.iv.i, 39
  br i1 %cmp5.i, label %if.then7.i, label %for.body.i.if.end25.i_crit_edge

for.body.i.if.end25.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25.i

if.then7.i:                                       ; preds = %for.body.i
  %arrayidx.i61 = getelementptr [39 x i8], ptr @tomoyo_index2category, i32 0, i32 %indvars.iv.i
  %33 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i61, align 1
  %idxprom8.i = zext i8 %34 to i32
  %arrayidx9.i = getelementptr [3 x ptr], ptr @tomoyo_category_keywords, i32 0, i32 %idxprom8.i
  %35 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx9.i, align 4
  %call10.i = call i32 @strlen(ptr noundef %36) #23
  %37 = ptrtoint ptr %name.addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name.addr.i, align 4
  %call11.i62 = call i32 @strncmp(ptr noundef %38, ptr noundef %36, i32 noundef %call10.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i62)
  %tobool12.not.i = icmp eq i32 %call11.i62, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i, label %if.then7.i.for.inc.i_crit_edge

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.then7.i
  %arrayidx13.i = getelementptr i8, ptr %38, i32 %call10.i
  %39 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %40)
  %cmp15.not.i = icmp eq i8 %40, 58
  br i1 %cmp15.not.i, label %cleanup.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

cleanup.i:                                        ; preds = %lor.lhs.false.i
  %inc.i = add i32 %call10.i, 1
  %inc18.i = add i32 %call10.i, 2
  %arrayidx19.i = getelementptr i8, ptr %38, i32 %inc.i
  %41 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %42)
  %cmp21.not.i = icmp eq i8 %42, 58
  br i1 %cmp21.not.i, label %cleanup.i.if.end25.i_crit_edge, label %cleanup.i.for.inc.i_crit_edge

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

cleanup.i.if.end25.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25.i

if.end25.i:                                       ; preds = %cleanup.i.if.end25.i_crit_edge, %for.body.i.if.end25.i_crit_edge
  %len.2.i = phi i32 [ %inc18.i, %cleanup.i.if.end25.i_crit_edge ], [ 0, %for.body.i.if.end25.i_crit_edge ]
  %43 = ptrtoint ptr %name.addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name.addr.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %44, i32 %len.2.i
  %arrayidx27.i = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %indvars.iv.i
  %45 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx27.i, align 4
  %call28.i = call i32 @strcmp(ptr noundef %add.ptr.i63, ptr noundef %46) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end45.i, label %if.end25.i.for.inc.i_crit_edge

if.end25.i.for.inc.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end25.i.for.inc.i_crit_edge, %cleanup.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.then7.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 42
  br i1 %exitcond.not.i, label %for.inc.i.tomoyo_set_mode.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.tomoyo_set_mode.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_set_mode.exit

if.end45.i:                                       ; preds = %if.end25.i
  %47 = trunc i32 %indvars.iv.i to i8
  %arrayidx34.i = getelementptr %struct.tomoyo_profile, ptr %retval.0.i73, i32 0, i32 6, i32 %indvars.iv.i
  %call46.i = call ptr @strstr(ptr noundef %29, ptr noundef nonnull @.str.230) #19
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %if.end45.i.for.cond50.preheader.i_crit_edge, label %if.end92.thread.i

if.end45.i.for.cond50.preheader.i_crit_edge:      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond50.preheader.i

if.end45.thread.i:                                ; preds = %if.end31
  %default_config.i64 = getelementptr inbounds %struct.tomoyo_profile, ptr %retval.0.i73, i32 0, i32 5
  %call46188.i = call ptr @strstr(ptr noundef %29, ptr noundef nonnull @.str.230) #19
  %tobool47.not189.i = icmp eq ptr %call46188.i, null
  br i1 %tobool47.not189.i, label %if.end45.thread.i.for.cond50.preheader.i_crit_edge, label %if.end45.thread.i.tomoyo_set_mode.exit_crit_edge

if.end45.thread.i.tomoyo_set_mode.exit_crit_edge: ; preds = %if.end45.thread.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_set_mode.exit

if.end45.thread.i.for.cond50.preheader.i_crit_edge: ; preds = %if.end45.thread.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond50.preheader.i

for.cond50.preheader.i:                           ; preds = %if.end45.thread.i.for.cond50.preheader.i_crit_edge, %if.end45.i.for.cond50.preheader.i_crit_edge
  %i.1192.ph.i = phi i8 [ 42, %if.end45.thread.i.for.cond50.preheader.i_crit_edge ], [ %47, %if.end45.i.for.cond50.preheader.i_crit_edge ]
  %config.4.ph.in.i = phi ptr [ %default_config.i64, %if.end45.thread.i.for.cond50.preheader.i_crit_edge ], [ %arrayidx34.i, %if.end45.i.for.cond50.preheader.i_crit_edge ]
  %48 = ptrtoint ptr %config.4.ph.in.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %config.4.ph.i = load i8, ptr %config.4.ph.in.i, align 1
  %call57.i = call ptr @strstr(ptr noundef %29, ptr noundef nonnull @.str) #19
  %tobool58.not.i = icmp eq ptr %call57.i, null
  %49 = and i8 %config.4.ph.i, -8
  %config.5.i = select i1 %tobool58.not.i, i8 %config.4.ph.i, i8 %49
  %call57.1.i = call ptr @strstr(ptr noundef %29, ptr noundef nonnull @.str.1) #19
  %tobool58.not.1.i = icmp eq ptr %call57.1.i, null
  %or140.1.i = or i8 %49, 1
  %config.5.1.i = select i1 %tobool58.not.1.i, i8 %config.5.i, i8 %or140.1.i
  %call57.2.i = call ptr @strstr(ptr noundef %29, ptr noundef nonnull @.str.2) #19
  %tobool58.not.2.i = icmp eq ptr %call57.2.i, null
  %or140.2.i = or i8 %49, 2
  %config.5.2.i = select i1 %tobool58.not.2.i, i8 %config.5.1.i, i8 %or140.2.i
  %call57.3.i = call ptr @strstr(ptr noundef %29, ptr noundef nonnull @.str.3) #19
  %tobool58.not.3.i = icmp eq ptr %call57.3.i, null
  %50 = and i8 %config.5.2.i, -8
  %or140.3.i = or i8 %50, 3
  %config.5.3.i = select i1 %tobool58.not.3.i, i8 %config.5.2.i, i8 %or140.3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %config.5.3.i)
  %cmp68.not.i = icmp eq i8 %config.5.3.i, -1
  br i1 %cmp68.not.i, label %if.end92.thread209.i, label %if.then70.i

if.then70.i:                                      ; preds = %for.cond50.preheader.i
  %call.i.i = call ptr @strstr(ptr noundef %29, ptr noundef nonnull @.str.231) #19
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then70.i.sw.epilog.i_crit_edge, label %if.then.i.i

if.then70.i.sw.epilog.i_crit_edge:                ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

if.then.i.i:                                      ; preds = %if.then70.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 9
  %call2.i.i = call i32 @strncmp(ptr noundef %add.ptr.i.i, ptr noundef nonnull dereferenceable(5) @.str.233, i32 noundef 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %sw.bb.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call5.i.i = call i32 @strncmp(ptr noundef %add.ptr.i.i, ptr noundef nonnull dereferenceable(4) @.str.234, i32 noundef 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  %and78.i = and i8 %config.5.3.i, 127
  %spec.select.i = select i1 %tobool6.not.i.i, i8 %and78.i, i8 %config.5.3.i
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %51 = or i8 %config.5.3.i, -128
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.else.i.i, %if.then70.i.sw.epilog.i_crit_edge
  %config.6.i = phi i8 [ %51, %sw.bb.i ], [ %config.5.3.i, %if.then70.i.sw.epilog.i_crit_edge ], [ %spec.select.i, %if.else.i.i ]
  %call.i142.i = call ptr @strstr(ptr noundef %29, ptr noundef nonnull @.str.232) #19
  %tobool.not.i143.i = icmp eq ptr %call.i142.i, null
  br i1 %tobool.not.i143.i, label %sw.epilog.i.if.end92.i_crit_edge, label %if.then.i148.i

sw.epilog.i.if.end92.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end92.i

if.then.i148.i:                                   ; preds = %sw.epilog.i
  %add.ptr.i145.i = getelementptr i8, ptr %call.i142.i, i32 10
  %call2.i146.i = call i32 @strncmp(ptr noundef %add.ptr.i145.i, ptr noundef nonnull dereferenceable(5) @.str.233, i32 noundef 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i146.i)
  %tobool3.not.i147.i = icmp eq i32 %call2.i146.i, 0
  br i1 %tobool3.not.i147.i, label %sw.bb82.i, label %if.else.i151.i

if.else.i151.i:                                   ; preds = %if.then.i148.i
  call void @__sanitizer_cov_trace_pc() #21
  %call5.i149.i = call i32 @strncmp(ptr noundef %add.ptr.i145.i, ptr noundef nonnull dereferenceable(4) @.str.234, i32 noundef 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i149.i)
  %tobool6.not.i150.i = icmp eq i32 %call5.i149.i, 0
  %52 = and i8 %config.6.i, -65
  %spec.select195.i = select i1 %tobool6.not.i150.i, i8 %52, i8 %config.6.i
  br label %if.end92.i

sw.bb82.i:                                        ; preds = %if.then.i148.i
  call void @__sanitizer_cov_trace_pc() #21
  %53 = or i8 %config.6.i, 64
  br label %if.end92.i

if.end92.i:                                       ; preds = %sw.bb82.i, %if.else.i151.i, %sw.epilog.i.if.end92.i_crit_edge
  %config.8.i = phi i8 [ %53, %sw.bb82.i ], [ %config.6.i, %sw.epilog.i.if.end92.i_crit_edge ], [ %spec.select195.i, %if.else.i151.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %i.1192.ph.i)
  %cmp94.i = icmp ult i8 %i.1192.ph.i, 42
  br i1 %cmp94.i, label %if.end92.i.if.then96.i_crit_edge, label %if.else100.i

if.end92.i.if.then96.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then96.i

if.end92.thread209.i:                             ; preds = %for.cond50.preheader.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %i.1192.ph.i)
  %cmp94211.i = icmp ult i8 %i.1192.ph.i, 42
  br i1 %cmp94211.i, label %if.end92.thread209.i.if.then96.i_crit_edge, label %if.end92.thread209.i.tomoyo_set_mode.exit_crit_edge

if.end92.thread209.i.tomoyo_set_mode.exit_crit_edge: ; preds = %if.end92.thread209.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_set_mode.exit

if.end92.thread209.i.if.then96.i_crit_edge:       ; preds = %if.end92.thread209.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then96.i

if.end92.thread.i:                                ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %47)
  %cmp94181.i = icmp ult i8 %47, 42
  br i1 %cmp94181.i, label %if.end92.thread.i.if.then96.i_crit_edge, label %if.end92.thread.i.tomoyo_set_mode.exit_crit_edge

if.end92.thread.i.tomoyo_set_mode.exit_crit_edge: ; preds = %if.end92.thread.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_set_mode.exit

if.end92.thread.i.if.then96.i_crit_edge:          ; preds = %if.end92.thread.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then96.i

if.then96.i:                                      ; preds = %if.end92.thread.i.if.then96.i_crit_edge, %if.end92.thread209.i.if.then96.i_crit_edge, %if.end92.i.if.then96.i_crit_edge
  %i.1190.i = phi i8 [ %47, %if.end92.thread.i.if.then96.i_crit_edge ], [ %i.1192.ph.i, %if.end92.i.if.then96.i_crit_edge ], [ %i.1192.ph.i, %if.end92.thread209.i.if.then96.i_crit_edge ]
  %config.8182.i = phi i8 [ -1, %if.end92.thread.i.if.then96.i_crit_edge ], [ %config.8.i, %if.end92.i.if.then96.i_crit_edge ], [ -1, %if.end92.thread209.i.if.then96.i_crit_edge ]
  %conv93.i = zext i8 %i.1190.i to i32
  %arrayidx99.i = getelementptr %struct.tomoyo_profile, ptr %retval.0.i73, i32 0, i32 6, i32 %conv93.i
  %54 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %config.8182.i, ptr %arrayidx99.i, align 1
  br label %tomoyo_set_mode.exit

if.else100.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %config.8.i)
  %cmp102.not.i = icmp eq i8 %config.8.i, -1
  br i1 %cmp102.not.i, label %if.else100.i.tomoyo_set_mode.exit_crit_edge, label %if.then104.i

if.else100.i.tomoyo_set_mode.exit_crit_edge:      ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_set_mode.exit

if.then104.i:                                     ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #21
  %default_config105.i = getelementptr inbounds %struct.tomoyo_profile, ptr %retval.0.i73, i32 0, i32 5
  %55 = ptrtoint ptr %default_config105.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %config.8.i, ptr %default_config105.i, align 4
  br label %tomoyo_set_mode.exit

tomoyo_set_mode.exit:                             ; preds = %if.then104.i, %if.else100.i.tomoyo_set_mode.exit_crit_edge, %if.then96.i, %if.end92.thread.i.tomoyo_set_mode.exit_crit_edge, %if.end92.thread209.i.tomoyo_set_mode.exit_crit_edge, %if.end45.thread.i.tomoyo_set_mode.exit_crit_edge, %for.inc.i.tomoyo_set_mode.exit_crit_edge, %if.else.i.tomoyo_set_mode.exit_crit_edge
  %retval.0.i65 = phi i32 [ -22, %if.else.i.tomoyo_set_mode.exit_crit_edge ], [ 0, %if.else100.i.tomoyo_set_mode.exit_crit_edge ], [ 0, %if.then104.i ], [ 0, %if.then96.i ], [ 0, %if.end92.thread.i.tomoyo_set_mode.exit_crit_edge ], [ 0, %if.end45.thread.i.tomoyo_set_mode.exit_crit_edge ], [ 0, %if.end92.thread209.i.tomoyo_set_mode.exit_crit_edge ], [ -22, %for.inc.i.tomoyo_set_mode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.addr.i)
  br label %cleanup33

cleanup33:                                        ; preds = %tomoyo_set_mode.exit, %if.then.i56.1, %tomoyo_set_uint.exit.cleanup33_crit_edge, %if.then.i, %if.end21.cleanup33_crit_edge, %if.then17.cleanup33_crit_edge, %if.end10.cleanup33_crit_edge, %tomoyo_assign_profile.exit.cleanup33_crit_edge, %tomoyo_assign_profile.exit.thread74, %if.end5.cleanup33_crit_edge, %if.end.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.1 = phi i32 [ %retval.0.i65, %tomoyo_set_mode.exit ], [ 0, %entry.cleanup33_crit_edge ], [ -22, %if.end.cleanup33_crit_edge ], [ -22, %tomoyo_assign_profile.exit.cleanup33_crit_edge ], [ -22, %if.end10.cleanup33_crit_edge ], [ -12, %if.then17.cleanup33_crit_edge ], [ -22, %tomoyo_assign_profile.exit.thread74 ], [ 0, %if.end21.cleanup33_crit_edge ], [ 0, %if.then.i ], [ -22, %if.end5.cleanup33_crit_edge ], [ 0, %if.then.i56.1 ], [ 0, %tomoyo_set_uint.exit.cleanup33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp) #19
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_read_profile(ptr noundef %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %r = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -3184
  %eof = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  %2 = ptrtoint ptr %eof to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eof, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %next.preheader, label %entry.cleanup120_crit_edge

entry.cleanup120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup120

next.preheader:                                   ; preds = %entry
  %index4 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 7
  %step = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 5
  %bit65 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 11
  %w_pos.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %profile_version = getelementptr i8, ptr %1, i32 8
  br label %next

next:                                             ; preds = %sw.epilog.next_crit_edge, %next.preheader
  %4 = ptrtoint ptr %index4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index4, align 4
  %6 = and i16 %5, 255
  %idxprom = zext i16 %6 to i32
  %arrayidx = getelementptr [256 x ptr], ptr %add.ptr, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %step, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %10, label %next.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.condthread-pre-split
    i32 2, label %sw.bb36
    i32 3, label %sw.bb56
    i32 4, label %for.cond63.preheader
  ]

next.sw.epilog_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

for.cond63.preheader:                             ; preds = %next
  %12 = ptrtoint ptr %bit65 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bit65, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %13)
  %cmp67213 = icmp ult i8 %13, 42
  br i1 %cmp67213, label %for.cond63.preheader.for.body69_crit_edge, label %for.cond63.preheader.for.end104_crit_edge

for.cond63.preheader.for.end104_crit_edge:        ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end104

for.cond63.preheader.for.body69_crit_edge:        ; preds = %for.cond63.preheader
  br label %for.body69

sw.bb:                                            ; preds = %next
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @tomoyo_print_namespace(ptr noundef %head)
  %14 = ptrtoint ptr %profile_version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profile_version, align 4
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.235, i32 noundef %15)
  %16 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %step, align 4
  %inc = add i32 %17, 1
  br label %sw.epilog.sink.split

for.condthread-pre-split:                         ; preds = %next
  %18 = ptrtoint ptr %index4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %.pr = load i16, ptr %index4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %.pr)
  %cmp216 = icmp ult i16 %.pr, 256
  br i1 %cmp216, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.condthread-pre-split
  %19 = zext i16 %.pr to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %19, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx17 = getelementptr [256 x ptr], ptr %add.ptr, i32 0, i32 %indvars.iv
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %for.inc, label %for.body.sw.epilog.sink.split_crit_edge

for.body.sw.epilog.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %22 = trunc i32 %indvars.iv.next to i16
  %23 = ptrtoint ptr %index4 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %index4, align 4
  %exitcond.not = icmp eq i32 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.inc.if.then29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.if.then29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then29

for.end:                                          ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %.pr)
  %cmp27 = icmp eq i16 %.pr, 256
  br i1 %cmp27, label %for.end.if.then29_crit_edge, label %for.end.sw.epilog.sink.split_crit_edge

for.end.sw.epilog.sink.split_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split

for.end.if.then29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then29

if.then29:                                        ; preds = %for.end.if.then29_crit_edge, %for.inc.if.then29_crit_edge
  %24 = ptrtoint ptr %eof to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %eof, align 4
  br label %cleanup120

sw.bb36:                                          ; preds = %next
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %8, align 4
  tail call fastcc void @tomoyo_print_namespace(ptr noundef %head)
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.236, i32 noundef %idxprom)
  %tobool39.not = icmp eq ptr %26, null
  br i1 %tobool39.not, label %sw.bb36.cond.end_crit_edge, label %cond.true

sw.bb36.cond.end_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

cond.true:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #21
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb36.cond.end_crit_edge
  %cond = phi ptr [ %28, %cond.true ], [ @.str.140, %sw.bb36.cond.end_crit_edge ]
  %29 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %30)
  %cmp.i = icmp ult i8 %30, 64
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = zext i8 %30 to i32
  %inc.i = add nuw nsw i8 %30, 1
  %31 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %inc.i, ptr %w_pos.i, align 1
  %arrayidx.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cond, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit

do.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit

tomoyo_set_string.exit:                           ; preds = %do.end.i, %if.then.i
  %33 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %34)
  %cmp.i.i = icmp ult i8 %34, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i = zext i8 %34 to i32
  %inc.i.i = add nuw nsw i8 %34, 1
  %35 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %inc.i.i, ptr %w_pos.i, align 1
  %arrayidx.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.162, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_lf.exit

do.end.i.i:                                       ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_lf.exit

tomoyo_set_lf.exit:                               ; preds = %do.end.i.i, %if.then.i.i
  tail call fastcc void @tomoyo_print_namespace(ptr noundef %head)
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.237, i32 noundef %idxprom)
  %arrayidx49 = getelementptr %struct.tomoyo_profile, ptr %8, i32 0, i32 7, i32 0
  %37 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx49, align 4
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.226, i32 noundef %38)
  %arrayidx49.1 = getelementptr %struct.tomoyo_profile, ptr %8, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx49.1, align 4
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.227, i32 noundef %40)
  %41 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %42)
  %cmp.i182 = icmp ult i8 %42, 64
  br i1 %cmp.i182, label %if.then.i187, label %do.end.i188

if.then.i187:                                     ; preds = %tomoyo_set_lf.exit
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i183 = zext i8 %42 to i32
  %inc.i184 = add nuw nsw i8 %42, 1
  %43 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %inc.i184, ptr %w_pos.i, align 1
  %arrayidx.i185 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i183
  %44 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.239, ptr %arrayidx.i185, align 4
  %call.i186 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit189

do.end.i188:                                      ; preds = %tomoyo_set_lf.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit189

tomoyo_set_string.exit189:                        ; preds = %do.end.i188, %if.then.i187
  %45 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %step, align 4
  %inc55 = add i32 %46, 1
  br label %sw.epilog.sink.split

sw.bb56:                                          ; preds = %next
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @tomoyo_print_namespace(ptr noundef %head)
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.240, i32 noundef %idxprom, ptr noundef nonnull @.str.228)
  %default_config = getelementptr inbounds %struct.tomoyo_profile, ptr %8, i32 0, i32 5
  %47 = ptrtoint ptr %default_config to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %default_config, align 4
  %conv.i190 = zext i8 %48 to i32
  %and.i = and i32 %conv.i190, 3
  %arrayidx.i191 = getelementptr [4 x ptr], ptr @tomoyo_mode, i32 0, i32 %and.i
  %49 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i191, align 4
  %and2.i = and i32 %conv.i190, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i.i = icmp eq i32 %and2.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.111, ptr @.str.110
  %and4.i = and i32 %conv.i190, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i8.i = icmp eq i32 %and4.i, 0
  %cond.i9.i = select i1 %tobool.not.i8.i, ptr @.str.111, ptr @.str.110
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.243, ptr noundef %50, ptr noundef nonnull %cond.i.i, ptr noundef nonnull %cond.i9.i) #19
  %51 = ptrtoint ptr %bit65 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %bit65, align 2
  %52 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %step, align 4
  %inc61 = add i32 %53, 1
  br label %sw.epilog.sink.split

for.body69:                                       ; preds = %for.inc100.for.body69_crit_edge, %for.cond63.preheader.for.body69_crit_edge
  %54 = phi i8 [ %inc103, %for.inc100.for.body69_crit_edge ], [ %13, %for.cond63.preheader.for.body69_crit_edge ]
  %conv66214 = zext i8 %54 to i32
  %arrayidx75 = getelementptr %struct.tomoyo_profile, ptr %8, i32 0, i32 6, i32 %conv66214
  %55 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %cmp77 = icmp eq i8 %56, -1
  br i1 %cmp77, label %for.inc100, label %if.end80

if.end80:                                         ; preds = %for.body69
  tail call fastcc void @tomoyo_print_namespace(ptr noundef %head)
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %54)
  %cmp82 = icmp ult i8 %54, 39
  br i1 %cmp82, label %if.then84, label %if.else

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx87 = getelementptr [39 x i8], ptr @tomoyo_index2category, i32 0, i32 %conv66214
  %57 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx87, align 1
  %idxprom88 = zext i8 %58 to i32
  %arrayidx89 = getelementptr [3 x ptr], ptr @tomoyo_category_keywords, i32 0, i32 %idxprom88
  %59 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx89, align 4
  %arrayidx91 = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %conv66214
  %61 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx91, align 4
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.241, i32 noundef %idxprom, ptr noundef %60, ptr noundef %62)
  br label %cleanup

if.else:                                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx94 = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %conv66214
  %63 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx94, align 4
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.242, i32 noundef %idxprom, ptr noundef %64)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then84
  %conv.i192 = zext i8 %56 to i32
  %and.i193 = and i32 %conv.i192, 3
  %arrayidx.i194 = getelementptr [4 x ptr], ptr @tomoyo_mode, i32 0, i32 %and.i193
  %65 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i194, align 4
  %and2.i195 = and i32 %conv.i192, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i195)
  %tobool.not.i.i196 = icmp eq i32 %and2.i195, 0
  %cond.i.i197 = select i1 %tobool.not.i.i196, ptr @.str.111, ptr @.str.110
  %and4.i198 = and i32 %conv.i192, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i198)
  %tobool.not.i8.i199 = icmp eq i32 %and4.i198, 0
  %cond.i9.i200 = select i1 %tobool.not.i8.i199, ptr @.str.111, ptr @.str.110
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.243, ptr noundef %66, ptr noundef nonnull %cond.i.i197, ptr noundef nonnull %cond.i9.i200) #19
  %67 = ptrtoint ptr %bit65 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bit65, align 2
  %inc98 = add i8 %68, 1
  store i8 %inc98, ptr %bit65, align 2
  br label %for.end104

for.inc100:                                       ; preds = %for.body69
  %69 = ptrtoint ptr %bit65 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bit65, align 2
  %inc103 = add i8 %70, 1
  store i8 %inc103, ptr %bit65, align 2
  %cmp67 = icmp ult i8 %inc103, 42
  br i1 %cmp67, label %for.inc100.for.body69_crit_edge, label %for.inc100.for.end104_crit_edge

for.inc100.for.end104_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end104

for.inc100.for.body69_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body69

for.end104:                                       ; preds = %for.inc100.for.end104_crit_edge, %cleanup, %for.cond63.preheader.for.end104_crit_edge
  %71 = phi i8 [ %inc98, %cleanup ], [ %13, %for.cond63.preheader.for.end104_crit_edge ], [ %inc103, %for.inc100.for.end104_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %71)
  %cmp108 = icmp eq i8 %71, 42
  br i1 %cmp108, label %if.then110, label %for.end104.sw.epilog_crit_edge

for.end104.sw.epilog_crit_edge:                   ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then110:                                       ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #21
  %72 = ptrtoint ptr %index4 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %index4, align 4
  %inc113 = add i16 %73, 1
  store i16 %inc113, ptr %index4, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then110, %sw.bb56, %tomoyo_set_string.exit189, %for.end.sw.epilog.sink.split_crit_edge, %for.body.sw.epilog.sink.split_crit_edge, %sw.bb
  %.sink = phi i32 [ 1, %if.then110 ], [ %inc61, %sw.bb56 ], [ %inc55, %tomoyo_set_string.exit189 ], [ %inc, %sw.bb ], [ 2, %for.end.sw.epilog.sink.split_crit_edge ], [ 2, %for.body.sw.epilog.sink.split_crit_edge ]
  %74 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.sink, ptr %step, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.end104.sw.epilog_crit_edge, %next.sw.epilog_crit_edge
  %call117 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head)
  br i1 %call117, label %sw.epilog.next_crit_edge, label %sw.epilog.cleanup120_crit_edge

sw.epilog.cleanup120_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup120

sw.epilog.next_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %next

cleanup120:                                       ; preds = %sw.epilog.cleanup120_crit_edge, %if.then29, %entry.cleanup120_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_poll_query(ptr noundef %file, ptr noundef %wait) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @tomoyo_query_list, align 4
  %cmp.i.not = icmp eq ptr %0, @tomoyo_query_list
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end
  %1 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void %2(ptr noundef %file, ptr noundef nonnull @tomoyo_query_wait, ptr noundef nonnull %wait) #19
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  %3 = load volatile ptr, ptr @tomoyo_query_list, align 4
  %cmp.i5.not = icmp eq ptr %3, @tomoyo_query_list
  %. = select i1 %cmp.i5.not, i32 0, i32 65
  br label %return

return:                                           ; preds = %poll_wait.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 65, %entry.return_crit_edge ], [ %., %poll_wait.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_write_answer(ptr nocapture noundef readonly %head) #1 align 64 {
entry:
  %serial = alloca i32, align 4
  %answer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 10
  %0 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %serial) #19
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %serial, align 4, !annotation !596
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %answer) #19
  %3 = ptrtoint ptr %answer to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %answer, align 4, !annotation !596
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  %tmp.043 = load ptr, ptr @tomoyo_query_list, align 4
  %cmp.i.not44 = icmp eq ptr %tmp.043, @tomoyo_query_list
  br i1 %cmp.i.not44, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp.045 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %tmp.043, %entry.for.body_crit_edge ]
  %timer = getelementptr inbounds %struct.tomoyo_query, ptr %tmp.045, i32 0, i32 5
  %4 = ptrtoint ptr %timer to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %timer, align 4
  %5 = ptrtoint ptr %tmp.045 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0 = load ptr, ptr %tmp.045, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, @tomoyo_query_list
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.244, ptr noundef nonnull %serial, ptr noundef nonnull %answer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 2
  br i1 %cmp.not, label %if.end, label %for.end.cleanup24_crit_edge

for.end.cleanup24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup24

if.end:                                           ; preds = %for.end
  call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  br label %for.cond3

for.cond3:                                        ; preds = %for.body7.for.cond3_crit_edge, %if.end
  %tmp.1.in = phi ptr [ @tomoyo_query_list, %if.end ], [ %tmp.1, %for.body7.for.cond3_crit_edge ]
  %6 = ptrtoint ptr %tmp.1.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.1 = load ptr, ptr %tmp.1.in, align 4
  %cmp.i36.not = icmp eq ptr %tmp.1, @tomoyo_query_list
  br i1 %cmp.i36.not, label %for.cond3.for.end23_crit_edge, label %for.body7

for.cond3.for.end23_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end23

for.body7:                                        ; preds = %for.cond3
  %serial12 = getelementptr inbounds %struct.tomoyo_query, ptr %tmp.1, i32 0, i32 4
  %7 = ptrtoint ptr %serial12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %serial12, align 4
  %9 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %serial, align 4
  %cmp13.not = icmp eq i32 %8, %10
  br i1 %cmp13.not, label %if.end15, label %for.body7.for.cond3_crit_edge

for.body7.for.cond3_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond3

if.end15:                                         ; preds = %for.body7
  %11 = ptrtoint ptr %answer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %answer, align 4
  %conv = trunc i32 %12 to i8
  %answer16 = getelementptr inbounds %struct.tomoyo_query, ptr %tmp.1, i32 0, i32 6
  %13 = ptrtoint ptr %answer16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %answer16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool18.not = icmp eq i8 %conv, 0
  br i1 %tobool18.not, label %if.end15.for.end23_crit_edge, label %if.then19

if.end15.for.end23_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end23

if.then19:                                        ; preds = %if.end15
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.1) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.then19.list_del_init.exit_crit_edge

if.then19.list_del_init.exit_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %tmp.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tmp.1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then19.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %tmp.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %tmp.1, ptr %tmp.1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %tmp.1, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tmp.1, ptr %prev.i3.i, align 4
  br label %for.end23

for.end23:                                        ; preds = %list_del_init.exit, %if.end15.for.end23_crit_edge, %for.cond3.for.end23_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  br label %cleanup24

cleanup24:                                        ; preds = %for.end23, %for.end.cleanup24_crit_edge
  %retval.0 = phi i32 [ 0, %for.end23 ], [ -22, %for.end.cleanup24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %answer) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %serial) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_read_query(ptr nocapture noundef %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %w_pos = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %w_pos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %w_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup54_crit_edge

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup54

if.end:                                           ; preds = %entry
  %read_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 8
  %2 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_buf, align 4
  tail call void @kfree(ptr noundef %3) #19
  %4 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %read_buf, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  %tmp.0102 = load ptr, ptr @tomoyo_query_list, align 4
  %cmp.i.not103 = icmp eq ptr %tmp.0102, @tomoyo_query_list
  br i1 %cmp.i.not103, label %if.end.for.end.thread_crit_edge, label %for.body.lr.ph

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end
  %query_index = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 6
  %5 = ptrtoint ptr %query_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %query_index, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %pos.0104, 1
  %7 = ptrtoint ptr %tmp.0105 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0 = load ptr, ptr %tmp.0105, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, @tomoyo_query_list
  br i1 %cmp.i.not, label %for.cond.for.end.thread_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.cond.for.end.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.thread

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %tmp.0105 = phi ptr [ %tmp.0102, %for.body.lr.ph ], [ %tmp.0, %for.cond.for.body_crit_edge ]
  %pos.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0104, i32 %6)
  %cmp.not = icmp eq i32 %pos.0104, %6
  br i1 %cmp.not, label %for.end, label %for.cond

for.end.thread:                                   ; preds = %for.cond.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  br label %if.then8

for.end:                                          ; preds = %for.body
  %query_len = getelementptr inbounds %struct.tomoyo_query, ptr %tmp.0105, i32 0, i32 3
  %8 = ptrtoint ptr %query_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %query_len, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %for.end.if.then8_crit_edge, label %if.end8.i.i

for.end.if.then8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then8

if.then8:                                         ; preds = %for.end.if.then8_crit_edge, %for.end.thread
  %query_index10 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %query_index10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %query_index10, align 4
  br label %cleanup54

if.end8.i.i:                                      ; preds = %for.end
  %add = add i32 %9, 32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3392) #24
  %tobool13.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not, label %if.end8.i.i.cleanup54_crit_edge, label %if.end15

if.end8.i.i.cleanup54_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup54

if.end15:                                         ; preds = %if.end8.i.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  %tmp.1106 = load ptr, ptr @tomoyo_query_list, align 4
  %cmp.i87.not107 = icmp eq ptr %tmp.1106, @tomoyo_query_list
  br i1 %cmp.i87.not107, label %if.end15.for.end41_crit_edge, label %for.body20.lr.ph

if.end15.for.end41_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end41

for.body20.lr.ph:                                 ; preds = %if.end15
  %query_index27 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 6
  %11 = ptrtoint ptr %query_index27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %query_index27, align 4
  br label %for.body20

for.cond16:                                       ; preds = %for.body20
  %inc25 = add i32 %pos.1108, 1
  %13 = ptrtoint ptr %tmp.1109 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.1 = load ptr, ptr %tmp.1109, align 4
  %cmp.i87.not = icmp eq ptr %tmp.1, @tomoyo_query_list
  br i1 %cmp.i87.not, label %for.cond16.for.end41_crit_edge, label %for.cond16.for.body20_crit_edge

for.cond16.for.body20_crit_edge:                  ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body20

for.cond16.for.end41_crit_edge:                   ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end41

for.body20:                                       ; preds = %for.cond16.for.body20_crit_edge, %for.body20.lr.ph
  %tmp.1109 = phi ptr [ %tmp.1106, %for.body20.lr.ph ], [ %tmp.1, %for.cond16.for.body20_crit_edge ]
  %pos.1108 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc25, %for.cond16.for.body20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.1108, i32 %12)
  %cmp28.not = icmp eq i32 %pos.1108, %12
  br i1 %cmp28.not, label %if.end30, label %for.cond16

if.end30:                                         ; preds = %for.body20
  %query_len31 = getelementptr inbounds %struct.tomoyo_query, ptr %tmp.1109, i32 0, i32 3
  %14 = ptrtoint ptr %query_len31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %query_len31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp32 = icmp eq i32 %9, %15
  br i1 %cmp32, label %if.then33, label %if.end30.for.end41_crit_edge

if.end30.for.end41_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end41

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  %add34 = add i32 %9, 31
  %serial = getelementptr inbounds %struct.tomoyo_query, ptr %tmp.1109, i32 0, i32 4
  %16 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %serial, align 4
  %retry = getelementptr inbounds %struct.tomoyo_query, ptr %tmp.1109, i32 0, i32 7
  %18 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %retry, align 2
  %conv = zext i8 %19 to i32
  %query = getelementptr inbounds %struct.tomoyo_query, ptr %tmp.1109, i32 0, i32 2
  %20 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %query, align 4
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add34, ptr noundef nonnull @.str.245, i32 noundef %17, i32 noundef %conv, ptr noundef %21)
  br label %for.end41

for.end41:                                        ; preds = %if.then33, %if.end30.for.end41_crit_edge, %for.cond16.for.end41_crit_edge, %if.end15.for.end41_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  %22 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool42.not = icmp eq i8 %23, 0
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #21
  %24 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i, ptr %read_buf, align 4
  %25 = ptrtoint ptr %w_pos to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %w_pos, align 1
  %inc48 = add i8 %26, 1
  store i8 %inc48, ptr %w_pos, align 1
  %idxprom = zext i8 %26 to i32
  %arrayidx49 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i, ptr %arrayidx49, align 4
  %query_index51 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 6
  %28 = ptrtoint ptr %query_index51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %query_index51, align 4
  %inc52 = add i32 %29, 1
  store i32 %inc52, ptr %query_index51, align 4
  br label %cleanup54

if.else:                                          ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #19
  br label %cleanup54

cleanup54:                                        ; preds = %if.else, %if.then43, %if.end8.i.i.cleanup54_crit_edge, %if.then8, %entry.cleanup54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_write_manager(ptr nocapture noundef readonly %head) #1 align 64 {
entry:
  %e.i = alloca %struct.tomoyo_manager, align 4
  %param.i = alloca %struct.tomoyo_acl_param, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 10
  %0 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_buf, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(19) @.str.246) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %is_delete = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %is_delete to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_delete, align 4, !range !597
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %4 = xor i8 %3, 1
  store i8 %4, ptr @tomoyo_manage_by_non_root, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i) #19
  %5 = call ptr @memset(ptr %e.i, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %param.i) #19
  %6 = getelementptr inbounds i8, ptr %param.i, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %param.i, align 4
  %list.i = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param.i, i32 0, i32 1
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr getelementptr inbounds (%struct.tomoyo_policy_namespace, ptr @tomoyo_kernel_namespace, i32 0, i32 2, i32 6), ptr %list.i, align 4
  %ns.i = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param.i, i32 0, i32 2
  %10 = ptrtoint ptr %ns.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ns.i, align 4
  store i8 %3, ptr %6, align 4
  %cond.i = select i1 %tobool4.not, i32 -12, i32 -2
  %call.i = tail call zeroext i1 @tomoyo_correct_domain(ptr noundef %1) #19
  br i1 %call.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call4.i = tail call zeroext i1 @tomoyo_correct_word(ptr noundef %1) #19
  br i1 %call4.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.tomoyo_update_manager_entry.exit_crit_edge

land.lhs.true.i.tomoyo_update_manager_entry.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_update_manager_entry.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %call5.i = tail call ptr @tomoyo_get_name(ptr noundef %1) #19
  %manager6.i = getelementptr inbounds %struct.tomoyo_manager, ptr %e.i, i32 0, i32 1
  %11 = ptrtoint ptr %manager6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i, ptr %manager6.i, align 4
  %tobool8.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool8.not.i, label %if.end.i.tomoyo_update_manager_entry.exit_crit_edge, label %if.then9.i

if.end.i.tomoyo_update_manager_entry.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_update_manager_entry.exit

if.then9.i:                                       ; preds = %if.end.i
  %call10.i = call i32 @tomoyo_update_policy(ptr noundef nonnull %e.i, i32 noundef 16, ptr noundef nonnull %param.i, ptr noundef nonnull @tomoyo_same_manager) #19
  %12 = ptrtoint ptr %manager6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %manager6.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then9.i.tomoyo_update_manager_entry.exit_crit_edge, label %if.then.i.i

if.then9.i.tomoyo_update_manager_entry.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_update_manager_entry.exit

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #21
  %users.i.i = getelementptr i8, ptr %13, i32 -4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #19
  %14 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #19, !srcloc !602
  br label %tomoyo_update_manager_entry.exit

tomoyo_update_manager_entry.exit:                 ; preds = %if.then.i.i, %if.then9.i.tomoyo_update_manager_entry.exit_crit_edge, %if.end.i.tomoyo_update_manager_entry.exit_crit_edge, %land.lhs.true.i.tomoyo_update_manager_entry.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %land.lhs.true.i.tomoyo_update_manager_entry.exit_crit_edge ], [ %cond.i, %if.end.i.tomoyo_update_manager_entry.exit_crit_edge ], [ %call10.i, %if.then9.i.tomoyo_update_manager_entry.exit_crit_edge ], [ %call10.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %param.i) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %e.i) #19
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_update_manager_entry.exit, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %tomoyo_update_manager_entry.exit ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_read_manager(ptr nocapture noundef %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %eof = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  %0 = ptrtoint ptr %eof to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eof, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  %acl = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tomoyo_policy_namespace, ptr @tomoyo_kernel_namespace, i32 0, i32 2, i32 6) to i32))
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tomoyo_policy_namespace, ptr @tomoyo_kernel_namespace, i32 0, i32 2, i32 6), align 4
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then3.do.end13_crit_edge, label %srcu_read_lock_held.exit

if.then3.do.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end13

srcu_read_lock_held.exit:                         ; preds = %if.then3
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end13_crit_edge

srcu_read_lock_held.exit.do.end13_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end13

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b67 = load i1, ptr @tomoyo_read_manager.__warned, align 1
  br i1 %.b67, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_manager.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 915, ptr noundef nonnull @.str.159) #19
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %srcu_read_lock_held.exit.do.end13_crit_edge, %if.then3.do.end13_crit_edge
  %5 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %acl, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.end13, %if.end.if.end17_crit_edge
  %.pr = phi ptr [ %4, %do.end13 ], [ %3, %if.end.if.end17_crit_edge ]
  %cmp.not84 = icmp eq ptr %.pr, getelementptr inbounds (%struct.tomoyo_policy_namespace, ptr @tomoyo_kernel_namespace, i32 0, i32 2, i32 6)
  br i1 %cmp.not84, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %w_pos.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  br label %for.body

for.body:                                         ; preds = %do.end48.for.body_crit_edge, %for.body.lr.ph
  %6 = phi ptr [ %.pr, %for.body.lr.ph ], [ %24, %do.end48.for.body_crit_edge ]
  %is_deleted = getelementptr inbounds %struct.tomoyo_acl_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool24.not = icmp eq i8 %8, 0
  br i1 %tobool24.not, label %if.end26, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %call27 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head)
  br i1 %call27, label %if.end29, label %if.end26.return_crit_edge

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end29:                                         ; preds = %if.end26
  %9 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %10)
  %cmp.i = icmp ult i8 %10, 64
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  %manager = getelementptr inbounds %struct.tomoyo_manager, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %manager to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %manager, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %conv.i = zext i8 %10 to i32
  %inc.i = add nuw nsw i8 %10, 1
  %15 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %inc.i, ptr %w_pos.i, align 1
  %arrayidx.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %arrayidx.i, align 4
  %call.i68 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit

tomoyo_set_string.exit:                           ; preds = %do.end.i, %if.then.i
  %17 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %18)
  %cmp.i.i = icmp ult i8 %18, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i = zext i8 %18 to i32
  %inc.i.i = add nuw nsw i8 %18, 1
  %19 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %inc.i.i, ptr %w_pos.i, align 1
  %arrayidx.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.162, ptr %arrayidx.i.i, align 4
  %call.i.i69 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc

do.end.i.i:                                       ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc

for.inc:                                          ; preds = %do.end.i.i, %if.then.i.i, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %acl, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %22, align 4
  %call.i71 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %for.inc.do.end48_crit_edge, label %srcu_read_lock_held.exit76

for.inc.do.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end48

srcu_read_lock_held.exit76:                       ; preds = %for.inc
  %call.i.i73 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %tobool39.not = icmp eq i32 %call.i.i73, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %srcu_read_lock_held.exit76.do.end48_crit_edge

srcu_read_lock_held.exit76.do.end48_crit_edge:    ; preds = %srcu_read_lock_held.exit76
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end48

land.lhs.true40:                                  ; preds = %srcu_read_lock_held.exit76
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true40.do.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %.b6566 = load i1, ptr @tomoyo_read_manager.__warned.247, align 1
  br i1 %.b6566, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_manager.__warned.247, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 915, ptr noundef nonnull @.str.159) #19
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true40.do.end48_crit_edge, %srcu_read_lock_held.exit76.do.end48_crit_edge, %for.inc.do.end48_crit_edge
  %25 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %acl, align 4
  %cmp.not = icmp eq ptr %24, getelementptr inbounds (%struct.tomoyo_policy_namespace, ptr @tomoyo_kernel_namespace, i32 0, i32 2, i32 6)
  br i1 %cmp.not, label %do.end48.for.end_crit_edge, label %do.end48.for.body_crit_edge

do.end48.for.body_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

do.end48.for.end_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %do.end48.for.end_crit_edge, %if.end17.for.end_crit_edge
  %26 = ptrtoint ptr %eof to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %eof, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end26.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_notify_gc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_poll_control(ptr noundef %file, ptr noundef %wait) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %poll = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poll, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call i32 %3(ptr noundef %file, ptr noundef %wait) #19
  %or2 = or i32 %call, 260
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or2, %if.then ], [ 325, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_read_control(ptr noundef %head, ptr noundef %buffer, i32 noundef %buffer_len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_sem = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 3
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %io_sem, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %read_user_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 4
  %2 = ptrtoint ptr %read_user_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buffer, ptr %read_user_buf, align 4
  %read_user_buf_avail = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 5
  %3 = ptrtoint ptr %read_user_buf_avail to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %buffer_len, ptr %read_user_buf_avail, align 4
  %call.i.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #19
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #19
  %call5 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head)
  br i1 %call5, label %do.body.preheader, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

do.body.preheader:                                ; preds = %if.end3
  %r.i29 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6
  %type.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 12
  %eof.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  br label %do.body

do.body:                                          ; preds = %tomoyo_has_more_namespace.exit.do.body_crit_edge, %do.body.preheader
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %5, label %do.body.tomoyo_set_namespace_cursor.exit_crit_edge [
    i32 1, label %do.body.if.end.i_crit_edge
    i32 6, label %do.body.if.end.i_crit_edge30
  ]

do.body.if.end.i_crit_edge30:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

do.body.tomoyo_set_namespace_cursor.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_set_namespace_cursor.exit

if.end.i:                                         ; preds = %do.body.if.end.i_crit_edge, %do.body.if.end.i_crit_edge30
  %7 = ptrtoint ptr %r.i29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %r.i29, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i.if.then8.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %9 = ptrtoint ptr %eof.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %eof.i, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.tomoyo_set_namespace_cursor.exit_crit_edge, label %land.lhs.true6.i

lor.lhs.false.i.tomoyo_set_namespace_cursor.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_set_namespace_cursor.exit

land.lhs.true6.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %cmp7.not.i = icmp eq ptr %12, @tomoyo_namespace_list
  br i1 %cmp7.not.i, label %land.lhs.true6.i.tomoyo_set_namespace_cursor.exit_crit_edge, label %land.lhs.true6.i.if.then8.i_crit_edge

land.lhs.true6.i.if.then8.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then8.i

land.lhs.true6.i.tomoyo_set_namespace_cursor.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_set_namespace_cursor.exit

if.then8.i:                                       ; preds = %land.lhs.true6.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge
  %tomoyo_namespace_list..i = phi ptr [ %8, %land.lhs.true6.i.if.then8.i_crit_edge ], [ @tomoyo_namespace_list, %if.end.i.if.then8.i_crit_edge ]
  %13 = call ptr @memset(ptr %r.i29, i32 0, i32 296)
  %14 = ptrtoint ptr %tomoyo_namespace_list..i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond.i = load ptr, ptr %tomoyo_namespace_list..i, align 4
  %15 = ptrtoint ptr %r.i29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cond.i, ptr %r.i29, align 4
  br label %tomoyo_set_namespace_cursor.exit

tomoyo_set_namespace_cursor.exit:                 ; preds = %if.then8.i, %land.lhs.true6.i.tomoyo_set_namespace_cursor.exit_crit_edge, %lor.lhs.false.i.tomoyo_set_namespace_cursor.exit_crit_edge, %do.body.tomoyo_set_namespace_cursor.exit_crit_edge
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head, align 4
  tail call void %17(ptr noundef %head) #19
  %call8 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head)
  br i1 %call8, label %land.rhs, label %tomoyo_set_namespace_cursor.exit.if.end10_crit_edge

tomoyo_set_namespace_cursor.exit.if.end10_crit_edge: ; preds = %tomoyo_set_namespace_cursor.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

land.rhs:                                         ; preds = %tomoyo_set_namespace_cursor.exit
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %19, label %land.rhs.if.end10_crit_edge [
    i32 1, label %land.rhs.land.lhs.true.i_crit_edge
    i32 6, label %land.rhs.land.lhs.true.i_crit_edge31
  ]

land.rhs.land.lhs.true.i_crit_edge31:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

land.rhs.land.lhs.true.i_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

land.rhs.if.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

land.lhs.true.i:                                  ; preds = %land.rhs.land.lhs.true.i_crit_edge, %land.rhs.land.lhs.true.i_crit_edge31
  %21 = ptrtoint ptr %eof.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %eof.i, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i28 = icmp eq i8 %22, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i.if.end10_crit_edge, label %tomoyo_has_more_namespace.exit

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

tomoyo_has_more_namespace.exit:                   ; preds = %land.lhs.true.i
  %23 = ptrtoint ptr %r.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r.i29, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %cmp4.i.not = icmp eq ptr %26, @tomoyo_namespace_list
  br i1 %cmp4.i.not, label %tomoyo_has_more_namespace.exit.if.end10_crit_edge, label %tomoyo_has_more_namespace.exit.do.body_crit_edge

tomoyo_has_more_namespace.exit.do.body_crit_edge: ; preds = %tomoyo_has_more_namespace.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

tomoyo_has_more_namespace.exit.if.end10_crit_edge: ; preds = %tomoyo_has_more_namespace.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.end10:                                         ; preds = %tomoyo_has_more_namespace.exit.if.end10_crit_edge, %land.lhs.true.i.if.end10_crit_edge, %land.rhs.if.end10_crit_edge, %tomoyo_set_namespace_cursor.exit.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %if.end10.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

if.end10.tomoyo_read_unlock.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %if.end10
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i, !prof !603

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_read_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.251, i32 noundef 189, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %if.end10.tomoyo_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #19
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #19
  %27 = ptrtoint ptr %read_user_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_user_buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buffer to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @mutex_unlock(ptr noundef %io_sem) #19
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_read_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %tomoyo_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ -4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tomoyo_flush(ptr nocapture noundef %head) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %w_pos = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %w_pos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %w_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not114 = icmp eq i8 %1, 0
  br i1 %tobool.not114, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %w2 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17
  %read_user_buf_avail = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 5
  %read_user_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 4
  %poll = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 2
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body
  %tobool.not = icmp eq i8 %34, 0
  br i1 %tobool.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %w2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %w2, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %while.body.if.end16_crit_edge, label %if.then

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %read_user_buf_avail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_user_buf_avail, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %call, i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.then.return_crit_edge, label %if.end8

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end8:                                          ; preds = %if.then
  %7 = ptrtoint ptr %read_user_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_user_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.i.i = icmp slt i32 %6, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.return_crit_edge, label %if.then27.i.i, !prof !603

land.rhs16.i.i.return_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.248, i32 noundef 230, i32 noundef 9, ptr noundef null) #19
  br label %return

if.then.i.i.i:                                    ; preds = %if.end8
  tail call void @__check_object_size(ptr noundef %3, i32 noundef %6, i1 noundef zeroext true) #19
  tail call void @__might_fault(ptr noundef nonnull @.str.250, i32 noundef 174) #19
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i, label %if.then.i.i.i.return_crit_edge, label %if.end.i.i

if.then.i.i.i.return_crit_edge:                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %6, i32 -1226833920) #26, !srcloc !604
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef %6) #19
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef %3, i32 noundef %6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool10.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %copy_to_user.exit.return_crit_edge

copy_to_user.exit.return_crit_edge:               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end12:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %read_user_buf_avail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_user_buf_avail, align 4
  %sub = sub i32 %11, %6
  store i32 %sub, ptr %read_user_buf_avail, align 4
  %12 = ptrtoint ptr %read_user_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_user_buf, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %6
  store ptr %add.ptr, ptr %read_user_buf, align 4
  %add.ptr15 = getelementptr i8, ptr %3, i32 %6
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %while.body.if.end16_crit_edge
  %w.0 = phi ptr [ %add.ptr15, %if.end12 ], [ %3, %while.body.if.end16_crit_edge ]
  %14 = ptrtoint ptr %w2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %w.0, ptr %w2, align 4
  %15 = ptrtoint ptr %w.0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %w.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.return_crit_edge

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end22:                                         ; preds = %if.end16
  %17 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %poll, align 4
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %if.end22.if.end34_crit_edge, label %if.then24

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end34

if.then24:                                        ; preds = %if.end22
  %19 = ptrtoint ptr %read_user_buf_avail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read_user_buf_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp eq i32 %20, 0
  br i1 %tobool26.not, label %if.then24.return_crit_edge, label %lor.lhs.false

if.then24.return_crit_edge:                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

lor.lhs.false:                                    ; preds = %if.then24
  %21 = ptrtoint ptr %read_user_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_user_buf, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.250, i32 noundef 174) #19
  %call.i.i87 = tail call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i87, label %lor.lhs.false.return_crit_edge, label %if.end.i.i91

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end.i.i91:                                     ; preds = %lor.lhs.false
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 1, i32 -1226833920) #26, !srcloc !604
  %asmresult.i.i89 = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i89)
  %cmp.i6.i90 = icmp eq i32 %asmresult.i.i89, 0
  br i1 %cmp.i6.i90, label %copy_to_user.exit96, label %if.end.i.i91.return_crit_edge

if.end.i.i91.return_crit_edge:                    ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

copy_to_user.exit96:                              ; preds = %if.end.i.i91
  %call.i.i.i92 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @.str.140, i32 noundef 1) #19
  %call.i12.i.i93 = tail call i32 @arm_copy_to_user(ptr noundef %22, ptr noundef nonnull @.str.140, i32 noundef 1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i93)
  %tobool29.not = icmp eq i32 %call.i12.i.i93, 0
  br i1 %tobool29.not, label %if.end31, label %copy_to_user.exit96.return_crit_edge

copy_to_user.exit96.return_crit_edge:             ; preds = %copy_to_user.exit96
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end31:                                         ; preds = %copy_to_user.exit96
  call void @__sanitizer_cov_trace_pc() #21
  %24 = ptrtoint ptr %read_user_buf_avail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read_user_buf_avail, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %read_user_buf_avail, align 4
  %26 = ptrtoint ptr %read_user_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_user_buf, align 4
  %incdec.ptr = getelementptr i8, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %read_user_buf, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.end22.if.end34_crit_edge
  %28 = ptrtoint ptr %w_pos to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %w_pos, align 1
  %dec37 = add i8 %29, -1
  store i8 %dec37, ptr %w_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec37)
  %cmp40111.not = icmp eq i8 %dec37, 0
  br i1 %cmp40111.not, label %if.end34.while.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end34.for.body_crit_edge
  %len.1112 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %add = add nuw nsw i32 %len.1112, 1
  %arrayidx44 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %add
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx44, align 4
  %arrayidx47 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %len.1112
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx47, align 4
  %33 = ptrtoint ptr %w_pos to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %w_pos, align 1
  %conv = zext i8 %34 to i32
  %cmp40 = icmp ult i32 %add, %conv
  br i1 %cmp40, label %for.body.for.body_crit_edge, label %while.cond.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

while.end:                                        ; preds = %if.end34.while.end_crit_edge, %while.cond.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  %avail = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %avail, align 4
  br label %return

return:                                           ; preds = %while.end, %copy_to_user.exit96.return_crit_edge, %if.end.i.i91.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.then24.return_crit_edge, %if.end16.return_crit_edge, %copy_to_user.exit.return_crit_edge, %if.end.i.i.return_crit_edge, %if.then.i.i.i.return_crit_edge, %if.then27.i.i, %land.rhs16.i.i.return_crit_edge, %if.then.return_crit_edge
  %tobool.not109 = phi i1 [ false, %land.rhs16.i.i.return_crit_edge ], [ false, %if.then27.i.i ], [ true, %while.end ], [ false, %if.then.return_crit_edge ], [ false, %copy_to_user.exit.return_crit_edge ], [ false, %if.end16.return_crit_edge ], [ false, %copy_to_user.exit96.return_crit_edge ], [ false, %if.then24.return_crit_edge ], [ false, %if.then.i.i.i.return_crit_edge ], [ false, %if.end.i.i.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %if.end.i.i91.return_crit_edge ]
  ret i1 %tobool.not109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_write_control(ptr noundef %head, ptr noundef %buffer, i32 noundef %buffer_len) local_unnamed_addr #1 align 64 {
entry:
  %pid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 10
  %0 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_buf, align 4
  %write = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 1
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup67_crit_edge, label %if.end

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup67

if.end:                                           ; preds = %entry
  %io_sem = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 3
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %io_sem, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup67_crit_edge

if.end.cleanup67_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup67

if.end3:                                          ; preds = %if.end
  %read_user_buf_avail = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 5
  %4 = ptrtoint ptr %read_user_buf_avail to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %read_user_buf_avail, align 4
  %call.i.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #19
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_len)
  %cmp.not148 = icmp eq i32 %buffer_len, 0
  br i1 %cmp.not148, label %if.end3.out_crit_edge, label %while.body.lr.ph

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

while.body.lr.ph:                                 ; preds = %if.end3
  %w = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7
  %avail = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7, i32 2
  %writebuf_size = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 11
  %type = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 12
  %print_transition_related_only = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 15
  %domain33.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7, i32 1
  %read_buf.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 8
  %r.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6
  %print_this_domain_only.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 14
  %domain41.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 1
  %eof.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 13
  br label %while.body

while.body:                                       ; preds = %cleanup63.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.0151 = phi ptr [ %buffer, %while.body.lr.ph ], [ %incdec.ptr, %cleanup63.while.body_crit_edge ]
  %avail_len.0150 = phi i32 [ %buffer_len, %while.body.lr.ph ], [ %dec, %cleanup63.while.body_crit_edge ]
  %cp0.0149 = phi ptr [ %1, %while.body.lr.ph ], [ %cp0.2, %cleanup63.while.body_crit_edge ]
  %5 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %avail, align 4
  %7 = ptrtoint ptr %writebuf_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writebuf_size, align 4
  %sub = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub)
  %cmp5.not = icmp ult i32 %6, %sub
  br i1 %cmp5.not, label %while.body.if.end17_crit_edge, label %if.then6

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then6:                                         ; preds = %while.body
  %mul = shl i32 %8, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3392) #24
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %if.then6.out_crit_edge, label %cleanup

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

cleanup:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  %9 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %avail, align 4
  %11 = call ptr @memmove(ptr %call9.i.i, ptr %cp0.0149, i32 %10)
  call void @kfree(ptr noundef %cp0.0149) #19
  %12 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i, ptr %write_buf, align 4
  %13 = ptrtoint ptr %writebuf_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %writebuf_size, align 4
  br label %if.end17

if.end17:                                         ; preds = %cleanup, %while.body.if.end17_crit_edge
  %cp0.2 = phi ptr [ %call9.i.i, %cleanup ], [ %cp0.0149, %while.body.if.end17_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.114, i32 noundef 2687) #19
  %14 = call i32 @llvm.read_register.i32(metadata !585) #19
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #17, !srcloc !605
  %and.i = and i32 %16, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #19, !srcloc !606
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !607
  %17 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buffer.addr.0151, i32 -1226833921) #19, !srcloc !608
  %asmresult = extractvalue { i32, i32 } %17, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #19, !srcloc !606
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool21.not = icmp eq i32 %asmresult, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end23:                                         ; preds = %if.end17
  %asmresult19 = extractvalue { i32, i32 } %17, 1
  %conv = trunc i32 %asmresult19 to i8
  %incdec.ptr = getelementptr i8, ptr %buffer.addr.0151, i32 1
  %dec = add i32 %avail_len.0150, -1
  %18 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %avail, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %avail, align 4
  %arrayidx = getelementptr i8, ptr %cp0.2, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %arrayidx, align 1
  %conv26 = and i32 %asmresult19, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv26)
  %cmp27.not = icmp eq i32 %conv26, 10
  br i1 %cmp27.not, label %if.end30, label %if.end23.cleanup63_crit_edge

if.end23.cleanup63_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup63

if.end30:                                         ; preds = %if.end23
  %21 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %avail, align 4
  %sub33 = add i32 %22, -1
  %arrayidx34 = getelementptr i8, ptr %cp0.2, i32 %sub33
  %23 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx34, align 1
  store i32 0, ptr %avail, align 4
  call void @tomoyo_normalize_line(ptr noundef %cp0.2) #19
  %call37 = call i32 @strcmp(ptr noundef %cp0.2, ptr noundef nonnull dereferenceable(6) @.str.116) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  %24 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tomoyo_kernel_namespace, ptr %w, align 4
  %25 = ptrtoint ptr %domain33.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %domain33.i, align 4
  %26 = call ptr @memset(ptr %r.i, i32 0, i32 296)
  br label %cleanup63

if.end42:                                         ; preds = %if.end30
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %28, label %if.end42.sw.default_crit_edge [
    i32 2, label %if.end42.sw.epilog_crit_edge
    i32 0, label %sw.bb
    i32 1, label %if.end42.sw.bb46_crit_edge
  ]

if.end42.sw.bb46_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb46

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end42.sw.default_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.default

sw.bb:                                            ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pid.i) #19
  %30 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %pid.i, align 4, !annotation !596
  %call.i = call i32 @strncmp(ptr noundef %cp0.2, ptr noundef nonnull dereferenceable(8) @.str.156, i32 noundef 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.tomoyo_select_domain.exit_crit_edge

sw.bb.tomoyo_select_domain.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_select_domain.exit

if.end.i:                                         ; preds = %sw.bb
  %add.ptr.i = getelementptr i8, ptr %cp0.2, i32 7
  %call1.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.252, ptr noundef nonnull %pid.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 1
  br i1 %cmp.i, label %if.else.critedge.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call2.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.253, ptr noundef nonnull %pid.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 1
  br i1 %cmp3.i, label %if.then6.critedge.i, label %if.else14.i

if.then6.critedge.i:                              ; preds = %lor.lhs.false.i
  %31 = call i32 @llvm.read_register.i32(metadata !585) #19
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !599
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i.i109 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i.i109, label %if.then6.critedge.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then6.critedge.i.rcu_read_lock.exit.i_crit_edge: ; preds = %if.then6.critedge.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then6.critedge.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i110

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

if.then.i.i110:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.203, i32 noundef 696, ptr noundef nonnull @.str.204) #19
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i110, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then6.critedge.i.rcu_read_lock.exit.i_crit_edge
  %35 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid.i, align 4
  %call7.i = call ptr @find_task_by_pid_ns(i32 noundef %36, ptr noundef nonnull @init_pid_ns) #19
  br label %if.end9.i

if.else.critedge.i:                               ; preds = %if.end.i
  %37 = call i32 @llvm.read_register.i32(metadata !585) #19
  %and.i.i.i.i.i71.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i71.i to ptr
  %preempt_count.i.i.i.i72.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i72.i, align 4
  %add.i.i.i73.i = add i32 %40, 1
  store volatile i32 %add.i.i.i73.i, ptr %preempt_count.i.i.i.i72.i, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !599
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i74.i = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i74.i, label %if.else.critedge.i.rcu_read_lock.exit81.i_crit_edge, label %land.lhs.true.i77.i

if.else.critedge.i.rcu_read_lock.exit81.i_crit_edge: ; preds = %if.else.critedge.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit81.i

land.lhs.true.i77.i:                              ; preds = %if.else.critedge.i
  %call1.i75.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75.i)
  %tobool.not.i76.i = icmp eq i32 %call1.i75.i, 0
  br i1 %tobool.not.i76.i, label %land.lhs.true.i77.i.rcu_read_lock.exit81.i_crit_edge, label %land.lhs.true2.i79.i

land.lhs.true.i77.i.rcu_read_lock.exit81.i_crit_edge: ; preds = %land.lhs.true.i77.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit81.i

land.lhs.true2.i79.i:                             ; preds = %land.lhs.true.i77.i
  %.b4.i78.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i78.i, label %land.lhs.true2.i79.i.rcu_read_lock.exit81.i_crit_edge, label %if.then.i80.i

land.lhs.true2.i79.i.rcu_read_lock.exit81.i_crit_edge: ; preds = %land.lhs.true2.i79.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit81.i

if.then.i80.i:                                    ; preds = %land.lhs.true2.i79.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.203, i32 noundef 696, ptr noundef nonnull @.str.204) #19
  br label %rcu_read_lock.exit81.i

rcu_read_lock.exit81.i:                           ; preds = %if.then.i80.i, %land.lhs.true2.i79.i.rcu_read_lock.exit81.i_crit_edge, %land.lhs.true.i77.i.rcu_read_lock.exit81.i_crit_edge, %if.else.critedge.i.rcu_read_lock.exit81.i_crit_edge
  %41 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid.i, align 4
  %call8.i = call ptr @find_task_by_vpid(i32 noundef %42) #19
  br label %if.end9.i

if.end9.i:                                        ; preds = %rcu_read_lock.exit81.i, %rcu_read_lock.exit.i
  %p.0.i = phi ptr [ %call7.i, %rcu_read_lock.exit.i ], [ %call8.i, %rcu_read_lock.exit81.i ]
  %tobool10.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool10.not.i, label %if.end9.i.if.end13.i_crit_edge, label %if.then11.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  %security.i.i = getelementptr inbounds %struct.task_struct, ptr %p.0.i, i32 0, i32 215
  %43 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %security.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6) to i32))
  %45 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %45
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end13.i_crit_edge
  %domain.0.i = phi ptr [ %47, %if.then11.i ], [ null, %if.end9.i.if.end13.i_crit_edge ]
  %call.i82.i = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i82.i, label %if.end13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i85.i

if.end13.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit.i

land.lhs.true.i85.i:                              ; preds = %if.end13.i
  %call1.i83.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83.i)
  %tobool.not.i84.i = icmp eq i32 %call1.i83.i, 0
  br i1 %tobool.not.i84.i, label %land.lhs.true.i85.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i87.i

land.lhs.true.i85.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i85.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i87.i:                             ; preds = %land.lhs.true.i85.i
  %.b4.i86.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i86.i, label %land.lhs.true2.i87.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i88.i

land.lhs.true2.i87.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i87.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit.i

if.then.i88.i:                                    ; preds = %land.lhs.true2.i87.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.203, i32 noundef 724, ptr noundef nonnull @.str.205) #19
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i88.i, %land.lhs.true2.i87.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i85.i.rcu_read_unlock.exit.i_crit_edge, %if.end13.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !600
  %48 = call i32 @llvm.read_register.i32(metadata !585) #19
  %and.i.i.i.i.i89.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i89.i to ptr
  %preempt_count.i.i.i.i90.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i90.i, align 4
  %sub.i.i.i.i111 = add i32 %51, -1
  store volatile i32 %sub.i.i.i.i111, ptr %preempt_count.i.i.i.i90.i, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  br label %if.end32.i

if.else14.i:                                      ; preds = %lor.lhs.false.i
  %call15.i = call i32 @strncmp(ptr noundef %add.ptr.i, ptr noundef nonnull dereferenceable(8) @.str.254, i32 noundef 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.else24.i

if.then17.i:                                      ; preds = %if.else14.i
  %add.ptr18.i = getelementptr i8, ptr %cp0.2, i32 14
  %call19.i = call zeroext i1 @tomoyo_domain_def(ptr noundef %add.ptr18.i) #19
  br i1 %call19.i, label %if.then20.i, label %if.then17.i.if.end32.i_crit_edge

if.then17.i.if.end32.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end32.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #21
  %call22.i = call ptr @tomoyo_find_domain(ptr noundef %add.ptr18.i) #19
  br label %if.end32.i

if.else24.i:                                      ; preds = %if.else14.i
  %call25.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.255, ptr noundef nonnull %pid.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 1
  br i1 %cmp26.i, label %if.then27.i, label %if.else24.i.tomoyo_select_domain.exit_crit_edge

if.else24.i.tomoyo_select_domain.exit_crit_edge:  ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_select_domain.exit

if.then27.i:                                      ; preds = %if.else24.i
  %52 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then27.i
  %ptr.0.in.i.i = phi ptr [ @tomoyo_query_list, %if.then27.i ], [ %ptr.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %54 = ptrtoint ptr %ptr.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %ptr.0.i.i = load ptr, ptr %ptr.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ptr.0.i.i, @tomoyo_query_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.tomoyo_find_domain_by_qid.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.tomoyo_find_domain_by_qid.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_find_domain_by_qid.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %serial1.i.i = getelementptr inbounds %struct.tomoyo_query, ptr %ptr.0.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %serial1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %serial1.i.i, align 4
  %cmp2.not.i.i = icmp eq i32 %56, %53
  br i1 %cmp2.not.i.i, label %if.end.i.i112, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i.i

if.end.i.i112:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %domain3.i.i = getelementptr inbounds %struct.tomoyo_query, ptr %ptr.0.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %domain3.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %domain3.i.i, align 4
  br label %tomoyo_find_domain_by_qid.exit.i

tomoyo_find_domain_by_qid.exit.i:                 ; preds = %if.end.i.i112, %for.cond.i.i.tomoyo_find_domain_by_qid.exit.i_crit_edge
  %domain.0.i.i = phi ptr [ %58, %if.end.i.i112 ], [ null, %for.cond.i.i.tomoyo_find_domain_by_qid.exit.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_query_list_lock) #19
  br label %if.end32.i

if.end32.i:                                       ; preds = %tomoyo_find_domain_by_qid.exit.i, %if.then20.i, %if.then17.i.if.end32.i_crit_edge, %rcu_read_unlock.exit.i
  %domain.1.i = phi ptr [ %domain.0.i, %rcu_read_unlock.exit.i ], [ %domain.0.i.i, %tomoyo_find_domain_by_qid.exit.i ], [ %call22.i, %if.then20.i ], [ null, %if.then17.i.if.end32.i_crit_edge ]
  %59 = ptrtoint ptr %domain33.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %domain.1.i, ptr %domain33.i, align 4
  %60 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read_buf.i, align 4
  %tobool34.not.i = icmp eq ptr %61, null
  br i1 %tobool34.not.i, label %if.end32.i.tomoyo_select_domain.exit.thread_crit_edge, label %if.end36.i

if.end32.i.tomoyo_select_domain.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_select_domain.exit.thread

if.end36.i:                                       ; preds = %if.end32.i
  %62 = call ptr @memset(ptr %r.i, i32 0, i32 296)
  %63 = ptrtoint ptr %print_this_domain_only.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %print_this_domain_only.i, align 1
  %tobool38.not.i = icmp eq ptr %domain.1.i, null
  br i1 %tobool38.not.i, label %if.else42.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end36.i
  %64 = ptrtoint ptr %domain41.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %domain.1.i, ptr %domain41.i, align 4
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.256, ptr noundef %add.ptr.i) #19
  %is_deleted.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.1.i, i32 0, i32 6
  %65 = ptrtoint ptr %is_deleted.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_deleted.i, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool46.not.i = icmp eq i8 %66, 0
  br i1 %tobool46.not.i, label %if.then39.i.tomoyo_select_domain.exit.thread_crit_edge, label %if.then47.i

if.then39.i.tomoyo_select_domain.exit.thread_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_select_domain.exit.thread

if.else42.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #21
  %67 = ptrtoint ptr %eof.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %eof.i, align 4
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.256, ptr noundef %add.ptr.i) #19
  br label %tomoyo_select_domain.exit.thread

if.then47.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.257) #19
  br label %tomoyo_select_domain.exit.thread

tomoyo_select_domain.exit.thread:                 ; preds = %if.then47.i, %if.else42.i, %if.then39.i.tomoyo_select_domain.exit.thread_crit_edge, %if.end32.i.tomoyo_select_domain.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pid.i) #19
  br label %cleanup63

tomoyo_select_domain.exit:                        ; preds = %if.else24.i.tomoyo_select_domain.exit_crit_edge, %sw.bb.tomoyo_select_domain.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pid.i) #19
  br label %sw.bb46

sw.bb46:                                          ; preds = %tomoyo_select_domain.exit, %if.end42.sw.bb46_crit_edge
  %call47 = call i32 @strcmp(ptr noundef %cp0.2, ptr noundef nonnull dereferenceable(23) @.str.117) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %sw.bb46.sw.default_crit_edge

sw.bb46.sw.default_crit_edge:                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.default

if.then49:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #21
  %68 = ptrtoint ptr %print_transition_related_only to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %print_transition_related_only, align 2
  br label %cleanup63

sw.default:                                       ; preds = %sw.bb46.sw.default_crit_edge, %if.end42.sw.default_crit_edge
  %69 = call i32 @llvm.read_register.i32(metadata !585) #19
  %and.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i to ptr
  %task1.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task1.i, align 8
  %call2.i113 = call ptr @tomoyo_domain() #19
  %domainname3.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call2.i113, i32 0, i32 2
  %73 = ptrtoint ptr %domainname3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %domainname3.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_policy_loaded to i32))
  %75 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i114 = icmp eq i8 %75, 0
  br i1 %tobool.not.i114, label %sw.default.sw.epilog_crit_edge, label %if.end.i115

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end.i115:                                      ; preds = %sw.default
  %76 = load i8, ptr @tomoyo_manage_by_non_root, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool4.not.i = icmp eq i8 %76, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %if.end.i115.if.end14.i_crit_edge

if.end.i115.if.end14.i_crit_edge:                 ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end.i115
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 99
  %77 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cred.i, align 16
  %uid.i = getelementptr inbounds %struct.cred, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.unpack.i = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack.i)
  %cmp.i.i116 = icmp eq i32 %.unpack.i, 0
  br i1 %cmp.i.i116, label %lor.lhs.false.i117, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

lor.lhs.false.i117:                               ; preds = %land.lhs.true.i
  %euid.i = getelementptr inbounds %struct.cred, ptr %78, i32 0, i32 8
  %80 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack86.i = load i32, ptr %euid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack86.i)
  %cmp.i88.i = icmp eq i32 %.unpack86.i, 0
  br i1 %cmp.i88.i, label %lor.lhs.false.i117.if.end14.i_crit_edge, label %lor.lhs.false.i117.out_crit_edge

lor.lhs.false.i117.out_crit_edge:                 ; preds = %lor.lhs.false.i117
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

lor.lhs.false.i117.if.end14.i_crit_edge:          ; preds = %lor.lhs.false.i117
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14.i

if.end14.i:                                       ; preds = %lor.lhs.false.i117.if.end14.i_crit_edge, %if.end.i115.if.end14.i_crit_edge
  %call15.i118 = call ptr @tomoyo_get_exe() #19
  %tobool16.not.i119 = icmp eq ptr %call15.i118, null
  br i1 %tobool16.not.i119, label %if.end14.i.out_crit_edge, label %do.body.i

if.end14.i.out_crit_edge:                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.body.i:                                        ; preds = %if.end14.i
  %call.i.i120 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i120)
  %tobool.not.i.i121 = icmp eq i32 %call.i.i120, 0
  br i1 %tobool.not.i.i121, label %do.body.i.do.end.i_crit_edge, label %srcu_read_lock_held.exit.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

srcu_read_lock_held.exit.i:                       ; preds = %do.body.i
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool20.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true21.i, label %srcu_read_lock_held.exit.i.do.end.i_crit_edge

srcu_read_lock_held.exit.i.do.end.i_crit_edge:    ; preds = %srcu_read_lock_held.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

land.lhs.true21.i:                                ; preds = %srcu_read_lock_held.exit.i
  %call22.i122 = call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i122)
  %tobool23.not.i = icmp eq i32 %call22.i122, 0
  br i1 %tobool23.not.i, label %land.lhs.true24.i, label %land.lhs.true21.i.do.end.i_crit_edge

land.lhs.true21.i.do.end.i_crit_edge:             ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

land.lhs.true24.i:                                ; preds = %land.lhs.true21.i
  %call25.i123 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i123)
  %tobool26.not.i = icmp eq i32 %call25.i123, 0
  br i1 %tobool26.not.i, label %land.lhs.true24.i.do.end.i_crit_edge, label %land.lhs.true27.i

land.lhs.true24.i.do.end.i_crit_edge:             ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

land.lhs.true27.i:                                ; preds = %land.lhs.true24.i
  %.b87.i = load i1, ptr @tomoyo_manager.__warned, align 1
  br i1 %.b87.i, label %land.lhs.true27.i.do.end.i_crit_edge, label %if.then29.i

land.lhs.true27.i.do.end.i_crit_edge:             ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

if.then29.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_manager.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 955, ptr noundef nonnull @.str.120) #19
  br label %do.end.i

do.end.i:                                         ; preds = %if.then29.i, %land.lhs.true27.i.do.end.i_crit_edge, %land.lhs.true24.i.do.end.i_crit_edge, %land.lhs.true21.i.do.end.i_crit_edge, %srcu_read_lock_held.exit.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tomoyo_policy_namespace, ptr @tomoyo_kernel_namespace, i32 0, i32 2, i32 6) to i32))
  %ptr.092.i = load volatile ptr, ptr getelementptr inbounds (%struct.tomoyo_policy_namespace, ptr @tomoyo_kernel_namespace, i32 0, i32 2, i32 6), align 4
  %cmp.not93.i = icmp eq ptr %ptr.092.i, getelementptr inbounds (%struct.tomoyo_policy_namespace, ptr @tomoyo_kernel_namespace, i32 0, i32 2, i32 6)
  br i1 %cmp.not93.i, label %do.end.i.if.end68.i_crit_edge, label %for.body.lr.ph.i

do.end.i.if.end68.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68.i

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %hash.i.i = getelementptr inbounds %struct.tomoyo_path_info, ptr %74, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ptr.094.i = phi ptr [ %ptr.092.i, %for.body.lr.ph.i ], [ %ptr.0.i, %for.inc.i.for.body.i_crit_edge ]
  %is_deleted.i124 = getelementptr inbounds %struct.tomoyo_acl_head, ptr %ptr.094.i, i32 0, i32 1
  %81 = ptrtoint ptr %is_deleted.i124 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %is_deleted.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool36.not.i = icmp eq i8 %82, 0
  br i1 %tobool36.not.i, label %land.lhs.true37.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

land.lhs.true37.i:                                ; preds = %for.body.i
  %manager.i = getelementptr inbounds %struct.tomoyo_manager, ptr %ptr.094.i, i32 0, i32 1
  %83 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %manager.i, align 4
  %85 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hash.i.i, align 4
  %hash1.i.i = getelementptr inbounds %struct.tomoyo_path_info, ptr %84, i32 0, i32 1
  %87 = ptrtoint ptr %hash1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hash1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp.not.i.i125 = icmp eq i32 %86, %88
  br i1 %cmp.not.i.i125, label %tomoyo_pathcmp.exit.i, label %land.lhs.true37.i.lor.lhs.false39.i_crit_edge

land.lhs.true37.i.lor.lhs.false39.i_crit_edge:    ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false39.i

tomoyo_pathcmp.exit.i:                            ; preds = %land.lhs.true37.i
  %89 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %74, align 4
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %84, align 4
  %call.i89.i = call i32 @strcmp(ptr noundef %90, ptr noundef %92) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i)
  %tobool.i.not.i = icmp eq i32 %call.i89.i, 0
  br i1 %tobool.i.not.i, label %tomoyo_pathcmp.exit.i.if.end68.i_crit_edge, label %tomoyo_pathcmp.exit.i.lor.lhs.false39.i_crit_edge

tomoyo_pathcmp.exit.i.lor.lhs.false39.i_crit_edge: ; preds = %tomoyo_pathcmp.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false39.i

tomoyo_pathcmp.exit.i.if.end68.i_crit_edge:       ; preds = %tomoyo_pathcmp.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68.i

lor.lhs.false39.i:                                ; preds = %tomoyo_pathcmp.exit.i.lor.lhs.false39.i_crit_edge, %land.lhs.true37.i.lor.lhs.false39.i_crit_edge
  %93 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %84, align 4
  %call41.i = call i32 @strcmp(ptr noundef nonnull %call15.i118, ptr noundef %94) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %lor.lhs.false39.i.if.end68.i_crit_edge, label %lor.lhs.false39.i.for.inc.i_crit_edge

lor.lhs.false39.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

lor.lhs.false39.i.if.end68.i_crit_edge:           ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68.i

for.inc.i:                                        ; preds = %lor.lhs.false39.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %95 = ptrtoint ptr %ptr.094.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %ptr.0.i = load volatile ptr, ptr %ptr.094.i, align 4
  %cmp.not.i = icmp eq ptr %ptr.0.i, getelementptr inbounds (%struct.tomoyo_policy_namespace, ptr @tomoyo_kernel_namespace, i32 0, i32 2, i32 6)
  br i1 %cmp.not.i, label %for.inc.i.if.end68.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.if.end68.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68.i

if.end68.i:                                       ; preds = %for.inc.i.if.end68.i_crit_edge, %lor.lhs.false39.i.if.end68.i_crit_edge, %tomoyo_pathcmp.exit.i.if.end68.i_crit_edge, %do.end.i.if.end68.i_crit_edge
  call void @kfree(ptr noundef nonnull %call15.i118) #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end68.i, %sw.default.sw.epilog_crit_edge, %if.end42.sw.epilog_crit_edge
  %call55 = call fastcc i32 @tomoyo_parse_policy(ptr noundef %head, ptr noundef %cp0.2)
  %96 = zext i32 %call55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.270)
  switch i32 %call55, label %sw.epilog.cleanup63_crit_edge [
    i32 -1, label %sw.epilog.out_crit_edge
    i32 0, label %sw.bb57
  ]

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

sw.epilog.cleanup63_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup63

sw.bb57:                                          ; preds = %sw.epilog
  %97 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %type, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %98, label %sw.bb57.cleanup63_crit_edge [
    i32 0, label %sw.bb57.sw.bb59_crit_edge
    i32 1, label %sw.bb57.sw.bb59_crit_edge163
    i32 3, label %sw.bb57.sw.bb59_crit_edge164
    i32 6, label %sw.bb57.sw.bb59_crit_edge165
    i32 8, label %sw.bb57.sw.bb59_crit_edge166
  ]

sw.bb57.sw.bb59_crit_edge166:                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb59

sw.bb57.sw.bb59_crit_edge165:                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb59

sw.bb57.sw.bb59_crit_edge164:                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb59

sw.bb57.sw.bb59_crit_edge163:                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb59

sw.bb57.sw.bb59_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb59

sw.bb57.cleanup63_crit_edge:                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup63

sw.bb59:                                          ; preds = %sw.bb57.sw.bb59_crit_edge, %sw.bb57.sw.bb59_crit_edge163, %sw.bb57.sw.bb59_crit_edge164, %sw.bb57.sw.bb59_crit_edge165, %sw.bb57.sw.bb59_crit_edge166
  %call.i.i.i127 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tomoyo_stat_updated, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr nonnull @tomoyo_stat_updated, i32 1, i32 3, i32 1) #19
  %100 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @tomoyo_stat_updated, ptr nonnull @tomoyo_stat_updated, i32 1, ptr nonnull elementtype(i32) @tomoyo_stat_updated) #19, !srcloc !598
  %call.i128 = call i64 @ktime_get_real_seconds() #19
  store i64 %call.i128, ptr @tomoyo_stat_modified, align 8
  br label %cleanup63

cleanup63:                                        ; preds = %sw.bb59, %sw.bb57.cleanup63_crit_edge, %sw.epilog.cleanup63_crit_edge, %if.then49, %tomoyo_select_domain.exit.thread, %if.then39, %if.end23.cleanup63_crit_edge
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %cleanup63.out_crit_edge, label %cleanup63.while.body_crit_edge

cleanup63.while.body_crit_edge:                   ; preds = %cleanup63
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

cleanup63.out_crit_edge:                          ; preds = %cleanup63
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

out:                                              ; preds = %cleanup63.out_crit_edge, %sw.epilog.out_crit_edge, %if.end14.i.out_crit_edge, %lor.lhs.false.i117.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.end17.out_crit_edge, %if.then6.out_crit_edge, %if.end3.out_crit_edge
  %error.4 = phi i32 [ 0, %if.end3.out_crit_edge ], [ -1, %if.end14.i.out_crit_edge ], [ -1, %land.lhs.true.i.out_crit_edge ], [ -1, %lor.lhs.false.i117.out_crit_edge ], [ -12, %if.then6.out_crit_edge ], [ %call55, %sw.epilog.out_crit_edge ], [ -14, %if.end17.out_crit_edge ], [ %buffer_len, %cleanup63.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i129 = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i129, label %out.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

out.tomoyo_read_unlock.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %out
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i130, !prof !603

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_read_unlock.exit

if.then.i.i130:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.251, i32 noundef 189, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i130, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %out.tomoyo_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #19
  call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #19
  call void @mutex_unlock(ptr noundef %io_sem) #19
  br label %cleanup67

cleanup67:                                        ; preds = %tomoyo_read_unlock.exit, %if.end.cleanup67_crit_edge, %entry.cleanup67_crit_edge
  %retval.0 = phi i32 [ %error.4, %tomoyo_read_unlock.exit ], [ -22, %entry.cleanup67_crit_edge ], [ -4, %if.end.cleanup67_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_normalize_line(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tomoyo_parse_policy(ptr noundef %head, ptr noundef %line) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %line, ptr noundef nonnull dereferenceable(8) @.str.260, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %w = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7
  %is_delete = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 7, i32 3
  %frombool = zext i1 %tobool.not to i8
  %0 = ptrtoint ptr %is_delete to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %is_delete, align 4
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr = getelementptr i8, ptr %line, i32 7
  %call5 = tail call i32 @strlen(ptr noundef %add.ptr) #22
  %add = add i32 %call5, 1
  %1 = call ptr @memmove(ptr %line, ptr %add.ptr, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 12
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %3, label %if.end.if.end31_crit_edge [
    i32 1, label %if.end.if.then8_crit_edge
    i32 6, label %if.end.if.then8_crit_edge55
  ]

if.end.if.then8_crit_edge55:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then8

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge55
  %5 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %line, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %6)
  %cmp9 = icmp eq i8 %6, 60
  br i1 %cmp9, label %if.then11, label %if.end25.thread53

if.then11:                                        ; preds = %if.then8
  %call12 = tail call ptr @strchr(ptr noundef %line, i32 noundef 32)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end25.thread, label %if.end25

if.end25.thread:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %w, align 4
  br label %return

if.end25.thread53:                                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tomoyo_kernel_namespace, ptr %w, align 4
  br label %if.end31

if.end25:                                         ; preds = %if.then11
  %incdec.ptr = getelementptr i8, ptr %call12, i32 1
  %9 = ptrtoint ptr %call12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call12, align 1
  %call15 = tail call ptr @tomoyo_assign_namespace(ptr noundef %line) #19
  %10 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call15, ptr %w, align 4
  %call17 = tail call i32 @strlen(ptr noundef %incdec.ptr) #22
  %add18 = add i32 %call17, 1
  %11 = call ptr @memmove(ptr %line, ptr %incdec.ptr, i32 %add18)
  %12 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load ptr, ptr %w, align 4
  %tobool28.not = icmp eq ptr %.pr, null
  br i1 %tobool28.not, label %if.end25.return_crit_edge, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31

if.end25.return_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end31:                                         ; preds = %if.end25.if.end31_crit_edge, %if.end25.thread53, %if.end.if.end31_crit_edge
  %write = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 1
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  %call32 = tail call i32 %14(ptr noundef %head) #19
  br label %return

return:                                           ; preds = %if.end31, %if.end25.return_crit_edge, %if.end25.thread
  %retval.0 = phi i32 [ %call32, %if.end31 ], [ -2, %if.end25.return_crit_edge ], [ -2, %if.end25.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_close_control(ptr noundef %head) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 12
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tomoyo_query_observers, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !609
  tail call void @llvm.prefetch.p0(ptr nonnull @tomoyo_query_observers, i32 1, i32 3, i32 1) #19
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @tomoyo_query_observers, ptr nonnull @tomoyo_query_observers, i32 1, ptr nonnull elementtype(i32) @tomoyo_query_observers) #19, !srcloc !610
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !611
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__wake_up(ptr noundef nonnull @tomoyo_answer_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @tomoyo_notify_gc(ptr noundef %head, i1 noundef zeroext false) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_check_profile() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #19
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #19
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @tomoyo_policy_loaded to i32))
  store i8 1, ptr @tomoyo_policy_loaded, align 1
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #27
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.for.cond.preheader_crit_edge, label %srcu_read_lock_held.exit

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.preheader

srcu_read_lock_held.exit:                         ; preds = %entry
  %call.i.i98 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool.not = icmp eq i32 %call.i.i98, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.for.cond.preheader_crit_edge

srcu_read_lock_held.exit.for.cond.preheader_crit_edge: ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call4 = tail call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.for.cond.preheader_crit_edge

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.preheader

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.for.cond.preheader_crit_edge, label %land.lhs.true9

land.lhs.true6.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.preheader

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b97 = load i1, ptr @tomoyo_check_profile.__warned, align 1
  br i1 %.b97, label %land.lhs.true9.for.cond.preheader_crit_edge, label %if.then

land.lhs.true9.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_check_profile.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 2779, ptr noundef nonnull @.str.120) #19
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true9.for.cond.preheader_crit_edge, %land.lhs.true6.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %srcu_read_lock_held.exit.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %if.else.for.cond_crit_edge, %for.cond.preheader
  %domain.0.in = phi ptr [ %domain.0, %if.else.for.cond_crit_edge ], [ @tomoyo_domain_list, %for.cond.preheader ]
  %0 = ptrtoint ptr %domain.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %domain.0 = load volatile ptr, ptr %domain.0.in, align 4
  %cmp.not = icmp eq ptr %domain.0, @tomoyo_domain_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %profile18 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.0, i32 0, i32 5
  %1 = ptrtoint ptr %profile18 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %profile18, align 4
  %ns19 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.0, i32 0, i32 3
  %3 = ptrtoint ptr %ns19 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns19, align 4
  %profile_version = getelementptr inbounds %struct.tomoyo_policy_namespace, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %profile_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %profile_version, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %6, label %do.end48 [
    i32 20110903, label %land.end
    i32 20150505, label %for.body.if.else_crit_edge
  ]

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

land.end:                                         ; preds = %for.body
  %.b9596 = load i1, ptr @tomoyo_check_profile.__already_done, align 1
  br i1 %.b9596, label %land.end.if.end42.thread_crit_edge, label %if.then27, !prof !603

land.end.if.end42.thread_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.thread

if.then27:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_check_profile.__already_done, align 1
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef 20110903, i32 noundef 20150505) #27
  br label %if.end42.thread

if.end42.thread:                                  ; preds = %if.then27, %land.end.if.end42.thread_crit_edge
  %8 = ptrtoint ptr %profile_version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20150505, ptr %profile_version, align 4
  br label %if.else

do.end48:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %6) #27
  br label %do.end64

if.else:                                          ; preds = %if.end42.thread, %for.body.if.else_crit_edge
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [256 x ptr], ptr %4, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool52.not = icmp eq ptr %10, null
  br i1 %tobool52.not, label %do.end56, label %if.else.for.cond_crit_edge

if.else.for.cond_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond

do.end56:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %idxprom.le = zext i8 %2 to i32
  %domainname = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.0, i32 0, i32 2
  %11 = ptrtoint ptr %domainname to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %domainname, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %idxprom.le, ptr noundef %14) #27
  br label %do.end64

do.end64:                                         ; preds = %do.end56, %do.end48
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #27
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #27
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.136) #28
  unreachable

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %for.end.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

for.end.tomoyo_read_unlock.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %for.end
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i, !prof !603

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_read_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.251, i32 noundef 189, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %for.end.tomoyo_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #19
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #19
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #27
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_load_builtin_policy() local_unnamed_addr #11 section ".init.text" align 64 {
entry:
  %head = alloca %struct.tomoyo_io_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #19
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #19
  %type13 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 12
  %write14 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 1
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry
  %i.031 = phi i8 [ 0, %entry ], [ %inc, %while.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %head) #19
  %0 = call ptr @memset(ptr %head, i32 0, i32 456)
  %trunc = trunc i8 %i.031 to i7
  %1 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.274)
  switch i7 %trunc, label %for.body.sw.epilog_crit_edge [
    i7 0, label %for.body.sw.epilog.sink.split.sink.split_crit_edge
    i7 1, label %sw.bb3
    i7 2, label %for.body.sw.epilog.sink.split_crit_edge
    i7 3, label %sw.bb9
    i7 4, label %sw.bb12
  ]

for.body.sw.epilog.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split

for.body.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.sink.split

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.sink.split

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.sink.split

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb12, %sw.bb9, %sw.bb3, %for.body.sw.epilog.sink.split.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb3 ], [ 8, %sw.bb9 ], [ 3, %sw.bb12 ], [ 6, %for.body.sw.epilog.sink.split.sink.split_crit_edge ]
  %tomoyo_write_stat.sink.ph = phi ptr [ @tomoyo_write_exception, %sw.bb3 ], [ @tomoyo_write_manager, %sw.bb9 ], [ @tomoyo_write_stat, %sw.bb12 ], [ @tomoyo_write_profile, %for.body.sw.epilog.sink.split.sink.split_crit_edge ]
  %start.0.ph.ph = phi ptr [ @tomoyo_load_builtin_policy.tomoyo_builtin_exception_policy, %sw.bb3 ], [ @tomoyo_load_builtin_policy.tomoyo_builtin_manager, %sw.bb9 ], [ @tomoyo_load_builtin_policy.tomoyo_builtin_stat, %sw.bb12 ], [ @tomoyo_load_builtin_policy.tomoyo_builtin_profile, %for.body.sw.epilog.sink.split.sink.split_crit_edge ]
  %2 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %type13, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %for.body.sw.epilog.sink.split_crit_edge
  %tomoyo_write_stat.sink = phi ptr [ @tomoyo_write_domain, %for.body.sw.epilog.sink.split_crit_edge ], [ %tomoyo_write_stat.sink.ph, %sw.epilog.sink.split.sink.split ]
  %start.0.ph = phi ptr [ @tomoyo_load_builtin_policy.tomoyo_builtin_domain_policy, %for.body.sw.epilog.sink.split_crit_edge ], [ %start.0.ph.ph, %sw.epilog.sink.split.sink.split ]
  %3 = ptrtoint ptr %write14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tomoyo_write_stat.sink, ptr %write14, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge
  %start.0 = phi ptr [ @.str.140, %for.body.sw.epilog_crit_edge ], [ %start.0.ph, %sw.epilog.sink.split ]
  %call1527 = call ptr @strchr(ptr noundef nonnull %start.0, i32 noundef 10)
  %tobool.not28 = icmp eq ptr %call1527, null
  br i1 %tobool.not28, label %sw.epilog.while.end_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  br label %cleanup

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %call1530 = phi ptr [ %call15, %cleanup.cleanup_crit_edge ], [ %call1527, %sw.epilog.cleanup_crit_edge ]
  %start.129 = phi ptr [ %add.ptr, %cleanup.cleanup_crit_edge ], [ %start.0, %sw.epilog.cleanup_crit_edge ]
  %4 = ptrtoint ptr %call1530 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call1530, align 1
  call void @tomoyo_normalize_line(ptr noundef %start.129) #19
  %5 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %start.129, ptr %write_buf, align 4
  %call16 = call fastcc i32 @tomoyo_parse_policy(ptr noundef nonnull %head, ptr noundef %start.129)
  %add.ptr = getelementptr i8, ptr %call1530, i32 1
  %call15 = call ptr @strchr(ptr noundef %add.ptr, i32 noundef 10)
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %head) #19
  %inc = add nuw nsw i8 %i.031, 1
  %cmp = icmp ult i8 %i.031, 4
  br i1 %cmp, label %while.end.for.body_crit_edge, label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %for.end.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

for.end.tomoyo_read_unlock.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %for.end
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i, !prof !603

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_read_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.251, i32 noundef 189, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %for.end.tomoyo_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #19
  call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #19
  call void @tomoyo_check_profile()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_addprintf(ptr nocapture noundef %buffer, i32 noundef %len, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #12 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #19
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !596
  %call = tail call i32 @strlen(ptr noundef %buffer) #22
  call void @llvm.va_start(ptr nonnull %args)
  %add.ptr = getelementptr i8, ptr %buffer, i32 %call
  %1 = xor i32 %call, -1
  %sub1 = add i32 %1, %len
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call2 = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef %sub1, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tomoyo_write_domain2(ptr noundef %ns, ptr noundef %list, ptr noundef %data, i1 noundef zeroext %is_delete) unnamed_addr #1 align 64 {
entry:
  %param = alloca %struct.tomoyo_acl_param, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %is_delete to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %param) #19
  %0 = getelementptr inbounds i8, ptr %param, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %param, align 4
  %list2 = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 1
  %3 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list2, align 4
  %ns3 = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 2
  %4 = ptrtoint ptr %ns3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ns, ptr %ns3, align 4
  %is_delete4 = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 3
  %5 = ptrtoint ptr %is_delete4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %is_delete4, align 4
  %call = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.147) #19
  br i1 %call, label %entry.if.end_crit_edge, label %for.cond

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

for.cond:                                         ; preds = %entry
  %call.1 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.148) #19
  br i1 %call.1, label %for.cond.if.end_crit_edge, label %for.cond.1

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

for.cond.1:                                       ; preds = %for.cond
  %call.2 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.149) #19
  br i1 %call.2, label %for.cond.1.if.end_crit_edge, label %for.cond.2

for.cond.1.if.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.150) #19
  br i1 %call.3, label %for.cond.2.if.end_crit_edge, label %for.cond.3

for.cond.2.if.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = call zeroext i1 @tomoyo_str_starts(ptr noundef nonnull %param, ptr noundef nonnull @.str.151) #19
  br i1 %call.4, label %for.cond.3.if.end_crit_edge, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.3.if.end_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %for.cond.3.if.end_crit_edge, %for.cond.2.if.end_crit_edge, %for.cond.1.if.end_crit_edge, %for.cond.if.end_crit_edge, %entry.if.end_crit_edge
  %conv.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %for.cond.if.end_crit_edge ], [ 2, %for.cond.1.if.end_crit_edge ], [ 3, %for.cond.2.if.end_crit_edge ], [ 4, %for.cond.3.if.end_crit_edge ]
  %write = getelementptr [5 x %struct.anon.158], ptr @tomoyo_write_domain2.tomoyo_callback, i32 0, i32 %conv.lcssa, i32 1
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %call10 = call i32 %7(ptr noundef nonnull %param) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond.3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ -22, %for.cond.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %param) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_write_file(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_write_inet_network(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_write_unix_network(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_write_misc(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_write_task(ptr noundef %param) #1 align 64 {
entry:
  %e = alloca %struct.tomoyo_task_acl, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @tomoyo_str_starts(ptr noundef %param, ptr noundef nonnull @.str.152) #19
  br i1 %call, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %e) #19
  %0 = call ptr @memset(ptr %e, i32 0, i32 16)
  %type = getelementptr inbounds %struct.tomoyo_acl_info, ptr %e, i32 0, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %type, align 1
  %domainname = getelementptr inbounds %struct.tomoyo_task_acl, ptr %e, i32 0, i32 1
  %call1 = tail call ptr @tomoyo_get_domainname(ptr noundef %param) #19
  %2 = ptrtoint ptr %domainname to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %domainname, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then.tomoyo_put_name.exit_crit_edge, label %if.end

if.then.tomoyo_put_name.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_put_name.exit

if.end:                                           ; preds = %if.then
  %call5 = call i32 @tomoyo_update_domain(ptr noundef nonnull %e, i32 noundef 20, ptr noundef %param, ptr noundef nonnull @tomoyo_same_task_acl, ptr noundef null) #19
  %3 = ptrtoint ptr %domainname to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load ptr, ptr %domainname, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %if.end.tomoyo_put_name.exit_crit_edge, label %if.then.i

if.end.tomoyo_put_name.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %tomoyo_put_name.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %users.i = getelementptr i8, ptr %.pr, i32 -4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #19
  %4 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #19, !srcloc !602
  br label %tomoyo_put_name.exit

tomoyo_put_name.exit:                             ; preds = %if.then.i, %if.end.tomoyo_put_name.exit_crit_edge, %if.then.tomoyo_put_name.exit_crit_edge
  %error.012 = phi i32 [ %call5, %if.end.tomoyo_put_name.exit_crit_edge ], [ %call5, %if.then.i ], [ -22, %if.then.tomoyo_put_name.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %e) #19
  br label %if.end7

if.end7:                                          ; preds = %tomoyo_put_name.exit, %entry.if.end7_crit_edge
  %error.1 = phi i32 [ %error.012, %tomoyo_put_name.exit ], [ -22, %entry.if.end7_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_str_starts(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_domainname(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_update_domain(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_task_acl(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %domainname = getelementptr inbounds %struct.tomoyo_task_acl, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %domainname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domainname, align 4
  %domainname4 = getelementptr inbounds %struct.tomoyo_task_acl, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %domainname4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domainname4, align 4
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_find_domain(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_assign_domain(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_fill_path_info(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tomoyo_set_string(ptr nocapture noundef %head, ptr noundef %string) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %w_pos = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %w_pos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %w_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %cmp = icmp ult i8 %1, 64
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %conv = zext i8 %1 to i32
  %inc = add nuw nsw i8 %1, 1
  %2 = ptrtoint ptr %w_pos to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %inc, ptr %w_pos, align 1
  %arrayidx = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %string, ptr %arrayidx, align 4
  %call = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head)
  br label %if.end20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tomoyo_io_printf(ptr nocapture noundef %head, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #1 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #19
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !596
  %avail = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %avail, align 4
  %readbuf_size = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 9
  %3 = ptrtoint ptr %readbuf_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %readbuf_size, align 4
  %sub = sub i32 %4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args)
  %read_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 8
  %5 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_buf, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %2
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  %add = add i32 %call, 1
  call void @llvm.va_end(ptr nonnull %args)
  %add1 = add i32 %add, %2
  %8 = ptrtoint ptr %readbuf_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %readbuf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %9)
  %cmp3.not = icmp ult i32 %add1, %9
  br i1 %cmp3.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 291, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %10 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %avail, align 4
  %add24 = add i32 %11, %add
  store i32 %add24, ptr %avail, align 4
  %w_pos.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %12 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %13)
  %cmp.i = icmp ult i8 %13, 64
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_buf, align 4
  %add.ptr26 = getelementptr i8, ptr %15, i32 %2
  %conv.i = zext i8 %13 to i32
  %inc.i = add nuw nsw i8 %13, 1
  %16 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %inc.i, ptr %w_pos.i, align 1
  %arrayidx.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr26, ptr %arrayidx.i, align 4
  %call.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %cleanup

do.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then.i, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tomoyo_read_domain2(ptr noundef %head, ptr noundef %list) unnamed_addr #1 align 64 {
entry:
  %buf.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %acl = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list, align 4
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.do.end9_crit_edge, label %srcu_read_lock_held.exit

if.then.do.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end9

srcu_read_lock_held.exit:                         ; preds = %if.then
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end9_crit_edge

srcu_read_lock_held.exit.do.end9_crit_edge:       ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end9

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true5

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @tomoyo_read_domain2.__warned, align 1
  br i1 %.b56, label %land.lhs.true5.do.end9_crit_edge, label %if.then7

land.lhs.true5.do.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_domain2.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1600, ptr noundef nonnull @.str.159) #19
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %land.lhs.true5.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %srcu_read_lock_held.exit.do.end9_crit_edge, %if.then.do.end9_crit_edge
  %4 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %acl, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end9, %entry.if.end13_crit_edge
  %5 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acl, align 4
  %cmp.not234 = icmp eq ptr %6, %list
  br i1 %cmp.not234, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %print_cond_part.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 16
  %type.i497.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 12
  %acl_group_index.i499.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 9
  %w_pos.i.i502.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %print_transition_related_only.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 15
  %cond_step.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 10
  %cond_index.i.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 8
  br label %for.body

for.body:                                         ; preds = %do.end40.for.body_crit_edge, %for.body.lr.ph
  %7 = phi ptr [ %6, %for.body.lr.ph ], [ %393, %do.end40.for.body_crit_edge ]
  %type.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 1
  %10 = ptrtoint ptr %print_cond_part.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %print_cond_part.i, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i57 = icmp eq i8 %11, 0
  br i1 %tobool.not.i57, label %if.end.i58, label %for.body.print_cond_part303.i_crit_edge

for.body.print_cond_part303.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %print_cond_part303.i

if.end.i58:                                       ; preds = %for.body
  %is_deleted.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %is_deleted.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_deleted.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i58.for.inc_crit_edge

if.end.i58.for.inc_crit_edge:                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end3.i:                                        ; preds = %if.end.i58
  %call.i59 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br i1 %call.i59, label %if.else.i, label %if.end3.i.return_crit_edge

if.end3.i.return_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.else.i:                                        ; preds = %if.end3.i
  %14 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.275)
  switch i8 %9, label %if.else42.i [
    i8 0, label %if.then6.i
    i8 8, label %if.then36.i
  ]

if.then6.i:                                       ; preds = %if.else.i
  %perm7.i = getelementptr inbounds %struct.tomoyo_path_acl, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %perm7.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %perm7.i, align 2
  %conv11.i = zext i16 %16 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then6.i
  %indvars.iv.i = phi i32 [ 0, %if.then6.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %first.0.off0589.i = phi i1 [ true, %if.then6.i ], [ %first.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %and.i = and i32 %shl.i, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end15.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.end15.i:                                       ; preds = %for.body.i
  %17 = ptrtoint ptr %print_transition_related_only.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %print_transition_related_only.i, align 2, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not.i = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i)
  %cmp20.not.i = icmp eq i32 %indvars.iv.i, 0
  %or.cond.i = select i1 %tobool17.not.i, i1 true, i1 %cmp20.not.i
  br i1 %or.cond.i, label %if.end23.i, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.end23.i:                                       ; preds = %if.end15.i
  br i1 %first.0.off0589.i, label %if.then25.i, label %if.else26.i

if.then25.i:                                      ; preds = %if.end23.i
  %19 = ptrtoint ptr %type.i497.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i497.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then25.i.if.end.i.i_crit_edge

if.then25.i.if.end.i.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_print_namespace(ptr noundef %head) #19
  %21 = ptrtoint ptr %acl_group_index.i499.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %acl_group_index.i499.i, align 4
  %conv.i.i = zext i8 %22 to i32
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.167, i32 noundef %conv.i.i) #19
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then25.i.if.end.i.i_crit_edge
  %23 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %24)
  %cmp.i.i.i = icmp ult i8 %24, 64
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i = zext i8 %24 to i32
  %inc.i.i.i = add nuw nsw i8 %24, 1
  %25 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %inc.i.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.147, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end27.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end27.i

if.else26.i:                                      ; preds = %if.end23.i
  %27 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %28)
  %cmp.i.i487.i = icmp ult i8 %28, 64
  br i1 %cmp.i.i487.i, label %if.then.i.i492.i, label %do.end.i.i493.i

if.then.i.i492.i:                                 ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i488.i = zext i8 %28 to i32
  %inc.i.i489.i = add nuw nsw i8 %28, 1
  %29 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %inc.i.i489.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i490.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i488.i
  %30 = ptrtoint ptr %arrayidx.i.i490.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.168, ptr %arrayidx.i.i490.i, align 4
  %call.i.i491.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end27.i

do.end.i.i493.i:                                  ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end.i.i493.i, %if.then.i.i492.i, %do.end.i.i.i, %if.then.i.i.i
  %31 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %32)
  %cmp.i494.i = icmp ult i8 %32, 64
  br i1 %cmp.i494.i, label %if.then.i496.i, label %do.end.i.i

if.then.i496.i:                                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.i = getelementptr [11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 %indvars.iv.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %conv.i495.i = zext i8 %32 to i32
  %inc.i.i = add nuw nsw i8 %32, 1
  %35 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %inc.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i495.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %arrayidx.i.i, align 4
  %call.i.i60 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc.i

do.end.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i.i, %if.then.i496.i, %if.end15.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %first.2.off0.i = phi i1 [ %first.0.off0589.i, %for.body.i.for.inc.i_crit_edge ], [ %first.0.off0589.i, %if.end15.i.for.inc.i_crit_edge ], [ false, %if.then.i496.i ], [ false, %do.end.i.i ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 11
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %first.2.off0.i, label %for.end.i.for.inc_crit_edge, label %if.end30.i

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end30.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %name.i = getelementptr inbounds %struct.tomoyo_path_acl, ptr %7, i32 0, i32 2
  call fastcc void @tomoyo_print_name_union(ptr noundef %head, ptr noundef %name.i) #19
  br label %if.end294.i

if.then36.i:                                      ; preds = %if.else.i
  %37 = ptrtoint ptr %type.i497.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i497.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i498.i = icmp eq i32 %38, 1
  br i1 %cmp.i498.i, label %if.then.i501.i, label %if.then36.i.if.end.i504.i_crit_edge

if.then36.i.if.end.i504.i_crit_edge:              ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i504.i

if.then.i501.i:                                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_print_namespace(ptr noundef %head) #19
  %39 = ptrtoint ptr %acl_group_index.i499.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %acl_group_index.i499.i, align 4
  %conv.i500.i = zext i8 %40 to i32
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.167, i32 noundef %conv.i500.i) #19
  br label %if.end.i504.i

if.end.i504.i:                                    ; preds = %if.then.i501.i, %if.then36.i.if.end.i504.i_crit_edge
  %41 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %42)
  %cmp.i.i503.i = icmp ult i8 %42, 64
  br i1 %cmp.i.i503.i, label %if.then.i.i509.i, label %do.end.i.i510.i

if.then.i.i509.i:                                 ; preds = %if.end.i504.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i505.i = zext i8 %42 to i32
  %inc.i.i506.i = add nuw nsw i8 %42, 1
  %43 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %inc.i.i506.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i507.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i505.i
  %44 = ptrtoint ptr %arrayidx.i.i507.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.151, ptr %arrayidx.i.i507.i, align 4
  %call.i.i508.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_group.exit511.i

do.end.i.i510.i:                                  ; preds = %if.end.i504.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_group.exit511.i

tomoyo_set_group.exit511.i:                       ; preds = %do.end.i.i510.i, %if.then.i.i509.i
  %45 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %46)
  %cmp.i513.i = icmp ult i8 %46, 64
  br i1 %cmp.i513.i, label %if.then.i518.i, label %do.end.i519.i

if.then.i518.i:                                   ; preds = %tomoyo_set_group.exit511.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i514.i = zext i8 %46 to i32
  %inc.i515.i = add nuw nsw i8 %46, 1
  %47 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %inc.i515.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i516.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i514.i
  %48 = ptrtoint ptr %arrayidx.i516.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.152, ptr %arrayidx.i516.i, align 4
  %call.i517.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit520.i

do.end.i519.i:                                    ; preds = %tomoyo_set_group.exit511.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit520.i

tomoyo_set_string.exit520.i:                      ; preds = %do.end.i519.i, %if.then.i518.i
  %49 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %50)
  %cmp.i522.i = icmp ult i8 %50, 64
  br i1 %cmp.i522.i, label %if.then.i527.i, label %do.end.i528.i

if.then.i527.i:                                   ; preds = %tomoyo_set_string.exit520.i
  call void @__sanitizer_cov_trace_pc() #21
  %domainname.i = getelementptr inbounds %struct.tomoyo_task_acl, ptr %7, i32 0, i32 1
  %51 = ptrtoint ptr %domainname.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %domainname.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %conv.i523.i = zext i8 %50 to i32
  %inc.i524.i = add nuw nsw i8 %50, 1
  %55 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %inc.i524.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i525.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i523.i
  %56 = ptrtoint ptr %arrayidx.i525.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %arrayidx.i525.i, align 4
  %call.i526.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end294.i

do.end.i528.i:                                    ; preds = %tomoyo_set_string.exit520.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end294.i

if.else42.i:                                      ; preds = %if.else.i
  %57 = ptrtoint ptr %print_transition_related_only.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %print_transition_related_only.i, align 2, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool45.not.i = icmp eq i8 %58, 0
  br i1 %tobool45.not.i, label %if.else47.i, label %if.else42.i.for.inc_crit_edge

if.else42.i.for.inc_crit_edge:                    ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.else47.i:                                      ; preds = %if.else42.i
  %59 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.276)
  switch i8 %9, label %if.else47.i.if.end294.i_crit_edge [
    i8 1, label %if.then51.i
    i8 2, label %if.then92.i
    i8 3, label %if.then134.i
    i8 5, label %if.then176.i
    i8 6, label %if.then226.i
    i8 4, label %if.then269.i
    i8 7, label %if.then278.i
  ]

if.else47.i.if.end294.i_crit_edge:                ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end294.i

if.then51.i:                                      ; preds = %if.else47.i
  %perm57.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %7, i32 0, i32 1
  %60 = ptrtoint ptr %perm57.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %perm57.i, align 2
  %conv63.i = zext i8 %61 to i32
  %and66.i = and i32 %conv63.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %for.inc78.thread.i, label %if.end73.i

if.end73.i:                                       ; preds = %if.then51.i
  call fastcc void @tomoyo_set_group(ptr noundef %head, ptr noundef nonnull @.str.147) #19
  %62 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %63)
  %cmp.i531.i = icmp ult i8 %63, 64
  br i1 %cmp.i531.i, label %if.then.i536.i, label %do.end.i537.i

if.then.i536.i:                                   ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_pp2mac to i32))
  %64 = load i8, ptr @tomoyo_pp2mac, align 1
  %idxprom76.i = zext i8 %64 to i32
  %arrayidx77.i = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %idxprom76.i
  %65 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx77.i, align 4
  %conv.i532.i = zext i8 %63 to i32
  %inc.i533.i = add nuw nsw i8 %63, 1
  %67 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %inc.i533.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i534.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i532.i
  %68 = ptrtoint ptr %arrayidx.i534.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %arrayidx.i534.i, align 4
  %call.i535.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc78.i

do.end.i537.i:                                    ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc78.i

for.inc78.i:                                      ; preds = %do.end.i537.i, %if.then.i536.i
  %and66.1.i = and i32 %conv63.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.1.i)
  %tobool67.not.1.i = icmp eq i32 %and66.1.i, 0
  br i1 %tobool67.not.1.i, label %for.inc78.i.for.inc78.1.i_crit_edge, label %if.else72.1.critedge.i

for.inc78.i.for.inc78.1.i_crit_edge:              ; preds = %for.inc78.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc78.1.i

for.inc78.thread.i:                               ; preds = %if.then51.i
  %and66.1620.i = and i32 %conv63.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.1620.i)
  %tobool67.not.1621.i = icmp eq i32 %and66.1620.i, 0
  br i1 %tobool67.not.1621.i, label %for.inc78.1.i.thread, label %if.then71.1.i

if.else72.1.critedge.i:                           ; preds = %for.inc78.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_set_slash(ptr noundef %head) #19
  br label %if.end73.1.i

if.then71.1.i:                                    ; preds = %for.inc78.thread.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_set_group(ptr noundef %head, ptr noundef nonnull @.str.147) #19
  br label %if.end73.1.i

if.end73.1.i:                                     ; preds = %if.then71.1.i, %if.else72.1.critedge.i
  %69 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %70)
  %cmp.i531.1.i = icmp ult i8 %70, 64
  br i1 %cmp.i531.1.i, label %if.then.i536.1.i, label %do.end.i537.1.i

do.end.i537.1.i:                                  ; preds = %if.end73.1.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc78.1.i

if.then.i536.1.i:                                 ; preds = %if.end73.1.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i8], ptr @tomoyo_pp2mac, i32 0, i32 1) to i32))
  %71 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @tomoyo_pp2mac, i32 0, i32 1), align 1
  %idxprom76.1.i = zext i8 %71 to i32
  %arrayidx77.1.i = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %idxprom76.1.i
  %72 = ptrtoint ptr %arrayidx77.1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx77.1.i, align 4
  %conv.i532.1.i = zext i8 %70 to i32
  %inc.i533.1.i = add nuw nsw i8 %70, 1
  %74 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %inc.i533.1.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i534.1.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i532.1.i
  %75 = ptrtoint ptr %arrayidx.i534.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %arrayidx.i534.1.i, align 4
  %call.i535.1.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc78.1.i

for.inc78.1.i:                                    ; preds = %if.then.i536.1.i, %do.end.i537.1.i, %for.inc78.i.for.inc78.1.i_crit_edge
  %and66.2.i = and i32 %conv63.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.2.i)
  %tobool67.not.2.i = icmp eq i32 %and66.2.i, 0
  br i1 %tobool67.not.2.i, label %for.inc78.1.i.if.end83.i_crit_edge, label %if.else72.2.i

for.inc78.1.i.if.end83.i_crit_edge:               ; preds = %for.inc78.1.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end83.i

for.inc78.1.i.thread:                             ; preds = %for.inc78.thread.i
  %and66.2.i221 = and i32 %conv63.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.2.i221)
  %tobool67.not.2.i222 = icmp eq i32 %and66.2.i221, 0
  br i1 %tobool67.not.2.i222, label %for.inc78.1.i.thread.for.inc_crit_edge, label %if.then71.2.i

for.inc78.1.i.thread.for.inc_crit_edge:           ; preds = %for.inc78.1.i.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.else72.2.i:                                    ; preds = %for.inc78.1.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_set_slash(ptr noundef %head) #19
  br label %if.end73.2.i

if.then71.2.i:                                    ; preds = %for.inc78.1.i.thread
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_set_group(ptr noundef %head, ptr noundef nonnull @.str.147) #19
  br label %if.end73.2.i

if.end73.2.i:                                     ; preds = %if.then71.2.i, %if.else72.2.i
  %76 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %77)
  %cmp.i531.2.i = icmp ult i8 %77, 64
  br i1 %cmp.i531.2.i, label %if.then.i536.2.i, label %do.end.i537.2.i

do.end.i537.2.i:                                  ; preds = %if.end73.2.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end83.i

if.then.i536.2.i:                                 ; preds = %if.end73.2.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i8], ptr @tomoyo_pp2mac, i32 0, i32 2) to i32))
  %78 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @tomoyo_pp2mac, i32 0, i32 2), align 1
  %idxprom76.2.i = zext i8 %78 to i32
  %arrayidx77.2.i = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %idxprom76.2.i
  %79 = ptrtoint ptr %arrayidx77.2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx77.2.i, align 4
  %conv.i532.2.i = zext i8 %77 to i32
  %inc.i533.2.i = add nuw nsw i8 %77, 1
  %81 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %inc.i533.2.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i534.2.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i532.2.i
  %82 = ptrtoint ptr %arrayidx.i534.2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %80, ptr %arrayidx.i534.2.i, align 4
  %call.i535.2.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then.i536.2.i, %do.end.i537.2.i, %for.inc78.1.i.if.end83.i_crit_edge
  %name1.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %7, i32 0, i32 2
  call fastcc void @tomoyo_print_name_union(ptr noundef %head, ptr noundef %name1.i) #19
  %name2.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %7, i32 0, i32 3
  call fastcc void @tomoyo_print_name_union(ptr noundef %head, ptr noundef %name2.i) #19
  br label %if.end294.i

if.then92.i:                                      ; preds = %if.else47.i
  %perm98.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %7, i32 0, i32 1
  %83 = ptrtoint ptr %perm98.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %perm98.i, align 2
  %conv104.i = zext i8 %84 to i32
  br label %for.body103.i

for.body103.i:                                    ; preds = %for.inc119.i.for.body103.i_crit_edge, %if.then92.i
  %indvars.iv614.i = phi i32 [ 0, %if.then92.i ], [ %indvars.iv.next615.i, %for.inc119.i.for.body103.i_crit_edge ]
  %first.6.off0601.i = phi i1 [ true, %if.then92.i ], [ %first.8.off0.i, %for.inc119.i.for.body103.i_crit_edge ]
  %shl106.i = shl nuw i32 1, %indvars.iv614.i
  %and107.i = and i32 %shl106.i, %conv104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  br i1 %tobool108.not.i, label %for.body103.i.for.inc119.i_crit_edge, label %if.end110.i

for.body103.i.for.inc119.i_crit_edge:             ; preds = %for.body103.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc119.i

if.end110.i:                                      ; preds = %for.body103.i
  br i1 %first.6.off0601.i, label %if.then112.i, label %if.else113.i

if.then112.i:                                     ; preds = %if.end110.i
  %85 = ptrtoint ptr %type.i497.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %type.i497.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i204 = icmp eq i32 %86, 1
  br i1 %cmp.i204, label %if.then.i207, label %if.then112.i.if.end.i210_crit_edge

if.then112.i.if.end.i210_crit_edge:               ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i210

if.then.i207:                                     ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_print_namespace(ptr noundef %head) #19
  %87 = ptrtoint ptr %acl_group_index.i499.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %acl_group_index.i499.i, align 4
  %conv.i206 = zext i8 %88 to i32
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.167, i32 noundef %conv.i206) #19
  br label %if.end.i210

if.end.i210:                                      ; preds = %if.then.i207, %if.then112.i.if.end.i210_crit_edge
  %89 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %90)
  %cmp.i.i209 = icmp ult i8 %90, 64
  br i1 %cmp.i.i209, label %if.then.i.i215, label %do.end.i.i216

if.then.i.i215:                                   ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i211 = zext i8 %90 to i32
  %inc.i.i212 = add nuw nsw i8 %90, 1
  %91 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %inc.i.i212, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i213 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i211
  %92 = ptrtoint ptr %arrayidx.i.i213 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.147, ptr %arrayidx.i.i213, align 4
  %call.i.i214 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end114.i

do.end.i.i216:                                    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end114.i

if.else113.i:                                     ; preds = %if.end110.i
  %93 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %94)
  %cmp.i.i195 = icmp ult i8 %94, 64
  br i1 %cmp.i.i195, label %if.then.i.i200, label %do.end.i.i201

if.then.i.i200:                                   ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i196 = zext i8 %94 to i32
  %inc.i.i197 = add nuw nsw i8 %94, 1
  %95 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %inc.i.i197, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i198 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i196
  %96 = ptrtoint ptr %arrayidx.i.i198 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.168, ptr %arrayidx.i.i198, align 4
  %call.i.i199 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end114.i

do.end.i.i201:                                    ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end114.i

if.end114.i:                                      ; preds = %do.end.i.i201, %if.then.i.i200, %do.end.i.i216, %if.then.i.i215
  %97 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %98)
  %cmp.i540.i = icmp ult i8 %98, 64
  br i1 %cmp.i540.i, label %if.then.i545.i, label %do.end.i546.i

if.then.i545.i:                                   ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx116.i = getelementptr [8 x i8], ptr @tomoyo_pn2mac, i32 0, i32 %indvars.iv614.i
  %99 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx116.i, align 1
  %idxprom117.i = zext i8 %100 to i32
  %arrayidx118.i = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %idxprom117.i
  %101 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx118.i, align 4
  %conv.i541.i = zext i8 %98 to i32
  %inc.i542.i = add nuw nsw i8 %98, 1
  %103 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %inc.i542.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i543.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i541.i
  %104 = ptrtoint ptr %arrayidx.i543.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %102, ptr %arrayidx.i543.i, align 4
  %call.i544.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc119.i

do.end.i546.i:                                    ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc119.i

for.inc119.i:                                     ; preds = %do.end.i546.i, %if.then.i545.i, %for.body103.i.for.inc119.i_crit_edge
  %first.8.off0.i = phi i1 [ %first.6.off0601.i, %for.body103.i.for.inc119.i_crit_edge ], [ false, %if.then.i545.i ], [ false, %do.end.i546.i ]
  %indvars.iv.next615.i = add nuw nsw i32 %indvars.iv614.i, 1
  %exitcond616.not.i = icmp eq i32 %indvars.iv.next615.i, 8
  br i1 %exitcond616.not.i, label %for.end121.i, label %for.inc119.i.for.body103.i_crit_edge

for.inc119.i.for.body103.i_crit_edge:             ; preds = %for.inc119.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body103.i

for.end121.i:                                     ; preds = %for.inc119.i
  br i1 %first.8.off0.i, label %for.end121.i.for.inc_crit_edge, label %if.end124.i

for.end121.i.for.inc_crit_edge:                   ; preds = %for.end121.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end124.i:                                      ; preds = %for.end121.i
  call void @__sanitizer_cov_trace_pc() #21
  %name125.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %7, i32 0, i32 2
  call fastcc void @tomoyo_print_name_union(ptr noundef %head, ptr noundef %name125.i) #19
  %number.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %7, i32 0, i32 3
  call fastcc void @tomoyo_print_number_union(ptr noundef %head, ptr noundef %number.i) #19
  br label %if.end294.i

if.then134.i:                                     ; preds = %if.else47.i
  %perm140.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %7, i32 0, i32 1
  %105 = ptrtoint ptr %perm140.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %perm140.i, align 2
  %conv146.i = zext i8 %106 to i32
  %and149.i = and i32 %conv146.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %for.inc161.thread.i, label %if.end156.i

if.end156.i:                                      ; preds = %if.then134.i
  call fastcc void @tomoyo_set_group(ptr noundef %head, ptr noundef nonnull @.str.147) #19
  %107 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %108)
  %cmp.i549.i = icmp ult i8 %108, 64
  br i1 %cmp.i549.i, label %if.then.i554.i, label %do.end.i555.i

if.then.i554.i:                                   ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_pnnn2mac to i32))
  %109 = load i8, ptr @tomoyo_pnnn2mac, align 1
  %idxprom159.i = zext i8 %109 to i32
  %arrayidx160.i = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %idxprom159.i
  %110 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx160.i, align 4
  %conv.i550.i = zext i8 %108 to i32
  %inc.i551.i = add nuw nsw i8 %108, 1
  %112 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %inc.i551.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i552.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i550.i
  %113 = ptrtoint ptr %arrayidx.i552.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %111, ptr %arrayidx.i552.i, align 4
  %call.i553.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc161.i

do.end.i555.i:                                    ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc161.i

for.inc161.i:                                     ; preds = %do.end.i555.i, %if.then.i554.i
  %and149.1.i = and i32 %conv146.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.1.i)
  %tobool150.not.1.i = icmp eq i32 %and149.1.i, 0
  br i1 %tobool150.not.1.i, label %for.inc161.i.if.end166.i_crit_edge, label %if.else155.1.critedge.i

for.inc161.i.if.end166.i_crit_edge:               ; preds = %for.inc161.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end166.i

for.inc161.thread.i:                              ; preds = %if.then134.i
  %and149.1623.i = and i32 %conv146.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.1623.i)
  %tobool150.not.1624.i = icmp eq i32 %and149.1623.i, 0
  br i1 %tobool150.not.1624.i, label %for.inc161.thread.i.for.inc_crit_edge, label %if.then154.1.i

for.inc161.thread.i.for.inc_crit_edge:            ; preds = %for.inc161.thread.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.else155.1.critedge.i:                          ; preds = %for.inc161.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_set_slash(ptr noundef %head) #19
  br label %if.end156.1.i

if.then154.1.i:                                   ; preds = %for.inc161.thread.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_set_group(ptr noundef %head, ptr noundef nonnull @.str.147) #19
  br label %if.end156.1.i

if.end156.1.i:                                    ; preds = %if.then154.1.i, %if.else155.1.critedge.i
  %114 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %115)
  %cmp.i549.1.i = icmp ult i8 %115, 64
  br i1 %cmp.i549.1.i, label %if.then.i554.1.i, label %do.end.i555.1.i

do.end.i555.1.i:                                  ; preds = %if.end156.1.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end166.i

if.then.i554.1.i:                                 ; preds = %if.end156.1.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([2 x i8], ptr @tomoyo_pnnn2mac, i32 0, i32 1) to i32))
  %116 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @tomoyo_pnnn2mac, i32 0, i32 1), align 1
  %idxprom159.1.i = zext i8 %116 to i32
  %arrayidx160.1.i = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %idxprom159.1.i
  %117 = ptrtoint ptr %arrayidx160.1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx160.1.i, align 4
  %conv.i550.1.i = zext i8 %115 to i32
  %inc.i551.1.i = add nuw nsw i8 %115, 1
  %119 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %inc.i551.1.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i552.1.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i550.1.i
  %120 = ptrtoint ptr %arrayidx.i552.1.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %118, ptr %arrayidx.i552.1.i, align 4
  %call.i553.1.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.then.i554.1.i, %do.end.i555.1.i, %for.inc161.i.if.end166.i_crit_edge
  %name167.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %7, i32 0, i32 2
  call fastcc void @tomoyo_print_name_union(ptr noundef %head, ptr noundef %name167.i) #19
  %mode.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %7, i32 0, i32 3
  call fastcc void @tomoyo_print_number_union(ptr noundef %head, ptr noundef %mode.i) #19
  %major.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %7, i32 0, i32 4
  call fastcc void @tomoyo_print_number_union(ptr noundef %head, ptr noundef %major.i) #19
  %minor.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %7, i32 0, i32 5
  call fastcc void @tomoyo_print_number_union(ptr noundef %head, ptr noundef %minor.i) #19
  br label %if.end294.i

if.then176.i:                                     ; preds = %if.else47.i
  %perm182.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %7, i32 0, i32 2
  %121 = ptrtoint ptr %perm182.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %perm182.i, align 1
  %conv188.i = zext i8 %122 to i32
  %protocol.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %7, i32 0, i32 1
  br label %for.body187.i

for.body187.i:                                    ; preds = %for.inc203.i.for.body187.i_crit_edge, %if.then176.i
  %indvars.iv609.i = phi i32 [ 0, %if.then176.i ], [ %indvars.iv.next610.i, %for.inc203.i.for.body187.i_crit_edge ]
  %first.12.off0595.i = phi i1 [ true, %if.then176.i ], [ %first.14.off0.i, %for.inc203.i.for.body187.i_crit_edge ]
  %shl190.i = shl nuw i32 1, %indvars.iv609.i
  %and191.i = and i32 %shl190.i, %conv188.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i)
  %tobool192.not.i = icmp eq i32 %and191.i, 0
  br i1 %tobool192.not.i, label %for.body187.i.for.inc203.i_crit_edge, label %if.end194.i

for.body187.i.for.inc203.i_crit_edge:             ; preds = %for.body187.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc203.i

if.end194.i:                                      ; preds = %for.body187.i
  br i1 %first.12.off0595.i, label %if.then196.i, label %if.else199.i

if.then196.i:                                     ; preds = %if.end194.i
  %123 = ptrtoint ptr %type.i497.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %type.i497.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp.i180 = icmp eq i32 %124, 1
  br i1 %cmp.i180, label %if.then.i183, label %if.then196.i.if.end.i186_crit_edge

if.then196.i.if.end.i186_crit_edge:               ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i186

if.then.i183:                                     ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_print_namespace(ptr noundef %head) #19
  %125 = ptrtoint ptr %acl_group_index.i499.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %acl_group_index.i499.i, align 4
  %conv.i182 = zext i8 %126 to i32
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.167, i32 noundef %conv.i182) #19
  br label %if.end.i186

if.end.i186:                                      ; preds = %if.then.i183, %if.then196.i.if.end.i186_crit_edge
  %127 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %128)
  %cmp.i.i185 = icmp ult i8 %128, 64
  br i1 %cmp.i.i185, label %if.then.i.i191, label %do.end.i.i192

if.then.i.i191:                                   ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i187 = zext i8 %128 to i32
  %inc.i.i188 = add nuw nsw i8 %128, 1
  %129 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %inc.i.i188, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i189 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i187
  %130 = ptrtoint ptr %arrayidx.i.i189 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @.str.148, ptr %arrayidx.i.i189, align 4
  %call.i.i190 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_group.exit193

do.end.i.i192:                                    ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_group.exit193

tomoyo_set_group.exit193:                         ; preds = %do.end.i.i192, %if.then.i.i191
  %131 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %132)
  %cmp.i171 = icmp ult i8 %132, 64
  br i1 %cmp.i171, label %if.then.i176, label %do.end.i177

if.then.i176:                                     ; preds = %tomoyo_set_group.exit193
  call void @__sanitizer_cov_trace_pc() #21
  %133 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %protocol.i, align 2
  %idxprom197.i = zext i8 %134 to i32
  %arrayidx198.i = getelementptr [6 x ptr], ptr @tomoyo_proto_keyword, i32 0, i32 %idxprom197.i
  %135 = ptrtoint ptr %arrayidx198.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx198.i, align 4
  %conv.i172 = zext i8 %132 to i32
  %inc.i173 = add nuw nsw i8 %132, 1
  %137 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %inc.i173, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i174 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i172
  %138 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %136, ptr %arrayidx.i174, align 4
  %call.i175 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit178

do.end.i177:                                      ; preds = %tomoyo_set_group.exit193
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit178

tomoyo_set_string.exit178:                        ; preds = %do.end.i177, %if.then.i176
  %139 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %140)
  %cmp.i.i162 = icmp ult i8 %140, 64
  br i1 %cmp.i.i162, label %if.then.i.i167, label %do.end.i.i168

if.then.i.i167:                                   ; preds = %tomoyo_set_string.exit178
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i163 = zext i8 %140 to i32
  %inc.i.i164 = add nuw nsw i8 %140, 1
  %141 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %inc.i.i164, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i165 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i163
  %142 = ptrtoint ptr %arrayidx.i.i165 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @.str.173, ptr %arrayidx.i.i165, align 4
  %call.i.i166 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end200.i

do.end.i.i168:                                    ; preds = %tomoyo_set_string.exit178
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end200.i

if.else199.i:                                     ; preds = %if.end194.i
  %143 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %144)
  %cmp.i.i153 = icmp ult i8 %144, 64
  br i1 %cmp.i.i153, label %if.then.i.i158, label %do.end.i.i159

if.then.i.i158:                                   ; preds = %if.else199.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i154 = zext i8 %144 to i32
  %inc.i.i155 = add nuw nsw i8 %144, 1
  %145 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %inc.i.i155, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i156 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i154
  %146 = ptrtoint ptr %arrayidx.i.i156 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @.str.168, ptr %arrayidx.i.i156, align 4
  %call.i.i157 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end200.i

do.end.i.i159:                                    ; preds = %if.else199.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end200.i

if.end200.i:                                      ; preds = %do.end.i.i159, %if.then.i.i158, %do.end.i.i168, %if.then.i.i167
  %147 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %148)
  %cmp.i558.i = icmp ult i8 %148, 64
  br i1 %cmp.i558.i, label %if.then.i563.i, label %do.end.i564.i

if.then.i563.i:                                   ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx202.i = getelementptr [4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 %indvars.iv609.i
  %149 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx202.i, align 4
  %conv.i559.i = zext i8 %148 to i32
  %inc.i560.i = add nuw nsw i8 %148, 1
  %151 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %inc.i560.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i561.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i559.i
  %152 = ptrtoint ptr %arrayidx.i561.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %150, ptr %arrayidx.i561.i, align 4
  %call.i562.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc203.i

do.end.i564.i:                                    ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc203.i

for.inc203.i:                                     ; preds = %do.end.i564.i, %if.then.i563.i, %for.body187.i.for.inc203.i_crit_edge
  %first.14.off0.i = phi i1 [ %first.12.off0595.i, %for.body187.i.for.inc203.i_crit_edge ], [ false, %if.then.i563.i ], [ false, %do.end.i564.i ]
  %indvars.iv.next610.i = add nuw nsw i32 %indvars.iv609.i, 1
  %exitcond611.not.i = icmp eq i32 %indvars.iv.next610.i, 4
  br i1 %exitcond611.not.i, label %for.end205.i, label %for.inc203.i.for.body187.i_crit_edge

for.inc203.i.for.body187.i_crit_edge:             ; preds = %for.inc203.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body187.i

for.end205.i:                                     ; preds = %for.inc203.i
  br i1 %first.14.off0.i, label %for.end205.i.for.inc_crit_edge, label %if.end208.i

for.end205.i.for.inc_crit_edge:                   ; preds = %for.end205.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end208.i:                                      ; preds = %for.end205.i
  call fastcc void @tomoyo_set_space(ptr noundef %head) #19
  %group.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %7, i32 0, i32 3, i32 1
  %153 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %group.i, align 4
  %tobool209.not.i = icmp eq ptr %154, null
  br i1 %tobool209.not.i, label %if.else214.i, label %if.then210.i

if.then210.i:                                     ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_set_string(ptr noundef %head, ptr noundef nonnull @.str.164) #19
  %155 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %group.i, align 4
  %group_name.i = getelementptr inbounds %struct.tomoyo_group, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %group_name.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %group_name.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  call fastcc void @tomoyo_set_string(ptr noundef %head, ptr noundef %160) #19
  br label %if.end217.i

if.else214.i:                                     ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #21
  %address.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf.i) #19
  %161 = call ptr @memset(ptr %buf.i, i32 255, i32 128)
  call void @tomoyo_print_ip(ptr noundef nonnull %buf.i, i32 noundef 128, ptr noundef %address.i) #19
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.144, ptr noundef nonnull %buf.i) #19
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf.i) #19
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.else214.i, %if.then210.i
  %port.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %7, i32 0, i32 4
  call fastcc void @tomoyo_print_number_union(ptr noundef %head, ptr noundef %port.i) #19
  br label %if.end294.i

if.then226.i:                                     ; preds = %if.else47.i
  %perm232.i = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %7, i32 0, i32 2
  %162 = ptrtoint ptr %perm232.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %perm232.i, align 1
  %conv238.i = zext i8 %163 to i32
  %protocol247.i = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %7, i32 0, i32 1
  br label %for.body237.i

for.body237.i:                                    ; preds = %for.inc254.i.for.body237.i_crit_edge, %if.then226.i
  %indvars.iv606.i = phi i32 [ 0, %if.then226.i ], [ %indvars.iv.next607.i, %for.inc254.i.for.body237.i_crit_edge ]
  %first.15.off0592.i = phi i1 [ true, %if.then226.i ], [ %first.17.off0.i, %for.inc254.i.for.body237.i_crit_edge ]
  %shl240.i = shl nuw i32 1, %indvars.iv606.i
  %and241.i = and i32 %shl240.i, %conv238.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241.i)
  %tobool242.not.i = icmp eq i32 %and241.i, 0
  br i1 %tobool242.not.i, label %for.body237.i.for.inc254.i_crit_edge, label %if.end244.i

for.body237.i.for.inc254.i_crit_edge:             ; preds = %for.body237.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc254.i

if.end244.i:                                      ; preds = %for.body237.i
  br i1 %first.15.off0592.i, label %if.then246.i, label %if.else250.i

if.then246.i:                                     ; preds = %if.end244.i
  %164 = ptrtoint ptr %type.i497.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %type.i497.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %165)
  %cmp.i138 = icmp eq i32 %165, 1
  br i1 %cmp.i138, label %if.then.i141, label %if.then246.i.if.end.i144_crit_edge

if.then246.i.if.end.i144_crit_edge:               ; preds = %if.then246.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i144

if.then.i141:                                     ; preds = %if.then246.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_print_namespace(ptr noundef %head) #19
  %166 = ptrtoint ptr %acl_group_index.i499.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %acl_group_index.i499.i, align 4
  %conv.i140 = zext i8 %167 to i32
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.167, i32 noundef %conv.i140) #19
  br label %if.end.i144

if.end.i144:                                      ; preds = %if.then.i141, %if.then246.i.if.end.i144_crit_edge
  %168 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %169)
  %cmp.i.i143 = icmp ult i8 %169, 64
  br i1 %cmp.i.i143, label %if.then.i.i149, label %do.end.i.i150

if.then.i.i149:                                   ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i145 = zext i8 %169 to i32
  %inc.i.i146 = add nuw nsw i8 %169, 1
  %170 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %inc.i.i146, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i147 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i145
  %171 = ptrtoint ptr %arrayidx.i.i147 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @.str.149, ptr %arrayidx.i.i147, align 4
  %call.i.i148 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_group.exit151

do.end.i.i150:                                    ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_group.exit151

tomoyo_set_group.exit151:                         ; preds = %do.end.i.i150, %if.then.i.i149
  %172 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %173)
  %cmp.i129 = icmp ult i8 %173, 64
  br i1 %cmp.i129, label %if.then.i134, label %do.end.i135

if.then.i134:                                     ; preds = %tomoyo_set_group.exit151
  call void @__sanitizer_cov_trace_pc() #21
  %174 = ptrtoint ptr %protocol247.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %protocol247.i, align 2
  %idxprom248.i = zext i8 %175 to i32
  %arrayidx249.i = getelementptr [6 x ptr], ptr @tomoyo_proto_keyword, i32 0, i32 %idxprom248.i
  %176 = ptrtoint ptr %arrayidx249.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx249.i, align 4
  %conv.i130 = zext i8 %173 to i32
  %inc.i131 = add nuw nsw i8 %173, 1
  %178 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %inc.i131, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i132 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i130
  %179 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %177, ptr %arrayidx.i132, align 4
  %call.i133 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit136

do.end.i135:                                      ; preds = %tomoyo_set_group.exit151
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit136

tomoyo_set_string.exit136:                        ; preds = %do.end.i135, %if.then.i134
  %180 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %181)
  %cmp.i.i121 = icmp ult i8 %181, 64
  br i1 %cmp.i.i121, label %if.then.i.i126, label %do.end.i.i127

if.then.i.i126:                                   ; preds = %tomoyo_set_string.exit136
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i122 = zext i8 %181 to i32
  %inc.i.i123 = add nuw nsw i8 %181, 1
  %182 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %inc.i.i123, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i124 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i122
  %183 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @.str.173, ptr %arrayidx.i.i124, align 4
  %call.i.i125 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end251.i

do.end.i.i127:                                    ; preds = %tomoyo_set_string.exit136
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end251.i

if.else250.i:                                     ; preds = %if.end244.i
  %184 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %185)
  %cmp.i.i113 = icmp ult i8 %185, 64
  br i1 %cmp.i.i113, label %if.then.i.i118, label %do.end.i.i119

if.then.i.i118:                                   ; preds = %if.else250.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i114 = zext i8 %185 to i32
  %inc.i.i115 = add nuw nsw i8 %185, 1
  %186 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %inc.i.i115, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i116 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i114
  %187 = ptrtoint ptr %arrayidx.i.i116 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @.str.168, ptr %arrayidx.i.i116, align 4
  %call.i.i117 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end251.i

do.end.i.i119:                                    ; preds = %if.else250.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end251.i

if.end251.i:                                      ; preds = %do.end.i.i119, %if.then.i.i118, %do.end.i.i127, %if.then.i.i126
  %188 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %189)
  %cmp.i567.i = icmp ult i8 %189, 64
  br i1 %cmp.i567.i, label %if.then.i572.i, label %do.end.i573.i

if.then.i572.i:                                   ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx253.i = getelementptr [4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 %indvars.iv606.i
  %190 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx253.i, align 4
  %conv.i568.i = zext i8 %189 to i32
  %inc.i569.i = add nuw nsw i8 %189, 1
  %192 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %inc.i569.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i570.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i568.i
  %193 = ptrtoint ptr %arrayidx.i570.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %191, ptr %arrayidx.i570.i, align 4
  %call.i571.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc254.i

do.end.i573.i:                                    ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc254.i

for.inc254.i:                                     ; preds = %do.end.i573.i, %if.then.i572.i, %for.body237.i.for.inc254.i_crit_edge
  %first.17.off0.i = phi i1 [ %first.15.off0592.i, %for.body237.i.for.inc254.i_crit_edge ], [ false, %if.then.i572.i ], [ false, %do.end.i573.i ]
  %indvars.iv.next607.i = add nuw nsw i32 %indvars.iv606.i, 1
  %exitcond608.not.i = icmp eq i32 %indvars.iv.next607.i, 4
  br i1 %exitcond608.not.i, label %for.end256.i, label %for.inc254.i.for.body237.i_crit_edge

for.inc254.i.for.body237.i_crit_edge:             ; preds = %for.inc254.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body237.i

for.end256.i:                                     ; preds = %for.inc254.i
  br i1 %first.17.off0.i, label %for.end256.i.for.inc_crit_edge, label %if.end259.i

for.end256.i.for.inc_crit_edge:                   ; preds = %for.end256.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end259.i:                                      ; preds = %for.end256.i
  call void @__sanitizer_cov_trace_pc() #21
  %name260.i = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %7, i32 0, i32 3
  call fastcc void @tomoyo_print_name_union(ptr noundef %head, ptr noundef %name260.i) #19
  br label %if.end294.i

if.then269.i:                                     ; preds = %if.else47.i
  %194 = ptrtoint ptr %type.i497.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %type.i497.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %195)
  %cmp.i98 = icmp eq i32 %195, 1
  br i1 %cmp.i98, label %if.then.i101, label %if.then269.i.if.end.i104_crit_edge

if.then269.i.if.end.i104_crit_edge:               ; preds = %if.then269.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i104

if.then.i101:                                     ; preds = %if.then269.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_print_namespace(ptr noundef %head) #19
  %196 = ptrtoint ptr %acl_group_index.i499.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %acl_group_index.i499.i, align 4
  %conv.i100 = zext i8 %197 to i32
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.167, i32 noundef %conv.i100) #19
  br label %if.end.i104

if.end.i104:                                      ; preds = %if.then.i101, %if.then269.i.if.end.i104_crit_edge
  %198 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %199)
  %cmp.i.i103 = icmp ult i8 %199, 64
  br i1 %cmp.i.i103, label %if.then.i.i109, label %do.end.i.i110

if.then.i.i109:                                   ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i105 = zext i8 %199 to i32
  %inc.i.i106 = add nuw nsw i8 %199, 1
  %200 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %inc.i.i106, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i107 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i105
  %201 = ptrtoint ptr %arrayidx.i.i107 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @.str.165, ptr %arrayidx.i.i107, align 4
  %call.i.i108 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_group.exit111

do.end.i.i110:                                    ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_group.exit111

tomoyo_set_group.exit111:                         ; preds = %do.end.i.i110, %if.then.i.i109
  %dev_name.i = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %7, i32 0, i32 1
  call fastcc void @tomoyo_print_name_union(ptr noundef %head, ptr noundef %dev_name.i) #19
  %dir_name.i = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %7, i32 0, i32 2
  call fastcc void @tomoyo_print_name_union(ptr noundef %head, ptr noundef %dir_name.i) #19
  %fs_type.i = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %7, i32 0, i32 3
  call fastcc void @tomoyo_print_name_union(ptr noundef %head, ptr noundef %fs_type.i) #19
  %flags.i = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %7, i32 0, i32 4
  %202 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %203)
  %cmp.i.i.i90 = icmp ult i8 %203, 64
  br i1 %cmp.i.i.i90, label %if.then.i.i.i95, label %do.end.i.i.i96

if.then.i.i.i95:                                  ; preds = %tomoyo_set_group.exit111
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i91 = zext i8 %203 to i32
  %inc.i.i.i92 = add nuw nsw i8 %203, 1
  %204 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %inc.i.i.i92, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i.i93 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i.i91
  %205 = ptrtoint ptr %arrayidx.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr @.str.173, ptr %arrayidx.i.i.i93, align 4
  %call.i.i.i94 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_print_number_union.exit

do.end.i.i.i96:                                   ; preds = %tomoyo_set_group.exit111
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_print_number_union.exit

tomoyo_print_number_union.exit:                   ; preds = %do.end.i.i.i96, %if.then.i.i.i95
  call fastcc void @tomoyo_print_number_union_nospace(ptr noundef %head, ptr noundef %flags.i) #19
  br label %if.end294.i

if.then278.i:                                     ; preds = %if.else47.i
  %206 = ptrtoint ptr %type.i497.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %type.i497.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %207)
  %cmp.i78 = icmp eq i32 %207, 1
  br i1 %cmp.i78, label %if.then.i80, label %if.then278.i.if.end.i83_crit_edge

if.then278.i.if.end.i83_crit_edge:                ; preds = %if.then278.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i83

if.then.i80:                                      ; preds = %if.then278.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @tomoyo_print_namespace(ptr noundef %head) #19
  %208 = ptrtoint ptr %acl_group_index.i499.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %acl_group_index.i499.i, align 4
  %conv.i79 = zext i8 %209 to i32
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.167, i32 noundef %conv.i79) #19
  br label %if.end.i83

if.end.i83:                                       ; preds = %if.then.i80, %if.then278.i.if.end.i83_crit_edge
  %210 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %211)
  %cmp.i.i82 = icmp ult i8 %211, 64
  br i1 %cmp.i.i82, label %if.then.i.i88, label %do.end.i.i89

if.then.i.i88:                                    ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i84 = zext i8 %211 to i32
  %inc.i.i85 = add nuw nsw i8 %211, 1
  %212 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %inc.i.i85, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i86 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i84
  %213 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @.str.166, ptr %arrayidx.i.i86, align 4
  %call.i.i87 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_group.exit

do.end.i.i89:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_group.exit

tomoyo_set_group.exit:                            ; preds = %do.end.i.i89, %if.then.i.i88
  %214 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %215)
  %cmp.i = icmp ult i8 %215, 64
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %tomoyo_set_group.exit
  call void @__sanitizer_cov_trace_pc() #21
  %env.i = getelementptr inbounds %struct.tomoyo_env_acl, ptr %7, i32 0, i32 1
  %216 = ptrtoint ptr %env.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %env.i, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 4
  %conv.i = zext i8 %215 to i32
  %inc.i = add nuw nsw i8 %215, 1
  %220 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %inc.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i75 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %221 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %219, ptr %arrayidx.i75, align 4
  %call.i76 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end294.i

do.end.i:                                         ; preds = %tomoyo_set_group.exit
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end294.i

if.end294.i:                                      ; preds = %do.end.i, %if.then.i, %tomoyo_print_number_union.exit, %if.end259.i, %if.end217.i, %if.end166.i, %if.end124.i, %if.end83.i, %if.else47.i.if.end294.i_crit_edge, %do.end.i528.i, %if.then.i527.i, %if.end30.i
  %cond.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %7, i32 0, i32 1
  %222 = ptrtoint ptr %cond.i to i32
  call void @__asan_loadN_noabort(i32 %222, i32 4)
  %223 = load ptr, ptr %cond.i, align 1
  %tobool295.not.i = icmp eq ptr %223, null
  br i1 %tobool295.not.i, label %if.else310.i, label %if.then296.i

if.then296.i:                                     ; preds = %if.end294.i
  %224 = ptrtoint ptr %print_cond_part.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 1, ptr %print_cond_part.i, align 1
  %225 = ptrtoint ptr %cond_step.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %cond_step.i, align 1
  %call300.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br i1 %call300.i, label %if.then296.i.print_cond_part303.i_crit_edge, label %if.then296.i.return_crit_edge

if.then296.i.return_crit_edge:                    ; preds = %if.then296.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then296.i.print_cond_part303.i_crit_edge:      ; preds = %if.then296.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %print_cond_part303.i

print_cond_part303.i:                             ; preds = %if.then296.i.print_cond_part303.i_crit_edge, %for.body.print_cond_part303.i_crit_edge
  %cond304.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %7, i32 0, i32 1
  %226 = ptrtoint ptr %cond304.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 4)
  %227 = load ptr, ptr %cond304.i, align 1
  %228 = ptrtoint ptr %cond_step.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %cond_step.i, align 1
  %230 = zext i8 %229 to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.277)
  switch i8 %229, label %print_cond_part303.i.return_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %print_cond_part303.i.sw.bb5.i.i_crit_edge
    i8 2, label %print_cond_part303.i.sw.bb108.i.i_crit_edge
    i8 3, label %print_cond_part303.i.sw.bb115.i.i_crit_edge
  ]

print_cond_part303.i.sw.bb115.i.i_crit_edge:      ; preds = %print_cond_part303.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb115.i.i

print_cond_part303.i.sw.bb108.i.i_crit_edge:      ; preds = %print_cond_part303.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb108.i.i

print_cond_part303.i.sw.bb5.i.i_crit_edge:        ; preds = %print_cond_part303.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb5.i.i

print_cond_part303.i.return_crit_edge:            ; preds = %print_cond_part303.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

sw.bb.i.i:                                        ; preds = %print_cond_part303.i
  %231 = ptrtoint ptr %cond_index.i.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 0, ptr %cond_index.i.i, align 2
  %232 = ptrtoint ptr %cond_step.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 1, ptr %cond_step.i, align 1
  %transit.i.i = getelementptr inbounds %struct.tomoyo_condition, ptr %227, i32 0, i32 8
  %233 = ptrtoint ptr %transit.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %transit.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %234, null
  br i1 %tobool.not.i.i, label %sw.bb.i.i.sw.bb5.i.i_crit_edge, label %if.then.i575.i

sw.bb.i.i.sw.bb5.i.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb5.i.i

if.then.i575.i:                                   ; preds = %sw.bb.i.i
  %235 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %236)
  %cmp.i.i.i.i = icmp ult i8 %236, 64
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i575.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i.i = zext i8 %236 to i32
  %inc.i.i.i.i = add nuw nsw i8 %236, 1
  %237 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %inc.i.i.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i.i.i
  %238 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @.str.173, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_space.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i575.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_space.exit.i.i

tomoyo_set_space.exit.i.i:                        ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i
  %239 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %240)
  %cmp.i.i576.i = icmp ult i8 %240, 64
  br i1 %cmp.i.i576.i, label %if.then.i.i581.i, label %do.end.i.i582.i

if.then.i.i581.i:                                 ; preds = %tomoyo_set_space.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %241 = ptrtoint ptr %transit.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %transit.i.i, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %conv.i.i577.i = zext i8 %240 to i32
  %inc.i.i578.i = add nuw nsw i8 %240, 1
  %245 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %inc.i.i578.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i579.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i577.i
  %246 = ptrtoint ptr %arrayidx.i.i579.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %244, ptr %arrayidx.i.i579.i, align 4
  %call.i.i580.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %sw.bb5.i.i

do.end.i.i582.i:                                  ; preds = %tomoyo_set_space.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %sw.bb5.i.i

sw.bb5.i.i:                                       ; preds = %do.end.i.i582.i, %if.then.i.i581.i, %sw.bb.i.i.sw.bb5.i.i_crit_edge, %print_cond_part303.i.sw.bb5.i.i_crit_edge
  %condc6.i.i = getelementptr inbounds %struct.tomoyo_condition, ptr %227, i32 0, i32 2
  %247 = ptrtoint ptr %condc6.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %condc6.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.tomoyo_condition, ptr %227, i32 1
  %conv7.i.i = zext i16 %248 to i32
  %add.ptr8.i.i = getelementptr %struct.tomoyo_condition_element, ptr %add.ptr.i.i, i32 %conv7.i.i
  %numbers_count.i.i = getelementptr inbounds %struct.tomoyo_condition, ptr %227, i32 0, i32 3
  %249 = ptrtoint ptr %numbers_count.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %numbers_count.i.i, align 2
  %conv9.i.i = zext i16 %250 to i32
  %add.ptr10.i.i = getelementptr %struct.tomoyo_number_union, ptr %add.ptr8.i.i, i32 %conv9.i.i
  %names_count.i.i = getelementptr inbounds %struct.tomoyo_condition, ptr %227, i32 0, i32 4
  %251 = ptrtoint ptr %names_count.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %names_count.i.i, align 4
  %conv11.i.i = zext i16 %252 to i32
  %add.ptr12.i.i = getelementptr %struct.tomoyo_name_union, ptr %add.ptr10.i.i, i32 %conv11.i.i
  %argc.i.i = getelementptr inbounds %struct.tomoyo_condition, ptr %227, i32 0, i32 5
  %253 = ptrtoint ptr %argc.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %argc.i.i, align 2
  %conv13.i.i = zext i16 %254 to i32
  %add.ptr14.i.i = getelementptr %struct.tomoyo_argv, ptr %add.ptr12.i.i, i32 %conv13.i.i
  %255 = ptrtoint ptr %cond_index.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %cond_index.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %256)
  %cmp328.not.i.i = icmp eq i16 %256, 0
  br i1 %cmp328.not.i.i, label %sw.bb5.i.i.while.cond.preheader.i.i_crit_edge, label %sw.bb5.i.i.for.body.i.i_crit_edge

sw.bb5.i.i.for.body.i.i_crit_edge:                ; preds = %sw.bb5.i.i
  br label %for.body.i.i

sw.bb5.i.i.while.cond.preheader.i.i_crit_edge:    ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %cleanup.i.i.while.cond.preheader.i.i_crit_edge, %sw.bb5.i.i.while.cond.preheader.i.i_crit_edge
  %condp.0.lcssa.i.i = phi ptr [ %add.ptr.i.i, %sw.bb5.i.i.while.cond.preheader.i.i_crit_edge ], [ %incdec.ptr.i.i, %cleanup.i.i.while.cond.preheader.i.i_crit_edge ]
  %numbers_p.0.lcssa.i.i = phi ptr [ %add.ptr8.i.i, %sw.bb5.i.i.while.cond.preheader.i.i_crit_edge ], [ %numbers_p.3.i.i, %cleanup.i.i.while.cond.preheader.i.i_crit_edge ]
  %names_p.0.lcssa.i.i = phi ptr [ %add.ptr10.i.i, %sw.bb5.i.i.while.cond.preheader.i.i_crit_edge ], [ %names_p.2.i.i, %cleanup.i.i.while.cond.preheader.i.i_crit_edge ]
  %argv.0.lcssa.i.i = phi ptr [ %add.ptr12.i.i, %sw.bb5.i.i.while.cond.preheader.i.i_crit_edge ], [ %argv.1.i.i, %cleanup.i.i.while.cond.preheader.i.i_crit_edge ]
  %envp.0.lcssa.i.i = phi ptr [ %add.ptr14.i.i, %sw.bb5.i.i.while.cond.preheader.i.i_crit_edge ], [ %envp.1.i.i, %cleanup.i.i.while.cond.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %256, i16 %248)
  %cmp41339.i.i = icmp ult i16 %256, %248
  br i1 %cmp41339.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.cleanup.cont104.i.i_crit_edge

while.cond.preheader.i.i.cleanup.cont104.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.cont104.i.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %sw.bb5.i.i.for.body.i.i_crit_edge
  %skip.0334.i.i = phi i16 [ %inc36.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb5.i.i.for.body.i.i_crit_edge ]
  %envp.0333.i.i = phi ptr [ %envp.1.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %add.ptr14.i.i, %sw.bb5.i.i.for.body.i.i_crit_edge ]
  %argv.0332.i.i = phi ptr [ %argv.1.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %add.ptr12.i.i, %sw.bb5.i.i.for.body.i.i_crit_edge ]
  %names_p.0331.i.i = phi ptr [ %names_p.2.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %add.ptr10.i.i, %sw.bb5.i.i.for.body.i.i_crit_edge ]
  %numbers_p.0330.i.i = phi ptr [ %numbers_p.3.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %add.ptr8.i.i, %sw.bb5.i.i.for.body.i.i_crit_edge ]
  %condp.0329.i.i = phi ptr [ %incdec.ptr.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %sw.bb5.i.i.for.body.i.i_crit_edge ]
  %257 = ptrtoint ptr %condp.0329.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %condp.0329.i.i, align 1
  %right21.i.i = getelementptr inbounds %struct.tomoyo_condition_element, ptr %condp.0329.i.i, i32 0, i32 1
  %259 = ptrtoint ptr %right21.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %right21.i.i, align 1
  %incdec.ptr.i.i = getelementptr %struct.tomoyo_condition_element, ptr %condp.0329.i.i, i32 1
  %261 = zext i8 %258 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.278)
  switch i8 %258, label %for.body.i.i.sw.epilog.i.i_crit_edge [
    i8 62, label %sw.bb23.i.i
    i8 63, label %sw.bb25.i.i
    i8 60, label %sw.bb27.i.i
  ]

for.body.i.i.sw.epilog.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i.i

sw.bb23.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr24.i.i = getelementptr %struct.tomoyo_argv, ptr %argv.0332.i.i, i32 1
  br label %cleanup.i.i

sw.bb25.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr26.i.i = getelementptr %struct.tomoyo_envp, ptr %envp.0333.i.i, i32 1
  br label %cleanup.i.i

sw.bb27.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr28.i.i = getelementptr %struct.tomoyo_number_union, ptr %numbers_p.0330.i.i, i32 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb27.i.i, %for.body.i.i.sw.epilog.i.i_crit_edge
  %numbers_p.1.i.i = phi ptr [ %numbers_p.0330.i.i, %for.body.i.i.sw.epilog.i.i_crit_edge ], [ %incdec.ptr28.i.i, %sw.bb27.i.i ]
  %262 = zext i8 %260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %262, ptr @__sancov_gen_cov_switch_values.279)
  switch i8 %260, label %sw.epilog.i.i.cleanup.i.i_crit_edge [
    i8 61, label %sw.bb30.i.i
    i8 60, label %sw.bb32.i.i
  ]

sw.epilog.i.i.cleanup.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.i.i

sw.bb30.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr31.i.i = getelementptr %struct.tomoyo_name_union, ptr %names_p.0331.i.i, i32 1
  br label %cleanup.i.i

sw.bb32.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr33.i.i = getelementptr %struct.tomoyo_number_union, ptr %numbers_p.1.i.i, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %sw.bb32.i.i, %sw.bb30.i.i, %sw.epilog.i.i.cleanup.i.i_crit_edge, %sw.bb25.i.i, %sw.bb23.i.i
  %numbers_p.3.i.i = phi ptr [ %numbers_p.0330.i.i, %sw.bb25.i.i ], [ %numbers_p.0330.i.i, %sw.bb23.i.i ], [ %numbers_p.1.i.i, %sw.epilog.i.i.cleanup.i.i_crit_edge ], [ %incdec.ptr33.i.i, %sw.bb32.i.i ], [ %numbers_p.1.i.i, %sw.bb30.i.i ]
  %names_p.2.i.i = phi ptr [ %names_p.0331.i.i, %sw.bb25.i.i ], [ %names_p.0331.i.i, %sw.bb23.i.i ], [ %names_p.0331.i.i, %sw.epilog.i.i.cleanup.i.i_crit_edge ], [ %names_p.0331.i.i, %sw.bb32.i.i ], [ %incdec.ptr31.i.i, %sw.bb30.i.i ]
  %argv.1.i.i = phi ptr [ %argv.0332.i.i, %sw.bb25.i.i ], [ %incdec.ptr24.i.i, %sw.bb23.i.i ], [ %argv.0332.i.i, %sw.epilog.i.i.cleanup.i.i_crit_edge ], [ %argv.0332.i.i, %sw.bb32.i.i ], [ %argv.0332.i.i, %sw.bb30.i.i ]
  %envp.1.i.i = phi ptr [ %incdec.ptr26.i.i, %sw.bb25.i.i ], [ %envp.0333.i.i, %sw.bb23.i.i ], [ %envp.0333.i.i, %sw.epilog.i.i.cleanup.i.i_crit_edge ], [ %envp.0333.i.i, %sw.bb32.i.i ], [ %envp.0333.i.i, %sw.bb30.i.i ]
  %inc36.i.i = add nuw i16 %skip.0334.i.i, 1
  %cmp.i583.i = icmp ult i16 %inc36.i.i, %256
  br i1 %cmp.i583.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.while.cond.preheader.i.i_crit_edge

cleanup.i.i.while.cond.preheader.i.i_crit_edge:   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.preheader.i.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

while.body.i.i:                                   ; preds = %cleanup91.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %envp.2344.i.i = phi ptr [ %envp.3.i.i, %cleanup91.i.i.while.body.i.i_crit_edge ], [ %envp.0.lcssa.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %argv.2343.i.i = phi ptr [ %argv.3.i.i, %cleanup91.i.i.while.body.i.i_crit_edge ], [ %argv.0.lcssa.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %names_p.3342.i.i = phi ptr [ %names_p.5.i.i, %cleanup91.i.i.while.body.i.i_crit_edge ], [ %names_p.0.lcssa.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %numbers_p.4341.i.i = phi ptr [ %numbers_p.7.i.i, %cleanup91.i.i.while.body.i.i_crit_edge ], [ %numbers_p.0.lcssa.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %condp.1340.i.i = phi ptr [ %incdec.ptr51.i.i, %cleanup91.i.i.while.body.i.i_crit_edge ], [ %condp.0.lcssa.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %equals.i.i = getelementptr inbounds %struct.tomoyo_condition_element, ptr %condp.1340.i.i, i32 0, i32 2
  %263 = ptrtoint ptr %equals.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %equals.i.i, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool43.not.i.i = icmp eq i8 %264, 0
  %265 = ptrtoint ptr %condp.1340.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %condp.1340.i.i, align 1
  %right48.i.i = getelementptr inbounds %struct.tomoyo_condition_element, ptr %condp.1340.i.i, i32 0, i32 1
  %267 = ptrtoint ptr %right48.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %right48.i.i, align 1
  %call.i584.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br i1 %call.i584.i, label %if.end50.i.i, label %while.body.i.i.return_crit_edge

while.body.i.i.return_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end50.i.i:                                     ; preds = %while.body.i.i
  %incdec.ptr51.i.i = getelementptr %struct.tomoyo_condition_element, ptr %condp.1340.i.i, i32 1
  %269 = ptrtoint ptr %cond_index.i.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %cond_index.i.i, align 2
  %inc54.i.i = add i16 %270, 1
  store i16 %inc54.i.i, ptr %cond_index.i.i, align 2
  %271 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %272)
  %cmp.i.i195.i.i = icmp ult i8 %272, 64
  br i1 %cmp.i.i195.i.i, label %if.then.i.i200.i.i, label %do.end.i.i201.i.i

if.then.i.i200.i.i:                               ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i196.i.i = zext i8 %272 to i32
  %inc.i.i197.i.i = add nuw nsw i8 %272, 1
  %273 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %inc.i.i197.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i198.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i196.i.i
  %274 = ptrtoint ptr %arrayidx.i.i198.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr @.str.173, ptr %arrayidx.i.i198.i.i, align 4
  %call.i.i199.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_space.exit202.i.i

do.end.i.i201.i.i:                                ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_space.exit202.i.i

tomoyo_set_space.exit202.i.i:                     ; preds = %do.end.i.i201.i.i, %if.then.i.i200.i.i
  %275 = zext i8 %266 to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values.280)
  switch i8 %266, label %sw.default.i.i [
    i8 62, label %sw.bb56.i.i
    i8 63, label %sw.bb62.i.i
    i8 60, label %sw.bb76.i.i
  ]

sw.bb56.i.i:                                      ; preds = %tomoyo_set_space.exit202.i.i
  %276 = ptrtoint ptr %argv.2343.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %argv.2343.i.i, align 4
  %is_not.i.i = getelementptr inbounds %struct.tomoyo_argv, ptr %argv.2343.i.i, i32 0, i32 2
  %278 = ptrtoint ptr %is_not.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %is_not.i.i, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool57.not.i.i = icmp eq i8 %279, 0
  %cond59.i.i = select i1 %tobool57.not.i.i, ptr @.str.140, ptr @.str.175
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.174, i32 noundef %277, ptr noundef nonnull %cond59.i.i) #19
  %280 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %281)
  %cmp.i204.i.i = icmp ult i8 %281, 64
  br i1 %cmp.i204.i.i, label %if.then.i209.i.i, label %do.end.i210.i.i

if.then.i209.i.i:                                 ; preds = %sw.bb56.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %value.i.i = getelementptr inbounds %struct.tomoyo_argv, ptr %argv.2343.i.i, i32 0, i32 1
  %282 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %value.i.i, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %283, align 4
  %conv.i205.i.i = zext i8 %281 to i32
  %inc.i206.i.i = add nuw nsw i8 %281, 1
  %286 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %inc.i206.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i207.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i205.i.i
  %287 = ptrtoint ptr %arrayidx.i207.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %285, ptr %arrayidx.i207.i.i, align 4
  %call.i208.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit211.i.i

do.end.i210.i.i:                                  ; preds = %sw.bb56.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit211.i.i

tomoyo_set_string.exit211.i.i:                    ; preds = %do.end.i210.i.i, %if.then.i209.i.i
  %288 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %289)
  %cmp.i213.i.i = icmp ult i8 %289, 64
  br i1 %cmp.i213.i.i, label %if.then.i218.i.i, label %do.end.i219.i.i

if.then.i218.i.i:                                 ; preds = %tomoyo_set_string.exit211.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i214.i.i = zext i8 %289 to i32
  %inc.i215.i.i = add nuw nsw i8 %289, 1
  %290 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %inc.i215.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i216.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i214.i.i
  %291 = ptrtoint ptr %arrayidx.i216.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr @.str.176, ptr %arrayidx.i216.i.i, align 4
  %call.i217.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit220.i.i

do.end.i219.i.i:                                  ; preds = %tomoyo_set_string.exit211.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit220.i.i

tomoyo_set_string.exit220.i.i:                    ; preds = %do.end.i219.i.i, %if.then.i218.i.i
  %incdec.ptr61.i.i = getelementptr %struct.tomoyo_argv, ptr %argv.2343.i.i, i32 1
  br label %cleanup91.i.i

sw.bb62.i.i:                                      ; preds = %tomoyo_set_space.exit202.i.i
  %292 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %293)
  %cmp.i222.i.i = icmp ult i8 %293, 64
  br i1 %cmp.i222.i.i, label %if.then.i227.i.i, label %do.end.i228.i.i

if.then.i227.i.i:                                 ; preds = %sw.bb62.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i223.i.i = zext i8 %293 to i32
  %inc.i224.i.i = add nuw nsw i8 %293, 1
  %294 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %inc.i224.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i225.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i223.i.i
  %295 = ptrtoint ptr %arrayidx.i225.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr @.str.177, ptr %arrayidx.i225.i.i, align 4
  %call.i226.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit229.i.i

do.end.i228.i.i:                                  ; preds = %sw.bb62.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit229.i.i

tomoyo_set_string.exit229.i.i:                    ; preds = %do.end.i228.i.i, %if.then.i227.i.i
  %296 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %297)
  %cmp.i231.i.i = icmp ult i8 %297, 64
  br i1 %cmp.i231.i.i, label %if.then.i236.i.i, label %do.end.i237.i.i

if.then.i236.i.i:                                 ; preds = %tomoyo_set_string.exit229.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %298 = ptrtoint ptr %envp.2344.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %envp.2344.i.i, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %299, align 4
  %conv.i232.i.i = zext i8 %297 to i32
  %inc.i233.i.i = add nuw nsw i8 %297, 1
  %302 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %inc.i233.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i234.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i232.i.i
  %303 = ptrtoint ptr %arrayidx.i234.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %301, ptr %arrayidx.i234.i.i, align 4
  %call.i235.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit238.i.i

do.end.i237.i.i:                                  ; preds = %tomoyo_set_string.exit229.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit238.i.i

tomoyo_set_string.exit238.i.i:                    ; preds = %do.end.i237.i.i, %if.then.i236.i.i
  %is_not65.i.i = getelementptr inbounds %struct.tomoyo_envp, ptr %envp.2344.i.i, i32 0, i32 2
  %304 = ptrtoint ptr %is_not65.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %is_not65.i.i, align 4, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool66.not.i.i = icmp eq i8 %305, 0
  %cond68.i.i = select i1 %tobool66.not.i.i, ptr @.str.140, ptr @.str.175
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.178, ptr noundef nonnull %cond68.i.i) #19
  %value69.i.i = getelementptr inbounds %struct.tomoyo_envp, ptr %envp.2344.i.i, i32 0, i32 1
  %306 = ptrtoint ptr %value69.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %value69.i.i, align 4
  %tobool70.not.i.i = icmp eq ptr %307, null
  %308 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %309)
  %cmp.i267.i.i = icmp ult i8 %309, 64
  br i1 %tobool70.not.i.i, label %if.else.i.i, label %if.then71.i.i

if.then71.i.i:                                    ; preds = %tomoyo_set_string.exit238.i.i
  br i1 %cmp.i267.i.i, label %if.then.i245.i.i, label %do.end.i246.i.i

if.then.i245.i.i:                                 ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i241.i.i = zext i8 %309 to i32
  %inc.i242.i.i = add nuw nsw i8 %309, 1
  %310 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %inc.i242.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i243.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i241.i.i
  %311 = ptrtoint ptr %arrayidx.i243.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr @.str.176, ptr %arrayidx.i243.i.i, align 4
  %call.i244.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit247.i.i

do.end.i246.i.i:                                  ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit247.i.i

tomoyo_set_string.exit247.i.i:                    ; preds = %do.end.i246.i.i, %if.then.i245.i.i
  %312 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %313)
  %cmp.i249.i.i = icmp ult i8 %313, 64
  br i1 %cmp.i249.i.i, label %if.then.i254.i.i, label %do.end.i255.i.i

if.then.i254.i.i:                                 ; preds = %tomoyo_set_string.exit247.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %314 = ptrtoint ptr %value69.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %value69.i.i, align 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %315, align 4
  %conv.i250.i.i = zext i8 %313 to i32
  %inc.i251.i.i = add nuw nsw i8 %313, 1
  %318 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %inc.i251.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i252.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i250.i.i
  %319 = ptrtoint ptr %arrayidx.i252.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %317, ptr %arrayidx.i252.i.i, align 4
  %call.i253.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit256.i.i

do.end.i255.i.i:                                  ; preds = %tomoyo_set_string.exit247.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit256.i.i

tomoyo_set_string.exit256.i.i:                    ; preds = %do.end.i255.i.i, %if.then.i254.i.i
  %320 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %321)
  %cmp.i258.i.i = icmp ult i8 %321, 64
  br i1 %cmp.i258.i.i, label %if.then.i263.i.i, label %do.end.i264.i.i

if.then.i263.i.i:                                 ; preds = %tomoyo_set_string.exit256.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i259.i.i = zext i8 %321 to i32
  %inc.i260.i.i = add nuw nsw i8 %321, 1
  %322 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %inc.i260.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i261.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i259.i.i
  %323 = ptrtoint ptr %arrayidx.i261.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr @.str.176, ptr %arrayidx.i261.i.i, align 4
  %call.i262.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end74.i.i

do.end.i264.i.i:                                  ; preds = %tomoyo_set_string.exit256.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end74.i.i

if.else.i.i:                                      ; preds = %tomoyo_set_string.exit238.i.i
  br i1 %cmp.i267.i.i, label %if.then.i272.i.i, label %do.end.i273.i.i

if.then.i272.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i268.i.i = zext i8 %309 to i32
  %inc.i269.i.i = add nuw nsw i8 %309, 1
  %324 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %inc.i269.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i270.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i268.i.i
  %325 = ptrtoint ptr %arrayidx.i270.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr @.str.179, ptr %arrayidx.i270.i.i, align 4
  %call.i271.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end74.i.i

do.end.i273.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %do.end.i273.i.i, %if.then.i272.i.i, %do.end.i264.i.i, %if.then.i263.i.i
  %incdec.ptr75.i.i = getelementptr %struct.tomoyo_envp, ptr %envp.2344.i.i, i32 1
  br label %cleanup91.i.i

sw.bb76.i.i:                                      ; preds = %tomoyo_set_space.exit202.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr77.i.i = getelementptr %struct.tomoyo_number_union, ptr %numbers_p.4341.i.i, i32 1
  call fastcc void @tomoyo_print_number_union_nospace(ptr noundef %head, ptr noundef %numbers_p.4341.i.i) #19
  br label %sw.epilog78.i.i

sw.default.i.i:                                   ; preds = %tomoyo_set_space.exit202.i.i
  %326 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %327)
  %cmp.i276.i.i = icmp ult i8 %327, 64
  br i1 %cmp.i276.i.i, label %if.then.i281.i.i, label %do.end.i282.i.i

if.then.i281.i.i:                                 ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv55.i.i = zext i8 %266 to i32
  %arrayidx.i585.i = getelementptr [59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 %conv55.i.i
  %328 = ptrtoint ptr %arrayidx.i585.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %arrayidx.i585.i, align 4
  %conv.i277.i.i = zext i8 %327 to i32
  %inc.i278.i.i = add nuw nsw i8 %327, 1
  %330 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %inc.i278.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i279.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i277.i.i
  %331 = ptrtoint ptr %arrayidx.i279.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %329, ptr %arrayidx.i279.i.i, align 4
  %call.i280.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %sw.epilog78.i.i

do.end.i282.i.i:                                  ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %sw.epilog78.i.i

sw.epilog78.i.i:                                  ; preds = %do.end.i282.i.i, %if.then.i281.i.i, %sw.bb76.i.i
  %numbers_p.5.i.i = phi ptr [ %incdec.ptr77.i.i, %sw.bb76.i.i ], [ %numbers_p.4341.i.i, %if.then.i281.i.i ], [ %numbers_p.4341.i.i, %do.end.i282.i.i ]
  %332 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %333)
  %cmp.i285.i.i = icmp ult i8 %333, 64
  br i1 %cmp.i285.i.i, label %if.then.i290.i.i, label %do.end.i291.i.i

if.then.i290.i.i:                                 ; preds = %sw.epilog78.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %cond81.i.i = select i1 %tobool43.not.i.i, ptr @.str.181, ptr @.str.180
  %conv.i286.i.i = zext i8 %333 to i32
  %inc.i287.i.i = add nuw nsw i8 %333, 1
  %334 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %inc.i287.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i288.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i286.i.i
  %335 = ptrtoint ptr %arrayidx.i288.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %cond81.i.i, ptr %arrayidx.i288.i.i, align 4
  %call.i289.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit292.i.i

do.end.i291.i.i:                                  ; preds = %sw.epilog78.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit292.i.i

tomoyo_set_string.exit292.i.i:                    ; preds = %do.end.i291.i.i, %if.then.i290.i.i
  %336 = zext i8 %268 to i64
  call void @__sanitizer_cov_trace_switch(i64 %336, ptr @__sancov_gen_cov_switch_values.281)
  switch i8 %268, label %sw.default87.i.i [
    i8 61, label %sw.bb83.i.i
    i8 60, label %sw.bb85.i.i
  ]

sw.bb83.i.i:                                      ; preds = %tomoyo_set_string.exit292.i.i
  %incdec.ptr84.i.i = getelementptr %struct.tomoyo_name_union, ptr %names_p.3342.i.i, i32 1
  %group.i.i.i = getelementptr inbounds %struct.tomoyo_name_union, ptr %names_p.3342.i.i, i32 0, i32 1
  %337 = ptrtoint ptr %group.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %group.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %338, null
  %339 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %340)
  %cmp.i19.i.i.i = icmp ult i8 %340, 64
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i293.i.i

if.then.i293.i.i:                                 ; preds = %sw.bb83.i.i
  br i1 %cmp.i19.i.i.i, label %if.then.i.i298.i.i, label %do.end.i.i299.i.i

if.then.i.i298.i.i:                               ; preds = %if.then.i293.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i294.i.i = zext i8 %340 to i32
  %inc.i.i295.i.i = add nuw nsw i8 %340, 1
  %341 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %inc.i.i295.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i296.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i294.i.i
  %342 = ptrtoint ptr %arrayidx.i.i296.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr @.str.164, ptr %arrayidx.i.i296.i.i, align 4
  %call.i.i297.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit.i.i.i

do.end.i.i299.i.i:                                ; preds = %if.then.i293.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit.i.i.i

tomoyo_set_string.exit.i.i.i:                     ; preds = %do.end.i.i299.i.i, %if.then.i.i298.i.i
  %343 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %344)
  %cmp.i10.i.i.i = icmp ult i8 %344, 64
  br i1 %cmp.i10.i.i.i, label %if.then.i15.i.i.i, label %do.end.i16.i.i.i

if.then.i15.i.i.i:                                ; preds = %tomoyo_set_string.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %345 = ptrtoint ptr %group.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %group.i.i.i, align 4
  %group_name.i.i.i = getelementptr inbounds %struct.tomoyo_group, ptr %346, i32 0, i32 1
  %347 = ptrtoint ptr %group_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %group_name.i.i.i, align 4
  %349 = ptrtoint ptr %348 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %348, align 4
  %conv.i11.i.i.i = zext i8 %344 to i32
  %inc.i12.i.i.i = add nuw nsw i8 %344, 1
  %351 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %inc.i12.i.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i13.i.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i11.i.i.i
  %352 = ptrtoint ptr %arrayidx.i13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr %350, ptr %arrayidx.i13.i.i.i, align 4
  %call.i14.i.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %cleanup91.i.i

do.end.i16.i.i.i:                                 ; preds = %tomoyo_set_string.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %cleanup91.i.i

if.else.i.i.i:                                    ; preds = %sw.bb83.i.i
  br i1 %cmp.i19.i.i.i, label %if.then.i24.i.i.i, label %do.end.i25.i.i.i

if.then.i24.i.i.i:                                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i20.i.i.i = zext i8 %340 to i32
  %inc.i21.i.i.i = add nuw nsw i8 %340, 1
  %353 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %inc.i21.i.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i22.i.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i20.i.i.i
  %354 = ptrtoint ptr %arrayidx.i22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr @.str.176, ptr %arrayidx.i22.i.i.i, align 4
  %call.i23.i.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit26.i.i.i

do.end.i25.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit26.i.i.i

tomoyo_set_string.exit26.i.i.i:                   ; preds = %do.end.i25.i.i.i, %if.then.i24.i.i.i
  %355 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %356)
  %cmp.i28.i.i.i = icmp ult i8 %356, 64
  br i1 %cmp.i28.i.i.i, label %if.then.i33.i.i.i, label %do.end.i34.i.i.i

if.then.i33.i.i.i:                                ; preds = %tomoyo_set_string.exit26.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %357 = ptrtoint ptr %names_p.3342.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %names_p.3342.i.i, align 4
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %358, align 4
  %conv.i29.i.i.i = zext i8 %356 to i32
  %inc.i30.i.i.i = add nuw nsw i8 %356, 1
  %361 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 %inc.i30.i.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i31.i.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i29.i.i.i
  %362 = ptrtoint ptr %arrayidx.i31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %360, ptr %arrayidx.i31.i.i.i, align 4
  %call.i32.i.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit35.i.i.i

do.end.i34.i.i.i:                                 ; preds = %tomoyo_set_string.exit26.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit35.i.i.i

tomoyo_set_string.exit35.i.i.i:                   ; preds = %do.end.i34.i.i.i, %if.then.i33.i.i.i
  %363 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %364)
  %cmp.i37.i.i.i = icmp ult i8 %364, 64
  br i1 %cmp.i37.i.i.i, label %if.then.i42.i.i.i, label %do.end.i43.i.i.i

if.then.i42.i.i.i:                                ; preds = %tomoyo_set_string.exit35.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i38.i.i.i = zext i8 %364 to i32
  %inc.i39.i.i.i = add nuw nsw i8 %364, 1
  %365 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %inc.i39.i.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i40.i.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i38.i.i.i
  %366 = ptrtoint ptr %arrayidx.i40.i.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr @.str.176, ptr %arrayidx.i40.i.i.i, align 4
  %call.i41.i.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %cleanup91.i.i

do.end.i43.i.i.i:                                 ; preds = %tomoyo_set_string.exit35.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %cleanup91.i.i

sw.bb85.i.i:                                      ; preds = %tomoyo_set_string.exit292.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr86.i.i = getelementptr %struct.tomoyo_number_union, ptr %numbers_p.5.i.i, i32 1
  call fastcc void @tomoyo_print_number_union_nospace(ptr noundef %head, ptr noundef %numbers_p.5.i.i) #19
  br label %cleanup91.i.i

sw.default87.i.i:                                 ; preds = %tomoyo_set_string.exit292.i.i
  %367 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %368)
  %cmp.i301.i.i = icmp ult i8 %368, 64
  br i1 %cmp.i301.i.i, label %if.then.i306.i.i, label %do.end.i307.i.i

if.then.i306.i.i:                                 ; preds = %sw.default87.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv82.i.i = zext i8 %268 to i32
  %arrayidx89.i.i = getelementptr [59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 %conv82.i.i
  %369 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %arrayidx89.i.i, align 4
  %conv.i302.i.i = zext i8 %368 to i32
  %inc.i303.i.i = add nuw nsw i8 %368, 1
  %371 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %inc.i303.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i304.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i302.i.i
  %372 = ptrtoint ptr %arrayidx.i304.i.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store ptr %370, ptr %arrayidx.i304.i.i, align 4
  %call.i305.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %cleanup91.i.i

do.end.i307.i.i:                                  ; preds = %sw.default87.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %cleanup91.i.i

cleanup91.i.i:                                    ; preds = %do.end.i307.i.i, %if.then.i306.i.i, %sw.bb85.i.i, %do.end.i43.i.i.i, %if.then.i42.i.i.i, %do.end.i16.i.i.i, %if.then.i15.i.i.i, %if.end74.i.i, %tomoyo_set_string.exit220.i.i
  %numbers_p.7.i.i = phi ptr [ %numbers_p.4341.i.i, %if.end74.i.i ], [ %numbers_p.4341.i.i, %tomoyo_set_string.exit220.i.i ], [ %incdec.ptr86.i.i, %sw.bb85.i.i ], [ %numbers_p.5.i.i, %if.then.i15.i.i.i ], [ %numbers_p.5.i.i, %do.end.i16.i.i.i ], [ %numbers_p.5.i.i, %if.then.i42.i.i.i ], [ %numbers_p.5.i.i, %do.end.i43.i.i.i ], [ %numbers_p.5.i.i, %if.then.i306.i.i ], [ %numbers_p.5.i.i, %do.end.i307.i.i ]
  %names_p.5.i.i = phi ptr [ %names_p.3342.i.i, %if.end74.i.i ], [ %names_p.3342.i.i, %tomoyo_set_string.exit220.i.i ], [ %names_p.3342.i.i, %sw.bb85.i.i ], [ %incdec.ptr84.i.i, %if.then.i15.i.i.i ], [ %incdec.ptr84.i.i, %do.end.i16.i.i.i ], [ %incdec.ptr84.i.i, %if.then.i42.i.i.i ], [ %incdec.ptr84.i.i, %do.end.i43.i.i.i ], [ %names_p.3342.i.i, %if.then.i306.i.i ], [ %names_p.3342.i.i, %do.end.i307.i.i ]
  %argv.3.i.i = phi ptr [ %argv.2343.i.i, %if.end74.i.i ], [ %incdec.ptr61.i.i, %tomoyo_set_string.exit220.i.i ], [ %argv.2343.i.i, %sw.bb85.i.i ], [ %argv.2343.i.i, %if.then.i15.i.i.i ], [ %argv.2343.i.i, %do.end.i16.i.i.i ], [ %argv.2343.i.i, %if.then.i42.i.i.i ], [ %argv.2343.i.i, %do.end.i43.i.i.i ], [ %argv.2343.i.i, %if.then.i306.i.i ], [ %argv.2343.i.i, %do.end.i307.i.i ]
  %envp.3.i.i = phi ptr [ %incdec.ptr75.i.i, %if.end74.i.i ], [ %envp.2344.i.i, %tomoyo_set_string.exit220.i.i ], [ %envp.2344.i.i, %sw.bb85.i.i ], [ %envp.2344.i.i, %if.then.i15.i.i.i ], [ %envp.2344.i.i, %do.end.i16.i.i.i ], [ %envp.2344.i.i, %if.then.i42.i.i.i ], [ %envp.2344.i.i, %do.end.i43.i.i.i ], [ %envp.2344.i.i, %if.then.i306.i.i ], [ %envp.2344.i.i, %do.end.i307.i.i ]
  %373 = ptrtoint ptr %cond_index.i.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %cond_index.i.i, align 2
  %cmp41.i.i = icmp ult i16 %374, %248
  br i1 %cmp41.i.i, label %cleanup91.i.i.while.body.i.i_crit_edge, label %cleanup91.i.i.cleanup.cont104.i.i_crit_edge

cleanup91.i.i.cleanup.cont104.i.i_crit_edge:      ; preds = %cleanup91.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.cont104.i.i

cleanup91.i.i.while.body.i.i_crit_edge:           ; preds = %cleanup91.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i

cleanup.cont104.i.i:                              ; preds = %cleanup91.i.i.cleanup.cont104.i.i_crit_edge, %while.cond.preheader.i.i.cleanup.cont104.i.i_crit_edge
  %375 = ptrtoint ptr %cond_step.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %cond_step.i, align 1
  %inc107.i.i = add i8 %376, 1
  store i8 %inc107.i.i, ptr %cond_step.i, align 1
  br label %sw.bb108.i.i

sw.bb108.i.i:                                     ; preds = %cleanup.cont104.i.i, %print_cond_part303.i.sw.bb108.i.i_crit_edge
  %call109.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br i1 %call109.i.i, label %if.end111.i.i, label %sw.bb108.i.i.return_crit_edge

sw.bb108.i.i.return_crit_edge:                    ; preds = %sw.bb108.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end111.i.i:                                    ; preds = %sw.bb108.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %377 = ptrtoint ptr %cond_step.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %cond_step.i, align 1
  %inc114.i.i = add i8 %378, 1
  store i8 %inc114.i.i, ptr %cond_step.i, align 1
  br label %sw.bb115.i.i

sw.bb115.i.i:                                     ; preds = %if.end111.i.i, %print_cond_part303.i.sw.bb115.i.i_crit_edge
  %grant_log.i.i = getelementptr inbounds %struct.tomoyo_condition, ptr %227, i32 0, i32 7
  %379 = ptrtoint ptr %grant_log.i.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %grant_log.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %cmp117.not.i.i = icmp eq i8 %380, 0
  br i1 %cmp117.not.i.i, label %sw.bb115.i.i.if.end125.i.i_crit_edge, label %if.then119.i.i

sw.bb115.i.i.if.end125.i.i_crit_edge:             ; preds = %sw.bb115.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end125.i.i

if.then119.i.i:                                   ; preds = %sw.bb115.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %380)
  %cmp122.not.i.i = icmp eq i8 %380, 2
  %cond.i.i.i = select i1 %cmp122.not.i.i, ptr @.str.110, ptr @.str.111
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.182, ptr noundef nonnull %cond.i.i.i) #19
  br label %if.end125.i.i

if.end125.i.i:                                    ; preds = %if.then119.i.i, %sw.bb115.i.i.if.end125.i.i_crit_edge
  %381 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %382)
  %cmp.i.i311.i.i = icmp ult i8 %382, 64
  br i1 %cmp.i.i311.i.i, label %if.then.i.i316.i.i, label %do.end.i.i317.i.i

if.then.i.i316.i.i:                               ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i312.i.i = zext i8 %382 to i32
  %inc.i.i313.i.i = add nuw nsw i8 %382, 1
  %383 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %inc.i.i313.i.i, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i314.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i312.i.i
  %384 = ptrtoint ptr %arrayidx.i.i314.i.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr @.str.162, ptr %arrayidx.i.i314.i.i, align 4
  %call.i.i315.i.i = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end307.i

do.end.i.i317.i.i:                                ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end307.i

if.end307.i:                                      ; preds = %do.end.i.i317.i.i, %if.then.i.i316.i.i
  %385 = ptrtoint ptr %print_cond_part.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 0, ptr %print_cond_part.i, align 1
  br label %for.inc

if.else310.i:                                     ; preds = %if.end294.i
  %386 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %w_pos.i.i502.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %387)
  %cmp.i.i67 = icmp ult i8 %387, 64
  br i1 %cmp.i.i67, label %if.then.i.i72, label %do.end.i.i73

if.then.i.i72:                                    ; preds = %if.else310.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i68 = zext i8 %387 to i32
  %inc.i.i69 = add nuw nsw i8 %387, 1
  %388 = ptrtoint ptr %w_pos.i.i502.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %inc.i.i69, ptr %w_pos.i.i502.i, align 1
  %arrayidx.i.i70 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i68
  %389 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr @.str.162, ptr %arrayidx.i.i70, align 4
  %call.i.i71 = call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %for.inc

do.end.i.i73:                                     ; preds = %if.else310.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %for.inc

for.inc:                                          ; preds = %do.end.i.i73, %if.then.i.i72, %if.end307.i, %for.end256.i.for.inc_crit_edge, %for.end205.i.for.inc_crit_edge, %for.inc161.thread.i.for.inc_crit_edge, %for.end121.i.for.inc_crit_edge, %for.inc78.1.i.thread.for.inc_crit_edge, %if.else42.i.for.inc_crit_edge, %for.end.i.for.inc_crit_edge, %if.end.i58.for.inc_crit_edge
  %390 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %acl, align 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load volatile ptr, ptr %391, align 4
  %call.i61 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %for.inc.do.end40_crit_edge, label %srcu_read_lock_held.exit66

for.inc.do.end40_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end40

srcu_read_lock_held.exit66:                       ; preds = %for.inc
  %call.i.i63 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %tobool31.not = icmp eq i32 %call.i.i63, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %srcu_read_lock_held.exit66.do.end40_crit_edge

srcu_read_lock_held.exit66.do.end40_crit_edge:    ; preds = %srcu_read_lock_held.exit66
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end40

land.lhs.true32:                                  ; preds = %srcu_read_lock_held.exit66
  %call33 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b5455 = load i1, ptr @tomoyo_read_domain2.__warned.163, align 1
  br i1 %.b5455, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @tomoyo_read_domain2.__warned.163, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 1600, ptr noundef nonnull @.str.159) #19
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %srcu_read_lock_held.exit66.do.end40_crit_edge, %for.inc.do.end40_crit_edge
  %394 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %393, ptr %acl, align 4
  %cmp.not = icmp eq ptr %393, %list
  br i1 %cmp.not, label %do.end40.for.end_crit_edge, label %do.end40.for.body_crit_edge

do.end40.for.body_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

do.end40.for.end_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %do.end40.for.end_crit_edge, %if.end13.for.end_crit_edge
  %395 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr null, ptr %acl, align 4
  br label %return

return:                                           ; preds = %for.end, %sw.bb108.i.i.return_crit_edge, %while.body.i.i.return_crit_edge, %print_cond_part303.i.return_crit_edge, %if.then296.i.return_crit_edge, %if.end3.i.return_crit_edge
  %cmp.not233 = phi i1 [ true, %for.end ], [ false, %while.body.i.i.return_crit_edge ], [ false, %if.end3.i.return_crit_edge ], [ false, %if.then296.i.return_crit_edge ], [ false, %print_cond_part303.i.return_crit_edge ], [ false, %sw.bb108.i.i.return_crit_edge ]
  ret i1 %cmp.not233
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tomoyo_set_group(ptr nocapture noundef %head, ptr noundef %category) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 12
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @tomoyo_print_namespace(ptr noundef %head)
  %acl_group_index = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 9
  %2 = ptrtoint ptr %acl_group_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %acl_group_index, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.167, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %w_pos.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %4 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %5)
  %cmp.i = icmp ult i8 %5, 64
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = zext i8 %5 to i32
  %inc.i = add nuw nsw i8 %5, 1
  %6 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %inc.i, ptr %w_pos.i, align 1
  %arrayidx.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %category, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit

tomoyo_set_string.exit:                           ; preds = %do.end.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tomoyo_set_slash(ptr nocapture noundef %head) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %w_pos.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %cmp.i = icmp ult i8 %1, 64
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = zext i8 %1 to i32
  %inc.i = add nuw nsw i8 %1, 1
  %2 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %inc.i, ptr %w_pos.i, align 1
  %arrayidx.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.168, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit

tomoyo_set_string.exit:                           ; preds = %do.end.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tomoyo_print_name_union(ptr nocapture noundef %head, ptr nocapture noundef readonly %ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %w_pos.i.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %cmp.i.i = icmp ult i8 %1, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i = zext i8 %1 to i32
  %inc.i.i = add nuw nsw i8 %1, 1
  %2 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %inc.i.i, ptr %w_pos.i.i, align 1
  %arrayidx.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.173, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_space.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_space.exit

tomoyo_set_space.exit:                            ; preds = %do.end.i.i, %if.then.i.i
  %group = getelementptr inbounds %struct.tomoyo_name_union, ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group, align 4
  %tobool.not = icmp eq ptr %5, null
  %6 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp.i18 = icmp ult i8 %7, 64
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %tomoyo_set_space.exit
  br i1 %cmp.i18, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = zext i8 %7 to i32
  %inc.i = add nuw nsw i8 %7, 1
  %8 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %inc.i, ptr %w_pos.i.i, align 1
  %arrayidx.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.164, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit

tomoyo_set_string.exit:                           ; preds = %do.end.i, %if.then.i
  %10 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %11)
  %cmp.i9 = icmp ult i8 %11, 64
  br i1 %cmp.i9, label %if.then.i14, label %do.end.i15

if.then.i14:                                      ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group, align 4
  %group_name = getelementptr inbounds %struct.tomoyo_group, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %group_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group_name, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %conv.i10 = zext i8 %11 to i32
  %inc.i11 = add nuw nsw i8 %11, 1
  %18 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %inc.i11, ptr %w_pos.i.i, align 1
  %arrayidx.i12 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i10
  %19 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %arrayidx.i12, align 4
  %call.i13 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end

do.end.i15:                                       ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.else:                                          ; preds = %tomoyo_set_space.exit
  br i1 %cmp.i18, label %if.then.i23, label %do.end.i24

if.then.i23:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %20 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptr, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %conv.i19 = zext i8 %7 to i32
  %inc.i20 = add nuw nsw i8 %7, 1
  %24 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %inc.i20, ptr %w_pos.i.i, align 1
  %arrayidx.i21 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i19
  %25 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %arrayidx.i21, align 4
  %call.i22 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end

do.end.i24:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end.i24, %if.then.i23, %do.end.i15, %if.then.i14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tomoyo_print_number_union(ptr nocapture noundef %head, ptr nocapture noundef readonly %ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %w_pos.i.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %w_pos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %cmp.i.i = icmp ult i8 %1, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i = zext i8 %1 to i32
  %inc.i.i = add nuw nsw i8 %1, 1
  %2 = ptrtoint ptr %w_pos.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %inc.i.i, ptr %w_pos.i.i, align 1
  %arrayidx.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.173, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_space.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_space.exit

tomoyo_set_space.exit:                            ; preds = %do.end.i.i, %if.then.i.i
  tail call fastcc void @tomoyo_print_number_union_nospace(ptr noundef %head, ptr noundef %ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tomoyo_set_space(ptr nocapture noundef %head) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %w_pos.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %cmp.i = icmp ult i8 %1, 64
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = zext i8 %1 to i32
  %inc.i = add nuw nsw i8 %1, 1
  %2 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %inc.i, ptr %w_pos.i, align 1
  %arrayidx.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.173, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit

tomoyo_set_string.exit:                           ; preds = %do.end.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_print_ip(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tomoyo_print_namespace(ptr nocapture noundef %head) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @tomoyo_namespace_enabled, align 1, !range !597
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  %w_pos.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %1 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %2)
  %cmp.i = icmp ult i8 %2, 64
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %r = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6
  %3 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %r, align 4
  %name = getelementptr i8, ptr %4, i32 12
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %conv.i = zext i8 %2 to i32
  %inc.i = add nuw nsw i8 %2, 1
  %7 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %inc.i, ptr %w_pos.i, align 1
  %arrayidx.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit

tomoyo_set_string.exit:                           ; preds = %do.end.i, %if.then.i
  %9 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %10)
  %cmp.i.i = icmp ult i8 %10, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i = zext i8 %10 to i32
  %inc.i.i = add nuw nsw i8 %10, 1
  %11 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %inc.i.i, ptr %w_pos.i, align 1
  %arrayidx.i.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.173, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %return

do.end.i.i:                                       ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %return

return:                                           ; preds = %do.end.i.i, %if.then.i.i, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tomoyo_print_number_union_nospace(ptr nocapture noundef %head, ptr nocapture noundef readonly %ptr) unnamed_addr #1 align 64 {
entry:
  %buffer = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.tomoyo_number_union, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %w_pos.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 12
  %2 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %3)
  %cmp.i = icmp ult i8 %3, 64
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = zext i8 %3 to i32
  %inc.i = add nuw nsw i8 %3, 1
  %4 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %inc.i, ptr %w_pos.i, align 1
  %arrayidx.i = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.164, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %tomoyo_set_string.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %tomoyo_set_string.exit

tomoyo_set_string.exit:                           ; preds = %do.end.i, %if.then.i
  %6 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %w_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp.i36 = icmp ult i8 %7, 64
  br i1 %cmp.i36, label %if.then.i41, label %do.end.i42

if.then.i41:                                      ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group, align 4
  %group_name = getelementptr inbounds %struct.tomoyo_group, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %group_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group_name, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %conv.i37 = zext i8 %7 to i32
  %inc.i38 = add nuw nsw i8 %7, 1
  %14 = ptrtoint ptr %w_pos.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %inc.i38, ptr %w_pos.i, align 1
  %arrayidx.i39 = getelementptr %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 6, i32 17, i32 %conv.i37
  %15 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %arrayidx.i39, align 4
  %call.i40 = tail call fastcc zeroext i1 @tomoyo_flush(ptr noundef %head) #19
  br label %if.end20

do.end.i42:                                       ; preds = %tomoyo_set_string.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 265, i32 noundef 9, ptr noundef null) #19
  br label %if.end20

if.else:                                          ; preds = %entry
  %16 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptr, align 4
  %arrayidx3 = getelementptr [2 x i32], ptr %ptr, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3, align 4
  %value_type = getelementptr inbounds %struct.tomoyo_number_union, ptr %ptr, i32 0, i32 2
  %20 = ptrtoint ptr %value_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %value_type, align 4
  %arrayidx6 = getelementptr %struct.tomoyo_number_union, ptr %ptr, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx6, align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buffer) #19
  %24 = getelementptr inbounds i8, ptr %buffer, i32 1
  %25 = call ptr @memset(ptr %24, i32 255, i32 127)
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %switch.selectcmp = icmp eq i8 %21, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.170, ptr @.str.171
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %switch.selectcmp48 = icmp eq i8 %21, 3
  %switch.select49 = select i1 %switch.selectcmp48, ptr @.str.169, ptr %switch.select
  call void (ptr, i32, ptr, ...) @tomoyo_addprintf(ptr noundef nonnull %buffer, i32 noundef 128, ptr noundef nonnull %switch.select49, i32 noundef %17)
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp11 = icmp eq i32 %17, %19
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp15 = icmp eq i8 %21, %23
  %or.cond = select i1 %cmp11, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.else.for.end_crit_edge, label %if.end

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, ptr, ...) @tomoyo_addprintf(ptr noundef nonnull %buffer, i32 noundef 128, ptr noundef nonnull @.str.172)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %switch.selectcmp50 = icmp eq i8 %23, 2
  %switch.select51 = select i1 %switch.selectcmp50, ptr @.str.170, ptr @.str.171
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %switch.selectcmp52 = icmp eq i8 %23, 3
  %switch.select53 = select i1 %switch.selectcmp52, ptr @.str.169, ptr %switch.select51
  call void (ptr, i32, ptr, ...) @tomoyo_addprintf(ptr noundef nonnull %buffer, i32 noundef 128, ptr noundef nonnull %switch.select53, i32 noundef %19)
  br label %for.end

for.end:                                          ; preds = %if.end, %if.else.for.end_crit_edge
  call void (ptr, ptr, ...) @tomoyo_io_printf(ptr noundef %head, ptr noundef nonnull @.str.144, ptr noundef nonnull %buffer)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buffer) #19
  br label %if.end20

if.end20:                                         ; preds = %for.end, %do.end.i42, %if.then.i41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_write_aggregator(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_write_transition_control(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_write_group(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_pid_ns(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_convert_time(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_name(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_memory_ok(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_correct_domain(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_correct_word(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_update_policy(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_manager(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %manager = getelementptr inbounds %struct.tomoyo_manager, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %manager to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %manager, align 4
  %manager4 = getelementptr inbounds %struct.tomoyo_manager, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %manager4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %manager4, align 4
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_domain_def(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_domain() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_exe() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_assign_namespace(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 275)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 275)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind readonly }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nobuiltin }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nounwind readnone }
attributes #27 = { cold nounwind }
attributes #28 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !251, !253, !255, !257, !258, !259, !260, !262, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !288, !289, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !339, !341, !343, !344, !346, !347, !349, !351, !353, !355, !357, !358, !360, !361, !363, !365, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !437, !439, !441, !443, !444, !445, !447, !449, !451, !452, !453, !455, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !552, !554, !555, !557, !559, !561, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !581, !582, !583}
!llvm.named.register.sp = !{!585}
!llvm.module.flags = !{!586, !587, !588, !589, !590, !591, !592, !593}
!llvm.ident = !{!594}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/tomoyo/common.c", i32 15, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/tomoyo/common.c", i32 16, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/tomoyo/common.c", i32 17, i32 31}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/tomoyo/common.c", i32 18, i32 31}
!8 = !{ptr @tomoyo_mode, !9, !"tomoyo_mode", i1 false, i1 false}
!9 = !{!"../security/tomoyo/common.c", i32 14, i32 20}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/tomoyo/common.c", i32 25, i32 33}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/tomoyo/common.c", i32 26, i32 33}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/tomoyo/common.c", i32 27, i32 33}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/tomoyo/common.c", i32 28, i32 33}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/tomoyo/common.c", i32 29, i32 33}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/tomoyo/common.c", i32 30, i32 33}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/tomoyo/common.c", i32 31, i32 33}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/tomoyo/common.c", i32 32, i32 33}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/tomoyo/common.c", i32 33, i32 33}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/tomoyo/common.c", i32 34, i32 33}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/tomoyo/common.c", i32 35, i32 33}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/tomoyo/common.c", i32 36, i32 33}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/tomoyo/common.c", i32 37, i32 33}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/tomoyo/common.c", i32 38, i32 33}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/tomoyo/common.c", i32 39, i32 33}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/tomoyo/common.c", i32 40, i32 33}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/tomoyo/common.c", i32 41, i32 33}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/tomoyo/common.c", i32 42, i32 33}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/tomoyo/common.c", i32 43, i32 33}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/tomoyo/common.c", i32 44, i32 33}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/tomoyo/common.c", i32 45, i32 33}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/tomoyo/common.c", i32 46, i32 33}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/tomoyo/common.c", i32 47, i32 33}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/tomoyo/common.c", i32 49, i32 48}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/tomoyo/common.c", i32 50, i32 48}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/tomoyo/common.c", i32 51, i32 48}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/tomoyo/common.c", i32 52, i32 48}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../security/tomoyo/common.c", i32 53, i32 48}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/tomoyo/common.c", i32 54, i32 48}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/tomoyo/common.c", i32 55, i32 48}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/tomoyo/common.c", i32 56, i32 48}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/tomoyo/common.c", i32 57, i32 48}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/tomoyo/common.c", i32 58, i32 48}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/tomoyo/common.c", i32 59, i32 48}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/tomoyo/common.c", i32 60, i32 48}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../security/tomoyo/common.c", i32 61, i32 48}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../security/tomoyo/common.c", i32 62, i32 48}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../security/tomoyo/common.c", i32 63, i32 48}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../security/tomoyo/common.c", i32 65, i32 25}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../security/tomoyo/common.c", i32 67, i32 54}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../security/tomoyo/common.c", i32 68, i32 57}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../security/tomoyo/common.c", i32 69, i32 54}
!94 = !{ptr @tomoyo_mac_keywords, !95, !"tomoyo_mac_keywords", i1 false, i1 false}
!95 = !{!"../security/tomoyo/common.c", i32 22, i32 20}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../security/tomoyo/common.c", i32 74, i32 34}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../security/tomoyo/common.c", i32 75, i32 34}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../security/tomoyo/common.c", i32 76, i32 34}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../security/tomoyo/common.c", i32 77, i32 34}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../security/tomoyo/common.c", i32 78, i32 34}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../security/tomoyo/common.c", i32 79, i32 34}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../security/tomoyo/common.c", i32 80, i32 34}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../security/tomoyo/common.c", i32 81, i32 34}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../security/tomoyo/common.c", i32 82, i32 34}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../security/tomoyo/common.c", i32 83, i32 34}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../security/tomoyo/common.c", i32 84, i32 34}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../security/tomoyo/common.c", i32 85, i32 34}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../security/tomoyo/common.c", i32 86, i32 34}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../security/tomoyo/common.c", i32 89, i32 34}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../security/tomoyo/common.c", i32 90, i32 34}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../security/tomoyo/common.c", i32 91, i32 34}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../security/tomoyo/common.c", i32 92, i32 34}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../security/tomoyo/common.c", i32 93, i32 34}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../security/tomoyo/common.c", i32 94, i32 34}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../security/tomoyo/common.c", i32 95, i32 34}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../security/tomoyo/common.c", i32 96, i32 34}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../security/tomoyo/common.c", i32 97, i32 34}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../security/tomoyo/common.c", i32 98, i32 34}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../security/tomoyo/common.c", i32 99, i32 34}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../security/tomoyo/common.c", i32 100, i32 34}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../security/tomoyo/common.c", i32 101, i32 34}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../security/tomoyo/common.c", i32 102, i32 34}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../security/tomoyo/common.c", i32 103, i32 34}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../security/tomoyo/common.c", i32 104, i32 34}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../security/tomoyo/common.c", i32 105, i32 34}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../security/tomoyo/common.c", i32 106, i32 34}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../security/tomoyo/common.c", i32 107, i32 34}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../security/tomoyo/common.c", i32 108, i32 34}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../security/tomoyo/common.c", i32 109, i32 34}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../security/tomoyo/common.c", i32 110, i32 34}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../security/tomoyo/common.c", i32 111, i32 34}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../security/tomoyo/common.c", i32 112, i32 34}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../security/tomoyo/common.c", i32 113, i32 34}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../security/tomoyo/common.c", i32 114, i32 34}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../security/tomoyo/common.c", i32 115, i32 34}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../security/tomoyo/common.c", i32 116, i32 34}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../security/tomoyo/common.c", i32 117, i32 34}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../security/tomoyo/common.c", i32 118, i32 34}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../security/tomoyo/common.c", i32 119, i32 34}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../security/tomoyo/common.c", i32 120, i32 34}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../security/tomoyo/common.c", i32 121, i32 34}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../security/tomoyo/common.c", i32 122, i32 34}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../security/tomoyo/common.c", i32 123, i32 34}
!192 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../security/tomoyo/common.c", i32 124, i32 34}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../security/tomoyo/common.c", i32 125, i32 34}
!196 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../security/tomoyo/common.c", i32 126, i32 34}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../security/tomoyo/common.c", i32 127, i32 34}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../security/tomoyo/common.c", i32 128, i32 34}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../security/tomoyo/common.c", i32 129, i32 34}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../security/tomoyo/common.c", i32 130, i32 34}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../security/tomoyo/common.c", i32 131, i32 34}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../security/tomoyo/common.c", i32 132, i32 34}
!210 = !{ptr @tomoyo_condition_keyword, !211, !"tomoyo_condition_keyword", i1 false, i1 false}
!211 = !{!"../security/tomoyo/common.c", i32 73, i32 20}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../security/tomoyo/common.c", i32 144, i32 29}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../security/tomoyo/common.c", i32 145, i32 29}
!216 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../security/tomoyo/common.c", i32 146, i32 29}
!218 = !{ptr @tomoyo_path_keyword, !219, !"tomoyo_path_keyword", i1 false, i1 false}
!219 = !{!"../security/tomoyo/common.c", i32 142, i32 20}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../security/tomoyo/common.c", i32 158, i32 29}
!222 = !{ptr @.str.107, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../security/tomoyo/common.c", i32 159, i32 29}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../security/tomoyo/common.c", i32 160, i32 29}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../security/tomoyo/common.c", i32 161, i32 29}
!228 = !{ptr @tomoyo_socket_keyword, !229, !"tomoyo_socket_keyword", i1 false, i1 false}
!229 = !{!"../security/tomoyo/common.c", i32 157, i32 20}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../security/tomoyo/common.c", i32 184, i32 17}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../security/tomoyo/common.c", i32 184, i32 25}
!234 = !{ptr @tomoyo_namespace_list, !235, !"tomoyo_namespace_list", i1 false, i1 false}
!235 = !{!"../security/tomoyo/common.c", i32 336, i32 1}
!236 = !{ptr @tomoyo_profile.tomoyo_null_profile, !237, !"tomoyo_null_profile", i1 false, i1 false}
!237 = !{!"../security/tomoyo/common.c", i32 537, i32 31}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../security/tomoyo/common.c", i32 1159, i32 35}
!240 = !{ptr @.str.113, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../security/tomoyo/common.c", i32 1160, i32 35}
!242 = !{ptr @tomoyo_dif, !243, !"tomoyo_dif", i1 false, i1 false}
!243 = !{!"../security/tomoyo/common.c", i32 1158, i32 20}
!244 = !{ptr @tomoyo_supervisor.tomoyo_serial, !245, !"tomoyo_serial", i1 false, i1 false}
!245 = !{!"../security/tomoyo/common.c", i32 2064, i32 22}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../security/tomoyo/common.c", i32 2125, i32 7}
!248 = !{ptr @tomoyo_open_control.__key, !249, !"__key", i1 false, i1 false}
!249 = !{!"../security/tomoyo/common.c", i32 2420, i32 2}
!250 = !{ptr @.str.115, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.116, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../security/tomoyo/common.c", i32 2699, i32 20}
!253 = !{ptr @.str.117, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../security/tomoyo/common.c", i32 2715, i32 21}
!255 = !{ptr @.str.118, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../security/tomoyo/common.c", i32 2777, i32 2}
!257 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @tomoyo_check_profile._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @tomoyo_check_profile._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = distinct !{null, !261, !"__warned", i1 false, i1 false}
!261 = !{!"../security/tomoyo/common.c", i32 2778, i32 2}
!262 = !{ptr @.str.120, !261, !"<string literal>", i1 false, i1 false}
!263 = distinct !{null, !264, !"__already_done", i1 false, i1 false}
!264 = !{!"../security/tomoyo/common.c", i32 2784, i32 4}
!265 = !{ptr @.str.122, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @tomoyo_check_profile._entry.121, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @tomoyo_check_profile._entry_ptr.123, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.125, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../security/tomoyo/common.c", i32 2789, i32 4}
!270 = !{ptr @tomoyo_check_profile._entry.124, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @tomoyo_check_profile._entry_ptr.126, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.128, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../security/tomoyo/common.c", i32 2792, i32 4}
!274 = !{ptr @tomoyo_check_profile._entry.127, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @tomoyo_check_profile._entry_ptr.129, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../security/tomoyo/common.c", i32 2796, i32 3}
!278 = !{ptr @tomoyo_check_profile._entry.130, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @tomoyo_check_profile._entry_ptr.132, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../security/tomoyo/common.c", i32 2797, i32 3}
!282 = !{ptr @tomoyo_check_profile._entry.133, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @tomoyo_check_profile._entry_ptr.135, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../security/tomoyo/common.c", i32 2798, i32 9}
!286 = !{ptr @.str.138, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../security/tomoyo/common.c", i32 2801, i32 2}
!288 = !{ptr @tomoyo_check_profile._entry.137, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @tomoyo_check_profile._entry_ptr.139, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @tomoyo_load_builtin_policy.tomoyo_builtin_profile, !291, !"tomoyo_builtin_profile", i1 false, i1 false}
!291 = !{!"../security/tomoyo/common.c", i32 2812, i32 14}
!292 = !{ptr @tomoyo_load_builtin_policy.tomoyo_builtin_exception_policy, !293, !"tomoyo_builtin_exception_policy", i1 false, i1 false}
!293 = !{!"../security/tomoyo/common.c", i32 2815, i32 14}
!294 = !{ptr @tomoyo_load_builtin_policy.tomoyo_builtin_domain_policy, !295, !"tomoyo_builtin_domain_policy", i1 false, i1 false}
!295 = !{!"../security/tomoyo/common.c", i32 2817, i32 14}
!296 = !{ptr @tomoyo_load_builtin_policy.tomoyo_builtin_manager, !297, !"tomoyo_builtin_manager", i1 false, i1 false}
!297 = !{!"../security/tomoyo/common.c", i32 2818, i32 14}
!298 = !{ptr @tomoyo_load_builtin_policy.tomoyo_builtin_stat, !299, !"tomoyo_builtin_stat", i1 false, i1 false}
!299 = !{!"../security/tomoyo/common.c", i32 2819, i32 14}
!300 = !{ptr @.str.140, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../security/tomoyo/common.c", i32 2834, i32 17}
!302 = !{ptr @tomoyo_namespace_enabled, !303, !"tomoyo_namespace_enabled", i1 false, i1 false}
!303 = !{!"../security/tomoyo/common.c", i32 338, i32 13}
!304 = !{ptr @tomoyo_stat_updated, !305, !"tomoyo_stat_updated", i1 false, i1 false}
!305 = !{!"../security/tomoyo/common.c", i32 2326, i32 17}
!306 = !{ptr @tomoyo_stat_modified, !307, !"tomoyo_stat_modified", i1 false, i1 false}
!307 = !{!"../security/tomoyo/common.c", i32 2328, i32 17}
!308 = !{ptr @tomoyo_query_observers, !309, !"tomoyo_query_observers", i1 false, i1 false}
!309 = !{!"../security/tomoyo/common.c", i32 1972, i32 17}
!310 = !{ptr @.str.141, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../security/tomoyo/common.c", i32 2017, i32 26}
!312 = !{ptr @.str.142, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../security/tomoyo/common.c", i32 2022, i32 29}
!314 = !{ptr @.str.143, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../security/tomoyo/common.c", i32 2027, i32 28}
!316 = !{ptr @.str.144, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../security/tomoyo/common.c", i32 2034, i32 28}
!318 = !{ptr @.str.145, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../security/tomoyo/common.c", i32 2036, i32 33}
!320 = !{ptr @.str.146, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../security/tomoyo/common.c", i32 2038, i32 33}
!322 = !{ptr @.str.147, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../security/tomoyo/common.c", i32 1140, i32 5}
!324 = !{ptr @.str.148, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../security/tomoyo/common.c", i32 1141, i32 5}
!326 = !{ptr @.str.149, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../security/tomoyo/common.c", i32 1142, i32 5}
!328 = !{ptr @.str.150, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../security/tomoyo/common.c", i32 1143, i32 5}
!330 = !{ptr @.str.151, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../security/tomoyo/common.c", i32 1144, i32 5}
!332 = !{ptr @tomoyo_write_domain2.tomoyo_callback, !333, !"tomoyo_callback", i1 false, i1 false}
!333 = !{!"../security/tomoyo/common.c", i32 1139, i32 4}
!334 = !{ptr @.str.152, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../security/tomoyo/common.c", i32 1065, i32 38}
!336 = !{ptr @.str.153, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../security/tomoyo/common.c", i32 1966, i32 8}
!338 = !{ptr @tomoyo_query_list_lock, !337, !"tomoyo_query_list_lock", i1 false, i1 false}
!339 = !{ptr @tomoyo_query_list, !340, !"tomoyo_query_list", i1 false, i1 false}
!340 = !{!"../security/tomoyo/common.c", i32 1963, i32 8}
!341 = !{ptr @.str.154, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../security/tomoyo/common.c", i32 1946, i32 8}
!343 = !{ptr @tomoyo_query_wait, !342, !"tomoyo_query_wait", i1 false, i1 false}
!344 = !{ptr @.str.155, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../security/tomoyo/common.c", i32 1948, i32 8}
!346 = !{ptr @tomoyo_answer_wait, !345, !"tomoyo_answer_wait", i1 false, i1 false}
!347 = !{ptr @.str.156, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../security/tomoyo/common.c", i32 1178, i32 58}
!349 = !{ptr @.str.157, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../security/tomoyo/common.c", i32 1197, i32 19}
!351 = !{ptr @.str.158, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../security/tomoyo/common.c", i32 1204, i32 19}
!353 = distinct !{null, !354, !"__warned", i1 false, i1 false}
!354 = !{!"../security/tomoyo/common.c", i32 1099, i32 2}
!355 = distinct !{null, !356, !"__warned", i1 false, i1 false}
!356 = !{!"../security/tomoyo/common.c", i32 1622, i32 2}
!357 = !{ptr @.str.159, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.160, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../security/tomoyo/common.c", i32 1635, i32 27}
!360 = distinct !{null, !356, !"__warned", i1 false, i1 false}
!361 = !{ptr @.str.162, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../security/tomoyo/common.c", i32 319, i32 26}
!363 = distinct !{null, !364, !"__warned", i1 false, i1 false}
!364 = !{!"../security/tomoyo/common.c", i32 1600, i32 2}
!365 = distinct !{null, !364, !"__warned", i1 false, i1 false}
!366 = !{ptr @.str.164, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../security/tomoyo/common.c", i32 1524, i32 28}
!368 = !{ptr @.str.165, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../security/tomoyo/common.c", i32 1560, i32 26}
!370 = !{ptr @.str.166, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../security/tomoyo/common.c", i32 1569, i32 26}
!372 = !{ptr @.str.167, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../security/tomoyo/common.c", i32 1378, i32 26}
!374 = !{ptr @.str.168, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../security/tomoyo/common.c", i32 332, i32 26}
!376 = !{ptr @.str.169, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../security/tomoyo/common.c", i32 446, i32 8}
!378 = !{ptr @.str.170, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../security/tomoyo/common.c", i32 450, i32 8}
!380 = !{ptr @.str.171, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../security/tomoyo/common.c", i32 453, i32 46}
!382 = !{ptr @.str.172, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../security/tomoyo/common.c", i32 459, i32 45}
!384 = !{ptr @.str.173, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../security/tomoyo/common.c", i32 307, i32 26}
!386 = !{ptr @.str.174, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../security/tomoyo/common.c", i32 1298, i32 9}
!388 = !{ptr @.str.175, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../security/tomoyo/common.c", i32 1299, i32 37}
!390 = !{ptr @.str.176, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../security/tomoyo/common.c", i32 1302, i32 30}
!392 = !{ptr @.str.177, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../security/tomoyo/common.c", i32 1307, i32 10}
!394 = !{ptr @.str.178, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../security/tomoyo/common.c", i32 1310, i32 29}
!396 = !{ptr @.str.179, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../security/tomoyo/common.c", i32 1317, i32 11}
!398 = !{ptr @.str.180, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../security/tomoyo/common.c", i32 1330, i32 37}
!400 = !{ptr @.str.181, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../security/tomoyo/common.c", i32 1330, i32 43}
!402 = !{ptr @.str.182, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../security/tomoyo/common.c", i32 1356, i32 27}
!404 = !{ptr @.str.183, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../security/tomoyo/common.c", i32 1766, i32 37}
!406 = !{ptr @.str.184, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../security/tomoyo/common.c", i32 1774, i32 37}
!408 = !{ptr @.str.185, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../security/tomoyo/common.c", i32 1732, i32 46}
!410 = !{ptr @.str.186, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../security/tomoyo/common.c", i32 1733, i32 46}
!412 = !{ptr @.str.187, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../security/tomoyo/common.c", i32 1734, i32 46}
!414 = !{ptr @.str.188, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../security/tomoyo/common.c", i32 1735, i32 46}
!416 = !{ptr @.str.189, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../security/tomoyo/common.c", i32 1736, i32 46}
!418 = !{ptr @.str.190, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../security/tomoyo/common.c", i32 1737, i32 46}
!420 = !{ptr @tomoyo_transition_type, !421, !"tomoyo_transition_type", i1 false, i1 false}
!421 = !{!"../security/tomoyo/common.c", i32 1731, i32 20}
!422 = !{ptr @.str.191, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../security/tomoyo/common.c", i32 1742, i32 27}
!424 = !{ptr @.str.192, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../security/tomoyo/common.c", i32 1743, i32 27}
!426 = !{ptr @.str.193, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../security/tomoyo/common.c", i32 1744, i32 27}
!428 = !{ptr @tomoyo_group_name, !429, !"tomoyo_group_name", i1 false, i1 false}
!429 = !{!"../security/tomoyo/common.c", i32 1741, i32 20}
!430 = distinct !{null, !431, !"__warned", i1 false, i1 false}
!431 = !{!"../security/tomoyo/common.c", i32 1862, i32 2}
!432 = !{ptr @.str.194, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../security/tomoyo/common.c", i32 1879, i32 30}
!434 = !{ptr @.str.195, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../security/tomoyo/common.c", i32 1880, i32 29}
!436 = distinct !{null, !431, !"__warned", i1 false, i1 false}
!437 = distinct !{null, !438, !"__warned", i1 false, i1 false}
!438 = !{!"../security/tomoyo/common.c", i32 1803, i32 2}
!439 = distinct !{null, !440, !"__warned", i1 false, i1 false}
!440 = !{!"../security/tomoyo/common.c", i32 1807, i32 3}
!441 = !{ptr @.str.198, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../security/tomoyo/common.c", i32 1836, i32 28}
!443 = distinct !{null, !440, !"__warned", i1 false, i1 false}
!444 = distinct !{null, !438, !"__warned", i1 false, i1 false}
!445 = !{ptr @.str.201, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../security/tomoyo/common.c", i32 1712, i32 30}
!447 = !{ptr @.str.202, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../security/tomoyo/common.c", i32 1726, i32 25}
!449 = distinct !{null, !450, !"__warned", i1 false, i1 false}
!450 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!451 = !{ptr @.str.203, !450, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @.str.204, !450, !"<string literal>", i1 false, i1 false}
!453 = distinct !{null, !454, !"__warned", i1 false, i1 false}
!454 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!455 = !{ptr @.str.205, !454, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @.str.206, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../security/tomoyo/common.c", i32 2305, i32 26}
!458 = !{ptr @.str.207, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../security/tomoyo/common.c", i32 2399, i32 31}
!460 = !{ptr @.str.208, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../security/tomoyo/common.c", i32 2402, i32 18}
!462 = !{ptr @.str.209, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../security/tomoyo/common.c", i32 2320, i32 27}
!464 = !{ptr @.str.210, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../security/tomoyo/common.c", i32 2321, i32 27}
!466 = !{ptr @.str.211, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../security/tomoyo/common.c", i32 2322, i32 27}
!468 = distinct !{null, !469, !"tomoyo_memory_headers", i1 false, i1 false}
!469 = !{!"../security/tomoyo/common.c", i32 2319, i32 27}
!470 = !{ptr @.str.212, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../security/tomoyo/common.c", i32 2358, i32 26}
!472 = !{ptr @.str.213, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../security/tomoyo/common.c", i32 2365, i32 27}
!474 = !{ptr @.str.214, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../security/tomoyo/common.c", i32 2375, i32 26}
!476 = !{ptr @.str.215, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../security/tomoyo/common.c", i32 2379, i32 27}
!478 = !{ptr @.str.216, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../security/tomoyo/common.c", i32 2382, i32 25}
!480 = !{ptr @.str.217, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../security/tomoyo/common.c", i32 2312, i32 36}
!482 = !{ptr @.str.218, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../security/tomoyo/common.c", i32 2313, i32 36}
!484 = !{ptr @.str.219, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../security/tomoyo/common.c", i32 2314, i32 36}
!486 = !{ptr @.str.220, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../security/tomoyo/common.c", i32 2315, i32 36}
!488 = !{ptr @tomoyo_policy_headers, !489, !"tomoyo_policy_headers", i1 false, i1 false}
!489 = !{!"../security/tomoyo/common.c", i32 2311, i32 27}
!490 = !{ptr @.str.221, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../security/tomoyo/common.c", i32 681, i32 19}
!492 = !{ptr @.str.222, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../security/tomoyo/common.c", i32 695, i32 20}
!494 = !{ptr @.str.223, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../security/tomoyo/common.c", i32 696, i32 10}
!496 = !{ptr @tomoyo_write_profile.lock, !495, !"lock", i1 false, i1 false}
!497 = !{ptr @.str.224, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../security/tomoyo/common.c", i32 710, i32 20}
!499 = !{ptr @.str.225, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../security/tomoyo/common.c", i32 582, i32 29}
!501 = !{ptr @.str.226, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../security/tomoyo/common.c", i32 137, i32 37}
!503 = !{ptr @.str.227, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../security/tomoyo/common.c", i32 138, i32 37}
!505 = distinct !{null, !506, !"tomoyo_pref_keywords", i1 false, i1 false}
!506 = !{!"../security/tomoyo/common.c", i32 136, i32 27}
!507 = !{ptr @.str.228, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../security/tomoyo/common.c", i32 600, i32 20}
!509 = !{ptr @.str.229, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../security/tomoyo/common.c", i32 603, i32 38}
!511 = !{ptr @.str.230, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../security/tomoyo/common.c", i32 629, i32 20}
!513 = !{ptr @.str.231, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../security/tomoyo/common.c", i32 642, i32 37}
!515 = !{ptr @.str.232, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../security/tomoyo/common.c", i32 650, i32 37}
!517 = !{ptr @tomoyo_category_keywords, !518, !"tomoyo_category_keywords", i1 false, i1 false}
!518 = !{!"../security/tomoyo/common.c", i32 165, i32 27}
!519 = !{ptr @.str.233, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../security/tomoyo/common.c", i32 559, i32 20}
!521 = !{ptr @.str.234, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../security/tomoyo/common.c", i32 561, i32 25}
!523 = !{ptr @.str.235, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../security/tomoyo/common.c", i32 759, i32 26}
!525 = !{ptr @.str.236, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../security/tomoyo/common.c", i32 781, i32 27}
!527 = !{ptr @.str.237, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../security/tomoyo/common.c", i32 785, i32 27}
!529 = !{ptr @.str.238, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../security/tomoyo/common.c", i32 787, i32 28}
!531 = !{ptr @.str.239, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../security/tomoyo/common.c", i32 790, i32 28}
!533 = !{ptr @.str.240, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../security/tomoyo/common.c", i32 797, i32 27}
!535 = !{ptr @.str.241, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../security/tomoyo/common.c", i32 813, i32 28}
!537 = !{ptr @.str.242, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../security/tomoyo/common.c", i32 819, i32 28}
!539 = !{ptr @.str.243, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../security/tomoyo/common.c", i32 731, i32 25}
!541 = !{ptr @.str.244, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../security/tomoyo/common.c", i32 2277, i32 19}
!543 = !{ptr @.str.245, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../security/tomoyo/common.c", i32 2242, i32 28}
!545 = !{ptr @.str.246, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../security/tomoyo/common.c", i32 897, i32 20}
!547 = !{ptr @tomoyo_manage_by_non_root, !548, !"tomoyo_manage_by_non_root", i1 false, i1 false}
!548 = !{!"../security/tomoyo/common.c", i32 173, i32 13}
!549 = distinct !{null, !550, !"__warned", i1 false, i1 false}
!550 = !{!"../security/tomoyo/common.c", i32 915, i32 2}
!551 = distinct !{null, !550, !"__warned", i1 false, i1 false}
!552 = distinct !{null, !553, !"__already_done", i1 false, i1 false}
!553 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!554 = !{ptr @.str.248, !553, !"<string literal>", i1 false, i1 false}
!555 = !{ptr @.str.249, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!557 = !{ptr @.str.250, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!559 = distinct !{null, !560, !"__already_done", i1 false, i1 false}
!560 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!561 = !{ptr @.str.251, !560, !"<string literal>", i1 false, i1 false}
!562 = !{ptr @.str.252, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../security/tomoyo/common.c", i32 1000, i32 19}
!564 = !{ptr @.str.253, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../security/tomoyo/common.c", i32 1001, i32 39}
!566 = !{ptr @.str.254, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../security/tomoyo/common.c", i32 1012, i32 28}
!568 = !{ptr @.str.255, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../security/tomoyo/common.c", i32 1015, i32 26}
!570 = !{ptr @.str.256, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../security/tomoyo/common.c", i32 1029, i32 25}
!572 = !{ptr @.str.257, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../security/tomoyo/common.c", i32 1031, i32 26}
!574 = distinct !{null, !575, !"__warned", i1 false, i1 false}
!575 = !{!"../security/tomoyo/common.c", i32 954, i32 2}
!576 = distinct !{null, !577, !"last_pid", i1 false, i1 false}
!577 = !{!"../security/tomoyo/common.c", i32 964, i32 16}
!578 = !{ptr @.str.258, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../security/tomoyo/common.c", i32 968, i32 4}
!580 = !{ptr @.str.259, !579, !"<string literal>", i1 false, i1 false}
!581 = !{ptr @tomoyo_manager._entry, !579, !"_entry", i1 false, i1 false}
!582 = !{ptr @tomoyo_manager._entry_ptr, !579, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.260, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../security/tomoyo/common.c", i32 2621, i32 37}
!585 = !{!"sp"}
!586 = !{i32 1, !"wchar_size", i32 2}
!587 = !{i32 1, !"min_enum_size", i32 4}
!588 = !{i32 8, !"branch-target-enforcement", i32 0}
!589 = !{i32 8, !"sign-return-address", i32 0}
!590 = !{i32 8, !"sign-return-address-all", i32 0}
!591 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!592 = !{i32 7, !"uwtable", i32 1}
!593 = !{i32 7, !"frame-pointer", i32 2}
!594 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!595 = !{i64 2149361729}
!596 = !{!"auto-init"}
!597 = !{i8 0, i8 2}
!598 = !{i64 2148519070, i64 2148519096, i64 2148519125, i64 2148519159, i64 2148519190, i64 2148519213}
!599 = !{i64 2149336337}
!600 = !{i64 2149336603}
!601 = !{i64 2157574352}
!602 = !{i64 2148521535, i64 2148521561, i64 2148521590, i64 2148521624, i64 2148521655, i64 2148521678}
!603 = !{!"branch_weights", i32 2000, i32 1}
!604 = !{i64 2150574451, i64 2150574476}
!605 = !{i64 3069325}
!606 = !{i64 3069522}
!607 = !{i64 2150554755}
!608 = !{i64 2157774174, i64 2157774454, i64 2157774788, i64 2157775122}
!609 = !{i64 2148607522}
!610 = !{i64 2148522255, i64 2148522287, i64 2148522316, i64 2148522350, i64 2148522381, i64 2148522404}
!611 = !{i64 2148607751}
