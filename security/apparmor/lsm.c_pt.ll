; ModuleID = '/llk/IR_all_yes/security/apparmor/lsm.c_pt.bc'
source_filename = "../security/apparmor/lsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.security_list_options = type { ptr }
%struct.ctl_path = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.27 }
%union.anon.27 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.path = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.apparmor_audit_data = type { i32, i32, ptr, ptr, ptr, ptr, i32, i32, %union.anon.194 }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { ptr, %union.anon.196 }
%union.anon.196 = type { %struct.anon.200 }
%struct.anon.200 = type { i32, i32, ptr, ptr, i32 }
%union.anon.208 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%union.anon.119 = type { ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.148, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.148 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.aa_ns = type { %struct.aa_policy, ptr, %struct.mutex, %struct.aa_ns_acct, ptr, %struct.list_head, %struct.atomic_t, i32, i32, i32, %struct.wait_queue_head, %struct.aa_labelset, %struct.list_head, [13 x ptr] }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.aa_ns_acct = type { i32, i32, i32, i32 }
%struct.aa_labelset = type { %struct.rwlock_t, %struct.rb_root }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.callback_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.157, %struct.list_head, %struct.list_head, %union.anon.158 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.157 = type { %struct.list_head }
%union.anon.158 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.path_cond = type { %struct.kuid_t, i16 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.166, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.167, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.168, ptr, %struct.address_space, %struct.list_head, %union.anon.169, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.166 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.167 = type { %struct.callback_head }
%union.anon.168 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.169 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.aa_file_ctx = type { %struct.spinlock, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.aa_task_ctx = type { ptr, ptr, ptr, i64 }
%struct.common_audit_data = type { i8, %union.anon.203, %union.anon.208 }
%union.anon.203 = type { %struct.path }
%struct.aa_sk_ctx = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.aa_proxy = type { %struct.kref, ptr }

@apparmor_blob_sizes = dso_local global { %struct.lsm_blob_sizes, [36 x i8] } { %struct.lsm_blob_sizes { i32 4, i32 52, i32 0, i32 0, i32 0, i32 0, i32 24 }, [36 x i8] zeroinitializer }, align 32
@aa_g_profile_mode = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_mode = internal constant [14 x i8] c"apparmor.mode\00", align 1
@__param_ops_mode = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_mode, ptr @param_get_mode, ptr null }, align 4
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @__param_ops_mode, i16 384, i8 -1, i8 0, %union.anon.164 { ptr @aa_g_profile_mode } }, section "__param", align 4
@aa_g_hash_policy = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_str_hash_policy = internal constant [21 x i8] c"apparmor.hash_policy\00", align 1
@param_ops_aabool = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 1, ptr @param_set_aabool, ptr @param_get_aabool, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_hash_policy = internal constant %struct.kernel_param { ptr @__param_str_hash_policy, ptr null, ptr @param_ops_aabool, i16 384, i8 -1, i8 0, %union.anon.164 { ptr @aa_g_hash_policy } }, section "__param", align 4
@__UNIQUE_ID_hash_policytype691 = internal constant [37 x i8] c"apparmor.parmtype=hash_policy:aabool\00", section ".modinfo", align 1
@aa_g_rawdata_compression_level = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_str_rawdata_compression_level = internal constant [35 x i8] c"apparmor.rawdata_compression_level\00", align 1
@param_ops_aacompressionlevel = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_aacompressionlevel, ptr @param_get_aacompressionlevel, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_rawdata_compression_level = internal constant %struct.kernel_param { ptr @__param_str_rawdata_compression_level, ptr null, ptr @param_ops_aacompressionlevel, i16 256, i8 -1, i8 0, %union.anon.164 { ptr @aa_g_rawdata_compression_level } }, section "__param", align 4
@__UNIQUE_ID_rawdata_compression_leveltype692 = internal constant [63 x i8] c"apparmor.parmtype=rawdata_compression_level:aacompressionlevel\00", section ".modinfo", align 1
@aa_g_debug = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [15 x i8] c"apparmor.debug\00", align 1
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_aabool, i16 384, i8 -1, i8 0, %union.anon.164 { ptr @aa_g_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype693 = internal constant [31 x i8] c"apparmor.parmtype=debug:aabool\00", section ".modinfo", align 1
@__param_str_audit = internal constant [15 x i8] c"apparmor.audit\00", align 1
@__param_ops_audit = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_audit, ptr @param_get_audit, ptr null }, align 4
@aa_g_audit = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_audit = internal constant %struct.kernel_param { ptr @__param_str_audit, ptr null, ptr @__param_ops_audit, i16 384, i8 -1, i8 0, %union.anon.164 { ptr @aa_g_audit } }, section "__param", align 4
@aa_g_audit_header = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_str_audit_header = internal constant [22 x i8] c"apparmor.audit_header\00", align 1
@__param_audit_header = internal constant %struct.kernel_param { ptr @__param_str_audit_header, ptr null, ptr @param_ops_aabool, i16 384, i8 -1, i8 0, %union.anon.164 { ptr @aa_g_audit_header } }, section "__param", align 4
@__UNIQUE_ID_audit_headertype694 = internal constant [38 x i8] c"apparmor.parmtype=audit_header:aabool\00", section ".modinfo", align 1
@__param_str_lock_policy = internal constant [21 x i8] c"apparmor.lock_policy\00", align 1
@param_ops_aalockpolicy = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 1, ptr @param_set_aalockpolicy, ptr @param_get_aalockpolicy, ptr null }, [16 x i8] zeroinitializer }, align 32
@aa_g_lock_policy = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_lock_policy = internal constant %struct.kernel_param { ptr @__param_str_lock_policy, ptr null, ptr @param_ops_aalockpolicy, i16 384, i8 -1, i8 0, %union.anon.164 { ptr @aa_g_lock_policy } }, section "__param", align 4
@__UNIQUE_ID_lock_policytype695 = internal constant [43 x i8] c"apparmor.parmtype=lock_policy:aalockpolicy\00", section ".modinfo", align 1
@__param_str_logsyscall = internal constant [20 x i8] c"apparmor.logsyscall\00", align 1
@aa_g_logsyscall = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_logsyscall = internal constant %struct.kernel_param { ptr @__param_str_logsyscall, ptr null, ptr @param_ops_aabool, i16 384, i8 -1, i8 0, %union.anon.164 { ptr @aa_g_logsyscall } }, section "__param", align 4
@__UNIQUE_ID_logsyscalltype696 = internal constant [36 x i8] c"apparmor.parmtype=logsyscall:aabool\00", section ".modinfo", align 1
@aa_g_path_max = dso_local global { i32, [28 x i8] } { i32 8192, [28 x i8] zeroinitializer }, align 32
@__param_str_path_max = internal constant [18 x i8] c"apparmor.path_max\00", align 1
@param_ops_aauint = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_aauint, ptr @param_get_aauint, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_path_max = internal constant %struct.kernel_param { ptr @__param_str_path_max, ptr null, ptr @param_ops_aauint, i16 256, i8 -1, i8 0, %union.anon.164 { ptr @aa_g_path_max } }, section "__param", align 4
@__UNIQUE_ID_path_maxtype697 = internal constant [34 x i8] c"apparmor.parmtype=path_max:aauint\00", section ".modinfo", align 1
@aa_g_paranoid_load = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_str_paranoid_load = internal constant [23 x i8] c"apparmor.paranoid_load\00", align 1
@__param_paranoid_load = internal constant %struct.kernel_param { ptr @__param_str_paranoid_load, ptr null, ptr @param_ops_aabool, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @aa_g_paranoid_load } }, section "__param", align 4
@__UNIQUE_ID_paranoid_loadtype698 = internal constant [39 x i8] c"apparmor.parmtype=paranoid_load:aabool\00", section ".modinfo", align 1
@__param_str_enabled = internal constant [17 x i8] c"apparmor.enabled\00", align 1
@param_ops_aaintbool = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_aaintbool, ptr @param_get_aaintbool, ptr null }, [16 x i8] zeroinitializer }, align 32
@apparmor_enabled = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_enabled = internal constant %struct.kernel_param { ptr @__param_str_enabled, ptr null, ptr @param_ops_aaintbool, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @apparmor_enabled } }, section "__param", align 4
@__UNIQUE_ID_enabledtype699 = internal constant [36 x i8] c"apparmor.parmtype=enabled:aaintbool\00", section ".modinfo", align 1
@__setup_str_apparmor_enabled_setup = internal constant [10 x i8] c"apparmor=\00", section ".init.rodata", align 1
@__setup_apparmor_enabled_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_apparmor_enabled_setup, ptr @apparmor_enabled_setup, i32 0 }, section ".init.setup", align 4
@aa_buffers_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@buffer_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reserve_count = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@aa_global_buffers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @aa_global_buffers, ptr @aa_global_buffers }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"security/apparmor/lsm.c\00", [40 x i8] zeroinitializer }, align 32
@aa_get_buffer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@aa_get_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014AppArmor: Failed to allocate a memory buffer.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aa_get_buffer\00", [18 x i8] zeroinitializer }, align 32
@aa_get_buffer._entry_ptr = internal global ptr @aa_get_buffer._entry, section ".printk_index", align 4
@__initcall__kmod_apparmor__706_1833_apparmor_nf_ip_init6 = internal global ptr @apparmor_nf_ip_init, section ".initcall6.init", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apparmor\00", [23 x i8] zeroinitializer }, align 32
@__lsm_apparmor = internal global %struct.lsm_info { ptr @.str.3, i32 0, i32 3, ptr @apparmor_enabled, ptr @apparmor_init, ptr @apparmor_blob_sizes }, section ".lsm_info.init", align 4
@apparmor_initialized = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@aa_profile_mode_names = external dso_local constant [0 x ptr], align 4
@param_set_aacompressionlevel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016AppArmor: policy rawdata compression level set to %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"param_set_aacompressionlevel\00", [35 x i8] zeroinitializer }, align 32
@param_set_aacompressionlevel._entry_ptr = internal global ptr @param_set_aacompressionlevel._entry, section ".printk_index", align 4
@audit_mode_names = external dso_local constant [0 x ptr], align 4
@param_set_aauint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016AppArmor: buffer size set to %d bytes\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"param_set_aauint\00", [47 x i8] zeroinitializer }, align 32
@param_set_aauint._entry_ptr = internal global ptr @param_set_aauint._entry, section ".printk_index", align 4
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aa_buffers_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@apparmor_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @apparmor_nf_register, ptr null, ptr @apparmor_nf_unregister, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Apparmor: register_pernet_subsys: error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@apparmor_nf_ops = internal constant { [2 x %struct.nf_hook_ops], [48 x i8] } { [2 x %struct.nf_hook_ops] [%struct.nf_hook_ops { ptr @apparmor_ip_postroute, ptr null, ptr null, i8 2, i8 0, i32 4, i32 -225 }, %struct.nf_hook_ops { ptr @apparmor_ip_postroute, ptr null, ptr null, i8 10, i8 0, i32 4, i32 -225 }], [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sendmsg\00", [24 x i8] zeroinitializer }, align 32
@apparmor_init._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.apparmor_init = private unnamed_addr constant [14 x i8] c"apparmor_init\00", align 1
@apparmor_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.apparmor_init, ptr @.str, i32 1844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013AppArmor: Unable to setup dfa engine\0A\00", [56 x i8] zeroinitializer }, align 32
@apparmor_init._entry_ptr = internal global ptr @apparmor_init._entry, section ".printk_index", align 4
@apparmor_init._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apparmor_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.apparmor_init, ptr @.str, i32 1850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013AppArmor: Unable to allocate default profile namespace\0A\00", [38 x i8] zeroinitializer }, align 32
@apparmor_init._entry_ptr.17 = internal global ptr @apparmor_init._entry.15, section ".printk_index", align 4
@apparmor_init._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apparmor_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.apparmor_init, ptr @.str, i32 1856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013AppArmor: Unable to register sysctls\0A\00", [56 x i8] zeroinitializer }, align 32
@apparmor_init._entry_ptr.21 = internal global ptr @apparmor_init._entry.19, section ".printk_index", align 4
@apparmor_init._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apparmor_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.apparmor_init, ptr @.str, i32 1863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013AppArmor: Unable to allocate work buffers\0A\00", [51 x i8] zeroinitializer }, align 32
@apparmor_init._entry_ptr.25 = internal global ptr @apparmor_init._entry.23, section ".printk_index", align 4
@apparmor_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.apparmor_init, ptr @.str, i32 1869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013AppArmor: Failed to set context on init task\0A\00", [48 x i8] zeroinitializer }, align 32
@apparmor_init._entry_ptr.29 = internal global ptr @apparmor_init._entry.27, section ".printk_index", align 4
@apparmor_hooks = internal global { [69 x %struct.security_hook_list], [348 x i8] } { [69 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 16), %union.security_list_options { ptr @apparmor_ptrace_access_check }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 20), %union.security_list_options { ptr @apparmor_ptrace_traceme }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 24), %union.security_list_options { ptr @apparmor_capget }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 32), %union.security_list_options { ptr @apparmor_capable }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 124), %union.security_list_options { ptr @apparmor_sb_mount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 128), %union.security_list_options { ptr @apparmor_sb_umount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 132), %union.security_list_options { ptr @apparmor_sb_pivotroot }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 180), %union.security_list_options { ptr @apparmor_path_link }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 156), %union.security_list_options { ptr @apparmor_path_unlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 176), %union.security_list_options { ptr @apparmor_path_symlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 160), %union.security_list_options { ptr @apparmor_path_mkdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 164), %union.security_list_options { ptr @apparmor_path_rmdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 168), %union.security_list_options { ptr @apparmor_path_mknod }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 184), %union.security_list_options { ptr @apparmor_path_rename }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 188), %union.security_list_options { ptr @apparmor_path_chmod }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 192), %union.security_list_options { ptr @apparmor_path_chown }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 172), %union.security_list_options { ptr @apparmor_path_truncate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 268), %union.security_list_options { ptr @apparmor_inode_getattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 376), %union.security_list_options { ptr @apparmor_file_open }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 372), %union.security_list_options { ptr @apparmor_file_receive }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 328), %union.security_list_options { ptr @apparmor_file_permission }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 332), %union.security_list_options { ptr @apparmor_file_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 336), %union.security_list_options { ptr @apparmor_file_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 348), %union.security_list_options { ptr @apparmor_mmap_file }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 352), %union.security_list_options { ptr @apparmor_file_mprotect }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 356), %union.security_list_options { ptr @apparmor_file_lock }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 596), %union.security_list_options { ptr @apparmor_getprocattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 600), %union.security_list_options { ptr @apparmor_setprocattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 720), %union.security_list_options { ptr @apparmor_sk_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 724), %union.security_list_options { ptr @apparmor_sk_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 728), %union.security_list_options { ptr @apparmor_sk_clone_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 652), %union.security_list_options { ptr @apparmor_socket_create }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 656), %union.security_list_options { ptr @apparmor_socket_post_create }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 664), %union.security_list_options { ptr @apparmor_socket_bind }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 668), %union.security_list_options { ptr @apparmor_socket_connect }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 672), %union.security_list_options { ptr @apparmor_socket_listen }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 676), %union.security_list_options { ptr @apparmor_socket_accept }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 680), %union.security_list_options { ptr @apparmor_socket_sendmsg }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 684), %union.security_list_options { ptr @apparmor_socket_recvmsg }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 688), %union.security_list_options { ptr @apparmor_socket_getsockname }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 692), %union.security_list_options { ptr @apparmor_socket_getpeername }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 696), %union.security_list_options { ptr @apparmor_socket_getsockopt }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 700), %union.security_list_options { ptr @apparmor_socket_setsockopt }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 704), %union.security_list_options { ptr @apparmor_socket_shutdown }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 708), %union.security_list_options { ptr @apparmor_socket_sock_rcv_skb }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 712), %union.security_list_options { ptr @apparmor_socket_getpeersec_stream }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 716), %union.security_list_options { ptr @apparmor_socket_getpeersec_dgram }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 736), %union.security_list_options { ptr @apparmor_sock_graft }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 740), %union.security_list_options { ptr @apparmor_inet_conn_request }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 388), %union.security_list_options { ptr @apparmor_cred_alloc_blank }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 392), %union.security_list_options { ptr @apparmor_cred_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 396), %union.security_list_options { ptr @apparmor_cred_prepare }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 400), %union.security_list_options { ptr @apparmor_cred_transfer }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 56), %union.security_list_options { ptr @apparmor_bprm_creds_for_exec }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 68), %union.security_list_options { ptr @apparmor_bprm_committing_creds }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 72), %union.security_list_options { ptr @apparmor_bprm_committed_creds }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 384), %union.security_list_options { ptr @apparmor_task_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 380), %union.security_list_options { ptr @apparmor_task_alloc }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 456), %union.security_list_options { ptr @apparmor_current_getsecid_subj }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 460), %union.security_list_options { ptr @apparmor_task_getsecid_obj }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 480), %union.security_list_options { ptr @apparmor_task_setrlimit }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 496), %union.security_list_options { ptr @apparmor_task_kill }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 880), %union.security_list_options { ptr @aa_audit_rule_init }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 884), %union.security_list_options { ptr @aa_audit_rule_known }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 888), %union.security_list_options { ptr @aa_audit_rule_match }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 892), %union.security_list_options { ptr @aa_audit_rule_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 608), %union.security_list_options { ptr @apparmor_secid_to_secctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 612), %union.security_list_options { ptr @apparmor_secctx_to_secid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 616), %union.security_list_options { ptr @apparmor_release_secctx }, ptr null }], [348 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AppArmor initialized: complain mode enabled\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"AppArmor initialized: kill mode enabled\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AppArmor initialized\00", [43 x i8] zeroinitializer }, align 32
@apparmor_sysctl_path = internal global { [2 x %struct.ctl_path], [24 x i8] } { [2 x %struct.ctl_path] [%struct.ctl_path { ptr @.str.33 }, %struct.ctl_path zeroinitializer], [24 x i8] zeroinitializer }, align 32
@apparmor_sysctl_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.34, ptr @unprivileged_userns_apparmor_policy, i32 4, i16 384, ptr null, ptr @apparmor_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unprivileged_userns_apparmor_policy\00", [60 x i8] zeroinitializer }, align 32
@unprivileged_userns_apparmor_policy = external dso_local global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@root_ns = external dso_local local_unnamed_addr global ptr, align 4
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/cred.h\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!blob)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.set_cred_label = private unnamed_addr constant [15 x i8] c"set_cred_label\00", align 1
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_cred_raw_label = private unnamed_addr constant [18 x i8] c"aa_cred_raw_label\00", align 1
@__func__.cred_label = private unnamed_addr constant [11 x i8] c"cred_label\00", align 1
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@apparmor_capget.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unlink\00", [25 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"symlink\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mkdir\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rmdir\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mknod\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rename_src\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rename_dest\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chmod\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chown\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"truncate\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"getattr\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"file_receive\00", [19 x i8] zeroinitializer }, align 32
@aa_null = external dso_local local_unnamed_addr global %struct.path, align 4
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"file_perm\00", [22 x i8] zeroinitializer }, align 32
@apparmor_file_alloc_security.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"file_mmap\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"file_mprotect\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"file_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"current\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prev\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exec\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"setprocattr\00", [20 x i8] zeroinitializer }, align 32
@__const.apparmor_setprocattr.sa_aad = private unnamed_addr constant %struct.apparmor_audit_data { i32 0, i32 0, ptr @.str.68, ptr null, ptr null, ptr null, i32 0, i32 0, %union.anon.194 zeroinitializer }, align 4
@__const.apparmor_setprocattr.sa = private unnamed_addr constant { i8, [3 x i8], { ptr, [4 x i8] }, %union.anon.208 } { i8 7, [3 x i8] zeroinitializer, { ptr, [4 x i8] } { ptr null, [4 x i8] c"\FF\FF\FF\FF" }, %union.anon.208 zeroinitializer }, align 4
@.str.69 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"changehat\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"permhat\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"changeprofile\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"permprofile\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stack\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [200 x i8], [56 x i8] } { [200 x i8] c"AppArmor WARN %s: (((((preempt_count() & (((1UL << (4))-1) << (((0 + 8) + 8) + 4))) | (preempt_count() & (((1UL << (4))-1) << ((0 + 8) + 8))) | (preempt_count() & (((1UL << (8))-1) << (0 + 8))))))): \00", [56 x i8] zeroinitializer }, align 32
@__func__.apparmor_socket_create = private unnamed_addr constant [23 x i8] c"apparmor_socket_create\00", align 1
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!sock)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.apparmor_socket_bind = private unnamed_addr constant [21 x i8] c"apparmor_socket_bind\00", align 1
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!sock->sk)): \00", [62 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((!address)): \00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bind\00", [27 x i8] zeroinitializer }, align 32
@__func__.apparmor_socket_connect = private unnamed_addr constant [24 x i8] c"apparmor_socket_connect\00", align 1
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"connect\00", [24 x i8] zeroinitializer }, align 32
@__func__.apparmor_socket_listen = private unnamed_addr constant [23 x i8] c"apparmor_socket_listen\00", align 1
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"listen\00", [25 x i8] zeroinitializer }, align 32
@__func__.apparmor_socket_accept = private unnamed_addr constant [23 x i8] c"apparmor_socket_accept\00", align 1
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((!newsock)): \00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"accept\00", [25 x i8] zeroinitializer }, align 32
@__func__.aa_sock_msg_perm = private unnamed_addr constant [17 x i8] c"aa_sock_msg_perm\00", align 1
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!msg)): \00", [35 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"recvmsg\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"getsockname\00", [20 x i8] zeroinitializer }, align 32
@__func__.aa_sock_perm = private unnamed_addr constant [13 x i8] c"aa_sock_perm\00", align 1
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"getpeername\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"getsockopt\00", [21 x i8] zeroinitializer }, align 32
@__func__.aa_sock_opt_perm = private unnamed_addr constant [17 x i8] c"aa_sock_opt_perm\00", align 1
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setsockopt\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"socket_shutdown\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/task.h\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!ctx)): \00", [35 x i8] zeroinitializer }, align 32
@__func__.aa_clear_task_ctx_trans = private unnamed_addr constant [24 x i8] c"aa_clear_task_ctx_trans\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"apparmor_blob_sizes\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1182, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"aa_g_profile_mode\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1330, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"aa_g_hash_policy\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1335, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"param_ops_aabool\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1286, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant [31 x i8] c"aa_g_rawdata_compression_level\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1341, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant [29 x i8] c"param_ops_aacompressionlevel\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1305, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"aa_g_debug\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1346, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant [11 x i8] c"aa_g_audit\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1350, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"aa_g_audit_header\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1357, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant [23 x i8] c"param_ops_aalockpolicy\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1313, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"aa_g_lock_policy\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1365, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"aa_g_logsyscall\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1370, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"aa_g_path_max\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1374, i32 14 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"param_ops_aauint\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1295, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant [19 x i8] c"aa_g_paranoid_load\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1382, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"param_ops_aaintbool\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1388, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"apparmor_enabled\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1393, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"aa_buffers_lock\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [13 x i8] c"buffer_count\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 54, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"reserve_count\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 53, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"aa_global_buffers\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 56, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1627, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1634, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1898, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"apparmor_initialized\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 45, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1525, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1456, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 57, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"apparmor_net_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1815, i32 33 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1829, i32 9 }
@___asan_gen_.205 = private unnamed_addr constant [16 x i8] c"apparmor_nf_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1783, i32 33 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1775, i32 42 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1844, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1850, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1856, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1863, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1869, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [15 x i8] c"apparmor_hooks\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1188, i32 34 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1879, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1881, i32 19 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1883, i32 19 }
@___asan_gen_.268 = private unnamed_addr constant [21 x i8] c"apparmor_sysctl_path\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1731, i32 24 }
@___asan_gen_.271 = private unnamed_addr constant [22 x i8] c"apparmor_sysctl_table\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1736, i32 25 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1732, i32 16 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1738, i32 21 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 35, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/cred.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 51, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 424, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 425, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 431, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 401, i32 7 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 695, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 723, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 306, i32 24 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 335, i32 28 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 312, i32 28 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 318, i32 24 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 324, i32 28 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 377, i32 24 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 382, i32 25 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 394, i32 26 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 399, i32 26 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 329, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 404, i32 26 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 435, i32 24 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 483, i32 26 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 489, i32 26 }
@___asan_gen_.355 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 450, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 527, i32 21 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 533, i32 21 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 499, i32 26 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 606, i32 19 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 608, i32 24 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 610, i32 24 }
@___asan_gen_.380 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 286, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 630, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 647, i32 26 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 656, i32 23 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 659, i32 30 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 662, i32 30 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 664, i32 30 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 666, i32 30 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 840, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 844, i32 11 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 893, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 894, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 895, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 898, i32 9 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 914, i32 9 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 928, i32 9 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 943, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 946, i32 9 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 956, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 979, i32 26 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 999, i32 22 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1007, i32 22 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1029, i32 26 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1039, i32 26 }
@___asan_gen_.452 = private constant [27 x i8] c"../security/apparmor/lsm.c\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1048, i32 22 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 230, i32 6 }
@___asan_gen_.458 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 214, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 174, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/task.h\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 71, i32 2 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @__UNIQUE_ID_audit_headertype694, ptr @__UNIQUE_ID_debugtype693, ptr @__UNIQUE_ID_enabledtype699, ptr @__UNIQUE_ID_hash_policytype691, ptr @__UNIQUE_ID_lock_policytype695, ptr @__UNIQUE_ID_logsyscalltype696, ptr @__UNIQUE_ID_paranoid_loadtype698, ptr @__UNIQUE_ID_path_maxtype697, ptr @__UNIQUE_ID_rawdata_compression_leveltype692, ptr @__initcall__kmod_apparmor__706_1833_apparmor_nf_ip_init6, ptr @__lsm_apparmor, ptr @__param_audit, ptr @__param_audit_header, ptr @__param_debug, ptr @__param_enabled, ptr @__param_hash_policy, ptr @__param_lock_policy, ptr @__param_logsyscall, ptr @__param_mode, ptr @__param_paranoid_load, ptr @__param_path_max, ptr @__param_rawdata_compression_level, ptr @__setup_apparmor_enabled_setup, ptr @aa_get_buffer._entry, ptr @aa_get_buffer._entry_ptr, ptr @apparmor_init._entry, ptr @apparmor_init._entry.15, ptr @apparmor_init._entry.19, ptr @apparmor_init._entry.23, ptr @apparmor_init._entry.27, ptr @apparmor_init._entry_ptr, ptr @apparmor_init._entry_ptr.17, ptr @apparmor_init._entry_ptr.21, ptr @apparmor_init._entry_ptr.25, ptr @apparmor_init._entry_ptr.29, ptr @param_set_aacompressionlevel._entry, ptr @param_set_aacompressionlevel._entry_ptr, ptr @param_set_aauint._entry, ptr @param_set_aauint._entry_ptr, ptr @apparmor_blob_sizes, ptr @aa_g_profile_mode, ptr @aa_g_hash_policy, ptr @param_ops_aabool, ptr @aa_g_rawdata_compression_level, ptr @param_ops_aacompressionlevel, ptr @aa_g_debug, ptr @aa_g_audit, ptr @aa_g_audit_header, ptr @param_ops_aalockpolicy, ptr @aa_g_lock_policy, ptr @aa_g_logsyscall, ptr @aa_g_path_max, ptr @param_ops_aauint, ptr @aa_g_paranoid_load, ptr @param_ops_aaintbool, ptr @apparmor_enabled, ptr @aa_buffers_lock, ptr @buffer_count, ptr @reserve_count, ptr @aa_global_buffers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @apparmor_initialized, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @apparmor_net_ops, ptr @.str.10, ptr @apparmor_nf_ops, ptr @.str.11, ptr @apparmor_init._rs, ptr @.str.12, ptr @.str.13, ptr @apparmor_init._rs.14, ptr @.str.16, ptr @apparmor_init._rs.18, ptr @.str.20, ptr @apparmor_init._rs.22, ptr @.str.24, ptr @.str.28, ptr @apparmor_hooks, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @apparmor_sysctl_path, ptr @apparmor_sysctl_table, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @apparmor_file_alloc_security.__key, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_blob_sizes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_g_profile_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_g_hash_policy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_aabool to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_g_rawdata_compression_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_aacompressionlevel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_g_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_g_audit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_g_audit_header to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_aalockpolicy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_g_lock_policy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_g_logsyscall to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_g_path_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_aauint to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_g_paranoid_load to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_aaintbool to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_buffers_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserve_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_global_buffers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_get_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_initialized to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_set_aacompressionlevel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_set_aauint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_nf_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_init._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_init._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_init._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_init._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_hooks to i32), i32 1380, i32 1728, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_sysctl_path to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_sysctl_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_file_alloc_security.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_enabled_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %enabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #15
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enabled, align 4, !annotation !330
  %call.i = call i32 @_kstrtoul(ptr noundef %str, i32 noundef 0, ptr noundef nonnull %enabled) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp ne i32 %2, 0
  %cond = zext i1 %tobool1.not to i32
  store i32 %cond, ptr @apparmor_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #15
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_get_buffer(i1 noundef zeroext %in_atomic) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @aa_buffers_lock) #15
  %0 = load i32, ptr @buffer_count, align 4
  %1 = load i32, ptr @reserve_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  br i1 %in_atomic, label %land.lhs.true, label %do.body

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load volatile ptr, ptr @aa_global_buffers, align 4
  %cmp.i47.not = icmp eq ptr %2, @aa_global_buffers
  br i1 %cmp.i47.not, label %if.end4.thread, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.1.if.then_crit_edge, %if.then13.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %3 = load ptr, ptr @aa_global_buffers, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #15
  br i1 %call.i.i, label %if.end.i.i48, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i48:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i48, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = load i32, ptr @buffer_count, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr @buffer_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aa_buffers_lock) #15
  br label %cleanup

if.end4.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add i32 %1, 1
  store i32 %inc, ptr @reserve_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aa_buffers_lock) #15
  br label %if.end8.i

do.body:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aa_buffers_lock) #15
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1627) #15
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.body, %if.end4.thread
  %flags.150 = phi i32 [ 2592, %if.end4.thread ], [ 27840, %do.body ]
  %13 = load i32, ptr @aa_g_path_max, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef %flags.150) #18
  %tobool12.not = icmp eq ptr %call9.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13:                                        ; preds = %if.end8.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @aa_buffers_lock) #15
  %14 = load i32, ptr @buffer_count, align 4
  %15 = load i32, ptr @reserve_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp.1 = icmp sgt i32 %14, %15
  br i1 %cmp.1, label %if.then13.if.then_crit_edge, label %lor.lhs.false.1

if.then13.if.then_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.1:                                  ; preds = %if.then13
  br i1 %in_atomic, label %land.lhs.true.1, label %do.body.1

do.body.1:                                        ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aa_buffers_lock) #15
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1627) #15
  br label %if.end8.i.1

land.lhs.true.1:                                  ; preds = %lor.lhs.false.1
  %16 = load volatile ptr, ptr @aa_global_buffers, align 4
  %cmp.i47.not.1 = icmp eq ptr %16, @aa_global_buffers
  br i1 %cmp.i47.not.1, label %if.end4.thread.1, label %land.lhs.true.1.if.then_crit_edge

land.lhs.true.1.if.then_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end4.thread.1:                                 ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  %inc.1 = add i32 %15, 1
  store i32 %inc.1, ptr @reserve_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aa_buffers_lock) #15
  br label %if.end8.i.1

if.end8.i.1:                                      ; preds = %if.end4.thread.1, %do.body.1
  %flags.150.1 = phi i32 [ 2592, %if.end4.thread.1 ], [ %flags.150, %do.body.1 ]
  %17 = load i32, ptr @aa_g_path_max, align 4
  %call9.i.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef %flags.150.1) #18
  %tobool12.not.1 = icmp eq ptr %call9.i.1, null
  br i1 %tobool12.not.1, label %if.then13.1, label %if.end8.i.1.cleanup_crit_edge

if.end8.i.1.cleanup_crit_edge:                    ; preds = %if.end8.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13.1:                                      ; preds = %if.end8.i.1
  %.b46 = load i1, ptr @aa_get_buffer.__already_done, align 1
  br i1 %.b46, label %if.then13.1.cleanup_crit_edge, label %if.then22, !prof !331

if.then13.1.cleanup_crit_edge:                    ; preds = %if.then13.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %if.then13.1
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @aa_get_buffer.__already_done, align 1
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.then13.1.cleanup_crit_edge, %if.end8.i.1.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %list_del.exit
  %retval.0 = phi ptr [ %3, %list_del.exit ], [ null, %if.then22 ], [ null, %if.then13.1.cleanup_crit_edge ], [ %call9.i, %if.end8.i.cleanup_crit_edge ], [ %call9.i.1, %if.end8.i.1.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_put_buffer(ptr noundef %buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @aa_buffers_lock) #15
  %0 = load ptr, ptr @aa_global_buffers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %buf, ptr noundef nonnull @aa_global_buffers, ptr noundef %0) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %prev1.i.i, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %buf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @aa_global_buffers, ptr %prev3.i.i, align 4
  store volatile ptr %buf, ptr @aa_global_buffers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %4 = load i32, ptr @buffer_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @buffer_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aa_buffers_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_nf_ip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @apparmor_net_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, i32 noundef %call) #20
  unreachable

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aa_secids_init() #15
  %call = tail call i32 @aa_setup_dfa_engine() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @apparmor_init._rs, ptr noundef nonnull @__func__.apparmor_init) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.alloc_out_crit_edge, label %if.then.alloc_out.sink.split_crit_edge

if.then.alloc_out.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_out.sink.split

if.then.alloc_out_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_out

if.end5:                                          ; preds = %entry
  %call6 = tail call i32 @aa_alloc_root_ns() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end18, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @apparmor_init._rs.14, ptr noundef nonnull @__func__.apparmor_init) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.alloc_out_crit_edge, label %if.then8.alloc_out.sink.split_crit_edge

if.then8.alloc_out.sink.split_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_out.sink.split

if.then8.alloc_out_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_out

if.end18:                                         ; preds = %if.end5
  %call.i = tail call ptr @register_sysctl_paths(ptr noundef nonnull @apparmor_sysctl_path, ptr noundef nonnull @apparmor_sysctl_table) #15
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %if.then21, label %if.end31

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i32 @___ratelimit(ptr noundef nonnull @apparmor_init._rs.18, ptr noundef nonnull @__func__.apparmor_init) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.alloc_out_crit_edge, label %if.then21.alloc_out.sink.split_crit_edge

if.then21.alloc_out.sink.split_crit_edge:         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_out.sink.split

if.then21.alloc_out_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_out

if.end31:                                         ; preds = %if.end18
  %call32 = tail call fastcc i32 @alloc_buffers() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end44, label %if.then34

if.then34:                                        ; preds = %if.end31
  %call35 = tail call i32 @___ratelimit(ptr noundef nonnull @apparmor_init._rs.22, ptr noundef nonnull @__func__.apparmor_init) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.alloc_out_crit_edge, label %if.then34.alloc_out.sink.split_crit_edge

if.then34.alloc_out.sink.split_crit_edge:         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_out.sink.split

if.then34.alloc_out_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_out

if.end44:                                         ; preds = %if.end31
  tail call fastcc void @set_init_ctx() #21
  tail call void @security_add_hooks(ptr noundef nonnull @apparmor_hooks, i32 noundef 69, ptr noundef nonnull @.str.3) #15
  store i32 1, ptr @apparmor_initialized, align 4
  %0 = load i32, ptr @aa_g_profile_mode, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %if.else61 [
    i32 1, label %if.then58
    i32 2, label %if.then60
  ]

if.then58:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aa_info_message(ptr noundef nonnull @.str.30) #15
  br label %cleanup

if.then60:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aa_info_message(ptr noundef nonnull @.str.31) #15
  br label %cleanup

if.else61:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aa_info_message(ptr noundef nonnull @.str.32) #15
  br label %cleanup

alloc_out.sink.split:                             ; preds = %if.then34.alloc_out.sink.split_crit_edge, %if.then21.alloc_out.sink.split_crit_edge, %if.then8.alloc_out.sink.split_crit_edge, %if.then.alloc_out.sink.split_crit_edge
  %.str.24.sink = phi ptr [ @.str.13, %if.then.alloc_out.sink.split_crit_edge ], [ @.str.16, %if.then8.alloc_out.sink.split_crit_edge ], [ @.str.20, %if.then21.alloc_out.sink.split_crit_edge ], [ @.str.24, %if.then34.alloc_out.sink.split_crit_edge ]
  %error.0.ph = phi i32 [ %call, %if.then.alloc_out.sink.split_crit_edge ], [ %call6, %if.then8.alloc_out.sink.split_crit_edge ], [ -12, %if.then21.alloc_out.sink.split_crit_edge ], [ %call32, %if.then34.alloc_out.sink.split_crit_edge ]
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24.sink) #19
  br label %alloc_out

alloc_out:                                        ; preds = %alloc_out.sink.split, %if.then34.alloc_out_crit_edge, %if.then21.alloc_out_crit_edge, %if.then8.alloc_out_crit_edge, %if.then.alloc_out_crit_edge
  %error.0 = phi i32 [ %call, %if.then.alloc_out_crit_edge ], [ %call6, %if.then8.alloc_out_crit_edge ], [ -12, %if.then21.alloc_out_crit_edge ], [ %call32, %if.then34.alloc_out_crit_edge ], [ %error.0.ph, %alloc_out.sink.split ]
  tail call void @aa_destroy_aafs() #19
  tail call void @aa_teardown_dfa_engine() #15
  store i32 0, ptr @apparmor_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %alloc_out, %if.else61, %if.then60, %if.then58
  %retval.0 = phi i32 [ %error.0, %alloc_out ], [ 0, %if.then60 ], [ 0, %if.else61 ], [ 0, %if.then58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_mode(ptr noundef %val, ptr nocapture noundef readnone %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %tobool1.not = icmp eq ptr %val, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %land.lhs.true

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end3
  %call = tail call zeroext i1 @aa_current_policy_admin_capable(ptr noundef null) #15
  br i1 %call, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %call7 = tail call i32 @match_string(ptr noundef nonnull @aa_profile_mode_names, i32 noundef 4, ptr noundef nonnull %val) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  store i32 %call7, ptr @aa_g_profile_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_mode(ptr noundef %buffer, ptr nocapture noundef readnone %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 @aa_current_policy_view_capable(ptr noundef null) #15
  br i1 %call, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %2 = load i32, ptr @aa_g_profile_mode, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @aa_profile_mode_names, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %stpcpy = tail call ptr @stpcpy(ptr %buffer, ptr %4) #22
  %5 = ptrtoint ptr %stpcpy to i32
  %6 = ptrtoint ptr %buffer to i32
  %7 = sub i32 %5, %6
  br label %return

return:                                           ; preds = %if.end3, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %7, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_current_policy_admin_capable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_current_policy_view_capable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_aabool(ptr noundef %val, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 @aa_current_policy_admin_capable(ptr noundef null) #15
  br i1 %call, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @param_set_bool(ptr noundef %val, ptr noundef %kp) #15
  br label %return

return:                                           ; preds = %if.end3, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_aabool(ptr noundef %buffer, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 @aa_current_policy_view_capable(ptr noundef null) #15
  br i1 %call, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @param_get_bool(ptr noundef %buffer, ptr noundef %kp) #15
  br label %return

return:                                           ; preds = %if.end3, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_bool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_bool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_aacompressionlevel(ptr noundef %val, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @param_set_int(ptr noundef %val, ptr noundef %kp) #15
  %2 = load i32, ptr @aa_g_rawdata_compression_level, align 4
  %3 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 9)
  store i32 %4, ptr @aa_g_rawdata_compression_level, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %4) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_aacompressionlevel(ptr noundef %buffer, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 @aa_current_policy_view_capable(ptr noundef null) #15
  br i1 %call, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @param_get_int(ptr noundef %buffer, ptr noundef %kp) #15
  br label %return

return:                                           ; preds = %if.end3, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_audit(ptr noundef %val, ptr nocapture noundef readnone %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %tobool1.not = icmp eq ptr %val, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %land.lhs.true

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end3
  %call = tail call zeroext i1 @aa_current_policy_admin_capable(ptr noundef null) #15
  br i1 %call, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %call7 = tail call i32 @match_string(ptr noundef nonnull @audit_mode_names, i32 noundef 5, ptr noundef nonnull %val) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  store i32 %call7, ptr @aa_g_audit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_audit(ptr noundef %buffer, ptr nocapture noundef readnone %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 @aa_current_policy_view_capable(ptr noundef null) #15
  br i1 %call, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %2 = load i32, ptr @aa_g_audit, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @audit_mode_names, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %stpcpy = tail call ptr @stpcpy(ptr %buffer, ptr %4) #22
  %5 = ptrtoint ptr %stpcpy to i32
  %6 = ptrtoint ptr %buffer to i32
  %7 = sub i32 %5, %6
  br label %return

return:                                           ; preds = %if.end3, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %7, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_aalockpolicy(ptr noundef %val, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 @aa_current_policy_admin_capable(ptr noundef null) #15
  br i1 %call, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @param_set_bool(ptr noundef %val, ptr noundef %kp) #15
  br label %return

return:                                           ; preds = %if.end3, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_aalockpolicy(ptr noundef %buffer, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 @aa_current_policy_view_capable(ptr noundef null) #15
  br i1 %call, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @param_get_bool(ptr noundef %buffer, ptr noundef %kp) #15
  br label %return

return:                                           ; preds = %if.end3, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_aauint(ptr noundef %val, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @param_set_uint(ptr noundef %val, ptr noundef %kp) #15
  %2 = load i32, ptr @aa_g_path_max, align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 8)
  store i32 %3, ptr @aa_g_path_max, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %3) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_aauint(ptr noundef %buffer, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 @aa_current_policy_view_capable(ptr noundef null) #15
  br i1 %call, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @param_get_uint(ptr noundef %buffer, ptr noundef %kp) #15
  br label %return

return:                                           ; preds = %if.end3, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_aaintbool(ptr noundef %val, ptr nocapture noundef readonly %kp) #1 align 64 {
entry:
  %kp_local = alloca %struct.kernel_param, align 4
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %kp_local) #15
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp_local, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #15
  %1 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1 = icmp ne i32 %6, 0
  %frombool = zext i1 %tobool1 to i8
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %value, align 1
  %8 = call ptr @memcpy(ptr %kp_local, ptr %kp, i32 16)
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %value, ptr %0, align 4
  %call = call i32 @param_set_bool(ptr noundef %val, ptr noundef nonnull %kp_local) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1, !range !332
  %14 = zext i8 %13 to i32
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %kp_local) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_aaintbool(ptr noundef %buffer, ptr nocapture noundef readonly %kp) #1 align 64 {
entry:
  %kp_local = alloca %struct.kernel_param, align 4
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %kp_local) #15
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp_local, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #15
  %1 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  %frombool = zext i1 %tobool to i8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %value, align 1
  %7 = call ptr @memcpy(ptr %kp_local, ptr %kp, i32 16)
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %value, ptr %0, align 4
  %call = call i32 @param_get_bool(ptr noundef %buffer, ptr noundef nonnull %kp_local) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %kp_local) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_nf_register(ptr noundef %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_register_net_hooks(ptr noundef %net, ptr noundef nonnull @apparmor_nf_ops, i32 noundef 2) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_nf_unregister(ptr noundef %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_unregister_net_hooks(ptr noundef %net, ptr noundef nonnull @apparmor_nf_ops, i32 noundef 2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_ip_postroute(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %secmark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %0 = ptrtoint ptr %secmark to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %secmark, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %land.lhs.true.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.end
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %6)
  %cmp.i.i = icmp eq i8 %6, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end2_crit_edge

land.lhs.true.i.i.if.end2_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %7 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %skb_to_full_sk.exit.cleanup_crit_edge, label %skb_to_full_sk.exit.if.end2_crit_edge

skb_to_full_sk.exit.if.end2_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

skb_to_full_sk.exit.cleanup_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %skb_to_full_sk.exit.if.end2_crit_edge, %land.lhs.true.i.i.if.end2_crit_edge
  %sk.addr.0.i.i18 = phi ptr [ %9, %skb_to_full_sk.exit.if.end2_crit_edge ], [ %4, %land.lhs.true.i.i.if.end2_crit_edge ]
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i18, i32 0, i32 73
  %10 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_security, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call4 = tail call i32 @apparmor_secmark_check(ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef %1, ptr noundef nonnull %sk.addr.0.i.i18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %. = select i1 %tobool5.not, i32 1, i32 7274496
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %skb_to_full_sk.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %skb_to_full_sk.exit.cleanup_crit_edge ], [ %., %if.end2 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apparmor_secmark_check(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_secids_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_setup_dfa_engine() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_alloc_root_ns() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_buffers() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  %. = select i1 %cmp, i32 6, i32 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end4.if.end8.i_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %if.end4.if.end8.i_crit_edge ]
  %1 = load i32, ptr @aa_g_path_max, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 27840) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end8.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @aa_buffers_lock) #15
  %2 = load volatile ptr, ptr @aa_global_buffers, align 4
  %cmp.i.not2.i = icmp eq ptr %2, @aa_global_buffers
  br i1 %cmp.i.not2.i, label %if.then3.destroy_buffers.exit_crit_edge, label %if.then3.while.body.i_crit_edge

if.then3.while.body.i_crit_edge:                  ; preds = %if.then3
  br label %while.body.i

if.then3.destroy_buffers.exit_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_buffers.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.then3.while.body.i_crit_edge
  %3 = phi ptr [ %12, %list_del.exit.i.while.body.i_crit_edge ], [ %2, %if.then3.while.body.i_crit_edge ]
  %call.i.i.i9 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #15
  br i1 %call.i.i.i9, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aa_buffers_lock) #15
  tail call void @kfree(ptr noundef %3) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @aa_buffers_lock) #15
  %12 = load volatile ptr, ptr @aa_global_buffers, align 4
  %cmp.i.not.i = icmp eq ptr %12, @aa_global_buffers
  br i1 %cmp.i.not.i, label %list_del.exit.i.destroy_buffers.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

list_del.exit.i.destroy_buffers.exit_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_buffers.exit

destroy_buffers.exit:                             ; preds = %list_del.exit.i.destroy_buffers.exit_crit_edge, %if.then3.destroy_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aa_buffers_lock) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end8.i
  tail call void @aa_put_buffer(ptr noundef nonnull %call9.i)
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %if.end4.cleanup_crit_edge, label %if.end4.if.end8.i_crit_edge

if.end4.if.end8.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %destroy_buffers.exit
  %retval.0 = phi i32 [ -12, %destroy_buffers.exit ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_init_ctx() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %real_cred, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %6 = load ptr, ptr @root_ns, align 4
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unconfined, align 4
  %label = getelementptr inbounds %struct.aa_profile, ptr %8, i32 0, i32 25
  %tobool.not.i = icmp eq ptr %label, null
  br i1 %tobool.not.i, label %entry.aa_get_label.exit_crit_edge, label %if.then.i

entry.aa_get_label.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %label, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label, ptr nonnull %label, i32 1, ptr nonnull elementtype(i32) %label) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !334

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !331

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label, i32 noundef %.sink.i.i.i.i.i) #15
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %entry.aa_get_label.exit_crit_edge
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %11 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %security.i, align 4
  %13 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %13
  %tobool.not.i1 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i1, label %do.end.i, label %aa_get_label.exit.set_cred_label.exit_crit_edge, !prof !334

aa_get_label.exit.set_cred_label.exit_crit_edge:  ; preds = %aa_get_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_cred_label.exit

do.end.i:                                         ; preds = %aa_get_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 35, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.set_cred_label) #15
  br label %set_cred_label.exit

set_cred_label.exit:                              ; preds = %do.end.i, %aa_get_label.exit.set_cred_label.exit_crit_edge
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %label, ptr %add.ptr.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_info_message(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @aa_destroy_aafs() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_teardown_dfa_engine() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_paths(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @aa_current_policy_admin_capable(ptr noundef null) #15
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @apparmor_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #15
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -1, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_ptrace_access_check(ptr noundef %child, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !334

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge, label %if.then.i

aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #15
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %10, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %call1 = tail call ptr @aa_get_task_label(ptr noundef %child) #15
  %and = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2, i32 4
  %call2 = tail call i32 @aa_may_ptrace(ptr noundef %label.0.i, ptr noundef %call1, i32 noundef %cond) #15
  %tobool.not.i5 = icmp eq ptr %call1, null
  br i1 %tobool.not.i5, label %__begin_current_label_crit_section.exit.aa_put_label.exit_crit_edge, label %if.then.i6

__begin_current_label_crit_section.exit.aa_put_label.exit_crit_edge: ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i6:                                       ; preds = %__begin_current_label_crit_section.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call1) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %__begin_current_label_crit_section.exit.aa_put_label.exit_crit_edge
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_ptrace_traceme(ptr noundef %parent) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !334

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge, label %if.then.i

aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #15
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %10, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %call1 = tail call ptr @aa_get_task_label(ptr noundef %parent) #15
  %call2 = tail call i32 @aa_may_ptrace(ptr noundef %call1, ptr noundef %label.0.i, i32 noundef 2) #15
  %tobool.not.i5 = icmp eq ptr %call1, null
  br i1 %tobool.not.i5, label %__begin_current_label_crit_section.exit.aa_put_label.exit_crit_edge, label %if.then.i6

__begin_current_label_crit_section.exit.aa_put_label.exit_crit_edge: ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i6:                                       ; preds = %__begin_current_label_crit_section.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call1) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %__begin_current_label_crit_section.exit.aa_put_label.exit_crit_edge
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_capget(ptr noundef %target, ptr nocapture noundef %effective, ptr nocapture noundef readnone %inheritable, ptr nocapture noundef %permitted) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !338
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @apparmor_capget.__warned, align 1
  br i1 %.b50, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @apparmor_capget.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 154, ptr noundef nonnull @.str.42) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %do.end7.cred_label.exit.i.i_crit_edge, !prof !334

do.end7.cred_label.exit.i.i_crit_edge:            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %do.end7.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge, !prof !334

cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_newest_cred_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_get_newest_cred_label.exit

aa_get_newest_cred_label.exit:                    ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge
  %call1.i51 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #15
  %flags = getelementptr inbounds %struct.aa_label, ptr %call1.i51, i32 0, i32 5
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then11, label %aa_get_newest_cred_label.exit.if.end29_crit_edge

aa_get_newest_cred_label.exit.if.end29_crit_edge: ; preds = %aa_get_newest_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then11:                                        ; preds = %aa_get_newest_cred_label.exit
  %call12 = tail call i32 @aa_label_next_confined(ptr noundef %call1.i51, i32 noundef 0) #15
  %arrayidx65 = getelementptr %struct.aa_label, ptr %call1.i51, i32 0, i32 8, i32 %call12
  %13 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx65, align 4
  %tobool15.not66 = icmp eq ptr %14, null
  br i1 %tobool15.not66, label %if.then11.if.end29_crit_edge, label %for.body.lr.ph

if.then11.if.end29_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

for.body.lr.ph:                                   ; preds = %if.then11
  %.elt39 = getelementptr inbounds [2 x i32], ptr %effective, i32 0, i32 1
  %.elt45 = getelementptr inbounds [2 x i32], ptr %permitted, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %15 = phi ptr [ %14, %for.body.lr.ph ], [ %26, %for.inc.for.body_crit_edge ]
  %i.sroa.0.067 = phi i32 [ %call12, %for.body.lr.ph ], [ %call27, %for.inc.for.body_crit_edge ]
  %16 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %mode = getelementptr inbounds %struct.aa_profile, ptr %15, i32 0, i32 8
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp16 = icmp eq i32 %18, 1
  br i1 %cmp16, label %lor.lhs.false.for.inc_crit_edge, label %if.end18

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %caps = getelementptr inbounds %struct.aa_profile, ptr %15, i32 0, i32 14
  %19 = ptrtoint ptr %effective to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack = load i32, ptr %effective, align 4
  %20 = ptrtoint ptr %.elt39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack40 = load i32, ptr %.elt39, align 4
  %21 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack41 = load i32, ptr %caps, align 4
  %.elt42 = getelementptr inbounds %struct.aa_profile, ptr %15, i32 0, i32 14, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %.elt42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack43 = load i32, ptr %.elt42, align 4
  %and.i = and i32 %.unpack41, %.unpack
  %and.1.i = and i32 %.unpack43, %.unpack40
  %tmp19.sroa.4.0.insert.ext = zext i32 %and.1.i to i64
  %tmp19.sroa.0.0.insert.ext = zext i32 %and.i to i64
  %tmp19.sroa.0.0.insert.shift = shl nuw i64 %tmp19.sroa.0.0.insert.ext, 32
  %tmp19.sroa.0.0.insert.insert = or i64 %tmp19.sroa.0.0.insert.shift, %tmp19.sroa.4.0.insert.ext
  store i64 %tmp19.sroa.0.0.insert.insert, ptr %effective, align 4
  %23 = ptrtoint ptr %permitted to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack44 = load i32, ptr %permitted, align 4
  %24 = ptrtoint ptr %.elt45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack46 = load i32, ptr %.elt45, align 4
  %.unpack47 = load i32, ptr %caps, align 4
  %.unpack49 = load i32, ptr %.elt42, align 4
  %and.i52 = and i32 %.unpack47, %.unpack44
  %and.1.i53 = and i32 %.unpack49, %.unpack46
  %tmp21.sroa.4.0.insert.ext = zext i32 %and.1.i53 to i64
  %tmp21.sroa.0.0.insert.ext = zext i32 %and.i52 to i64
  %tmp21.sroa.0.0.insert.shift = shl nuw i64 %tmp21.sroa.0.0.insert.ext, 32
  %tmp21.sroa.0.0.insert.insert = or i64 %tmp21.sroa.0.0.insert.shift, %tmp21.sroa.4.0.insert.ext
  store i64 %tmp21.sroa.0.0.insert.insert, ptr %permitted, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add = add i32 %i.sroa.0.067, 1
  %call27 = tail call i32 @aa_label_next_confined(ptr noundef %call1.i51, i32 noundef %add) #15
  %arrayidx = getelementptr %struct.aa_label, ptr %call1.i51, i32 0, i32 8, i32 %call27
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %26, null
  br i1 %tobool15.not, label %for.inc.if.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.end29:                                         ; preds = %for.inc.if.end29_crit_edge, %if.then11.if.end29_crit_edge, %aa_get_newest_cred_label.exit.if.end29_crit_edge
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i54, label %if.end29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i57

if.end29.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i57:                                ; preds = %if.end29
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, %if.end29.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !339
  %27 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i.i.i61 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i62, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %tobool.not.i63 = icmp eq ptr %call1.i51, null
  br i1 %tobool.not.i63, label %rcu_read_unlock.exit.aa_put_label.exit_crit_edge, label %if.then.i64

rcu_read_unlock.exit.aa_put_label.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i64:                                      ; preds = %rcu_read_unlock.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i51, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call1.i51, i32 1, i32 3, i32 1) #15
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1.i51, ptr nonnull %call1.i51, i32 1, ptr nonnull elementtype(i32) %call1.i51) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1.i51, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call1.i51) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %rcu_read_unlock.exit.aa_put_label.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_capable(ptr nocapture noundef readonly %cred, ptr nocapture noundef readnone %ns, i32 noundef %cap, i32 noundef %opts) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %0 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i.i.i, align 4
  %2 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %entry.cred_label.exit.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %entry.cred_label.exit.i.i_crit_edge
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge, !prof !334

cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_newest_cred_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_get_newest_cred_label.exit

aa_get_newest_cred_label.exit:                    ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %4) #15
  %flags = getelementptr inbounds %struct.aa_label, ptr %call1.i, i32 0, i32 5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %aa_get_newest_cred_label.exit.if.end_crit_edge

aa_get_newest_cred_label.exit.if.end_crit_edge:   ; preds = %aa_get_newest_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %aa_get_newest_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @aa_capable(ptr noundef %call1.i, i32 noundef %cap, i32 noundef %opts) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %aa_get_newest_cred_label.exit.if.end_crit_edge
  %error.0 = phi i32 [ 0, %aa_get_newest_cred_label.exit.if.end_crit_edge ], [ %call1, %if.then ]
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.aa_put_label.exit_crit_edge, label %if.then.i

if.end.aa_put_label.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call1.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1.i, ptr nonnull %call1.i, i32 1, ptr nonnull elementtype(i32) %call1.i) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1.i, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call1.i) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.end.aa_put_label.exit_crit_edge
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_sb_mount(ptr noundef %dev_name, ptr noundef %path, ptr noundef %type, i32 noundef %flags, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1058209792, i32 %and)
  %cmp = icmp eq i32 %and, -1058209792
  %and1 = and i32 %flags, 65535
  %spec.select = select i1 %cmp, i32 %and1, i32 %flags
  %and2 = and i32 %spec.select, -1883242497
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !334

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge, label %if.then.i

aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #15
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %10, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %flags3 = getelementptr inbounds %struct.aa_label, ptr %label.0.i, i32 0, i32 5
  %13 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags3, align 4
  %and4 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then5, label %__begin_current_label_crit_section.exit.if.end30_crit_edge

__begin_current_label_crit_section.exit.if.end30_crit_edge: ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then5:                                         ; preds = %__begin_current_label_crit_section.exit
  %and6 = and i32 %spec.select, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 @aa_remount(ptr noundef %label.0.i, ptr noundef %path, i32 noundef %and2, ptr noundef %data) #15
  br label %if.end30

if.else:                                          ; preds = %if.then5
  %and10 = and i32 %spec.select, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call13 = tail call i32 @aa_bind_mount(ptr noundef %label.0.i, ptr noundef %path, ptr noundef %dev_name, i32 noundef %and2) #15
  br label %if.end30

if.else14:                                        ; preds = %if.else
  %and15 = and i32 %spec.select, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = tail call i32 @aa_mount_change_type(ptr noundef %label.0.i, ptr noundef %path, i32 noundef %and2) #15
  br label %if.end30

if.else19:                                        ; preds = %if.else14
  %and20 = and i32 %spec.select, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = tail call i32 @aa_move_mount(ptr noundef %label.0.i, ptr noundef %path, ptr noundef %dev_name) #15
  br label %if.end30

if.else24:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = tail call i32 @aa_new_mount(ptr noundef %label.0.i, ptr noundef %dev_name, ptr noundef %path, ptr noundef %type, i32 noundef %and2, ptr noundef %data) #15
  br label %if.end30

if.end30:                                         ; preds = %if.else24, %if.then22, %if.then17, %if.then12, %if.then8, %__begin_current_label_crit_section.exit.if.end30_crit_edge
  %error.0 = phi i32 [ 0, %__begin_current_label_crit_section.exit.if.end30_crit_edge ], [ %call9, %if.then8 ], [ %call13, %if.then12 ], [ %call18, %if.then17 ], [ %call23, %if.then22 ], [ %call25, %if.else24 ]
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_sb_umount(ptr noundef %mnt, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !334

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge, label %if.then.i

aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #15
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %10, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %flags1 = getelementptr inbounds %struct.aa_label, ptr %label.0.i, i32 0, i32 5
  %13 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags1, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %__begin_current_label_crit_section.exit.if.end_crit_edge

__begin_current_label_crit_section.exit.if.end_crit_edge: ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @aa_umount(ptr noundef %label.0.i, ptr noundef %mnt, i32 noundef %flags) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %__begin_current_label_crit_section.exit.if.end_crit_edge
  %error.0 = phi i32 [ 0, %__begin_current_label_crit_section.exit.if.end_crit_edge ], [ %call2, %if.then ]
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_sb_pivotroot(ptr noundef %old_path, ptr noundef %new_path) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @aa_get_current_label()
  %flags = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @aa_pivotroot(ptr noundef %call, ptr noundef %old_path, ptr noundef %new_path) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end.aa_put_label.exit_crit_edge, label %if.then.i

if.end.aa_put_label.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.end.aa_put_label.exit_crit_edge
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_path_link(ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @begin_current_label_crit_section()
  %flags = getelementptr inbounds %struct.aa_label, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 @aa_path_link(ptr noundef %call1, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %error.0 = phi i32 [ 0, %if.end.if.end4_crit_edge ], [ %call3, %if.then2 ]
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_path_unlink(ptr nocapture noundef readonly %dir, ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @common_perm_rm(ptr noundef nonnull @.str.46, ptr noundef %dir, ptr noundef %dentry)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_path_symlink(ptr nocapture noundef readonly %dir, ptr noundef %dentry, ptr nocapture noundef readnone %old_name) #1 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 4
  %cond.i = alloca %struct.path_cond, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond.i) #15
  %0 = ptrtoint ptr %cond.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1610547201, ptr %cond.i, align 8, !annotation !330
  %1 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fsuid.i, align 4
  %9 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cond.i, align 8
  %dentry2.i = getelementptr inbounds %struct.path, ptr %dir, i32 0, i32 1
  %10 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry2.i, align 4
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_sb.i.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not.i.i = icmp sgt i32 %15, -1
  br i1 %tobool.not.i.i, label %if.end.i, label %entry.common_perm_create.exit_crit_edge

entry.common_perm_create.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %common_perm_create.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #15
  %16 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dir, align 4
  %19 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %path.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dentry, ptr %16, align 4
  %call.i.i = call fastcc i32 @common_perm(ptr noundef nonnull @.str.47, ptr noundef nonnull %path.i.i, i32 noundef 16, ptr noundef nonnull %cond.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #15
  br label %common_perm_create.exit

common_perm_create.exit:                          ; preds = %if.end.i, %entry.common_perm_create.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i ], [ 0, %entry.common_perm_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond.i) #15
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_path_mkdir(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #1 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 4
  %cond.i = alloca %struct.path_cond, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond.i) #15
  %0 = ptrtoint ptr %cond.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -3221159937, ptr %cond.i, align 8, !annotation !330
  %1 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fsuid.i, align 4
  %9 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cond.i, align 8
  %dentry2.i = getelementptr inbounds %struct.path, ptr %dir, i32 0, i32 1
  %10 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry2.i, align 4
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_sb.i.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not.i.i = icmp sgt i32 %15, -1
  br i1 %tobool.not.i.i, label %if.end.i, label %entry.common_perm_create.exit_crit_edge

entry.common_perm_create.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %common_perm_create.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #15
  %16 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dir, align 4
  %19 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %path.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dentry, ptr %16, align 4
  %call.i.i = call fastcc i32 @common_perm(ptr noundef nonnull @.str.48, ptr noundef nonnull %path.i.i, i32 noundef 16, ptr noundef nonnull %cond.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #15
  br label %common_perm_create.exit

common_perm_create.exit:                          ; preds = %if.end.i, %entry.common_perm_create.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i ], [ 0, %entry.common_perm_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond.i) #15
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_path_rmdir(ptr nocapture noundef readonly %dir, ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @common_perm_rm(ptr noundef nonnull @.str.49, ptr noundef %dir, ptr noundef %dentry)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_path_mknod(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #1 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 4
  %cond.i = alloca %struct.path_cond, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond.i) #15
  %0 = ptrtoint ptr %cond.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cond.i, align 8, !annotation !330
  %1 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fsuid.i, align 4
  %9 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cond.i, align 8
  %mode1.i = getelementptr inbounds %struct.path_cond, ptr %cond.i, i32 0, i32 1
  %10 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %mode, ptr %mode1.i, align 4
  %dentry2.i = getelementptr inbounds %struct.path, ptr %dir, i32 0, i32 1
  %11 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry2.i, align 4
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_sb.i.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool.not.i.i = icmp sgt i32 %16, -1
  br i1 %tobool.not.i.i, label %if.end.i, label %entry.common_perm_create.exit_crit_edge

entry.common_perm_create.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %common_perm_create.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #15
  %17 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dir, align 4
  %20 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %path.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dentry, ptr %17, align 4
  %call.i.i = call fastcc i32 @common_perm(ptr noundef nonnull @.str.50, ptr noundef nonnull %path.i.i, i32 noundef 16, ptr noundef nonnull %cond.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #15
  br label %common_perm_create.exit

common_perm_create.exit:                          ; preds = %if.end.i, %entry.common_perm_create.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i ], [ 0, %entry.common_perm_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond.i) #15
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_path_rename(ptr nocapture noundef readonly %old_dir, ptr noundef %old_dentry, ptr nocapture noundef readonly %new_dir, ptr noundef %new_dentry) #1 align 64 {
entry:
  %old_path = alloca %struct.path, align 4
  %new_path = alloca %struct.path, align 4
  %cond = alloca %struct.path_cond, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @begin_current_label_crit_section()
  %flags = getelementptr inbounds %struct.aa_label, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %old_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_dir, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %mnt_userns.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_path) #15
  %10 = getelementptr inbounds %struct.path, ptr %old_path, i32 0, i32 1
  %11 = ptrtoint ptr %old_dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %old_dir, align 4
  %13 = ptrtoint ptr %old_path to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %old_path, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %old_dentry, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_path) #15
  %15 = getelementptr inbounds %struct.path, ptr %new_path, i32 0, i32 1
  %16 = ptrtoint ptr %new_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %new_dir, align 4
  %18 = ptrtoint ptr %new_path to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %new_path, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %new_dentry, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond) #15
  %20 = ptrtoint ptr %cond to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %cond, align 8, !annotation !330
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 53
  %25 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %28 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %9, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %26, %9
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.then2.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

if.then2.i_uid_into_mnt.exit_crit_edge:           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %if.then2
  %cmp.i21.i.i = icmp eq ptr %26, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %26, [1 x i32] %28) #15
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %9, i32 noundef %uid.0.i.i) #15
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %if.then2.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %if.then2.i_uid_into_mnt.exit_crit_edge ]
  %29 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.sroa.0.0.i.i, ptr %cond, align 8
  %mode = getelementptr inbounds %struct.path_cond, ptr %cond, i32 0, i32 1
  %30 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 8
  %34 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %mode, align 4
  %call12 = call i32 @aa_path_perm(ptr noundef nonnull @.str.51, ptr noundef %call1, ptr noundef nonnull %old_path, i32 noundef 0, i32 noundef 806, ptr noundef nonnull %cond) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %i_uid_into_mnt.exit.if.end16_crit_edge

i_uid_into_mnt.exit.if.end16_crit_edge:           ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then14:                                        ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = call i32 @aa_path_perm(ptr noundef nonnull @.str.52, ptr noundef %call1, ptr noundef nonnull %new_path, i32 noundef 0, i32 noundef 274, ptr noundef nonnull %cond) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %i_uid_into_mnt.exit.if.end16_crit_edge
  %error.0 = phi i32 [ %call12, %i_uid_into_mnt.exit.if.end16_crit_edge ], [ %call15, %if.then14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_path) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_path) #15
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end.if.end17_crit_edge
  %error.1 = phi i32 [ 0, %if.end.if.end17_crit_edge ], [ %error.0, %if.end16 ]
  call fastcc void @end_current_label_crit_section(ptr noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %if.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_path_chmod(ptr noundef %path, i16 noundef zeroext %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @common_perm_cond(ptr noundef nonnull @.str.53, ptr noundef %path, i32 noundef 4096)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_path_chown(ptr noundef %path, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @common_perm_cond(ptr noundef nonnull @.str.54, ptr noundef %path, i32 noundef 8192)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_path_truncate(ptr noundef %path) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @common_perm_cond(ptr noundef nonnull @.str.55, ptr noundef %path, i32 noundef 258)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_inode_getattr(ptr noundef %path) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @common_perm_cond(ptr noundef nonnull @.str.56, ptr noundef %path, i32 noundef 512)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_file_open(ptr noundef %file) #1 align 64 {
entry:
  %cond = alloca %struct.path_cond, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_security.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 15
  %0 = ptrtoint ptr %f_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_security.i, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i = icmp sgt i32 %8, -1
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %in_execve = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 65
  %13 = ptrtoint ptr %in_execve to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %in_execve, align 8
  %14 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %allow = getelementptr inbounds %struct.aa_file_ctx, ptr %add.ptr.i, i32 0, i32 2
  %15 = ptrtoint ptr %allow to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65541, ptr %allow, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %16 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_cred, align 8
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security.i.i.i, align 4
  %20 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end4.cred_label.exit.i.i_crit_edge, !prof !334

if.end4.cred_label.exit.i.i_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %if.end4.cred_label.exit.i.i_crit_edge
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge, !prof !334

cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_newest_cred_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_get_newest_cred_label.exit

aa_get_newest_cred_label.exit:                    ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %22) #15
  %flags = getelementptr inbounds %struct.aa_label, ptr %call1.i, i32 0, i32 5
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %aa_get_newest_cred_label.exit.if.end16_crit_edge

aa_get_newest_cred_label.exit.if.end16_crit_edge: ; preds = %aa_get_newest_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then7:                                         ; preds = %aa_get_newest_cred_label.exit
  %25 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_path, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %29 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond) #15
  %31 = ptrtoint ptr %cond to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %cond, align 8, !annotation !330
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 53
  %34 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 2
  %36 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %37 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %28, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %35, %28
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.then7.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

if.then7.i_uid_into_mnt.exit_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %if.then7
  %cmp.i21.i.i = icmp eq ptr %35, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %35, [1 x i32] %37) #15
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %28, i32 noundef %uid.0.i.i) #15
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %if.then7.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %if.then7.i_uid_into_mnt.exit_crit_edge ]
  %38 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.sroa.0.0.i.i, ptr %cond, align 8
  %mode = getelementptr inbounds %struct.path_cond, ptr %cond, i32 0, i32 1
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %30, align 8
  %41 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %mode, align 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %42 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %f_flags.i, align 4
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %44 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %f_mode.i, align 8
  %and.i30 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  %trunc.i = trunc i32 %45 to i3
  %rev.i = tail call i3 @llvm.bitreverse.i3(i3 %trunc.i) #15
  %mask.i = and i3 %rev.i, -2
  %46 = zext i3 %mask.i to i32
  %and7.i = and i32 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or.cond.i = select i1 %tobool8.not.i, i1 true, i1 %tobool.not.i31
  %and12.i = and i32 %46, 4
  %or13.i = or i32 %and12.i, 8
  %perms.2.i = select i1 %or.cond.i, i32 %46, i32 %or13.i
  %and15.i = lshr i32 %43, 8
  %47 = and i32 %and15.i, 2
  %and20.i = lshr i32 %43, 2
  %48 = and i32 %and20.i, 16
  %49 = or i32 %48, %47
  %50 = or i32 %49, %perms.2.i
  %call13 = call i32 @aa_path_perm(ptr noundef nonnull @.str.57, ptr noundef %call1.i, ptr noundef %f_path, i32 noundef 0, i32 noundef %50, ptr noundef nonnull %cond) #15
  %51 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %f_flags.i, align 4
  %53 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_mode.i, align 8
  %and.i34 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  %trunc.i36 = trunc i32 %54 to i3
  %rev.i37 = call i3 @llvm.bitreverse.i3(i3 %trunc.i36) #15
  %mask.i38 = and i3 %rev.i37, -2
  %55 = zext i3 %mask.i38 to i32
  %and7.i39 = and i32 %52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i39)
  %tobool8.not.i40 = icmp eq i32 %and7.i39, 0
  %or.cond.i41 = select i1 %tobool8.not.i40, i1 true, i1 %tobool.not.i35
  %and12.i42 = and i32 %55, 4
  %or13.i43 = or i32 %and12.i42, 8
  %perms.2.i44 = select i1 %or.cond.i41, i32 %55, i32 %or13.i43
  %and15.i45 = lshr i32 %52, 8
  %56 = and i32 %and15.i45, 2
  %and20.i46 = lshr i32 %52, 2
  %57 = and i32 %and20.i46, 16
  %58 = or i32 %57, %56
  %59 = or i32 %58, %perms.2.i44
  %allow15 = getelementptr inbounds %struct.aa_file_ctx, ptr %add.ptr.i, i32 0, i32 2
  %60 = ptrtoint ptr %allow15 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %allow15, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond) #15
  br label %if.end16

if.end16:                                         ; preds = %i_uid_into_mnt.exit, %aa_get_newest_cred_label.exit.if.end16_crit_edge
  %error.0 = phi i32 [ 0, %aa_get_newest_cred_label.exit.if.end16_crit_edge ], [ %call13, %i_uid_into_mnt.exit ]
  %tobool.not.i47 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i47, label %if.end16.cleanup_crit_edge, label %if.then.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.end16
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  call void @llvm.prefetch.p0(ptr nonnull %call1.i, i32 1, i32 3, i32 1) #15
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1.i, ptr nonnull %call1.i, i32 1, ptr nonnull elementtype(i32) %call1.i) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef nonnull %call1.i, i32 noundef 3) #15
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  call void @aa_label_kref(ptr noundef nonnull %call1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ %error.0, %if.end16.cleanup_crit_edge ], [ %error.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %error.0, %if.then10.i.i.i.i.i ], [ %error.0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_file_receive(ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags.i, align 4
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %trunc.i = trunc i32 %3 to i3
  %rev.i = tail call i3 @llvm.bitreverse.i3(i3 %trunc.i) #15
  %mask.i = and i3 %rev.i, -2
  %4 = zext i3 %mask.i to i32
  %and7.i = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or.cond.i = select i1 %tobool8.not.i, i1 true, i1 %tobool.not.i
  %and12.i = and i32 %4, 4
  %or13.i = or i32 %and12.i, 8
  %perms.2.i = select i1 %or.cond.i, i32 %4, i32 %or13.i
  %and15.i = lshr i32 %1, 8
  %5 = and i32 %and15.i, 2
  %and20.i = lshr i32 %1, 2
  %6 = and i32 %and20.i, 16
  %7 = or i32 %6, %5
  %8 = or i32 %7, %perms.2.i
  %call1 = tail call fastcc i32 @common_file_perm(ptr noundef nonnull @.str.58, ptr noundef %file, i32 noundef %8, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_file_permission(ptr noundef %file, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @common_file_perm(ptr noundef nonnull @.str.59, ptr noundef %file, i32 noundef %mask, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_file_alloc_security(ptr nocapture noundef readonly %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_security.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 15
  %0 = ptrtoint ptr %f_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_security.i, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %call1 = tail call fastcc ptr @begin_current_label_crit_section()
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @apparmor_file_alloc_security.__key, i16 noundef signext 3) #15
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %entry.aa_get_label.exit_crit_edge, label %if.then.i

entry.aa_get_label.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !334

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !331

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef %.sink.i.i.i.i.i) #15
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %entry.aa_get_label.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !341
  %label18 = getelementptr inbounds %struct.aa_file_ctx, ptr %add.ptr.i, i32 0, i32 1
  %5 = ptrtoint ptr %label18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call1, ptr %label18, align 4
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_file_free_security(ptr nocapture noundef readonly %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_security.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 15
  %0 = ptrtoint ptr %f_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_security.i, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %label = getelementptr inbounds %struct.aa_file_ctx, ptr %add.ptr.i, i32 0, i32 1
  %3 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %label, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #15
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %4) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_mmap_file(ptr noundef %file, i32 noundef %reqprot, i32 noundef %prot, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %file, null
  br i1 %tobool.not.i, label %entry.common_mmap.exit_crit_edge, label %lor.lhs.false.i

entry.common_mmap.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %common_mmap.exit

lor.lhs.false.i:                                  ; preds = %entry
  %f_security.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 15
  %0 = ptrtoint ptr %f_security.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_security.i.i, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %2
  %tobool1.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.common_mmap.exit_crit_edge, label %if.end.i

lor.lhs.false.i.common_mmap.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %common_mmap.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i = shl i32 %prot, 2
  %3 = and i32 %and.i, 4
  %and5.i = and i32 %prot, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp ne i32 %and5.i, 0
  %and7.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or.cond.i = and i1 %tobool6.not.i, %tobool8.not.i
  %or10.i = or i32 %3, 2
  %mask.1.i = select i1 %or.cond.i, i32 %or10.i, i32 %3
  %and12.i = shl i32 %prot, 14
  %4 = and i32 %and12.i, 65536
  %5 = or i32 %mask.1.i, %4
  %call18.i = tail call fastcc i32 @common_file_perm(ptr noundef nonnull @.str.61, ptr noundef nonnull %file, i32 noundef %5, i1 noundef zeroext true) #15
  br label %common_mmap.exit

common_mmap.exit:                                 ; preds = %if.end.i, %lor.lhs.false.i.common_mmap.exit_crit_edge, %entry.common_mmap.exit_crit_edge
  %retval.0.i = phi i32 [ %call18.i, %if.end.i ], [ 0, %lor.lhs.false.i.common_mmap.exit_crit_edge ], [ 0, %entry.common_mmap.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_file_mprotect(ptr nocapture noundef readonly %vma, i32 noundef %reqprot, i32 noundef %prot) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.common_mmap.exit_crit_edge, label %lor.lhs.false.i

entry.common_mmap.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %common_mmap.exit

lor.lhs.false.i:                                  ; preds = %entry
  %f_security.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %f_security.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_security.i.i, align 8
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %6
  %tobool1.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.common_mmap.exit_crit_edge, label %if.end.i

lor.lhs.false.i.common_mmap.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %common_mmap.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i = shl i32 %prot, 2
  %7 = and i32 %and.i, 4
  %and5.i = and i32 %prot, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp ne i32 %and5.i, 0
  %8 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not.i = icmp ne i32 %8, 0
  %or.cond.i = and i1 %tobool6.not.i, %tobool8.not.i
  %or10.i = or i32 %7, 2
  %mask.1.i = select i1 %or.cond.i, i32 %or10.i, i32 %7
  %and12.i = shl i32 %prot, 14
  %9 = and i32 %and12.i, 65536
  %10 = or i32 %mask.1.i, %9
  %call18.i = tail call fastcc i32 @common_file_perm(ptr noundef nonnull @.str.62, ptr noundef nonnull %1, i32 noundef %10, i1 noundef zeroext false) #15
  br label %common_mmap.exit

common_mmap.exit:                                 ; preds = %if.end.i, %lor.lhs.false.i.common_mmap.exit_crit_edge, %entry.common_mmap.exit_crit_edge
  %retval.0.i = phi i32 [ %call18.i, %if.end.i ], [ 0, %lor.lhs.false.i.common_mmap.exit_crit_edge ], [ 0, %entry.common_mmap.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_file_lock(ptr noundef %file, i32 noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1
  %spec.select = select i1 %cmp, i32 32770, i32 32768
  %call = tail call fastcc i32 @common_file_perm(ptr noundef nonnull @.str.63, ptr noundef %file, i32 noundef %spec.select, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_getprocattr(ptr noundef %task, ptr nocapture noundef readonly %name, ptr noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_task_cred(ptr noundef %task) #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task2, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 16
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %call4 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.64) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %security.i36 = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 23
  %7 = ptrtoint ptr %security.i36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %security.i36, align 4
  %9 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i37 = getelementptr i8, ptr %8, i32 %9
  %tobool.not.i = icmp eq ptr %add.ptr.i37, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.cred_label.exit_crit_edge, !prof !334

if.then.cred_label.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit

cred_label.exit:                                  ; preds = %do.end.i, %if.then.cred_label.exit_crit_edge
  %10 = ptrtoint ptr %add.ptr.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i37, align 4
  %call6 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %11)
  br label %if.end22

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.65) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else.if.else12_crit_edge

if.else.if.else12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else12

land.lhs.true:                                    ; preds = %if.else
  %previous = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 2
  %12 = ptrtoint ptr %previous to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %previous, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.lhs.true.if.else12_crit_edge, label %if.then9

land.lhs.true.if.else12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else12

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call fastcc ptr @aa_get_newest_label(ptr noundef nonnull %13)
  br label %if.end22

if.else12:                                        ; preds = %land.lhs.true.if.else12_crit_edge, %if.else.if.else12_crit_edge
  %call13 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.66) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true15, label %if.else12.aa_put_label.exit_crit_edge

if.else12.aa_put_label.exit_crit_edge:            ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

land.lhs.true15:                                  ; preds = %if.else12
  %onexec = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 1
  %14 = ptrtoint ptr %onexec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %onexec, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %land.lhs.true15.aa_put_label.exit_crit_edge, label %if.then17

land.lhs.true15.aa_put_label.exit_crit_edge:      ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call fastcc ptr @aa_get_newest_label(ptr noundef nonnull %15)
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.then9, %cred_label.exit
  %label.0 = phi ptr [ %call6, %cred_label.exit ], [ %call11, %if.then9 ], [ %call19, %if.then17 ]
  %tobool23.not = icmp eq ptr %label.0, null
  br i1 %tobool23.not, label %if.end22.aa_put_label.exit_crit_edge, label %if.then.i

if.end22.aa_put_label.exit_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %if.end22
  %call25 = tail call i32 @aa_getprocattr(ptr noundef nonnull %label.0, ptr noundef %value) #15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label.0, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %label.0, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label.0, ptr nonnull %label.0, i32 1, ptr nonnull elementtype(i32) %label.0) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label.0, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %label.0) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.end22.aa_put_label.exit_crit_edge, %land.lhs.true15.aa_put_label.exit_crit_edge, %if.else12.aa_put_label.exit_crit_edge
  %error.149 = phi i32 [ %call25, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge ], [ %call25, %if.then10.i.i.i.i.i ], [ %call25, %if.then.i.i ], [ -2, %if.end22.aa_put_label.exit_crit_edge ], [ -22, %land.lhs.true15.aa_put_label.exit_crit_edge ], [ -22, %if.else12.aa_put_label.exit_crit_edge ]
  %tobool.not.i39 = icmp eq ptr %call, null
  br i1 %tobool.not.i39, label %aa_put_label.exit.put_cred.exit_crit_edge, label %do.body.i

aa_put_label.exit.put_cred.exit_crit_edge:        ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_cred.exit

do.body.i:                                        ; preds = %aa_put_label.exit
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call) #15
  br i1 %call.i.i, label %if.then.i.i40, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !334

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i

if.then.i.i40:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call, ptr noundef nonnull @.str.67, i32 noundef 286) #15
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i40, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !342
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #15
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #15, !srcloc !343
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call) #15
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %aa_put_label.exit.put_cred.exit_crit_edge
  ret i32 %error.149
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_setprocattr(ptr noundef %name, ptr noundef %value, i32 noundef %size) #1 align 64 {
entry:
  %args = alloca ptr, align 4
  %sa_aad = alloca %struct.apparmor_audit_data, align 4
  %sa = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %args, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad) #15
  %1 = call ptr @memcpy(ptr %sa_aad, ptr @__const.apparmor_setprocattr.sa_aad, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #15
  %2 = call ptr @memcpy(ptr %sa, ptr @__const.apparmor_setprocattr.sa, i32 12)
  %3 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sa_aad, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %size, -1
  %arrayidx = getelementptr i8, ptr %value, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp1.not = icmp eq i8 %6, 0
  br i1 %cmp1.not, label %if.end.if.end7_crit_edge, label %if.end8.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.end8.i:                                        ; preds = %if.end
  %add = add i32 %size, 1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #18
  %7 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i, ptr %args, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end5

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %8 = call ptr @memcpy(ptr %call9.i, ptr %value, i32 %size)
  %arrayidx6 = getelementptr i8, ptr %call9.i, i32 %size
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx6, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.end.if.end7_crit_edge
  %largs.0 = phi ptr [ %call9.i, %if.end5 ], [ null, %if.end.if.end7_crit_edge ]
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args, align 4
  %call8 = call ptr @strim(ptr noundef %11) #15
  %12 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8, ptr %args, align 4
  %call9 = call ptr @strsep(ptr noundef nonnull %args, ptr noundef nonnull @.str.69) #15
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end7.out_crit_edge, label %if.end12

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end12:                                         ; preds = %if.end7
  %call13 = call ptr @skip_spaces(ptr noundef nonnull %14) #15
  %15 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %args, align 4
  %16 = ptrtoint ptr %call13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %if.end12.out_crit_edge, label %if.end16

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end16:                                         ; preds = %if.end12
  %tobool17.not = icmp eq ptr %largs.0, null
  %value.largs.0 = select i1 %tobool17.not, ptr %value, ptr %largs.0
  %sub.ptr.lhs.cast = ptrtoint ptr %call13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %value.largs.0 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub18 = add i32 %sub.ptr.sub.neg, %size
  %call19 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.64) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.else57

if.then22:                                        ; preds = %if.end16
  %call23 = call i32 @strcmp(ptr noundef %call9, ptr noundef nonnull dereferenceable(10) @.str.70) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  %call27 = call i32 @aa_setprocattr_changehat(ptr noundef %call13, i32 noundef %sub18, i32 noundef 0) #15
  br label %if.end78

if.else:                                          ; preds = %if.then22
  %call28 = call i32 @strcmp(ptr noundef %call9, ptr noundef nonnull dereferenceable(8) @.str.71) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = call i32 @aa_setprocattr_changehat(ptr noundef %call13, i32 noundef %sub18, i32 noundef 1) #15
  br label %if.end78

if.else33:                                        ; preds = %if.else
  %call34 = call i32 @strcmp(ptr noundef %call9, ptr noundef nonnull dereferenceable(14) @.str.72) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #17
  %call38 = call i32 @aa_change_profile(ptr noundef %call13, i32 noundef 0) #15
  br label %if.end78

if.else39:                                        ; preds = %if.else33
  %call40 = call i32 @strcmp(ptr noundef %call9, ptr noundef nonnull dereferenceable(12) @.str.73) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #17
  %call44 = call i32 @aa_change_profile(ptr noundef %call13, i32 noundef 1) #15
  br label %if.end78

if.else45:                                        ; preds = %if.else39
  %call46 = call i32 @strcmp(ptr noundef %call9, ptr noundef nonnull dereferenceable(6) @.str.74) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.else45.fail_crit_edge

if.else45.fail_crit_edge:                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.then49:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #17
  %call50 = call i32 @aa_change_profile(ptr noundef %call13, i32 noundef 8) #15
  br label %if.end78

if.else57:                                        ; preds = %if.end16
  %call58 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.66) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.else57.fail_crit_edge

if.else57.fail_crit_edge:                         ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.then61:                                        ; preds = %if.else57
  %call62 = call i32 @strcmp(ptr noundef %call9, ptr noundef nonnull dereferenceable(5) @.str.66) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  %call66 = call i32 @aa_change_profile(ptr noundef %call13, i32 noundef 4) #15
  br label %if.end78

if.else67:                                        ; preds = %if.then61
  %call68 = call i32 @strcmp(ptr noundef %call9, ptr noundef nonnull dereferenceable(6) @.str.74) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.else67.fail_crit_edge

if.else67.fail_crit_edge:                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.then71:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #17
  %call72 = call i32 @aa_change_profile(ptr noundef %call13, i32 noundef 12) #15
  br label %if.end78

if.end78:                                         ; preds = %if.then71, %if.then65, %if.then49, %if.then43, %if.then37, %if.then31, %if.then26
  %error.0 = phi i32 [ %call27, %if.then26 ], [ %call32, %if.then31 ], [ %call38, %if.then37 ], [ %call44, %if.then43 ], [ %call50, %if.then49 ], [ %call66, %if.then65 ], [ %call72, %if.then71 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool79.not = icmp eq i32 %error.0, 0
  %spec.select = select i1 %tobool79.not, i32 %size, i32 %error.0
  br label %out

out:                                              ; preds = %fail, %if.end78, %if.end12.out_crit_edge, %if.end7.out_crit_edge
  %error.1 = phi i32 [ -22, %fail ], [ -22, %if.end12.out_crit_edge ], [ -22, %if.end7.out_crit_edge ], [ %spec.select, %if.end78 ]
  call void @kfree(ptr noundef %largs.0) #15
  br label %cleanup

fail:                                             ; preds = %if.else67.fail_crit_edge, %if.else57.fail_crit_edge, %if.else45.fail_crit_edge
  %call82 = call fastcc ptr @begin_current_label_crit_section()
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %label = getelementptr inbounds %struct.apparmor_audit_data, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call82, ptr %label, align 4
  %21 = load ptr, ptr %3, align 4
  %info = getelementptr inbounds %struct.apparmor_audit_data, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %name, ptr %info, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -22, ptr %21, align 4
  call void @aa_audit_msg(i32 noundef 2, ptr noundef nonnull %sa, ptr noundef null) #15
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %label84 = getelementptr inbounds %struct.apparmor_audit_data, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %label84 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %label84, align 4
  call fastcc void @end_current_label_crit_section(ptr noundef %27)
  br label %out

cleanup:                                          ; preds = %out, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_sk_alloc_security(ptr nocapture noundef writeonly %sk, i32 noundef %family, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !331

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 8) #23
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %sk_security, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_sk_free_security(ptr nocapture noundef %sk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  store ptr null, ptr %sk_security, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.aa_put_label.exit_crit_edge, label %if.then.i

entry.aa_put_label.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %3) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %entry.aa_put_label.exit_crit_edge
  %peer = getelementptr inbounds %struct.aa_sk_ctx, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer, align 4
  %tobool.not.i5 = icmp eq ptr %6, null
  br i1 %tobool.not.i5, label %aa_put_label.exit.aa_put_label.exit14_crit_edge, label %if.then.i9

aa_put_label.exit.aa_put_label.exit14_crit_edge:  ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit14

if.then.i9:                                       ; preds = %aa_put_label.exit
  %call.i.i.i.i.i.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %6, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %6, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i7 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i7)
  %cmp.i.i.i.i.i8 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i7, 1
  br i1 %cmp.i.i.i.i.i8, label %if.then.i.i13, label %if.end5.i.i.i.i.i11

if.end5.i.i.i.i.i11:                              ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i7)
  %.not.i.i.i.i.i10 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i7, 0
  br i1 %.not.i.i.i.i.i10, label %if.end5.i.i.i.i.i11.aa_put_label.exit14_crit_edge, label %if.then10.i.i.i.i.i12, !prof !331

if.end5.i.i.i.i.i11.aa_put_label.exit14_crit_edge: ; preds = %if.end5.i.i.i.i.i11
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit14

if.then10.i.i.i.i.i12:                            ; preds = %if.end5.i.i.i.i.i11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %6, i32 noundef 3) #15
  br label %aa_put_label.exit14

if.then.i.i13:                                    ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %6) #15
  br label %aa_put_label.exit14

aa_put_label.exit14:                              ; preds = %if.then.i.i13, %if.then10.i.i.i.i.i12, %if.end5.i.i.i.i.i11.aa_put_label.exit14_crit_edge, %aa_put_label.exit.aa_put_label.exit14_crit_edge
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_sk_clone_security(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %newsk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  %sk_security1 = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_security1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #15
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %5) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %tobool.not.i19 = icmp eq ptr %8, null
  br i1 %tobool.not.i19, label %if.end.aa_get_label.exit_crit_edge, label %if.then.i21

if.end.aa_get_label.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit

if.then.i21:                                      ; preds = %if.end
  %call.i.i.i.i.i.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %8, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %8, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i21.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !334

if.then.i21.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i21
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i22 = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i22, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !331

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i21.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i21.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef %.sink.i.i.i.i.i) #15
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %if.end.aa_get_label.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %3, align 4
  %peer = getelementptr inbounds %struct.aa_sk_ctx, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peer, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %aa_get_label.exit.if.end8_crit_edge, label %if.then.i27

aa_get_label.exit.if.end8_crit_edge:              ; preds = %aa_get_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then.i27:                                      ; preds = %aa_get_label.exit
  %call.i.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i25 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i25)
  %cmp.i.i.i.i.i26 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i25, 1
  br i1 %cmp.i.i.i.i.i26, label %if.then.i.i31, label %if.end5.i.i.i.i.i29

if.end5.i.i.i.i.i29:                              ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i25)
  %.not.i.i.i.i.i28 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i25, 0
  br i1 %.not.i.i.i.i.i28, label %if.end5.i.i.i.i.i29.if.end8_crit_edge, label %if.then10.i.i.i.i.i30, !prof !331

if.end5.i.i.i.i.i29.if.end8_crit_edge:            ; preds = %if.end5.i.i.i.i.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then10.i.i.i.i.i30:                            ; preds = %if.end5.i.i.i.i.i29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #15
  br label %if.end8

if.then.i.i31:                                    ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %13) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then.i.i31, %if.then10.i.i.i.i.i30, %if.end5.i.i.i.i.i29.if.end8_crit_edge, %aa_get_label.exit.if.end8_crit_edge
  %peer9 = getelementptr inbounds %struct.aa_sk_ctx, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %peer9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %peer9, align 4
  %tobool.not.i33 = icmp eq ptr %16, null
  br i1 %tobool.not.i33, label %if.end8.aa_get_label.exit43_crit_edge, label %if.then.i37

if.end8.aa_get_label.exit43_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit43

if.then.i37:                                      ; preds = %if.end8
  %call.i.i.i.i.i.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %16, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %16, i32 1, i32 3, i32 1) #15
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i35 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i35)
  %tobool1.not.i.i.i.i.i36 = icmp eq i32 %asmresult.i.i.i.i.i.i.i35, 0
  br i1 %tobool1.not.i.i.i.i.i36, label %if.then.i37.if.end15.sink.split.i.i.i.i.i42_crit_edge, label %if.else.i.i.i.i.i40, !prof !334

if.then.i37.if.end15.sink.split.i.i.i.i.i42_crit_edge: ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i42

if.else.i.i.i.i.i40:                              ; preds = %if.then.i37
  %add.i.i.i.i.i38 = add i32 %asmresult.i.i.i.i.i.i.i35, 1
  %18 = or i32 %add.i.i.i.i.i38, %asmresult.i.i.i.i.i.i.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i39 = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i39, label %if.else.i.i.i.i.i40.aa_get_label.exit43_crit_edge, label %if.else.i.i.i.i.i40.if.end15.sink.split.i.i.i.i.i42_crit_edge, !prof !331

if.else.i.i.i.i.i40.if.end15.sink.split.i.i.i.i.i42_crit_edge: ; preds = %if.else.i.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i42

if.else.i.i.i.i.i40.aa_get_label.exit43_crit_edge: ; preds = %if.else.i.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit43

if.end15.sink.split.i.i.i.i.i42:                  ; preds = %if.else.i.i.i.i.i40.if.end15.sink.split.i.i.i.i.i42_crit_edge, %if.then.i37.if.end15.sink.split.i.i.i.i.i42_crit_edge
  %.sink.i.i.i.i.i41 = phi i32 [ 2, %if.then.i37.if.end15.sink.split.i.i.i.i.i42_crit_edge ], [ 1, %if.else.i.i.i.i.i40.if.end15.sink.split.i.i.i.i.i42_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef %.sink.i.i.i.i.i41) #15
  br label %aa_get_label.exit43

aa_get_label.exit43:                              ; preds = %if.end15.sink.split.i.i.i.i.i42, %if.else.i.i.i.i.i40.aa_get_label.exit43_crit_edge, %if.end8.aa_get_label.exit43_crit_edge
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %peer, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_create(i32 noundef %family, i32 noundef %type, i32 noundef %protocol, i32 noundef %kern) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i39 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i39 to ptr
  %preempt_count.i40 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i40, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i41 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i41 to ptr
  %preempt_count.i42 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i42, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !331

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 840, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.apparmor_socket_create) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call28 = tail call fastcc ptr @begin_current_label_crit_section()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kern)
  %tobool29.not = icmp eq i32 %kern, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.aa_label, ptr %call28, i32 0, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and30 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then32, label %lor.lhs.false.if.end35_crit_edge

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then32:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %conv = trunc i32 %family to i16
  %call33 = tail call i32 @aa_af_perm(ptr noundef %call28, ptr noundef nonnull @.str.76, i32 noundef 16, i16 noundef zeroext %conv, i32 noundef %type, i32 noundef %protocol) #15
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %lor.lhs.false.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %error.0 = phi i32 [ 0, %if.end.if.end35_crit_edge ], [ 0, %lor.lhs.false.if.end35_crit_edge ], [ %call33, %if.then32 ]
  tail call fastcc void @end_current_label_crit_section(ptr noundef %call28)
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_post_create(ptr nocapture noundef readonly %sock, i32 noundef %family, i32 noundef %type, i32 noundef %protocol, i32 noundef %kern) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kern)
  %tobool.not = icmp eq i32 %kern, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i.i, align 8
  %cred.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i.i, align 16
  %security.i.i.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.then.cred_label.exit.i.i.i.i_crit_edge, !prof !334

if.then.cred_label.exit.i.i.i.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i.i.i

cred_label.exit.i.i.i.i:                          ; preds = %do.end.i.i.i.i.i, %if.then.cred_label.exit.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %cred_label.exit.i.i.i.i.aa_current_raw_label.exit.i.i_crit_edge, !prof !334

cred_label.exit.i.i.i.i.aa_current_raw_label.exit.i.i_crit_edge: ; preds = %cred_label.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit.i.i

do.end.i.i.i.i:                                   ; preds = %cred_label.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit.i.i

aa_current_raw_label.exit.i.i:                    ; preds = %do.end.i.i.i.i, %cred_label.exit.i.i.i.i.aa_current_raw_label.exit.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %aa_current_raw_label.exit.i.i.__begin_current_label_crit_section.exit.i_crit_edge, label %if.then.i.i

aa_current_raw_label.exit.i.i.__begin_current_label_crit_section.exit.i_crit_edge: ; preds = %aa_current_raw_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__begin_current_label_crit_section.exit.i

if.then.i.i:                                      ; preds = %aa_current_raw_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #15
  br label %__begin_current_label_crit_section.exit.i

__begin_current_label_crit_section.exit.i:        ; preds = %if.then.i.i, %aa_current_raw_label.exit.i.i.__begin_current_label_crit_section.exit.i_crit_edge
  %label.0.i.i = phi ptr [ %call1.i.i, %if.then.i.i ], [ %10, %aa_current_raw_label.exit.i.i.__begin_current_label_crit_section.exit.i_crit_edge ]
  %vec.i = getelementptr inbounds %struct.aa_label, ptr %label.0.i.i, i32 0, i32 8
  %size.i = getelementptr inbounds %struct.aa_label, ptr %label.0.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %14, -1
  %arrayidx1.i = getelementptr ptr, ptr %vec.i, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1.i, align 4
  %ns2.i = getelementptr inbounds %struct.aa_profile, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ns2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns2.i, align 4
  %tobool.not.i6.i = icmp eq ptr %18, null
  br i1 %tobool.not.i6.i, label %__begin_current_label_crit_section.exit.i.aa_get_current_ns.exit_crit_edge, label %if.then.i7.i

__begin_current_label_crit_section.exit.i.aa_get_current_ns.exit_crit_edge: ; preds = %__begin_current_label_crit_section.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_current_ns.exit

if.then.i7.i:                                     ; preds = %__begin_current_label_crit_section.exit.i
  %unconfined.i.i = getelementptr inbounds %struct.aa_ns, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %unconfined.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unconfined.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.then.i7.i.aa_get_current_ns.exit_crit_edge, label %if.then.i.i.i

if.then.i7.i.aa_get_current_ns.exit_crit_edge:    ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_current_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i7.i
  %label.i.i.i = getelementptr inbounds %struct.aa_profile, ptr %20, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %label.i.i.i, i32 1, i32 3, i32 1) #15
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i.i, ptr %label.i.i.i, i32 1, ptr elementtype(i32) %label.i.i.i) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !334

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.aa_get_current_ns.exit_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !331

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.aa_get_current_ns.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_current_ns.exit

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #15
  br label %aa_get_current_ns.exit

aa_get_current_ns.exit:                           ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.aa_get_current_ns.exit_crit_edge, %if.then.i7.i.aa_get_current_ns.exit_crit_edge, %__begin_current_label_crit_section.exit.i.aa_get_current_ns.exit_crit_edge
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i.i) #15
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %18, i32 0, i32 4
  %23 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unconfined, align 4
  %label1 = getelementptr inbounds %struct.aa_profile, ptr %24, i32 0, i32 25
  %tobool.not.i = icmp eq ptr %label1, null
  br i1 %tobool.not.i, label %aa_get_current_ns.exit.aa_get_label.exit_crit_edge, label %if.then.i

aa_get_current_ns.exit.aa_get_label.exit_crit_edge: ; preds = %aa_get_current_ns.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit

if.then.i:                                        ; preds = %aa_get_current_ns.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label1, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %label1, i32 1, i32 3, i32 1) #15
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label1, ptr nonnull %label1, i32 1, ptr nonnull elementtype(i32) %label1) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !334

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !331

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label1, i32 noundef %.sink.i.i.i.i.i) #15
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %aa_get_current_ns.exit.aa_get_label.exit_crit_edge
  br i1 %tobool.not.i6.i, label %aa_get_label.exit.if.end_crit_edge, label %if.then.i17

aa_get_label.exit.if.end_crit_edge:               ; preds = %aa_get_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i17:                                      ; preds = %aa_get_label.exit
  %27 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unconfined, align 4
  %tobool.not.i.i16 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i16, label %if.then.i17.if.end_crit_edge, label %if.then.i.i19

if.then.i17.if.end_crit_edge:                     ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i.i19:                                    ; preds = %if.then.i17
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %28, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #15
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i.i18 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i18)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i18, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i20, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i18)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i18, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #15
  br label %if.end

if.then.i.i.i20:                                  ; preds = %if.then.i.i19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef %label.i.i) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call fastcc ptr @aa_get_current_label()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i.i.i20, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end_crit_edge, %if.then.i17.if.end_crit_edge, %aa_get_label.exit.if.end_crit_edge
  %label.0 = phi ptr [ %call3, %if.else ], [ %label1, %aa_get_label.exit.if.end_crit_edge ], [ %label1, %if.then.i17.if.end_crit_edge ], [ %label1, %if.end5.i.i.i.i.i.i.if.end_crit_edge ], [ %label1, %if.then10.i.i.i.i.i.i ], [ %label1, %if.then.i.i.i20 ]
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %30 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk, align 16
  %tobool4.not = icmp eq ptr %31, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %sk_security = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 73
  %32 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk_security, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i21 = icmp eq ptr %35, null
  br i1 %tobool.not.i21, label %if.then5.aa_put_label.exit_crit_edge, label %if.then.i23

if.then5.aa_put_label.exit_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i23:                                      ; preds = %if.then5
  %call.i.i.i.i.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %35, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %35, i32 1, i32 3, i32 1) #15
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %35, ptr nonnull %35, i32 1, ptr nonnull elementtype(i32) %35) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i25, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i24 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i24, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %35, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i25:                                    ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %35) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i25, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.then5.aa_put_label.exit_crit_edge
  %tobool.not.i26 = icmp eq ptr %label.0, null
  br i1 %tobool.not.i26, label %aa_put_label.exit.aa_get_label.exit36_crit_edge, label %if.then.i30

aa_put_label.exit.aa_get_label.exit36_crit_edge:  ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit36

if.then.i30:                                      ; preds = %aa_put_label.exit
  %call.i.i.i.i.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label.0, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %label.0, i32 1, i32 3, i32 1) #15
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label.0, ptr nonnull %label.0, i32 1, ptr nonnull elementtype(i32) %label.0) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i28 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i28)
  %tobool1.not.i.i.i.i.i29 = icmp eq i32 %asmresult.i.i.i.i.i.i.i28, 0
  br i1 %tobool1.not.i.i.i.i.i29, label %if.then.i30.if.end15.sink.split.i.i.i.i.i35_crit_edge, label %if.else.i.i.i.i.i33, !prof !334

if.then.i30.if.end15.sink.split.i.i.i.i.i35_crit_edge: ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i35

if.else.i.i.i.i.i33:                              ; preds = %if.then.i30
  %add.i.i.i.i.i31 = add i32 %asmresult.i.i.i.i.i.i.i28, 1
  %38 = or i32 %add.i.i.i.i.i31, %asmresult.i.i.i.i.i.i.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i.i32 = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i.i32, label %if.else.i.i.i.i.i33.aa_get_label.exit36_crit_edge, label %if.else.i.i.i.i.i33.if.end15.sink.split.i.i.i.i.i35_crit_edge, !prof !331

if.else.i.i.i.i.i33.if.end15.sink.split.i.i.i.i.i35_crit_edge: ; preds = %if.else.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i35

if.else.i.i.i.i.i33.aa_get_label.exit36_crit_edge: ; preds = %if.else.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit36

if.end15.sink.split.i.i.i.i.i35:                  ; preds = %if.else.i.i.i.i.i33.if.end15.sink.split.i.i.i.i.i35_crit_edge, %if.then.i30.if.end15.sink.split.i.i.i.i.i35_crit_edge
  %.sink.i.i.i.i.i34 = phi i32 [ 2, %if.then.i30.if.end15.sink.split.i.i.i.i.i35_crit_edge ], [ 1, %if.else.i.i.i.i.i33.if.end15.sink.split.i.i.i.i.i35_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label.0, i32 noundef %.sink.i.i.i.i.i34) #15
  br label %aa_get_label.exit36

aa_get_label.exit36:                              ; preds = %if.end15.sink.split.i.i.i.i.i35, %if.else.i.i.i.i.i33.aa_get_label.exit36_crit_edge, %aa_put_label.exit.aa_get_label.exit36_crit_edge
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %label.0, ptr %33, align 4
  br label %if.end10

if.end10:                                         ; preds = %aa_get_label.exit36, %if.end.if.end10_crit_edge
  %tobool.not.i37 = icmp eq ptr %label.0, null
  br i1 %tobool.not.i37, label %if.end10.aa_put_label.exit46_crit_edge, label %if.then.i41

if.end10.aa_put_label.exit46_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit46

if.then.i41:                                      ; preds = %if.end10
  %call.i.i.i.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label.0, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %label.0, i32 1, i32 3, i32 1) #15
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label.0, ptr nonnull %label.0, i32 1, ptr nonnull elementtype(i32) %label.0) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i39 = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i39)
  %cmp.i.i.i.i.i40 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i39, 1
  br i1 %cmp.i.i.i.i.i40, label %if.then.i.i45, label %if.end5.i.i.i.i.i43

if.end5.i.i.i.i.i43:                              ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i39)
  %.not.i.i.i.i.i42 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i39, 0
  br i1 %.not.i.i.i.i.i42, label %if.end5.i.i.i.i.i43.aa_put_label.exit46_crit_edge, label %if.then10.i.i.i.i.i44, !prof !331

if.end5.i.i.i.i.i43.aa_put_label.exit46_crit_edge: ; preds = %if.end5.i.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit46

if.then10.i.i.i.i.i44:                            ; preds = %if.end5.i.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label.0, i32 noundef 3) #15
  br label %aa_put_label.exit46

if.then.i.i45:                                    ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %label.0) #15
  br label %aa_put_label.exit46

aa_put_label.exit46:                              ; preds = %if.then.i.i45, %if.then10.i.i.i.i.i44, %if.end5.i.i.i.i.i43.aa_put_label.exit46_crit_edge, %if.end10.aa_put_label.exit46_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_bind(ptr noundef readonly %sock, ptr noundef readnone %address, i32 noundef %addrlen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !334

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 893, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.apparmor_socket_bind) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !334

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 894, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.apparmor_socket_bind) #15
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %address, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !334

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 895, i32 noundef 9, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.apparmor_socket_bind) #15
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i145 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i145 to ptr
  %preempt_count.i146 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i146 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i146, align 4
  %and99 = and i32 %9, 983040
  %or = or i32 %and99, %and
  %10 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i147 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i147 to ptr
  %preempt_count.i148 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i148 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i148, align 4
  %and101 = and i32 %13, 65280
  %or102 = or i32 %or, %and101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or102)
  %tobool103.not = icmp eq i32 %or102, 0
  br i1 %tobool103.not, label %if.end86.if.end125_crit_edge, label %do.end119, !prof !331

if.end86.if.end125_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

do.end119:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 896, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.apparmor_socket_bind) #15
  br label %if.end125

if.end125:                                        ; preds = %do.end119, %if.end86.if.end125_crit_edge
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %call137 = tail call i32 @aa_sk_perm(ptr noundef nonnull @.str.80, i32 noundef 2097152, ptr noundef %15) #15
  ret i32 %call137
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_connect(ptr noundef readonly %sock, ptr noundef readnone %address, i32 noundef %addrlen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !334

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 909, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.apparmor_socket_connect) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !334

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 910, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.apparmor_socket_connect) #15
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %address, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !334

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 911, i32 noundef 9, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.apparmor_socket_connect) #15
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i145 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i145 to ptr
  %preempt_count.i146 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i146 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i146, align 4
  %and99 = and i32 %9, 983040
  %or = or i32 %and99, %and
  %10 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i147 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i147 to ptr
  %preempt_count.i148 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i148 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i148, align 4
  %and101 = and i32 %13, 65280
  %or102 = or i32 %or, %and101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or102)
  %tobool103.not = icmp eq i32 %or102, 0
  br i1 %tobool103.not, label %if.end86.if.end125_crit_edge, label %do.end119, !prof !331

if.end86.if.end125_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

do.end119:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 912, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.apparmor_socket_connect) #15
  br label %if.end125

if.end125:                                        ; preds = %do.end119, %if.end86.if.end125_crit_edge
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %call137 = tail call i32 @aa_sk_perm(ptr noundef nonnull @.str.81, i32 noundef 64, ptr noundef %15) #15
  ret i32 %call137
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_listen(ptr noundef readonly %sock, i32 noundef %backlog) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !334

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 924, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.apparmor_socket_listen) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !334

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 925, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.apparmor_socket_listen) #15
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i108 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i108 to ptr
  %preempt_count.i109 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i109 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i109, align 4
  %and63 = and i32 %9, 983040
  %or = or i32 %and63, %and
  %10 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i110 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i110 to ptr
  %preempt_count.i111 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i111 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i111, align 4
  %and65 = and i32 %13, 65280
  %or66 = or i32 %or, %and65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or66)
  %tobool67.not = icmp eq i32 %or66, 0
  br i1 %tobool67.not, label %if.end50.if.end89_crit_edge, label %do.end83, !prof !331

if.end50.if.end89_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

do.end83:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 926, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.apparmor_socket_listen) #15
  br label %if.end89

if.end89:                                         ; preds = %do.end83, %if.end50.if.end89_crit_edge
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %call101 = tail call i32 @aa_sk_perm(ptr noundef nonnull @.str.82, i32 noundef 4194304, ptr noundef %15) #15
  ret i32 %call101
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_accept(ptr noundef readonly %sock, ptr noundef readnone %newsock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !334

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 941, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.apparmor_socket_accept) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !334

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 942, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.apparmor_socket_accept) #15
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %newsock, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !334

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 943, i32 noundef 9, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.apparmor_socket_accept) #15
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i145 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i145 to ptr
  %preempt_count.i146 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i146 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i146, align 4
  %and99 = and i32 %9, 983040
  %or = or i32 %and99, %and
  %10 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i147 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i147 to ptr
  %preempt_count.i148 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i148 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i148, align 4
  %and101 = and i32 %13, 65280
  %or102 = or i32 %or, %and101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or102)
  %tobool103.not = icmp eq i32 %or102, 0
  br i1 %tobool103.not, label %if.end86.if.end125_crit_edge, label %do.end119, !prof !331

if.end86.if.end125_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

do.end119:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 944, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.apparmor_socket_accept) #15
  br label %if.end125

if.end125:                                        ; preds = %do.end119, %if.end86.if.end125_crit_edge
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %call137 = tail call i32 @aa_sk_perm(ptr noundef nonnull @.str.84, i32 noundef 1048576, ptr noundef %15) #15
  ret i32 %call137
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aa_sock_msg_perm(ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef %sock, ptr noundef %msg)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aa_sock_msg_perm(ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %sock, ptr noundef %msg)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_getsockname(ptr noundef %sock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aa_sock_perm(ptr noundef nonnull @.str.87, i32 noundef 512, ptr noundef %sock)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_getpeername(ptr noundef %sock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aa_sock_perm(ptr noundef nonnull @.str.88, i32 noundef 512, ptr noundef %sock)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_getsockopt(ptr noundef %sock, i32 noundef %level, i32 noundef %optname) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aa_sock_opt_perm(ptr noundef nonnull @.str.89, i32 noundef 33554432, ptr noundef %sock)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_setsockopt(ptr noundef %sock, i32 noundef %level, i32 noundef %optname) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aa_sock_opt_perm(ptr noundef nonnull @.str.90, i32 noundef 16777216, ptr noundef %sock)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_shutdown(ptr noundef %sock, i32 noundef %how) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aa_sock_perm(ptr noundef nonnull @.str.91, i32 noundef 32, ptr noundef %sock)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_sock_rcv_skb(ptr noundef %sk, ptr nocapture noundef readonly %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %secmark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %0 = ptrtoint ptr %secmark to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %secmark, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_security, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @apparmor_secmark_check(ptr noundef %5, ptr noundef nonnull @.str.86, i32 noundef 4, i32 noundef %1, ptr noundef %sk) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_socket_getpeersec_stream(ptr nocapture noundef readonly %sock, ptr noundef %optval, ptr noundef %optlen, i32 noundef %len) #1 align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #15
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !330
  %call = tail call fastcc ptr @begin_current_label_crit_section()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  %sk_security.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 73
  %3 = ptrtoint ptr %sk_security.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_security.i, align 8
  %peer.i = getelementptr inbounds %struct.aa_sk_ctx, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -92 to ptr), ptr %6
  %cmp.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %spec.select.i to i32
  br label %done

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %sub = add i32 %9, -1
  %arrayidx4 = getelementptr ptr, ptr %vec, i32 %sub
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns, align 4
  %call5 = call i32 @aa_label_asxprint(ptr noundef nonnull %name, ptr noundef %13, ptr noundef %spec.select.i, i32 noundef 7, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.done_crit_edge, label %if.else

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %len)
  %cmp7 = icmp ugt i32 %call5, %len
  br i1 %cmp7, label %if.else.if.end13_crit_edge, label %if.else9

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.else9:                                         ; preds = %if.else
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  call void @__check_object_size(ptr noundef %15, i32 noundef %call5, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.94, i32 noundef 174) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.else9.copy_to_user.exit_crit_edge, label %if.end.i.i

if.else9.copy_to_user.exit_crit_edge:             ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.else9
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %call5, i32 -1226833920) #24, !srcloc !345
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %15, i32 noundef %call5) #15
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef %15, i32 noundef %call5) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.else9.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %call5, %if.else9.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %call5, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %copy_to_user.exit.if.end13_crit_edge, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

copy_to_user.exit.if.end13_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end13:                                         ; preds = %copy_to_user.exit.if.end13_crit_edge, %if.else.if.end13_crit_edge
  %error.0 = phi i32 [ 0, %copy_to_user.exit.if.end13_crit_edge ], [ -34, %if.else.if.end13_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1117) #15
  %17 = call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !346
  %and.i = and i32 %19, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #15, !srcloc !347
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !348
  %20 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %call5, i32 -1226833921) #15, !srcloc !349
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #15, !srcloc !347
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  %spec.select = select i1 %tobool16.not, i32 %error.0, i32 -14
  br label %out

out:                                              ; preds = %if.end13, %copy_to_user.exit.out_crit_edge
  %error.1 = phi i32 [ -14, %copy_to_user.exit.out_crit_edge ], [ %spec.select, %if.end13 ]
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %22) #15
  br label %done

done:                                             ; preds = %out, %if.end.done_crit_edge, %if.then
  %error.2 = phi i32 [ %7, %if.then ], [ %error.1, %out ], [ -12, %if.end.done_crit_edge ]
  call fastcc void @end_current_label_crit_section(ptr noundef %call)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #15
  ret i32 %error.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apparmor_socket_getpeersec_dgram(ptr nocapture noundef readnone %sock, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %secid) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -92
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_sock_graft(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %parent) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc ptr @aa_get_current_label()
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_inet_conn_request(ptr noundef %sk, ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %secmark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %0 = ptrtoint ptr %secmark to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %secmark, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_security, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @apparmor_secmark_check(ptr noundef %5, ptr noundef nonnull @.str.81, i32 noundef 64, i32 noundef %1, ptr noundef %sk) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_cred_alloc_blank(ptr nocapture noundef readonly %cred, i32 noundef %gfp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.set_cred_label.exit_crit_edge, !prof !334

entry.set_cred_label.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_cred_label.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 35, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.set_cred_label) #15
  br label %set_cred_label.exit

set_cred_label.exit:                              ; preds = %do.end.i, %entry.set_cred_label.exit_crit_edge
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %add.ptr.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_cred_free(ptr nocapture noundef readonly %cred) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.cred_label.exit_crit_edge, !prof !334

entry.cred_label.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit

cred_label.exit:                                  ; preds = %do.end.i, %entry.cred_label.exit_crit_edge
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i2 = icmp eq ptr %4, null
  br i1 %tobool.not.i2, label %cred_label.exit.aa_put_label.exit_crit_edge, label %if.then.i

cred_label.exit.aa_put_label.exit_crit_edge:      ; preds = %cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %cred_label.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %4) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %cred_label.exit.aa_put_label.exit_crit_edge
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i5 = icmp eq ptr %add.ptr.i4, null
  br i1 %tobool.not.i5, label %do.end.i6, label %aa_put_label.exit.set_cred_label.exit_crit_edge, !prof !334

aa_put_label.exit.set_cred_label.exit_crit_edge:  ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_cred_label.exit

do.end.i6:                                        ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 35, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.set_cred_label) #15
  br label %set_cred_label.exit

set_cred_label.exit:                              ; preds = %do.end.i6, %aa_put_label.exit.set_cred_label.exit_crit_edge
  %9 = ptrtoint ptr %add.ptr.i4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %add.ptr.i4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_cred_prepare(ptr nocapture noundef readonly %new, ptr nocapture noundef readonly %old, i32 noundef %gfp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.cred_label.exit_crit_edge, !prof !334

entry.cred_label.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit

cred_label.exit:                                  ; preds = %do.end.i, %entry.cred_label.exit_crit_edge
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %4)
  %security.i2 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 23
  %5 = ptrtoint ptr %security.i2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %security.i2, align 4
  %7 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i3 = getelementptr i8, ptr %6, i32 %7
  %tobool.not.i4 = icmp eq ptr %add.ptr.i3, null
  br i1 %tobool.not.i4, label %do.end.i5, label %cred_label.exit.set_cred_label.exit_crit_edge, !prof !334

cred_label.exit.set_cred_label.exit_crit_edge:    ; preds = %cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_cred_label.exit

do.end.i5:                                        ; preds = %cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 35, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.set_cred_label) #15
  br label %set_cred_label.exit

set_cred_label.exit:                              ; preds = %do.end.i5, %cred_label.exit.set_cred_label.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr.i3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %add.ptr.i3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_cred_transfer(ptr nocapture noundef readonly %new, ptr nocapture noundef readonly %old) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.cred_label.exit_crit_edge, !prof !334

entry.cred_label.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit

cred_label.exit:                                  ; preds = %do.end.i, %entry.cred_label.exit_crit_edge
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %4)
  %security.i2 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 23
  %5 = ptrtoint ptr %security.i2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %security.i2, align 4
  %7 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i3 = getelementptr i8, ptr %6, i32 %7
  %tobool.not.i4 = icmp eq ptr %add.ptr.i3, null
  br i1 %tobool.not.i4, label %do.end.i5, label %cred_label.exit.set_cred_label.exit_crit_edge, !prof !334

cred_label.exit.set_cred_label.exit_crit_edge:    ; preds = %cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_cred_label.exit

do.end.i5:                                        ; preds = %cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 35, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.set_cred_label) #15
  br label %set_cred_label.exit

set_cred_label.exit:                              ; preds = %do.end.i5, %cred_label.exit.set_cred_label.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr.i3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %add.ptr.i3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apparmor_bprm_creds_for_exec(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_bprm_committing_creds(ptr nocapture noundef readonly %bprm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %entry.cred_label.exit.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %entry.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge, !prof !334

cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit

aa_current_raw_label.exit:                        ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge
  %cred = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 9
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 4
  %security.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %security.i, align 4
  %15 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %15
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.end.i, label %aa_current_raw_label.exit.cred_label.exit_crit_edge, !prof !334

aa_current_raw_label.exit.cred_label.exit_crit_edge: ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit

do.end.i:                                         ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit

cred_label.exit:                                  ; preds = %do.end.i, %aa_current_raw_label.exit.cred_label.exit_crit_edge
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %proxy = getelementptr inbounds %struct.aa_label, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proxy, align 4
  %proxy2 = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 3
  %20 = ptrtoint ptr %proxy2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %proxy2, align 4
  %cmp = icmp eq ptr %19, %21
  br i1 %cmp, label %cred_label.exit.cleanup_crit_edge, label %lor.lhs.false

cred_label.exit.cleanup_crit_edge:                ; preds = %cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %cred_label.exit
  %flags = getelementptr inbounds %struct.aa_label, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cred, align 4
  %26 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %files = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 108
  %30 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %files, align 4
  tail call void @aa_inherit_files(ptr noundef %25, ptr noundef %31) #15
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %pdeath_signal = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 60
  %34 = ptrtoint ptr %pdeath_signal to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %pdeath_signal, align 8
  tail call void @__aa_transition_rlimits(ptr noundef %10, ptr noundef %17) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %cred_label.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_bprm_committed_creds(ptr nocapture noundef readnone %bprm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
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
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !334

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.aa_clear_task_ctx_trans) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %previous.i = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 2
  %7 = ptrtoint ptr %previous.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %previous.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.aa_put_label.exit.i_crit_edge, label %if.then.i.i

if.end.i.aa_put_label.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %8, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %8, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_label.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.i.aa_put_label.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef 3) #15
  br label %aa_put_label.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %8) #15
  br label %aa_put_label.exit.i

aa_put_label.exit.i:                              ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_label.exit.i_crit_edge, %if.end.i.aa_put_label.exit.i_crit_edge
  %onexec.i = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %onexec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %onexec.i, align 4
  %tobool.not.i32.i = icmp eq ptr %11, null
  br i1 %tobool.not.i32.i, label %aa_put_label.exit.i.aa_clear_task_ctx_trans.exit_crit_edge, label %if.then.i36.i

aa_put_label.exit.i.aa_clear_task_ctx_trans.exit_crit_edge: ; preds = %aa_put_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_clear_task_ctx_trans.exit

if.then.i36.i:                                    ; preds = %aa_put_label.exit.i
  %call.i.i.i.i.i.i.i33.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i34.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i34.i)
  %cmp.i.i.i.i.i35.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i34.i, 1
  br i1 %cmp.i.i.i.i.i35.i, label %if.then.i.i40.i, label %if.end5.i.i.i.i.i38.i

if.end5.i.i.i.i.i38.i:                            ; preds = %if.then.i36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i34.i)
  %.not.i.i.i.i.i37.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i34.i, 0
  br i1 %.not.i.i.i.i.i37.i, label %if.end5.i.i.i.i.i38.i.aa_clear_task_ctx_trans.exit_crit_edge, label %if.then10.i.i.i.i.i39.i, !prof !331

if.end5.i.i.i.i.i38.i.aa_clear_task_ctx_trans.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_clear_task_ctx_trans.exit

if.then10.i.i.i.i.i39.i:                          ; preds = %if.end5.i.i.i.i.i38.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #15
  br label %aa_clear_task_ctx_trans.exit

if.then.i.i40.i:                                  ; preds = %if.then.i36.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %11) #15
  br label %aa_clear_task_ctx_trans.exit

aa_clear_task_ctx_trans.exit:                     ; preds = %if.then.i.i40.i, %if.then10.i.i.i.i.i39.i, %if.end5.i.i.i.i.i38.i.aa_clear_task_ctx_trans.exit_crit_edge, %aa_put_label.exit.i.aa_clear_task_ctx_trans.exit_crit_edge
  %13 = ptrtoint ptr %previous.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %previous.i, align 8
  %14 = ptrtoint ptr %onexec.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %onexec.i, align 4
  %token.i = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 3
  %15 = ptrtoint ptr %token.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %token.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_task_free(ptr nocapture noundef readonly %task) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 215
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.aa_free_task_ctx.exit_crit_edge, label %if.then.i

entry.aa_free_task_ctx.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_free_task_ctx.exit

if.then.i:                                        ; preds = %entry
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_put_label.exit.i_crit_edge, label %if.then.i.i

if.then.i.aa_put_label.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_label.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.i.aa_put_label.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #15
  br label %aa_put_label.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %4) #15
  br label %aa_put_label.exit.i

aa_put_label.exit.i:                              ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_label.exit.i_crit_edge, %if.then.i.aa_put_label.exit.i_crit_edge
  %previous.i = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 2
  %6 = ptrtoint ptr %previous.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %previous.i, align 8
  %tobool.not.i4.i = icmp eq ptr %7, null
  br i1 %tobool.not.i4.i, label %aa_put_label.exit.i.aa_put_label.exit13.i_crit_edge, label %if.then.i8.i

aa_put_label.exit.i.aa_put_label.exit13.i_crit_edge: ; preds = %aa_put_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit13.i

if.then.i8.i:                                     ; preds = %aa_put_label.exit.i
  %call.i.i.i.i.i.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i6.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i6.i)
  %cmp.i.i.i.i.i7.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i6.i, 1
  br i1 %cmp.i.i.i.i.i7.i, label %if.then.i.i12.i, label %if.end5.i.i.i.i.i10.i

if.end5.i.i.i.i.i10.i:                            ; preds = %if.then.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i6.i)
  %.not.i.i.i.i.i9.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i6.i, 0
  br i1 %.not.i.i.i.i.i9.i, label %if.end5.i.i.i.i.i10.i.aa_put_label.exit13.i_crit_edge, label %if.then10.i.i.i.i.i11.i, !prof !331

if.end5.i.i.i.i.i10.i.aa_put_label.exit13.i_crit_edge: ; preds = %if.end5.i.i.i.i.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit13.i

if.then10.i.i.i.i.i11.i:                          ; preds = %if.end5.i.i.i.i.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #15
  br label %aa_put_label.exit13.i

if.then.i.i12.i:                                  ; preds = %if.then.i8.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %7) #15
  br label %aa_put_label.exit13.i

aa_put_label.exit13.i:                            ; preds = %if.then.i.i12.i, %if.then10.i.i.i.i.i11.i, %if.end5.i.i.i.i.i10.i.aa_put_label.exit13.i_crit_edge, %aa_put_label.exit.i.aa_put_label.exit13.i_crit_edge
  %onexec.i = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %onexec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %onexec.i, align 4
  %tobool.not.i14.i = icmp eq ptr %10, null
  br i1 %tobool.not.i14.i, label %aa_put_label.exit13.i.aa_free_task_ctx.exit_crit_edge, label %if.then.i18.i

aa_put_label.exit13.i.aa_free_task_ctx.exit_crit_edge: ; preds = %aa_put_label.exit13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_free_task_ctx.exit

if.then.i18.i:                                    ; preds = %aa_put_label.exit13.i
  %call.i.i.i.i.i.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %10, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %10, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i16.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i16.i)
  %cmp.i.i.i.i.i17.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i16.i, 1
  br i1 %cmp.i.i.i.i.i17.i, label %if.then.i.i22.i, label %if.end5.i.i.i.i.i20.i

if.end5.i.i.i.i.i20.i:                            ; preds = %if.then.i18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i16.i)
  %.not.i.i.i.i.i19.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i16.i, 0
  br i1 %.not.i.i.i.i.i19.i, label %if.end5.i.i.i.i.i20.i.aa_free_task_ctx.exit_crit_edge, label %if.then10.i.i.i.i.i21.i, !prof !331

if.end5.i.i.i.i.i20.i.aa_free_task_ctx.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_free_task_ctx.exit

if.then10.i.i.i.i.i21.i:                          ; preds = %if.end5.i.i.i.i.i20.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef 3) #15
  br label %aa_free_task_ctx.exit

if.then.i.i22.i:                                  ; preds = %if.then.i18.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %10) #15
  br label %aa_free_task_ctx.exit

aa_free_task_ctx.exit:                            ; preds = %if.then.i.i22.i, %if.then10.i.i.i.i.i21.i, %if.end5.i.i.i.i.i20.i.aa_free_task_ctx.exit_crit_edge, %aa_put_label.exit13.i.aa_free_task_ctx.exit_crit_edge, %entry.aa_free_task_ctx.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_task_alloc(ptr nocapture noundef readonly %task, i32 noundef %clone_flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 215
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task2 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task2, align 8
  %security.i4 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 215
  %7 = ptrtoint ptr %security.i4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %security.i4, align 16
  %add.ptr.i5 = getelementptr i8, ptr %8, i32 %2
  %9 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr.i5, i32 24)
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %entry.aa_get_label.exit.i_crit_edge, label %if.then.i.i

entry.aa_get_label.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit.i

if.then.i.i:                                      ; preds = %entry
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !334

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_label.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !331

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_label.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %.sink.i.i.i.i.i.i) #15
  br label %aa_get_label.exit.i

aa_get_label.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_label.exit.i_crit_edge, %entry.aa_get_label.exit.i_crit_edge
  %previous.i = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 2
  %14 = ptrtoint ptr %previous.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %previous.i, align 8
  %tobool.not.i6.i = icmp eq ptr %15, null
  br i1 %tobool.not.i6.i, label %aa_get_label.exit.i.aa_get_label.exit16.i_crit_edge, label %if.then.i10.i

aa_get_label.exit.i.aa_get_label.exit16.i_crit_edge: ; preds = %aa_get_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit16.i

if.then.i10.i:                                    ; preds = %aa_get_label.exit.i
  %call.i.i.i.i.i.i.i7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i8.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i8.i)
  %tobool1.not.i.i.i.i.i9.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i8.i, 0
  br i1 %tobool1.not.i.i.i.i.i9.i, label %if.then.i10.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge, label %if.else.i.i.i.i.i13.i, !prof !334

if.then.i10.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge: ; preds = %if.then.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i15.i

if.else.i.i.i.i.i13.i:                            ; preds = %if.then.i10.i
  %add.i.i.i.i.i11.i = add i32 %asmresult.i.i.i.i.i.i.i8.i, 1
  %17 = or i32 %add.i.i.i.i.i11.i, %asmresult.i.i.i.i.i.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i12.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i12.i, label %if.else.i.i.i.i.i13.i.aa_get_label.exit16.i_crit_edge, label %if.else.i.i.i.i.i13.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge, !prof !331

if.else.i.i.i.i.i13.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge: ; preds = %if.else.i.i.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i15.i

if.else.i.i.i.i.i13.i.aa_get_label.exit16.i_crit_edge: ; preds = %if.else.i.i.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label.exit16.i

if.end15.sink.split.i.i.i.i.i15.i:                ; preds = %if.else.i.i.i.i.i13.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge, %if.then.i10.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge
  %.sink.i.i.i.i.i14.i = phi i32 [ 2, %if.then.i10.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge ], [ 1, %if.else.i.i.i.i.i13.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef %.sink.i.i.i.i.i14.i) #15
  br label %aa_get_label.exit16.i

aa_get_label.exit16.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i15.i, %if.else.i.i.i.i.i13.i.aa_get_label.exit16.i_crit_edge, %aa_get_label.exit.i.aa_get_label.exit16.i_crit_edge
  %onexec.i = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 1
  %18 = ptrtoint ptr %onexec.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %onexec.i, align 4
  %tobool.not.i17.i = icmp eq ptr %19, null
  br i1 %tobool.not.i17.i, label %aa_get_label.exit16.i.aa_dup_task_ctx.exit_crit_edge, label %if.then.i21.i

aa_get_label.exit16.i.aa_dup_task_ctx.exit_crit_edge: ; preds = %aa_get_label.exit16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_dup_task_ctx.exit

if.then.i21.i:                                    ; preds = %aa_get_label.exit16.i
  %call.i.i.i.i.i.i.i18.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i19.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i19.i)
  %tobool1.not.i.i.i.i.i20.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i19.i, 0
  br i1 %tobool1.not.i.i.i.i.i20.i, label %if.then.i21.i.if.end15.sink.split.i.i.i.i.i26.i_crit_edge, label %if.else.i.i.i.i.i24.i, !prof !334

if.then.i21.i.if.end15.sink.split.i.i.i.i.i26.i_crit_edge: ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i26.i

if.else.i.i.i.i.i24.i:                            ; preds = %if.then.i21.i
  %add.i.i.i.i.i22.i = add i32 %asmresult.i.i.i.i.i.i.i19.i, 1
  %21 = or i32 %add.i.i.i.i.i22.i, %asmresult.i.i.i.i.i.i.i19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i.i23.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i.i23.i, label %if.else.i.i.i.i.i24.i.aa_dup_task_ctx.exit_crit_edge, label %if.else.i.i.i.i.i24.i.if.end15.sink.split.i.i.i.i.i26.i_crit_edge, !prof !331

if.else.i.i.i.i.i24.i.if.end15.sink.split.i.i.i.i.i26.i_crit_edge: ; preds = %if.else.i.i.i.i.i24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i26.i

if.else.i.i.i.i.i24.i.aa_dup_task_ctx.exit_crit_edge: ; preds = %if.else.i.i.i.i.i24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_dup_task_ctx.exit

if.end15.sink.split.i.i.i.i.i26.i:                ; preds = %if.else.i.i.i.i.i24.i.if.end15.sink.split.i.i.i.i.i26.i_crit_edge, %if.then.i21.i.if.end15.sink.split.i.i.i.i.i26.i_crit_edge
  %.sink.i.i.i.i.i25.i = phi i32 [ 2, %if.then.i21.i.if.end15.sink.split.i.i.i.i.i26.i_crit_edge ], [ 1, %if.else.i.i.i.i.i24.i.if.end15.sink.split.i.i.i.i.i26.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef %.sink.i.i.i.i.i25.i) #15
  br label %aa_dup_task_ctx.exit

aa_dup_task_ctx.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i26.i, %if.else.i.i.i.i.i24.i.aa_dup_task_ctx.exit_crit_edge, %aa_get_label.exit16.i.aa_dup_task_ctx.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_current_getsecid_subj(ptr nocapture noundef writeonly %secid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @aa_get_current_label()
  %secid1 = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %secid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %secid1, align 4
  %2 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %secid, align 4
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.aa_put_label.exit_crit_edge, label %if.then.i

entry.aa_put_label.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %entry.aa_put_label.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apparmor_task_getsecid_obj(ptr noundef %p, ptr nocapture noundef writeonly %secid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @aa_get_task_label(ptr noundef %p) #15
  %secid1 = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %secid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %secid1, align 4
  %2 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %secid, align 4
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.aa_put_label.exit_crit_edge, label %if.then.i

entry.aa_put_label.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %entry.aa_put_label.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_task_setrlimit(ptr noundef %task, i32 noundef %resource, ptr noundef %new_rlim) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !334

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge, label %if.then.i

aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #15
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %10, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.aa_label, ptr %label.0.i, i32 0, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %__begin_current_label_crit_section.exit.if.end_crit_edge

__begin_current_label_crit_section.exit.if.end_crit_edge: ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @aa_task_setrlimit(ptr noundef %label.0.i, ptr noundef %task, i32 noundef %resource, ptr noundef %new_rlim) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %__begin_current_label_crit_section.exit.if.end_crit_edge
  %error.0 = phi i32 [ 0, %__begin_current_label_crit_section.exit.if.end_crit_edge ], [ %call1, %if.then ]
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apparmor_task_kill(ptr noundef %target, ptr nocapture noundef readnone %info, i32 noundef %sig, ptr noundef readonly %cred) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cred, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %0 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i.i.i, align 4
  %2 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.then.cred_label.exit.i.i_crit_edge, !prof !334

if.then.cred_label.exit.i.i_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %if.then.cred_label.exit.i.i_crit_edge
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge, !prof !334

cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_newest_cred_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_get_newest_cred_label.exit

aa_get_newest_cred_label.exit:                    ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %4) #15
  %call1 = tail call ptr @aa_get_task_label(ptr noundef %target) #15
  %call2 = tail call i32 @aa_may_signal(ptr noundef %call1.i, ptr noundef %call1, i32 noundef %sig) #15
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %aa_get_newest_cred_label.exit.aa_put_label.exit_crit_edge, label %if.then.i

aa_get_newest_cred_label.exit.aa_put_label.exit_crit_edge: ; preds = %aa_get_newest_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %aa_get_newest_cred_label.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call1.i, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1.i, ptr nonnull %call1.i, i32 1, ptr nonnull elementtype(i32) %call1.i) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1.i, i32 noundef 3) #15
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call1.i) #15
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %aa_get_newest_cred_label.exit.aa_put_label.exit_crit_edge
  %tobool.not.i18 = icmp eq ptr %call1, null
  br i1 %tobool.not.i18, label %aa_put_label.exit.cleanup_crit_edge, label %if.then.i22

aa_put_label.exit.cleanup_crit_edge:              ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i22:                                      ; preds = %aa_put_label.exit
  %call.i.i.i.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i20 = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i20)
  %cmp.i.i.i.i.i21 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i20, 1
  br i1 %cmp.i.i.i.i.i21, label %if.then.i.i26, label %if.end5.i.i.i.i.i24

if.end5.i.i.i.i.i24:                              ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i20)
  %.not.i.i.i.i.i23 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i20, 0
  br i1 %.not.i.i.i.i.i23, label %if.end5.i.i.i.i.i24.cleanup_crit_edge, label %if.then10.i.i.i.i.i25, !prof !331

if.end5.i.i.i.i.i24.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i.i25:                            ; preds = %if.end5.i.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #15
  br label %cleanup

if.then.i.i26:                                    ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %security.i.i.i.i, align 4
  %15 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 %15
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %if.end.cred_label.exit.i.i.i_crit_edge, !prof !334

if.end.cred_label.exit.i.i.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %if.end.cred_label.exit.i.i.i_crit_edge
  %16 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i28 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i28, label %do.end.i.i.i29, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !334

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit.i

do.end.i.i.i29:                                   ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i29, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i30 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i30, label %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge, label %if.then.i32

aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__begin_current_label_crit_section.exit

if.then.i32:                                      ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i31 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %17) #15
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i32, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i31, %if.then.i32 ], [ %17, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %call4 = tail call ptr @aa_get_task_label(ptr noundef %target) #15
  %call5 = tail call i32 @aa_may_signal(ptr noundef %label.0.i, ptr noundef %call4, i32 noundef %sig) #15
  %tobool.not.i33 = icmp eq ptr %call4, null
  br i1 %tobool.not.i33, label %__begin_current_label_crit_section.exit.aa_put_label.exit42_crit_edge, label %if.then.i37

__begin_current_label_crit_section.exit.aa_put_label.exit42_crit_edge: ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit42

if.then.i37:                                      ; preds = %__begin_current_label_crit_section.exit
  %call.i.i.i.i.i.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call4, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call4, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call4, ptr nonnull %call4, i32 1, ptr nonnull elementtype(i32) %call4) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i35 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i35)
  %cmp.i.i.i.i.i36 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i35, 1
  br i1 %cmp.i.i.i.i.i36, label %if.then.i.i41, label %if.end5.i.i.i.i.i39

if.end5.i.i.i.i.i39:                              ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i35)
  %.not.i.i.i.i.i38 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i35, 0
  br i1 %.not.i.i.i.i.i38, label %if.end5.i.i.i.i.i39.aa_put_label.exit42_crit_edge, label %if.then10.i.i.i.i.i40, !prof !331

if.end5.i.i.i.i.i39.aa_put_label.exit42_crit_edge: ; preds = %if.end5.i.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_put_label.exit42

if.then10.i.i.i.i.i40:                            ; preds = %if.end5.i.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call4, i32 noundef 3) #15
  br label %aa_put_label.exit42

if.then.i.i41:                                    ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call4) #15
  br label %aa_put_label.exit42

aa_put_label.exit42:                              ; preds = %if.then.i.i41, %if.then10.i.i.i.i.i40, %if.end5.i.i.i.i.i39.aa_put_label.exit42_crit_edge, %__begin_current_label_crit_section.exit.aa_put_label.exit42_crit_edge
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  br label %cleanup

cleanup:                                          ; preds = %aa_put_label.exit42, %if.then.i.i26, %if.then10.i.i.i.i.i25, %if.end5.i.i.i.i.i24.cleanup_crit_edge, %aa_put_label.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %aa_put_label.exit42 ], [ %call2, %aa_put_label.exit.cleanup_crit_edge ], [ %call2, %if.end5.i.i.i.i.i24.cleanup_crit_edge ], [ %call2, %if.then10.i.i.i.i.i25 ], [ %call2, %if.then.i.i26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_audit_rule_init(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_audit_rule_known(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_audit_rule_match(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_audit_rule_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apparmor_secid_to_secctx(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apparmor_secctx_to_secid(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @apparmor_release_secctx(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_get_task_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_may_ptrace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @end_current_label_crit_section(ptr noundef %label) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %entry.cred_label.exit.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %entry.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge, !prof !334

cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit

aa_current_raw_label.exit:                        ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge
  %cmp.not = icmp eq ptr %10, %label
  %tobool.not.i = icmp eq ptr %label, null
  %or.cond = or i1 %tobool.not.i, %cmp.not
  br i1 %or.cond, label %aa_current_raw_label.exit.if.end_crit_edge, label %if.then.i

aa_current_raw_label.exit.if.end_crit_edge:       ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %aa_current_raw_label.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %label, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label, ptr nonnull %label, i32 1, ptr nonnull elementtype(i32) %label) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label, i32 noundef 3) #15
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %label) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %aa_current_raw_label.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_newest_label(ptr noundef %l) unnamed_addr #11 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.aa_label, ptr %l, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.i118, label %if.then2

if.then2:                                         ; preds = %if.end
  %proxy = getelementptr inbounds %struct.aa_label, ptr %l, i32 0, i32 3
  %2 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proxy, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end, label %if.then2.if.end20_crit_edge, !prof !334

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.aa_get_newest_label) #15
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then2.if.end20_crit_edge
  %4 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proxy, align 4
  %label = getelementptr inbounds %struct.aa_proxy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %label, align 4
  %tobool33.not = icmp eq ptr %7, null
  br i1 %tobool33.not, label %do.end51, label %if.end20.if.end57_crit_edge, !prof !334

if.end20.if.end57_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

do.end51:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.aa_get_newest_label) #15
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %if.end20.if.end57_crit_edge
  %8 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proxy, align 4
  %label68 = getelementptr inbounds %struct.aa_proxy, ptr %9, i32 0, i32 1
  %10 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !338
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.end57.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end57.do.body.i.preheader_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end57
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.body.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.do.body.i.preheader_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.do.body.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #15
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i.i, %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, %land.lhs.true.i.i.do.body.i.preheader_crit_edge, %if.end57.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %kref_get_unless_zero.exit.i.do.body.i_crit_edge, %do.body.i.preheader
  %14 = ptrtoint ptr %label68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %label68, align 4
  %call.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end8.i_crit_edge

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @aa_get_label_rcu.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @aa_get_label_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 401, ptr noundef nonnull @.str.42) #15
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %do.body.i.do.end8.i_crit_edge
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %do.end8.i.do.end14.i_crit_edge, label %land.rhs.i

do.end8.i.do.end14.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14.i

land.rhs.i:                                       ; preds = %do.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #15
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %15, i32 noundef 4) #15
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.rhs.i
  %18 = phi i32 [ %17, %land.rhs.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %18, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #15
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #15
  %20 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 %21, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %15) #15, !srcloc !350
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !331

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 0) #15
  %26 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #15
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.do.body.i_crit_edge, label %kref_get_unless_zero.exit.i.do.end14.i_crit_edge

kref_get_unless_zero.exit.i.do.end14.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14.i

kref_get_unless_zero.exit.i.do.body.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.end14.i:                                       ; preds = %kref_get_unless_zero.exit.i.do.end14.i_crit_edge, %do.end8.i.do.end14.i_crit_edge
  %call.i18.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i18.i, label %do.end14.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true.i21.i

do.end14.i.aa_get_label_rcu.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label_rcu.exit

land.lhs.true.i21.i:                              ; preds = %do.end14.i
  %call1.i19.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label_rcu.exit

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_get_label_rcu.exit

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #15
  br label %aa_get_label_rcu.exit

aa_get_label_rcu.exit:                            ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, %do.end14.i.aa_get_label_rcu.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !339
  %28 = call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i.i.i25.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i26.i, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br i1 %tobool11.not.i, label %do.end89, label %aa_get_label_rcu.exit.return_crit_edge, !prof !334

aa_get_label_rcu.exit.return_crit_edge:           ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end89:                                         ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.aa_get_newest_label) #15
  br label %return

if.then.i118:                                     ; preds = %if.end
  %call.i.i.i.i.i.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %l, i32 1, i32 3, i32 1) #15
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %l, ptr nonnull %l, i32 1, ptr nonnull elementtype(i32) %l) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !334

if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i118
  %add.i.i.i.i.i119 = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i119, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i120 = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i120, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !331

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.return_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %l, i32 noundef %.sink.i.i.i.i.i) #15
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.return_crit_edge, %do.end89, %aa_get_label_rcu.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %do.end89 ], [ %15, %aa_get_label_rcu.exit.return_crit_edge ], [ %l, %if.else.i.i.i.i.i.return_crit_edge ], [ %l, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_next_confined(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_capable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_remount(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_bind_mount(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_mount_change_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_move_mount(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_new_mount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_umount(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_current_label() unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %entry.cred_label.exit.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %entry.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %aa_current_raw_label.exit, label %aa_current_raw_label.exit.thread, !prof !334

aa_current_raw_label.exit:                        ; preds = %cred_label.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  call void @__asan_load4_noabort(i32 32)
  %11 = load i32, ptr inttoptr (i32 32 to ptr), align 32
  %and = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %aa_current_raw_label.exit.cleanup_crit_edge, label %aa_current_raw_label.exit.if.then_crit_edge

aa_current_raw_label.exit.if.then_crit_edge:      ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

aa_current_raw_label.exit.cleanup_crit_edge:      ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

aa_current_raw_label.exit.thread:                 ; preds = %cred_label.exit.i.i
  %flags5 = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %12 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags5, align 4
  %and6 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not7 = icmp eq i32 %and6, 0
  br i1 %tobool.not7, label %if.then.i, label %aa_current_raw_label.exit.thread.if.then_crit_edge

aa_current_raw_label.exit.thread.if.then_crit_edge: ; preds = %aa_current_raw_label.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %aa_current_raw_label.exit.thread.if.then_crit_edge, %aa_current_raw_label.exit.if.then_crit_edge
  %call1 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10)
  br label %cleanup

if.then.i:                                        ; preds = %aa_current_raw_label.exit.thread
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %10, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %10, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #15, !srcloc !333
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !334

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !331

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef %.sink.i.i.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %if.then, %aa_current_raw_label.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.then ], [ %10, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %10, %if.end15.sink.split.i.i.i.i.i ], [ null, %aa_current_raw_label.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_pivotroot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @begin_current_label_crit_section() unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %entry.cred_label.exit.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %entry.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge, !prof !334

cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit

aa_current_raw_label.exit:                        ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.35, i32 noundef 164) #15
  %flags = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %aa_current_raw_label.exit.if.end7_crit_edge, label %if.then

aa_current_raw_label.exit.if.end7_crit_edge:      ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then:                                          ; preds = %aa_current_raw_label.exit
  %call4 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10)
  %call5 = tail call i32 @aa_replace_current_label(ptr noundef %call4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %if.then
  %tobool.not.i = icmp eq ptr %call4, null
  br i1 %tobool.not.i, label %if.then6.if.end7_crit_edge, label %if.then.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call4, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr nonnull %call4, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call4, ptr nonnull %call4, i32 1, ptr nonnull elementtype(i32) %call4) #15, !srcloc !336
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i.i, !prof !331

if.end5.i.i.i.i.i.if.end7_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call4, i32 noundef 3) #15
  br label %if.end7

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @aa_label_kref(ptr noundef nonnull %call4) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %if.then.if.end7_crit_edge, %aa_current_raw_label.exit.if.end7_crit_edge
  %label.0 = phi ptr [ %call4, %if.then.if.end7_crit_edge ], [ %10, %aa_current_raw_label.exit.if.end7_crit_edge ], [ null, %if.then6.if.end7_crit_edge ], [ %call4, %if.end5.i.i.i.i.i.if.end7_crit_edge ], [ %call4, %if.then10.i.i.i.i.i ], [ %call4, %if.then.i.i ]
  ret ptr %label.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_path_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_replace_current_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @common_perm_rm(ptr noundef %op, ptr nocapture noundef readonly %dir, ptr noundef %dentry) unnamed_addr #1 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  %cond = alloca %struct.path_cond, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dir, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mnt_userns.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond) #15
  %6 = ptrtoint ptr %cond to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %cond, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %7 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not.i = icmp sgt i32 %10, -1
  br i1 %tobool.not.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %16 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %5, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %14, %5
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

if.end.i_uid_into_mnt.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %if.end
  %cmp.i21.i.i = icmp eq ptr %14, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %14, [1 x i32] %16) #15
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %5, i32 noundef %uid.0.i.i) #15
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %if.end.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %if.end.i_uid_into_mnt.exit_crit_edge ]
  %17 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.sroa.0.0.i.i, ptr %cond, align 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 8
  %mode = getelementptr inbounds %struct.path_cond, ptr %cond, i32 0, i32 1
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #15
  %21 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %22 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dir, align 4
  %24 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %path.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dentry, ptr %21, align 4
  %call.i = call fastcc i32 @common_perm(ptr noundef %op, ptr noundef nonnull %path.i, i32 noundef 32, ptr noundef nonnull %cond) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #15
  br label %cleanup

cleanup:                                          ; preds = %i_uid_into_mnt.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %i_uid_into_mnt.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @common_perm(ptr noundef %op, ptr noundef %path, i32 noundef %mask, ptr noundef %cond) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i.i, align 4
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !334

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !334

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge, label %if.then.i

aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #15
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %10, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.aa_label, ptr %label.0.i, i32 0, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %__begin_current_label_crit_section.exit.if.end_crit_edge

__begin_current_label_crit_section.exit.if.end_crit_edge: ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @aa_path_perm(ptr noundef %op, ptr noundef %label.0.i, ptr noundef %path, i32 noundef 0, i32 noundef %mask, ptr noundef %cond) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %__begin_current_label_crit_section.exit.if.end_crit_edge
  %error.0 = phi i32 [ 0, %__begin_current_label_crit_section.exit.if.end_crit_edge ], [ %call1, %if.then ]
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_path_perm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @common_perm_cond(ptr noundef %op, ptr noundef %path, i32 noundef %mask) unnamed_addr #1 align 64 {
entry:
  %cond = alloca %struct.path_cond, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mnt_userns.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond) #15
  %4 = ptrtoint ptr %cond to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %cond, align 8, !annotation !330
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %14 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %3, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %12, %3
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

entry.i_uid_into_mnt.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %entry
  %cmp.i21.i.i = icmp eq ptr %12, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %12, [1 x i32] %14) #15
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %3, i32 noundef %uid.0.i.i) #15
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %entry.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %entry.i_uid_into_mnt.exit_crit_edge ]
  %15 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.sroa.0.0.i.i, ptr %cond, align 8
  %mode = getelementptr inbounds %struct.path_cond, ptr %cond, i32 0, i32 1
  %16 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry, align 4
  %d_inode.i13 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i13, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 8
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %mode, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 9
  %23 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %tobool.not.i = icmp sgt i32 %26, -1
  br i1 %tobool.not.i, label %if.end, label %i_uid_into_mnt.exit.cleanup_crit_edge

i_uid_into_mnt.exit.cleanup_crit_edge:            ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = call fastcc i32 @common_perm(ptr noundef %op, ptr noundef %path, i32 noundef %mask, ptr noundef nonnull %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %i_uid_into_mnt.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %i_uid_into_mnt.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @common_file_perm(ptr noundef %op, ptr noundef %file, i32 noundef %mask, i1 noundef zeroext %in_atomic) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.path, ptr @aa_null, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.path, ptr @aa_null, i32 0, i32 1), align 4
  %cmp = icmp eq ptr %1, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %security.i.i.i.i, align 4
  %11 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 %11
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %if.end.cred_label.exit.i.i.i_crit_edge, !prof !334

if.end.cred_label.exit.i.i.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cred_label) #15
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %if.end.cred_label.exit.i.i.i_crit_edge
  %12 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !334

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_cred_raw_label) #15
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge, label %if.then.i

aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %13) #15
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %13, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %call1 = tail call i32 @aa_file_perm(ptr noundef %op, ptr noundef %label.0.i, ptr noundef %file, i32 noundef %mask, i1 noundef zeroext %in_atomic) #15
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  br label %cleanup

cleanup:                                          ; preds = %__begin_current_label_crit_section.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %__begin_current_label_crit_section.exit ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_file_perm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_getprocattr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_setprocattr_changehat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_change_profile(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_audit_msg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_af_perm(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_sk_perm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aa_sock_msg_perm(ptr noundef %op, i32 noundef %request, ptr noundef readonly %sock, ptr noundef readnone %msg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !334

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 954, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.aa_sock_msg_perm) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !334

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 955, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.aa_sock_msg_perm) #15
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %msg, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !334

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 956, i32 noundef 9, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.aa_sock_msg_perm) #15
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i1 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i1 to ptr
  %preempt_count.i2 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i2, align 4
  %and99 = and i32 %9, 983040
  %or = or i32 %and99, %and
  %10 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i3 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i3 to ptr
  %preempt_count.i4 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i4, align 4
  %and101 = and i32 %13, 65280
  %or102 = or i32 %or, %and101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or102)
  %tobool103.not = icmp eq i32 %or102, 0
  br i1 %tobool103.not, label %if.end86.if.end125_crit_edge, label %do.end119, !prof !331

if.end86.if.end125_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

do.end119:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 957, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.aa_sock_msg_perm) #15
  br label %if.end125

if.end125:                                        ; preds = %do.end119, %if.end86.if.end125_crit_edge
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %call137 = tail call i32 @aa_sk_perm(ptr noundef %op, i32 noundef %request, ptr noundef %15) #15
  ret i32 %call137
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aa_sock_perm(ptr noundef %op, i32 noundef %request, ptr noundef readonly %sock) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !334

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 985, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.aa_sock_perm) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !334

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 986, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.aa_sock_perm) #15
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i108 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i108 to ptr
  %preempt_count.i109 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i109 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i109, align 4
  %and63 = and i32 %9, 983040
  %or = or i32 %and63, %and
  %10 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i110 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i110 to ptr
  %preempt_count.i111 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i111 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i111, align 4
  %and65 = and i32 %13, 65280
  %or66 = or i32 %or, %and65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or66)
  %tobool67.not = icmp eq i32 %or66, 0
  br i1 %tobool67.not, label %if.end50.if.end89_crit_edge, label %do.end83, !prof !331

if.end50.if.end89_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

do.end83:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 987, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.aa_sock_perm) #15
  br label %if.end89

if.end89:                                         ; preds = %do.end83, %if.end50.if.end89_crit_edge
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %call101 = tail call i32 @aa_sk_perm(ptr noundef %op, i32 noundef %request, ptr noundef %15) #15
  ret i32 %call101
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aa_sock_opt_perm(ptr noundef %op, i32 noundef %request, ptr noundef readonly %sock) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !334

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1014, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.aa_sock_opt_perm) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !334

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1015, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.aa_sock_opt_perm) #15
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i1 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i1 to ptr
  %preempt_count.i2 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i2, align 4
  %and63 = and i32 %9, 983040
  %or = or i32 %and63, %and
  %10 = tail call i32 @llvm.read_register.i32(metadata !320) #15
  %and.i.i3 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i3 to ptr
  %preempt_count.i4 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i4, align 4
  %and65 = and i32 %13, 65280
  %or66 = or i32 %or, %and65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or66)
  %tobool67.not = icmp eq i32 %or66, 0
  br i1 %tobool67.not, label %if.end50.if.end89_crit_edge, label %do.end83, !prof !331

if.end50.if.end89_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

do.end83:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.aa_sock_opt_perm) #15
  br label %if.end89

if.end89:                                         ; preds = %do.end83, %if.end50.if.end89_crit_edge
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %call101 = tail call i32 @aa_sk_perm(ptr noundef %op, i32 noundef %request, ptr noundef %15) #15
  ret i32 %call101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_asxprint(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_inherit_files(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aa_transition_rlimits(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_task_setrlimit(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_may_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { cold }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !28, !30, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !47, !49, !51, !53, !54, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !78, !80, !81, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !104, !105, !106, !108, !110, !111, !113, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !170, !171, !173, !175, !177, !178, !180, !182, !183, !184, !186, !188, !190, !191, !193, !194, !195, !197, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !264, !266, !268, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !312, !314, !316, !318, !319}
!llvm.named.register.sp = !{!320}
!llvm.module.flags = !{!321, !322, !323, !324, !325, !326, !327, !328}
!llvm.ident = !{!329}

!0 = !{ptr @apparmor_blob_sizes, !1, !"apparmor_blob_sizes", i1 false, i1 false}
!1 = !{!"../security/apparmor/lsm.c", i32 1182, i32 23}
!2 = !{ptr @aa_g_profile_mode, !3, !"aa_g_profile_mode", i1 false, i1 false}
!3 = !{!"../security/apparmor/lsm.c", i32 1330, i32 19}
!4 = !{ptr @__param_mode, !5, !"__param_mode", i1 false, i1 false}
!5 = !{!"../security/apparmor/lsm.c", i32 1331, i32 1}
!6 = !{ptr @aa_g_hash_policy, !7, !"aa_g_hash_policy", i1 false, i1 false}
!7 = !{!"../security/apparmor/lsm.c", i32 1335, i32 6}
!8 = !{ptr @__param_hash_policy, !9, !"__param_hash_policy", i1 false, i1 false}
!9 = !{!"../security/apparmor/lsm.c", i32 1337, i32 1}
!10 = !{ptr @__UNIQUE_ID_hash_policytype691, !9, !"__UNIQUE_ID_hash_policytype691", i1 false, i1 false}
!11 = !{ptr @aa_g_rawdata_compression_level, !12, !"aa_g_rawdata_compression_level", i1 false, i1 false}
!12 = !{!"../security/apparmor/lsm.c", i32 1341, i32 5}
!13 = !{ptr @__param_rawdata_compression_level, !14, !"__param_rawdata_compression_level", i1 false, i1 false}
!14 = !{!"../security/apparmor/lsm.c", i32 1342, i32 1}
!15 = !{ptr @__UNIQUE_ID_rawdata_compression_leveltype692, !14, !"__UNIQUE_ID_rawdata_compression_leveltype692", i1 false, i1 false}
!16 = !{ptr @aa_g_debug, !17, !"aa_g_debug", i1 false, i1 false}
!17 = !{!"../security/apparmor/lsm.c", i32 1346, i32 6}
!18 = !{ptr @__param_debug, !19, !"__param_debug", i1 false, i1 false}
!19 = !{!"../security/apparmor/lsm.c", i32 1347, i32 1}
!20 = !{ptr @__UNIQUE_ID_debugtype693, !19, !"__UNIQUE_ID_debugtype693", i1 false, i1 false}
!21 = !{ptr @__param_audit, !22, !"__param_audit", i1 false, i1 false}
!22 = !{!"../security/apparmor/lsm.c", i32 1351, i32 1}
!23 = !{ptr @aa_g_audit_header, !24, !"aa_g_audit_header", i1 false, i1 false}
!24 = !{!"../security/apparmor/lsm.c", i32 1357, i32 6}
!25 = !{ptr @__param_audit_header, !26, !"__param_audit_header", i1 false, i1 false}
!26 = !{!"../security/apparmor/lsm.c", i32 1358, i32 1}
!27 = !{ptr @__UNIQUE_ID_audit_headertype694, !26, !"__UNIQUE_ID_audit_headertype694", i1 false, i1 false}
!28 = !{ptr @__param_lock_policy, !29, !"__param_lock_policy", i1 false, i1 false}
!29 = !{!"../security/apparmor/lsm.c", i32 1366, i32 1}
!30 = !{ptr @__UNIQUE_ID_lock_policytype695, !29, !"__UNIQUE_ID_lock_policytype695", i1 false, i1 false}
!31 = !{ptr @__param_logsyscall, !32, !"__param_logsyscall", i1 false, i1 false}
!32 = !{!"../security/apparmor/lsm.c", i32 1371, i32 1}
!33 = !{ptr @__UNIQUE_ID_logsyscalltype696, !32, !"__UNIQUE_ID_logsyscalltype696", i1 false, i1 false}
!34 = !{ptr @aa_g_path_max, !35, !"aa_g_path_max", i1 false, i1 false}
!35 = !{!"../security/apparmor/lsm.c", i32 1374, i32 14}
!36 = !{ptr @__param_path_max, !37, !"__param_path_max", i1 false, i1 false}
!37 = !{!"../security/apparmor/lsm.c", i32 1375, i32 1}
!38 = !{ptr @__UNIQUE_ID_path_maxtype697, !37, !"__UNIQUE_ID_path_maxtype697", i1 false, i1 false}
!39 = !{ptr @aa_g_paranoid_load, !40, !"aa_g_paranoid_load", i1 false, i1 false}
!40 = !{!"../security/apparmor/lsm.c", i32 1382, i32 6}
!41 = !{ptr @__param_paranoid_load, !42, !"__param_paranoid_load", i1 false, i1 false}
!42 = !{!"../security/apparmor/lsm.c", i32 1383, i32 1}
!43 = !{ptr @__UNIQUE_ID_paranoid_loadtype698, !42, !"__UNIQUE_ID_paranoid_loadtype698", i1 false, i1 false}
!44 = !{ptr @__param_enabled, !45, !"__param_enabled", i1 false, i1 false}
!45 = !{!"../security/apparmor/lsm.c", i32 1394, i32 1}
!46 = !{ptr @__UNIQUE_ID_enabledtype699, !45, !"__UNIQUE_ID_enabledtype699", i1 false, i1 false}
!47 = !{ptr @__setup_apparmor_enabled_setup, !48, !"__setup_apparmor_enabled_setup", i1 false, i1 false}
!48 = !{!"../security/apparmor/lsm.c", i32 1405, i32 1}
!49 = !{ptr @.str, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../security/apparmor/lsm.c", i32 1627, i32 3}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../security/apparmor/lsm.c", i32 1634, i32 3}
!53 = !{ptr @.str.1, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.2, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @aa_get_buffer._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @aa_get_buffer._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @__initcall__kmod_apparmor__706_1833_apparmor_nf_ip_init6, !58, !"__initcall__kmod_apparmor__706_1833_apparmor_nf_ip_init6", i1 false, i1 false}
!58 = !{!"../security/apparmor/lsm.c", i32 1833, i32 1}
!59 = !{ptr @.str.3, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../security/apparmor/lsm.c", i32 1898, i32 10}
!61 = !{ptr @__lsm_apparmor, !62, !"__lsm_apparmor", i1 false, i1 false}
!62 = !{!"../security/apparmor/lsm.c", i32 1897, i32 1}
!63 = !{ptr @apparmor_initialized, !64, !"apparmor_initialized", i1 false, i1 false}
!64 = !{!"../security/apparmor/lsm.c", i32 45, i32 5}
!65 = !{ptr @buffer_count, !66, !"buffer_count", i1 false, i1 false}
!66 = !{!"../security/apparmor/lsm.c", i32 54, i32 12}
!67 = !{ptr @aa_g_audit, !68, !"aa_g_audit", i1 false, i1 false}
!68 = !{!"../security/apparmor/lsm.c", i32 1350, i32 17}
!69 = !{ptr @aa_g_lock_policy, !70, !"aa_g_lock_policy", i1 false, i1 false}
!70 = !{!"../security/apparmor/lsm.c", i32 1365, i32 6}
!71 = !{ptr @aa_g_logsyscall, !72, !"aa_g_logsyscall", i1 false, i1 false}
!72 = !{!"../security/apparmor/lsm.c", i32 1370, i32 6}
!73 = !{ptr @__param_str_mode, !5, !"__param_str_mode", i1 false, i1 false}
!74 = !{ptr @__param_ops_mode, !5, !"__param_ops_mode", i1 false, i1 false}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../security/apparmor/lsm.c", i32 1576, i32 25}
!77 = !{ptr @__param_str_hash_policy, !9, !"__param_str_hash_policy", i1 false, i1 false}
!78 = !{ptr @param_ops_aabool, !79, !"param_ops_aabool", i1 false, i1 false}
!79 = !{!"../security/apparmor/lsm.c", i32 1286, i32 38}
!80 = !{ptr @__param_str_rawdata_compression_level, !14, !"__param_str_rawdata_compression_level", i1 false, i1 false}
!81 = !{ptr @param_ops_aacompressionlevel, !82, !"param_ops_aacompressionlevel", i1 false, i1 false}
!82 = !{!"../security/apparmor/lsm.c", i32 1305, i32 38}
!83 = !{ptr @.str.5, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../security/apparmor/lsm.c", i32 1525, i32 2}
!85 = !{ptr @.str.6, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @param_set_aacompressionlevel._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @param_set_aacompressionlevel._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @__param_str_debug, !19, !"__param_str_debug", i1 false, i1 false}
!89 = !{ptr @__param_str_audit, !22, !"__param_str_audit", i1 false, i1 false}
!90 = !{ptr @__param_ops_audit, !22, !"__param_ops_audit", i1 false, i1 false}
!91 = !{ptr @__param_str_audit_header, !26, !"__param_str_audit_header", i1 false, i1 false}
!92 = !{ptr @__param_str_lock_policy, !29, !"__param_str_lock_policy", i1 false, i1 false}
!93 = !{ptr @param_ops_aalockpolicy, !94, !"param_ops_aalockpolicy", i1 false, i1 false}
!94 = !{!"../security/apparmor/lsm.c", i32 1313, i32 38}
!95 = !{ptr @__param_str_logsyscall, !32, !"__param_str_logsyscall", i1 false, i1 false}
!96 = !{ptr @__param_str_path_max, !37, !"__param_str_path_max", i1 false, i1 false}
!97 = !{ptr @param_ops_aauint, !98, !"param_ops_aauint", i1 false, i1 false}
!98 = !{!"../security/apparmor/lsm.c", i32 1295, i32 38}
!99 = !{ptr @.str.7, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../security/apparmor/lsm.c", i32 1456, i32 2}
!101 = !{ptr @.str.8, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @param_set_aauint._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @param_set_aauint._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @__param_str_paranoid_load, !42, !"__param_str_paranoid_load", i1 false, i1 false}
!105 = !{ptr @__param_str_enabled, !45, !"__param_str_enabled", i1 false, i1 false}
!106 = !{ptr @param_ops_aaintbool, !107, !"param_ops_aaintbool", i1 false, i1 false}
!107 = !{!"../security/apparmor/lsm.c", i32 1388, i32 38}
!108 = !{ptr @apparmor_enabled, !109, !"apparmor_enabled", i1 false, i1 false}
!109 = !{!"../security/apparmor/lsm.c", i32 1393, i32 12}
!110 = !{ptr @__setup_str_apparmor_enabled_setup, !48, !"__setup_str_apparmor_enabled_setup", i1 false, i1 false}
!111 = !{ptr @.str.9, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../security/apparmor/lsm.c", i32 57, i32 8}
!113 = !{ptr @aa_buffers_lock, !112, !"aa_buffers_lock", i1 false, i1 false}
!114 = !{ptr @reserve_count, !115, !"reserve_count", i1 false, i1 false}
!115 = !{!"../security/apparmor/lsm.c", i32 53, i32 12}
!116 = !{ptr @aa_global_buffers, !117, !"aa_global_buffers", i1 false, i1 false}
!117 = !{!"../security/apparmor/lsm.c", i32 56, i32 8}
!118 = !{ptr @.str.10, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../security/apparmor/lsm.c", i32 1829, i32 9}
!120 = !{ptr @apparmor_net_ops, !121, !"apparmor_net_ops", i1 false, i1 false}
!121 = !{!"../security/apparmor/lsm.c", i32 1815, i32 33}
!122 = !{ptr @apparmor_nf_ops, !123, !"apparmor_nf_ops", i1 false, i1 false}
!123 = !{!"../security/apparmor/lsm.c", i32 1783, i32 33}
!124 = !{ptr @.str.11, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../security/apparmor/lsm.c", i32 1775, i32 42}
!126 = !{ptr @.str.12, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../security/apparmor/lsm.c", i32 1844, i32 3}
!128 = !{ptr @apparmor_init._rs, !127, !"_rs", i1 false, i1 false}
!129 = !{ptr @__func__.apparmor_init, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.13, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @apparmor_init._entry, !127, !"_entry", i1 false, i1 false}
!132 = !{ptr @apparmor_init._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @apparmor_init._rs.14, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../security/apparmor/lsm.c", i32 1850, i32 3}
!135 = !{ptr @.str.16, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @apparmor_init._entry.15, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @apparmor_init._entry_ptr.17, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @apparmor_init._rs.18, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../security/apparmor/lsm.c", i32 1856, i32 3}
!140 = !{ptr @.str.20, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @apparmor_init._entry.19, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @apparmor_init._entry_ptr.21, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @apparmor_init._rs.22, !144, !"_rs", i1 false, i1 false}
!144 = !{!"../security/apparmor/lsm.c", i32 1863, i32 3}
!145 = !{ptr @.str.24, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @apparmor_init._entry.23, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @apparmor_init._entry_ptr.25, !144, !"_entry_ptr", i1 false, i1 false}
!148 = distinct !{null, !149, !"_rs", i1 false, i1 false}
!149 = !{!"../security/apparmor/lsm.c", i32 1869, i32 3}
!150 = !{ptr @.str.28, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @apparmor_init._entry.27, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @apparmor_init._entry_ptr.29, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.30, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../security/apparmor/lsm.c", i32 1879, i32 19}
!155 = !{ptr @.str.31, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../security/apparmor/lsm.c", i32 1881, i32 19}
!157 = !{ptr @.str.32, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../security/apparmor/lsm.c", i32 1883, i32 19}
!159 = !{ptr @.str.33, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../security/apparmor/lsm.c", i32 1732, i32 16}
!161 = !{ptr @apparmor_sysctl_path, !162, !"apparmor_sysctl_path", i1 false, i1 false}
!162 = !{!"../security/apparmor/lsm.c", i32 1731, i32 24}
!163 = !{ptr @.str.34, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../security/apparmor/lsm.c", i32 1738, i32 21}
!165 = !{ptr @apparmor_sysctl_table, !166, !"apparmor_sysctl_table", i1 false, i1 false}
!166 = !{!"../security/apparmor/lsm.c", i32 1736, i32 25}
!167 = !{ptr @.str.35, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../security/apparmor/include/cred.h", i32 35, i32 2}
!169 = !{ptr @.str.36, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @__func__.set_cred_label, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @apparmor_hooks, !172, !"apparmor_hooks", i1 false, i1 false}
!172 = !{!"../security/apparmor/lsm.c", i32 1188, i32 34}
!173 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!174 = !{!"../security/apparmor/include/cred.h", i32 89, i32 27}
!175 = !{ptr @.str.37, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../security/apparmor/include/cred.h", i32 51, i32 2}
!177 = !{ptr @__func__.aa_cred_raw_label, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @__func__.cred_label, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../security/apparmor/include/cred.h", i32 26, i32 2}
!180 = !{ptr @.str.38, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!182 = !{ptr @.str.39, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @__func__.aa_get_newest_label, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.40, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!186 = !{ptr @.str.41, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!188 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!189 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!190 = !{ptr @.str.42, !189, !"<string literal>", i1 false, i1 false}
!191 = distinct !{null, !192, !"__warned", i1 false, i1 false}
!192 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!193 = !{ptr @.str.43, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.44, !192, !"<string literal>", i1 false, i1 false}
!195 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!196 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!197 = !{ptr @.str.45, !196, !"<string literal>", i1 false, i1 false}
!198 = distinct !{null, !199, !"__warned", i1 false, i1 false}
!199 = !{!"../security/apparmor/lsm.c", i32 154, i32 9}
!200 = !{ptr @.str.46, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../security/apparmor/lsm.c", i32 306, i32 24}
!202 = !{ptr @.str.47, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../security/apparmor/lsm.c", i32 335, i32 28}
!204 = distinct !{null, !205, !"__warned", i1 false, i1 false}
!205 = !{!"../security/apparmor/lsm.c", i32 296, i32 28}
!206 = !{ptr @.str.48, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../security/apparmor/lsm.c", i32 312, i32 28}
!208 = !{ptr @.str.49, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../security/apparmor/lsm.c", i32 318, i32 24}
!210 = !{ptr @.str.50, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../security/apparmor/lsm.c", i32 324, i32 28}
!212 = !{ptr @.str.51, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../security/apparmor/lsm.c", i32 377, i32 24}
!214 = !{ptr @.str.52, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../security/apparmor/lsm.c", i32 382, i32 25}
!216 = !{ptr @.str.53, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../security/apparmor/lsm.c", i32 394, i32 26}
!218 = !{ptr @.str.54, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../security/apparmor/lsm.c", i32 399, i32 26}
!220 = !{ptr @.str.55, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../security/apparmor/lsm.c", i32 329, i32 26}
!222 = !{ptr @.str.56, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../security/apparmor/lsm.c", i32 404, i32 26}
!224 = !{ptr @.str.57, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../security/apparmor/lsm.c", i32 435, i32 24}
!226 = !{ptr @.str.58, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../security/apparmor/lsm.c", i32 483, i32 26}
!228 = !{ptr @.str.59, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../security/apparmor/lsm.c", i32 489, i32 26}
!230 = !{ptr @apparmor_file_alloc_security.__key, !231, !"__key", i1 false, i1 false}
!231 = !{!"../security/apparmor/lsm.c", i32 450, i32 2}
!232 = !{ptr @.str.60, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.61, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../security/apparmor/lsm.c", i32 527, i32 21}
!235 = !{ptr @.str.62, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../security/apparmor/lsm.c", i32 533, i32 21}
!237 = !{ptr @.str.63, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../security/apparmor/lsm.c", i32 499, i32 26}
!239 = !{ptr @.str.64, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../security/apparmor/lsm.c", i32 606, i32 19}
!241 = !{ptr @.str.65, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../security/apparmor/lsm.c", i32 608, i32 24}
!243 = !{ptr @.str.66, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../security/apparmor/lsm.c", i32 610, i32 24}
!245 = !{ptr @.str.67, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../include/linux/cred.h", i32 286, i32 3}
!247 = !{ptr @.str.68, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../security/apparmor/lsm.c", i32 630, i32 2}
!249 = !{ptr @.str.69, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../security/apparmor/lsm.c", i32 647, i32 26}
!251 = !{ptr @.str.70, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../security/apparmor/lsm.c", i32 656, i32 23}
!253 = !{ptr @.str.71, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../security/apparmor/lsm.c", i32 659, i32 30}
!255 = !{ptr @.str.72, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../security/apparmor/lsm.c", i32 662, i32 30}
!257 = !{ptr @.str.73, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../security/apparmor/lsm.c", i32 664, i32 30}
!259 = !{ptr @.str.74, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../security/apparmor/lsm.c", i32 666, i32 30}
!261 = !{ptr @.str.75, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../security/apparmor/lsm.c", i32 840, i32 2}
!263 = !{ptr @__func__.apparmor_socket_create, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.76, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../security/apparmor/lsm.c", i32 844, i32 11}
!266 = !{ptr @.str.77, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../security/apparmor/lsm.c", i32 893, i32 2}
!268 = !{ptr @__func__.apparmor_socket_bind, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.78, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../security/apparmor/lsm.c", i32 894, i32 2}
!271 = !{ptr @.str.79, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../security/apparmor/lsm.c", i32 895, i32 2}
!273 = !{ptr @.str.80, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../security/apparmor/lsm.c", i32 898, i32 9}
!275 = !{ptr @__func__.apparmor_socket_connect, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../security/apparmor/lsm.c", i32 909, i32 2}
!277 = !{ptr @.str.81, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../security/apparmor/lsm.c", i32 914, i32 9}
!279 = !{ptr @__func__.apparmor_socket_listen, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../security/apparmor/lsm.c", i32 924, i32 2}
!281 = !{ptr @.str.82, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../security/apparmor/lsm.c", i32 928, i32 9}
!283 = !{ptr @__func__.apparmor_socket_accept, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../security/apparmor/lsm.c", i32 941, i32 2}
!285 = !{ptr @.str.83, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../security/apparmor/lsm.c", i32 943, i32 2}
!287 = !{ptr @.str.84, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../security/apparmor/lsm.c", i32 946, i32 9}
!289 = !{ptr @__func__.aa_sock_msg_perm, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../security/apparmor/lsm.c", i32 954, i32 2}
!291 = !{ptr @.str.85, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../security/apparmor/lsm.c", i32 956, i32 2}
!293 = !{ptr @.str.86, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../security/apparmor/lsm.c", i32 979, i32 26}
!295 = !{ptr @.str.87, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../security/apparmor/lsm.c", i32 999, i32 22}
!297 = !{ptr @__func__.aa_sock_perm, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../security/apparmor/lsm.c", i32 985, i32 2}
!299 = !{ptr @.str.88, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../security/apparmor/lsm.c", i32 1007, i32 22}
!301 = !{ptr @.str.89, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../security/apparmor/lsm.c", i32 1029, i32 26}
!303 = !{ptr @__func__.aa_sock_opt_perm, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../security/apparmor/lsm.c", i32 1014, i32 2}
!305 = !{ptr @.str.90, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../security/apparmor/lsm.c", i32 1039, i32 26}
!307 = !{ptr @.str.91, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../security/apparmor/lsm.c", i32 1048, i32 22}
!309 = distinct !{null, !310, !"__already_done", i1 false, i1 false}
!310 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!311 = !{ptr @.str.92, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.93, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!314 = !{ptr @.str.94, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!316 = !{ptr @.str.95, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../security/apparmor/include/task.h", i32 71, i32 2}
!318 = !{ptr @.str.96, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @__func__.aa_clear_task_ctx_trans, !317, !"<string literal>", i1 false, i1 false}
!320 = !{!"sp"}
!321 = !{i32 1, !"wchar_size", i32 2}
!322 = !{i32 1, !"min_enum_size", i32 4}
!323 = !{i32 8, !"branch-target-enforcement", i32 0}
!324 = !{i32 8, !"sign-return-address", i32 0}
!325 = !{i32 8, !"sign-return-address-all", i32 0}
!326 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!327 = !{i32 7, !"uwtable", i32 1}
!328 = !{i32 7, !"frame-pointer", i32 2}
!329 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!330 = !{!"auto-init"}
!331 = !{!"branch_weights", i32 2000, i32 1}
!332 = !{i8 0, i8 2}
!333 = !{i64 2148520448, i64 2148520480, i64 2148520509, i64 2148520543, i64 2148520574, i64 2148520597}
!334 = !{!"branch_weights", i32 1, i32 2000}
!335 = !{i64 2148608473}
!336 = !{i64 2148522913, i64 2148522945, i64 2148522974, i64 2148523008, i64 2148523039, i64 2148523062}
!337 = !{i64 2149586702}
!338 = !{i64 2149348448}
!339 = !{i64 2149348714}
!340 = !{i64 2152591377}
!341 = !{i64 2159931380}
!342 = !{i64 2148607394}
!343 = !{i64 2148522103, i64 2148522135, i64 2148522164, i64 2148522198, i64 2148522229, i64 2148522252}
!344 = !{i64 2148607623}
!345 = !{i64 2152415793, i64 2152415818}
!346 = !{i64 4910667}
!347 = !{i64 4910864}
!348 = !{i64 2152396097}
!349 = !{i64 2159992433, i64 2159992713, i64 2159993047, i64 2159993381}
!350 = !{i64 1002654, i64 1002678, i64 1002699, i64 1002716, i64 1002733}
