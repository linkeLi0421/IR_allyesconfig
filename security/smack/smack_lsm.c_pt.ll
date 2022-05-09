; ModuleID = '/llk/IR_all_yes/security/smack/smack_lsm.c_pt.bc'
source_filename = "../security/smack/smack_lsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.smack_known = type { %struct.list_head, %struct.hlist_node, ptr, i32, %struct.netlbl_lsm_secattr, %struct.list_head, %struct.mutex }
%struct.hlist_node = type { ptr, ptr }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon.155 }
%struct.anon.155 = type { %struct.anon.156, i32 }
%struct.anon.156 = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%union.security_list_options = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.anon.165 = type { ptr, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.13 }
%union.anon.13 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.51 }
%struct.llist_node = type { ptr }
%union.anon.51 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.53 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.146 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.146 = type { %struct.callback_head }
%struct.task_smack = type { ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.smack_mnt_opts = type { ptr, ptr, ptr, ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.123 }
%union.anon.123 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon.12, i32, i32 }
%union.anon.12 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.superblock_smack = type { ptr, ptr, ptr, ptr, i32 }
%struct.smk_audit_info = type { %struct.common_audit_data, %struct.smack_audit_data }
%struct.common_audit_data = type { i8, %union.anon.159, %union.anon.164 }
%union.anon.159 = type { %struct.path }
%struct.path = type { ptr, ptr }
%union.anon.164 = type { ptr }
%struct.smack_audit_data = type { ptr, ptr, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.125, %struct.list_head, %struct.list_head, %union.anon.126 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.8, ptr }
%union.anon.8 = type { i64 }
%struct.lockref = type { %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.spinlock, i32 }
%union.anon.125 = type { %struct.list_head }
%union.anon.126 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.147, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.148, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.149, ptr, %struct.address_space, %struct.list_head, %union.anon.150, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.147 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.148 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.149 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.150 = type { ptr }
%struct.inode_smack = type { ptr, ptr, ptr, i32 }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.115, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.116, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.117, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.17, %union.anon.19, %union.anon.20, i16, i8, i8, i32, %union.anon.22, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.111, [0 x i32], %union.anon.112, i16, i16, %union.anon.113, %struct.refcount_struct, [0 x i32], %union.anon.114 }
%union.anon.17 = type { i64 }
%union.anon.19 = type { i32 }
%union.anon.20 = type { i32 }
%union.anon.22 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.87 }
%union.anon.87 = type { [4 x i32] }
%union.anon.111 = type { i32 }
%union.anon.112 = type { %struct.hlist_node }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.115 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.116 = type { ptr }
%union.anon.117 = type { ptr }
%struct.sk_buff_head = type { %union.anon.34, i32, %struct.spinlock }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.socket_smack = type { ptr, ptr, ptr, i32 }
%struct.smack_rule = type { %struct.list_head, ptr, ptr, i32 }
%struct.smack_known_list_elem = type { %struct.list_head, ptr }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [28 x i8] }
%struct.rhash_head = type { ptr }
%struct.msg_msg = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.lsm_network_audit = type { i32, ptr, i16, i16, i16, %union.anon.160 }
%union.anon.160 = type { %struct.anon.162 }
%struct.anon.162 = type { %struct.in6_addr, %struct.in6_addr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.26, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.23, %union.anon.24 }
%union.anon.23 = type { ptr }
%union.anon.24 = type { i64 }
%union.anon.26 = type { ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.sk_buff = type { %union.anon.27, %union.anon.93, %union.anon.94, [48 x i8], %union.anon.95, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.97, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, ptr, %union.anon.29 }
%union.anon.29 = type { ptr }
%union.anon.93 = type { ptr }
%union.anon.94 = type { i64 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, ptr }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.99, i32, i32, i32, i16, i16, %union.anon.101, i32, %union.anon.102, %union.anon.103, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.99 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i16 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.smk_net4addr = type { %struct.list_head, %struct.in_addr, %struct.in_addr, i32, ptr }
%struct.in_addr = type { i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.139, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.140, %union.anon.144, ptr }
%union.anon = type { %struct.rb_node }
%union.anon.139 = type { i64 }
%union.anon.140 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.141, ptr, ptr, ptr }
%union.anon.141 = type { i32 }
%union.anon.144 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.audit_krule = type { i32, i32, i32, i32, [64 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i64 }
%struct.audit_field = type { i32, %union.anon.157, i32 }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { ptr, ptr }
%struct.smk_net6addr = type { %struct.list_head, %struct.in6_addr, %struct.in6_addr, i32, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.netlbl_lsm_cache = type { %struct.refcount_struct, ptr, ptr }
%struct.netlbl_lsm_catmap = type { i32, [4 x i64], ptr }

@smack_blob_sizes = dso_local global { %struct.lsm_blob_sizes, [36 x i8] } { %struct.lsm_blob_sizes { i32 116, i32 4, i32 16, i32 20, i32 4, i32 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smack\00", [26 x i8] zeroinitializer }, align 32
@__lsm_smack = internal global %struct.lsm_info { ptr @.str, i32 0, i32 3, ptr null, ptr @smack_init, ptr @smack_blob_sizes }, section ".lsm_info.init", align 4
@smack_rule_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@smack_enabled = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smack_rule\00", [21 x i8] zeroinitializer }, align 32
@smack_known_floor = external dso_local global %struct.smack_known, align 4
@smack_hooks = internal global { [111 x %struct.security_hook_list], [564 x i8] } { [111 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 16), %union.security_list_options { ptr @smack_ptrace_access_check }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 20), %union.security_list_options { ptr @smack_ptrace_traceme }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 44), %union.security_list_options { ptr @smack_syslog }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 76), %union.security_list_options { ptr @smack_fs_context_dup }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 80), %union.security_list_options { ptr @smack_fs_context_parse_param }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 84), %union.security_list_options { ptr @smack_sb_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 96), %union.security_list_options { ptr @smack_free_mnt_opts }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 100), %union.security_list_options { ptr @smack_sb_eat_lsm_opts }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 120), %union.security_list_options { ptr @smack_sb_statfs }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 136), %union.security_list_options { ptr @smack_set_mnt_opts }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 56), %union.security_list_options { ptr @smack_bprm_creds_for_exec }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 204), %union.security_list_options { ptr @smack_inode_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 212), %union.security_list_options { ptr @smack_inode_init_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 224), %union.security_list_options { ptr @smack_inode_link }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 228), %union.security_list_options { ptr @smack_inode_unlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 240), %union.security_list_options { ptr @smack_inode_rmdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 248), %union.security_list_options { ptr @smack_inode_rename }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 260), %union.security_list_options { ptr @smack_inode_permission }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 264), %union.security_list_options { ptr @smack_inode_setattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 268), %union.security_list_options { ptr @smack_inode_getattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 272), %union.security_list_options { ptr @smack_inode_setxattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 276), %union.security_list_options { ptr @smack_inode_post_setxattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 280), %union.security_list_options { ptr @smack_inode_getxattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 288), %union.security_list_options { ptr @smack_inode_removexattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 300), %union.security_list_options { ptr @smack_inode_getsecurity }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 304), %union.security_list_options { ptr @smack_inode_setsecurity }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 308), %union.security_list_options { ptr @smack_inode_listsecurity }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 312), %union.security_list_options { ptr @smack_inode_getsecid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 332), %union.security_list_options { ptr @smack_file_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 340), %union.security_list_options { ptr @smack_file_ioctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 356), %union.security_list_options { ptr @smack_file_lock }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 360), %union.security_list_options { ptr @smack_file_fcntl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 348), %union.security_list_options { ptr @smack_mmap_file }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 344), %union.security_list_options { ptr @cap_mmap_addr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 364), %union.security_list_options { ptr @smack_file_set_fowner }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 368), %union.security_list_options { ptr @smack_file_send_sigiotask }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 372), %union.security_list_options { ptr @smack_file_receive }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 376), %union.security_list_options { ptr @smack_file_open }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 388), %union.security_list_options { ptr @smack_cred_alloc_blank }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 392), %union.security_list_options { ptr @smack_cred_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 396), %union.security_list_options { ptr @smack_cred_prepare }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 400), %union.security_list_options { ptr @smack_cred_transfer }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 404), %union.security_list_options { ptr @smack_cred_getsecid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 408), %union.security_list_options { ptr @smack_kernel_act_as }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 412), %union.security_list_options { ptr @smack_kernel_create_files_as }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 444), %union.security_list_options { ptr @smack_task_setpgid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 448), %union.security_list_options { ptr @smack_task_getpgid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 452), %union.security_list_options { ptr @smack_task_getsid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 456), %union.security_list_options { ptr @smack_current_getsecid_subj }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 460), %union.security_list_options { ptr @smack_task_getsecid_obj }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 464), %union.security_list_options { ptr @smack_task_setnice }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 468), %union.security_list_options { ptr @smack_task_setioprio }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 472), %union.security_list_options { ptr @smack_task_getioprio }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 484), %union.security_list_options { ptr @smack_task_setscheduler }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 488), %union.security_list_options { ptr @smack_task_getscheduler }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 492), %union.security_list_options { ptr @smack_task_movememory }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 496), %union.security_list_options { ptr @smack_task_kill }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 504), %union.security_list_options { ptr @smack_task_to_inode }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 508), %union.security_list_options { ptr @smack_ipc_permission }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 512), %union.security_list_options { ptr @smack_ipc_getsecid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 516), %union.security_list_options { ptr @smack_msg_msg_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 524), %union.security_list_options { ptr @smack_ipc_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 532), %union.security_list_options { ptr @smack_msg_queue_associate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 536), %union.security_list_options { ptr @smack_msg_queue_msgctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 540), %union.security_list_options { ptr @smack_msg_queue_msgsnd }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 544), %union.security_list_options { ptr @smack_msg_queue_msgrcv }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 548), %union.security_list_options { ptr @smack_ipc_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 556), %union.security_list_options { ptr @smack_shm_associate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 560), %union.security_list_options { ptr @smack_shm_shmctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 564), %union.security_list_options { ptr @smack_shm_shmat }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 568), %union.security_list_options { ptr @smack_ipc_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 576), %union.security_list_options { ptr @smack_sem_associate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 580), %union.security_list_options { ptr @smack_sem_semctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 584), %union.security_list_options { ptr @smack_sem_semop }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 592), %union.security_list_options { ptr @smack_d_instantiate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 596), %union.security_list_options { ptr @smack_getprocattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 600), %union.security_list_options { ptr @smack_setprocattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 644), %union.security_list_options { ptr @smack_unix_stream_connect }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 648), %union.security_list_options { ptr @smack_unix_may_send }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 656), %union.security_list_options { ptr @smack_socket_post_create }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 660), %union.security_list_options { ptr @smack_socket_socketpair }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 668), %union.security_list_options { ptr @smack_socket_connect }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 680), %union.security_list_options { ptr @smack_socket_sendmsg }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 708), %union.security_list_options { ptr @smack_socket_sock_rcv_skb }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 712), %union.security_list_options { ptr @smack_socket_getpeersec_stream }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 716), %union.security_list_options { ptr @smack_socket_getpeersec_dgram }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 720), %union.security_list_options { ptr @smack_sk_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 724), %union.security_list_options { ptr @smack_sk_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 736), %union.security_list_options { ptr @smack_sock_graft }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 740), %union.security_list_options { ptr @smack_inet_conn_request }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 744), %union.security_list_options { ptr @smack_inet_csk_clone }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 864), %union.security_list_options { ptr @smack_key_alloc }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 868), %union.security_list_options { ptr @smack_key_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 872), %union.security_list_options { ptr @smack_key_permission }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 876), %union.security_list_options { ptr @smack_key_getsecurity }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 640), %union.security_list_options { ptr @smack_watch_key }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 636), %union.security_list_options { ptr @smack_post_notification }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 880), %union.security_list_options { ptr @smack_audit_rule_init }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 884), %union.security_list_options { ptr @smack_audit_rule_known }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 888), %union.security_list_options { ptr @smack_audit_rule_match }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 604), %union.security_list_options { ptr @smack_ismaclabel }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 608), %union.security_list_options { ptr @smack_secid_to_secctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 612), %union.security_list_options { ptr @smack_secctx_to_secid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 624), %union.security_list_options { ptr @smack_inode_notifysecctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 628), %union.security_list_options { ptr @smack_inode_setsecctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 632), %union.security_list_options { ptr @smack_inode_getsecctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 316), %union.security_list_options { ptr @smack_inode_copy_up }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 320), %union.security_list_options { ptr @smack_inode_copy_up_xattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 152), %union.security_list_options { ptr @smack_dentry_create_files_as }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 948), %union.security_list_options { ptr @smack_uring_override_creds }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 952), %union.security_list_options { ptr @smack_uring_sqpoll }, ptr null }], [564 x i8] zeroinitializer }, align 32
@smack_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 4957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016Smack:  Initializing.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smack_init\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"security/smack/smack_lsm.c\00", [37 x i8] zeroinitializer }, align 32
@smack_init._entry_ptr = internal global ptr @smack_init._entry, section ".printk_index", align 4
@smack_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 4959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Smack:  Netfilter enabled.\0A\00", [34 x i8] zeroinitializer }, align 32
@smack_init._entry_ptr.7 = internal global ptr @smack_init._entry.5, section ".printk_index", align 4
@smack_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 4965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Smack:  IPv6 Netfilter enabled.\0A\00", [61 x i8] zeroinitializer }, align 32
@smack_init._entry_ptr.10 = internal global ptr @smack_init._entry.8, section ".printk_index", align 4
@init_task_smack.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&tsp->smk_rules_lock\00", [43 x i8] zeroinitializer }, align 32
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@__func__.smack_ptrace_access_check = private unnamed_addr constant [26 x i8] c"smack_ptrace_access_check\00", align 1
@smk_of_task_struct_obj.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"security/smack/smack.h\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@smk_ptrace_rule_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smack_ptrace_rule = external dso_local local_unnamed_addr global i32, align 4
@__func__.smack_ptrace_traceme = private unnamed_addr constant [21 x i8] c"smack_ptrace_traceme\00", align 1
@smack_syslog_label = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smack_fs_parameters = internal constant { [7 x %struct.fs_parameter_spec], [48 x i8] } { [7 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.17, ptr @fs_param_is_string, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.18, ptr @fs_param_is_string, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.19, ptr @fs_param_is_string, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.20, ptr @fs_param_is_string, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.21, ptr @fs_param_is_string, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.22, ptr @fs_param_is_string, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smackfsdef\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smackfsdefault\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smackfsfloor\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smackfshat\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smackfsroot\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smackfstransmute\00", [47 x i8] zeroinitializer }, align 32
@smack_add_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014Smack: duplicate mount options\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smack_add_opt\00", [18 x i8] zeroinitializer }, align 32
@smack_add_opt._entry_ptr = internal global ptr @smack_add_opt._entry, section ".printk_index", align 4
@smack_known_hat = external dso_local global %struct.smack_known, align 4
@smk_mount_opts = internal constant { [6 x %struct.anon.165], [56 x i8] } { [6 x %struct.anon.165] [%struct.anon.165 { ptr @.str.17, i32 10, i32 0 }, %struct.anon.165 { ptr @.str.18, i32 14, i32 0 }, %struct.anon.165 { ptr @.str.19, i32 12, i32 1 }, %struct.anon.165 { ptr @.str.20, i32 10, i32 2 }, %struct.anon.165 { ptr @.str.21, i32 11, i32 3 }, %struct.anon.165 { ptr @.str.22, i32 16, i32 4 }], [56 x i8] zeroinitializer }, align 32
@__func__.smack_sb_statfs = private unnamed_addr constant [16 x i8] c"smack_sb_statfs\00", align 1
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"statfs\00", [25 x i8] zeroinitializer }, align 32
@smk_bu_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Smack %s: (%s %s %s) %s %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smk_bu_current\00", [17 x i8] zeroinitializer }, align 32
@smk_bu_current._entry_ptr = internal global ptr @smk_bu_current._entry, section ".printk_index", align 4
@smk_bu_mess = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bringup Error\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bringup\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unconfined Subject\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unconfined Object\00", [46 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__func__.smack_bprm_creds_for_exec = private unnamed_addr constant [26 x i8] c"smack_bprm_creds_for_exec\00", align 1
@ptrace_parent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/ptrace.h\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMACK64\00", [24 x i8] zeroinitializer }, align 32
@__func__.smack_inode_link = private unnamed_addr constant [17 x i8] c"smack_inode_link\00", align 1
@smk_bu_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016Smack Unconfined Corruption: inode=(%s %ld) %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smk_bu_inode\00", [19 x i8] zeroinitializer }, align 32
@smk_bu_inode._entry_ptr = internal global ptr @smk_bu_inode._entry, section ".printk_index", align 4
@smk_bu_inode._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Smack %s: (%s %s %s) inode=(%s %ld) %s\0A\00", [54 x i8] zeroinitializer }, align 32
@smk_bu_inode._entry_ptr.38 = internal global ptr @smk_bu_inode._entry.36, section ".printk_index", align 4
@__func__.smack_inode_unlink = private unnamed_addr constant [19 x i8] c"smack_inode_unlink\00", align 1
@__func__.smack_inode_rmdir = private unnamed_addr constant [18 x i8] c"smack_inode_rmdir\00", align 1
@__func__.smack_inode_rename = private unnamed_addr constant [19 x i8] c"smack_inode_rename\00", align 1
@__func__.smack_inode_permission = private unnamed_addr constant [23 x i8] c"smack_inode_permission\00", align 1
@__func__.smack_inode_setattr = private unnamed_addr constant [20 x i8] c"smack_inode_setattr\00", align 1
@__func__.smack_inode_getattr = private unnamed_addr constant [20 x i8] c"smack_inode_getattr\00", align 1
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"security.SMACK64\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"security.SMACK64IPIN\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"security.SMACK64IPOUT\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"security.SMACK64EXEC\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"security.SMACK64MMAP\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"security.SMACK64TRANSMUTE\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TRUE\00", [27 x i8] zeroinitializer }, align 32
@smack_known_star = external dso_local global %struct.smack_known, align 4
@smack_known_web = external dso_local global %struct.smack_known, align 4
@__func__.smack_inode_setxattr = private unnamed_addr constant [21 x i8] c"smack_inode_setxattr\00", align 1
@__func__.smack_inode_getxattr = private unnamed_addr constant [21 x i8] c"smack_inode_getxattr\00", align 1
@__func__.smack_inode_removexattr = private unnamed_addr constant [24 x i8] c"smack_inode_removexattr\00", align 1
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SMACK64IPIN\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SMACK64IPOUT\00", [19 x i8] zeroinitializer }, align 32
@smack_inode_setsecurity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 2729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014Smack: \22%s\22 netlbl error %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smack_inode_setsecurity\00", [40 x i8] zeroinitializer }, align 32
@smack_inode_setsecurity._entry_ptr = internal global ptr @smack_inode_setsecurity._entry, section ".printk_index", align 4
@__func__.smack_file_ioctl = private unnamed_addr constant [17 x i8] c"smack_file_ioctl\00", align 1
@smk_bu_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.50, ptr @.str.4, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smk_bu_file\00", [20 x i8] zeroinitializer }, align 32
@smk_bu_file._entry_ptr = internal global ptr @smk_bu_file._entry, section ".printk_index", align 4
@smk_bu_file._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.4, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016Smack %s: (%s %s %s) file=(%s %ld %pD) %s\0A\00", [51 x i8] zeroinitializer }, align 32
@smk_bu_file._entry_ptr.53 = internal global ptr @smk_bu_file._entry.51, section ".printk_index", align 4
@__func__.smack_file_lock = private unnamed_addr constant [16 x i8] c"smack_file_lock\00", align 1
@__func__.smack_file_fcntl = private unnamed_addr constant [17 x i8] c"smack_file_fcntl\00", align 1
@smack_mmap_file.__warned.54 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sigiotask\00", [22 x i8] zeroinitializer }, align 32
@smack_file_send_sigiotask.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.smack_file_send_sigiotask = private unnamed_addr constant [26 x i8] c"smack_file_send_sigiotask\00", align 1
@smk_bu_note._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Smack %s: (%s %s %s) %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smk_bu_note\00", [20 x i8] zeroinitializer }, align 32
@smk_bu_note._entry_ptr = internal global ptr @smk_bu_note._entry, section ".printk_index", align 4
@__func__.smack_file_receive = private unnamed_addr constant [19 x i8] c"smack_file_receive\00", align 1
@__func__.smack_file_open = private unnamed_addr constant [16 x i8] c"smack_file_open\00", align 1
@smk_bu_credfile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.59, ptr @.str.4, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smk_bu_credfile\00", [16 x i8] zeroinitializer }, align 32
@smk_bu_credfile._entry_ptr = internal global ptr @smk_bu_credfile._entry, section ".printk_index", align 4
@smk_bu_credfile._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.59, ptr @.str.4, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smk_bu_credfile._entry_ptr.61 = internal global ptr @smk_bu_credfile._entry.60, section ".printk_index", align 4
@smk_copy_rules.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smack_cred_transfer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&new_tsp->smk_rules_lock\00", [39 x i8] zeroinitializer }, align 32
@__func__.smack_task_setpgid = private unnamed_addr constant [19 x i8] c"smack_task_setpgid\00", align 1
@smk_bu_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Smack %s: (%s %s %s) %s to %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smk_bu_task\00", [20 x i8] zeroinitializer }, align 32
@smk_bu_task._entry_ptr = internal global ptr @smk_bu_task._entry, section ".printk_index", align 4
@__func__.smack_task_getpgid = private unnamed_addr constant [19 x i8] c"smack_task_getpgid\00", align 1
@__func__.smack_task_getsid = private unnamed_addr constant [18 x i8] c"smack_task_getsid\00", align 1
@__func__.smack_task_setnice = private unnamed_addr constant [19 x i8] c"smack_task_setnice\00", align 1
@__func__.smack_task_setioprio = private unnamed_addr constant [21 x i8] c"smack_task_setioprio\00", align 1
@__func__.smack_task_getioprio = private unnamed_addr constant [21 x i8] c"smack_task_getioprio\00", align 1
@__func__.smack_task_setscheduler = private unnamed_addr constant [24 x i8] c"smack_task_setscheduler\00", align 1
@__func__.smack_task_getscheduler = private unnamed_addr constant [24 x i8] c"smack_task_getscheduler\00", align 1
@__func__.smack_task_movememory = private unnamed_addr constant [22 x i8] c"smack_task_movememory\00", align 1
@__func__.smack_task_kill = private unnamed_addr constant [16 x i8] c"smack_task_kill\00", align 1
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"USB signal\00", [21 x i8] zeroinitializer }, align 32
@__func__.smack_ipc_permission = private unnamed_addr constant [21 x i8] c"smack_ipc_permission\00", align 1
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"svipc\00", [26 x i8] zeroinitializer }, align 32
@__func__.smk_curacc_msq = private unnamed_addr constant [15 x i8] c"smk_curacc_msq\00", align 1
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msq\00", [28 x i8] zeroinitializer }, align 32
@__func__.smk_curacc_shm = private unnamed_addr constant [15 x i8] c"smk_curacc_shm\00", align 1
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"shm\00", [28 x i8] zeroinitializer }, align 32
@__func__.smk_curacc_sem = private unnamed_addr constant [15 x i8] c"smk_curacc_sem\00", align 1
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sem\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"current\00", [24 x i8] zeroinitializer }, align 32
@__func__.smack_unix_stream_connect = private unnamed_addr constant [26 x i8] c"smack_unix_stream_connect\00", align 1
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UDS connect\00", [20 x i8] zeroinitializer }, align 32
@__func__.smack_unix_may_send = private unnamed_addr constant [20 x i8] c"smack_unix_may_send\00", align 1
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UDS send\00", [23 x i8] zeroinitializer }, align 32
@smack_ipv6host_label.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smk_net6addr_list = external dso_local global %struct.list_head, align 4
@__func__.smk_ipv6_check = private unnamed_addr constant [15 x i8] c"smk_ipv6_check\00", align 1
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IPv6 check\00", [21 x i8] zeroinitializer }, align 32
@__func__.smk_ipv4_check = private unnamed_addr constant [15 x i8] c"smk_ipv4_check\00", align 1
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IPv4 host check\00", [16 x i8] zeroinitializer }, align 32
@smack_ipv4host_label.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smk_net4addr_list = external dso_local global %struct.list_head, align 4
@smack_net_ambient = external dso_local local_unnamed_addr global ptr, align 4
@__func__.smack_socket_sock_rcv_skb = private unnamed_addr constant [26 x i8] c"smack_socket_sock_rcv_skb\00", align 1
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IPv4 delivery\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IPv6 delivery\00", [18 x i8] zeroinitializer }, align 32
@smack_from_secattr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smack_known_list = external dso_local global %struct.list_head, align 4
@.str.77 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@smack_known_huh = external dso_local global %struct.smack_known, align 4
@__func__.smack_inet_conn_request = private unnamed_addr constant [24 x i8] c"smack_inet_conn_request\00", align 1
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IPv4 connect\00", [19 x i8] zeroinitializer }, align 32
@__func__.smack_key_permission = private unnamed_addr constant [21 x i8] c"smack_key_permission\00", align 1
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"key access\00", [21 x i8] zeroinitializer }, align 32
@__func__.smack_watch_key = private unnamed_addr constant [16 x i8] c"smack_watch_key\00", align 1
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key watch\00", [22 x i8] zeroinitializer }, align 32
@__func__.smack_post_notification = private unnamed_addr constant [24 x i8] c"smack_post_notification\00", align 1
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"notification\00", [19 x i8] zeroinitializer }, align 32
@smack_audit_rule_match.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Smack: missing rule\0A\00", [43 x i8] zeroinitializer }, align 32
@init_smack_known_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&smack_known_huh.smk_rules_lock\00", [32 x i8] zeroinitializer }, align 32
@init_smack_known_list.__key.88 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&smack_known_hat.smk_rules_lock\00", [32 x i8] zeroinitializer }, align 32
@init_smack_known_list.__key.90 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&smack_known_floor.smk_rules_lock\00", [62 x i8] zeroinitializer }, align 32
@init_smack_known_list.__key.92 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&smack_known_star.smk_rules_lock\00", [63 x i8] zeroinitializer }, align 32
@init_smack_known_list.__key.94 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&smack_known_web.smk_rules_lock\00", [32 x i8] zeroinitializer }, align 32
@switch.table.smack_file_fcntl = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8192, i32 8192, i32 2, i32 2, i32 2], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16914836, i64 1650812274, i64 2240043254]
@__sancov_gen_cov_switch_values.96 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.97 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.98 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.99 = internal global [7 x i64] [i64 5, i64 32, i64 2613483, i64 16914836, i64 1346981957, i64 1397703499, i64 1667723888]
@__sancov_gen_cov_switch_values.100 = internal global [8 x i64] [i64 6, i64 32, i64 7377, i64 40864, i64 2613483, i64 16914836, i64 1128357203, i64 1667723888]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967207]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 17, i64 33, i64 136]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 17, i64 33, i64 136]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.111 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 19]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 19]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 19]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.116 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967207]
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"smack_blob_sizes\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4744, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4979, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"smack_rule_cache\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 58, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4941, i32 21 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"smack_hooks\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4753, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4957, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4959, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4965, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 335, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [26 x i8] c"../security/smack/smack.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 400, i32 9 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 695, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 723, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [20 x i8] c"smack_fs_parameters\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 663, i32 39 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 664, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 665, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 666, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 667, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 668, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 669, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 611, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"smk_mount_opts\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 66, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 867, i32 22 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 151, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"smk_bu_mess\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 89, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 90, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 91, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 92, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 93, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [26 x i8] c"../include/linux/ptrace.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 127, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 967, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 190, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 203, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1243, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1244, i32 19 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1245, i32 19 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1248, i32 26 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1249, i32 19 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1253, i32 26 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1256, i32 22 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1439, i32 20 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1441, i32 25 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2727, i32 5 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 222, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 231, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1678, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1782, i32 19 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 130, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 252, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 261, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1956, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 173, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2203, i32 19 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3243, i32 22 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3135, i32 22 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2951, i32 22 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3040, i32 22 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3495, i32 19 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3603, i32 20 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3650, i32 19 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2520, i32 19 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2479, i32 20 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3949, i32 20 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3976, i32 20 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4006, i32 14 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 230, i32 6 }
@___asan_gen_.389 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 214, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 174, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4175, i32 19 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4330, i32 19 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4401, i32 19 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4433, i32 19 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4523, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4908, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4909, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4910, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4911, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.437 = private constant [30 x i8] c"../security/smack/smack_lsm.c\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 4912, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [30 x i8] c"switch.table.smack_file_fcntl\00", align 1
@llvm.compiler.used = appending global [123 x ptr] [ptr @__lsm_smack, ptr @smack_add_opt._entry, ptr @smack_add_opt._entry_ptr, ptr @smack_init._entry, ptr @smack_init._entry.5, ptr @smack_init._entry.8, ptr @smack_init._entry_ptr, ptr @smack_init._entry_ptr.10, ptr @smack_init._entry_ptr.7, ptr @smack_inode_setsecurity._entry, ptr @smack_inode_setsecurity._entry_ptr, ptr @smk_bu_credfile._entry, ptr @smk_bu_credfile._entry.60, ptr @smk_bu_credfile._entry_ptr, ptr @smk_bu_credfile._entry_ptr.61, ptr @smk_bu_current._entry, ptr @smk_bu_current._entry_ptr, ptr @smk_bu_file._entry, ptr @smk_bu_file._entry.51, ptr @smk_bu_file._entry_ptr, ptr @smk_bu_file._entry_ptr.53, ptr @smk_bu_inode._entry, ptr @smk_bu_inode._entry.36, ptr @smk_bu_inode._entry_ptr, ptr @smk_bu_inode._entry_ptr.38, ptr @smk_bu_note._entry, ptr @smk_bu_note._entry_ptr, ptr @smk_bu_task._entry, ptr @smk_bu_task._entry_ptr, ptr @smack_blob_sizes, ptr @.str, ptr @smack_rule_cache, ptr @.str.1, ptr @smack_hooks, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @init_task_smack.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @smack_fs_parameters, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @smk_mount_opts, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @smk_bu_mess, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @smack_cred_transfer.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @init_smack_known_list.__key, ptr @.str.87, ptr @init_smack_known_list.__key.88, ptr @.str.89, ptr @init_smack_known_list.__key.90, ptr @.str.91, ptr @init_smack_known_list.__key.92, ptr @.str.93, ptr @init_smack_known_list.__key.94, ptr @.str.95, ptr @switch.table.smack_file_fcntl], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_blob_sizes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_rule_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_hooks to i32), i32 2220, i32 2784, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_task_smack.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_fs_parameters to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_add_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_mount_opts to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_bu_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_bu_mess to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_bu_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_bu_inode._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_inode_setsecurity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_bu_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_bu_file._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_bu_note._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_bu_credfile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_bu_credfile._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_cred_transfer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_bu_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_smack_known_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_smack_known_list.__key.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_smack_known_list.__key.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_smack_known_list.__key.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_smack_known_list.__key.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smack_file_fcntl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1, align 16
  %call2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef 4, i32 noundef 0, ptr noundef null) #18
  store ptr %call2, ptr @smack_rule_cache, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @smack_known_floor, ptr %add.ptr.i, align 4
  %smk_forked.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %smk_forked.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smack_known_floor, ptr %smk_forked.i, align 4
  %smk_rules.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2
  %11 = ptrtoint ptr %smk_rules.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %smk_rules.i, ptr %smk_rules.i, align 4
  %prev.i.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %smk_rules.i, ptr %prev.i.i, align 4
  %smk_relabel.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4
  %13 = ptrtoint ptr %smk_relabel.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %smk_relabel.i, ptr %smk_relabel.i, align 4
  %prev.i5.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %smk_relabel.i, ptr %prev.i5.i, align 4
  %smk_rules_lock.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %smk_rules_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_task_smack.__key) #18
  tail call void @security_add_hooks(ptr noundef nonnull @smack_hooks, i32 noundef 111, ptr noundef nonnull @.str) #18
  store i32 1, ptr @smack_enabled, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #21
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #21
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #21
  tail call fastcc void @init_smack_known_list() #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_smack_known_list() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.smack_known, ptr @smack_known_huh, i32 0, i32 6), ptr noundef nonnull @.str.87, ptr noundef nonnull @init_smack_known_list.__key) #18
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.smack_known, ptr @smack_known_hat, i32 0, i32 6), ptr noundef nonnull @.str.89, ptr noundef nonnull @init_smack_known_list.__key.88) #18
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.smack_known, ptr @smack_known_floor, i32 0, i32 6), ptr noundef nonnull @.str.91, ptr noundef nonnull @init_smack_known_list.__key.90) #18
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.smack_known, ptr @smack_known_star, i32 0, i32 6), ptr noundef nonnull @.str.93, ptr noundef nonnull @init_smack_known_list.__key.92) #18
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.smack_known, ptr @smack_known_web, i32 0, i32 6), ptr noundef nonnull @.str.95, ptr noundef nonnull @init_smack_known_list.__key.94) #18
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_huh, i32 0, i32 5) to i32))
  store volatile ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_huh, i32 0, i32 5), ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_huh, i32 0, i32 5), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_huh, i32 0, i32 5, i32 1) to i32))
  store ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_huh, i32 0, i32 5), ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_huh, i32 0, i32 5, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_hat, i32 0, i32 5) to i32))
  store volatile ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_hat, i32 0, i32 5), ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_hat, i32 0, i32 5), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_hat, i32 0, i32 5, i32 1) to i32))
  store ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_hat, i32 0, i32 5), ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_hat, i32 0, i32 5, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_star, i32 0, i32 5) to i32))
  store volatile ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_star, i32 0, i32 5), ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_star, i32 0, i32 5), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_star, i32 0, i32 5, i32 1) to i32))
  store ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_star, i32 0, i32 5), ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_star, i32 0, i32 5, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_floor, i32 0, i32 5) to i32))
  store volatile ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_floor, i32 0, i32 5), ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_floor, i32 0, i32 5), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_floor, i32 0, i32 5, i32 1) to i32))
  store ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_floor, i32 0, i32 5), ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_floor, i32 0, i32 5, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_web, i32 0, i32 5) to i32))
  store volatile ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_web, i32 0, i32 5), ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_web, i32 0, i32 5), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_web, i32 0, i32 5, i32 1) to i32))
  store ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_web, i32 0, i32 5), ptr getelementptr inbounds (%struct.smack_known, ptr @smack_known_web, i32 0, i32 5, i32 1), align 4
  tail call void @smk_insert_entry(ptr noundef nonnull @smack_known_huh) #18
  tail call void @smk_insert_entry(ptr noundef nonnull @smack_known_hat) #18
  tail call void @smk_insert_entry(ptr noundef nonnull @smack_known_star) #18
  tail call void @smk_insert_entry(ptr noundef nonnull @smack_known_floor) #18
  tail call void @smk_insert_entry(ptr noundef nonnull @smack_known_web) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_ptrace_access_check(ptr noundef %ctp, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smk_of_task_struct_obj(ptr noundef %ctp)
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call2 = tail call fastcc i32 @smk_ptrace_rule_check(ptr noundef %3, ptr noundef %call, i32 noundef %mode, ptr noundef nonnull @__func__.smack_ptrace_access_check)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_ptrace_traceme(ptr noundef %ptp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %call3 = tail call fastcc i32 @smk_ptrace_rule_check(ptr noundef %ptp, ptr noundef %10, i32 noundef 2, ptr noundef nonnull @__func__.smack_ptrace_traceme)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_syslog(i32 noundef %typefrom_file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call zeroext i1 @smack_privileged(i32 noundef 32) #18
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_syslog_label to i32))
  %11 = load ptr, ptr @smack_syslog_label, align 4
  %cmp.not = icmp eq ptr %11, null
  %cmp2.not = icmp eq ptr %11, %10
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2.not
  %rc.0 = select i1 %or.cond, i32 0, i32 -13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_fs_context_dup(ptr nocapture noundef writeonly %fc, ptr nocapture noundef readonly %src_fc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security = getelementptr inbounds %struct.fs_context, ptr %src_fc, i32 0, i32 11
  %0 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #23
  %security1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 11
  %3 = ptrtoint ptr %security1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %security1, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end5.if.end16_crit_edge, label %if.then8

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then8:                                         ; preds = %if.end5
  %call10 = tail call noalias ptr @kstrdup(ptr noundef nonnull %5, i32 noundef 3264) #18
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %call7.i.i, align 8
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %if.then8.cleanup_crit_edge, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %if.then8.if.end16_crit_edge, %if.end5.if.end16_crit_edge
  %fsfloor = getelementptr inbounds %struct.smack_mnt_opts, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fsfloor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fsfloor, align 4
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %if.end16.if.end26_crit_edge, label %if.then18

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then18:                                        ; preds = %if.end16
  %call20 = tail call noalias ptr @kstrdup(ptr noundef nonnull %8, i32 noundef 3264) #18
  %fsfloor21 = getelementptr inbounds %struct.smack_mnt_opts, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %fsfloor21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20, ptr %fsfloor21, align 4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %if.then18.cleanup_crit_edge, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end26:                                         ; preds = %if.then18.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %fshat = getelementptr inbounds %struct.smack_mnt_opts, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %fshat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fshat, align 4
  %tobool27.not = icmp eq ptr %11, null
  br i1 %tobool27.not, label %if.end26.if.end36_crit_edge, label %if.then28

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then28:                                        ; preds = %if.end26
  %call30 = tail call noalias ptr @kstrdup(ptr noundef nonnull %11, i32 noundef 3264) #18
  %fshat31 = getelementptr inbounds %struct.smack_mnt_opts, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %fshat31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %fshat31, align 8
  %tobool33.not = icmp eq ptr %call30, null
  br i1 %tobool33.not, label %if.then28.cleanup_crit_edge, label %if.then28.if.end36_crit_edge

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end36:                                         ; preds = %if.then28.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %fsroot = getelementptr inbounds %struct.smack_mnt_opts, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %fsroot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsroot, align 4
  %tobool37.not = icmp eq ptr %14, null
  br i1 %tobool37.not, label %if.end36.if.end46_crit_edge, label %if.then38

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.then38:                                        ; preds = %if.end36
  %call40 = tail call noalias ptr @kstrdup(ptr noundef nonnull %14, i32 noundef 3264) #18
  %fsroot41 = getelementptr inbounds %struct.smack_mnt_opts, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %fsroot41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call40, ptr %fsroot41, align 4
  %tobool43.not = icmp eq ptr %call40, null
  br i1 %tobool43.not, label %if.then38.cleanup_crit_edge, label %if.then38.if.end46_crit_edge

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end46:                                         ; preds = %if.then38.if.end46_crit_edge, %if.end36.if.end46_crit_edge
  %fstransmute = getelementptr inbounds %struct.smack_mnt_opts, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %fstransmute to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fstransmute, align 4
  %tobool47.not = icmp eq ptr %17, null
  br i1 %tobool47.not, label %if.end46.if.end56_crit_edge, label %if.then48

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56

if.then48:                                        ; preds = %if.end46
  %call50 = tail call noalias ptr @kstrdup(ptr noundef nonnull %17, i32 noundef 3264) #18
  %fstransmute51 = getelementptr inbounds %struct.smack_mnt_opts, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %fstransmute51 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call50, ptr %fstransmute51, align 8
  %tobool53.not = icmp eq ptr %call50, null
  br i1 %tobool53.not, label %if.then48.cleanup_crit_edge, label %if.then48.if.end56_crit_edge

if.then48.if.end56_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end56:                                         ; preds = %if.then48.if.end56_crit_edge, %if.end46.if.end56_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then48.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ], [ -12, %if.then18.cleanup_crit_edge ], [ -12, %if.then28.cleanup_crit_edge ], [ -12, %if.then38.cleanup_crit_edge ], [ -12, %if.then48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_fs_context_parse_param(ptr noundef %fc, ptr noundef %param) #5 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #18
  %0 = call ptr @memset(ptr %result, i32 255, i32 16)
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @smack_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %security = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 11
  %call1 = call fastcc i32 @smack_add_opt(i32 noundef %call.i, ptr noundef %3, ptr noundef %security)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #18
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_sb_alloc_security(ptr nocapture noundef readonly %sb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 17
  %0 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_security.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @smack_known_floor, ptr %add.ptr.i, align 4
  %smk_default = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i, i32 0, i32 3
  %4 = ptrtoint ptr %smk_default to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @smack_known_floor, ptr %smk_default, align 4
  %smk_floor = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i, i32 0, i32 1
  %5 = ptrtoint ptr %smk_floor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @smack_known_floor, ptr %smk_floor, align 4
  %smk_hat = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i, i32 0, i32 2
  %6 = ptrtoint ptr %smk_hat to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @smack_known_hat, ptr %smk_hat, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_free_mnt_opts(ptr noundef %mnt_opts) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mnt_opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_opts, align 4
  tail call void @kfree(ptr noundef %1) #18
  %fsfloor = getelementptr inbounds %struct.smack_mnt_opts, ptr %mnt_opts, i32 0, i32 1
  %2 = ptrtoint ptr %fsfloor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsfloor, align 4
  tail call void @kfree(ptr noundef %3) #18
  %fshat = getelementptr inbounds %struct.smack_mnt_opts, ptr %mnt_opts, i32 0, i32 2
  %4 = ptrtoint ptr %fshat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fshat, align 4
  tail call void @kfree(ptr noundef %5) #18
  %fsroot = getelementptr inbounds %struct.smack_mnt_opts, ptr %mnt_opts, i32 0, i32 3
  %6 = ptrtoint ptr %fsroot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsroot, align 4
  tail call void @kfree(ptr noundef %7) #18
  %fstransmute = getelementptr inbounds %struct.smack_mnt_opts, ptr %mnt_opts, i32 0, i32 4
  %8 = ptrtoint ptr %fstransmute to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fstransmute, align 4
  tail call void @kfree(ptr noundef %9) #18
  tail call void @kfree(ptr noundef %mnt_opts) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_sb_eat_lsm_opts(ptr noundef %options, ptr nocapture noundef %mnt_opts) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %from.0 = phi ptr [ %options, %entry ], [ %add.ptr29, %cleanup ]
  %to.0 = phi ptr [ %options, %entry ], [ %to.1, %cleanup ]
  %first.0.off0 = phi i1 [ true, %entry ], [ %first.1.off0, %cleanup ]
  %call = tail call ptr @strchr(ptr noundef %from.0, i32 noundef 44)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %from.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = tail call i32 @strlen(ptr noundef %from.0) #24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.0 = phi i32 [ %sub.ptr.sub, %if.then ], [ %call1, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %len.0)
  %cmp2.i = icmp ult i32 %len.0, 10
  br i1 %cmp2.i, label %if.end.if.else17_crit_edge, label %lor.lhs.false.i

if.end.if.else17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else17

lor.lhs.false.i:                                  ; preds = %if.end
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(10) %from.0, ptr noundef nonnull dereferenceable(10) @.str.17, i32 10) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp ne i32 %bcmp.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %len.0)
  %cmp4.i = icmp eq i32 %len.0, 10
  %or.cond.i = or i1 %cmp4.i, %tobool.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx6.i = getelementptr i8, ptr %from.0, i32 10
  %0 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %1)
  %cmp7.not.i = icmp eq i8 %1, 61
  br i1 %cmp7.not.i, label %lor.lhs.false5.i.if.then3_crit_edge, label %lor.lhs.false5.i.for.inc.i_crit_edge

lor.lhs.false5.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

lor.lhs.false5.i.if.then3_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3

for.inc.i:                                        ; preds = %lor.lhs.false5.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %len.0)
  %cmp2.1.i = icmp ult i32 %len.0, 14
  br i1 %cmp2.1.i, label %for.inc.1.i, label %lor.lhs.false.1.i

lor.lhs.false.1.i:                                ; preds = %for.inc.i
  %bcmp.1.i = tail call i32 @bcmp(ptr noundef dereferenceable(14) %from.0, ptr noundef nonnull dereferenceable(14) @.str.18, i32 14) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1.i)
  %tobool.not.1.i = icmp ne i32 %bcmp.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %len.0)
  %cmp4.1.i = icmp eq i32 %len.0, 14
  %or.cond.1.i = or i1 %cmp4.1.i, %tobool.not.1.i
  br i1 %or.cond.1.i, label %lor.lhs.false.1.i.lor.lhs.false.2.i_crit_edge, label %lor.lhs.false5.1.i

lor.lhs.false.1.i.lor.lhs.false.2.i_crit_edge:    ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.2.i

lor.lhs.false5.1.i:                               ; preds = %lor.lhs.false.1.i
  %arrayidx6.1.i = getelementptr i8, ptr %from.0, i32 14
  %2 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %3)
  %cmp7.not.1.i = icmp eq i8 %3, 61
  br i1 %cmp7.not.1.i, label %lor.lhs.false5.1.i.if.then3_crit_edge, label %lor.lhs.false5.1.i.lor.lhs.false.2.i_crit_edge

lor.lhs.false5.1.i.lor.lhs.false.2.i_crit_edge:   ; preds = %lor.lhs.false5.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.2.i

lor.lhs.false5.1.i.if.then3_crit_edge:            ; preds = %lor.lhs.false5.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len.0)
  %cmp2.2.i = icmp ult i32 %len.0, 12
  br i1 %cmp2.2.i, label %for.inc.1.i.lor.lhs.false.3.i_crit_edge, label %for.inc.1.i.lor.lhs.false.2.i_crit_edge

for.inc.1.i.lor.lhs.false.2.i_crit_edge:          ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.2.i

for.inc.1.i.lor.lhs.false.3.i_crit_edge:          ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.3.i

lor.lhs.false.2.i:                                ; preds = %for.inc.1.i.lor.lhs.false.2.i_crit_edge, %lor.lhs.false5.1.i.lor.lhs.false.2.i_crit_edge, %lor.lhs.false.1.i.lor.lhs.false.2.i_crit_edge
  %bcmp.2.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %from.0, ptr noundef nonnull dereferenceable(12) @.str.19, i32 12) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2.i)
  %tobool.not.2.i = icmp ne i32 %bcmp.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len.0)
  %cmp4.2.i = icmp eq i32 %len.0, 12
  %or.cond.2.i = or i1 %cmp4.2.i, %tobool.not.2.i
  br i1 %or.cond.2.i, label %lor.lhs.false.2.i.lor.lhs.false.3.i_crit_edge, label %lor.lhs.false5.2.i

lor.lhs.false.2.i.lor.lhs.false.3.i_crit_edge:    ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.3.i

lor.lhs.false5.2.i:                               ; preds = %lor.lhs.false.2.i
  %arrayidx6.2.i = getelementptr i8, ptr %from.0, i32 12
  %4 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %5)
  %cmp7.not.2.i = icmp eq i8 %5, 61
  br i1 %cmp7.not.2.i, label %lor.lhs.false5.2.i.if.then3_crit_edge, label %lor.lhs.false5.2.i.lor.lhs.false.3.i_crit_edge

lor.lhs.false5.2.i.lor.lhs.false.3.i_crit_edge:   ; preds = %lor.lhs.false5.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.3.i

lor.lhs.false5.2.i.if.then3_crit_edge:            ; preds = %lor.lhs.false5.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3

lor.lhs.false.3.i:                                ; preds = %lor.lhs.false5.2.i.lor.lhs.false.3.i_crit_edge, %lor.lhs.false.2.i.lor.lhs.false.3.i_crit_edge, %for.inc.1.i.lor.lhs.false.3.i_crit_edge
  %bcmp.3.i = tail call i32 @bcmp(ptr noundef dereferenceable(10) %from.0, ptr noundef nonnull dereferenceable(10) @.str.20, i32 10) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3.i)
  %tobool.not.3.i = icmp ne i32 %bcmp.3.i, 0
  %or.cond.3.i = or i1 %cmp4.i, %tobool.not.3.i
  br i1 %or.cond.3.i, label %for.inc.3.i, label %lor.lhs.false5.3.i

lor.lhs.false5.3.i:                               ; preds = %lor.lhs.false.3.i
  %arrayidx6.3.i = getelementptr i8, ptr %from.0, i32 10
  %6 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %7)
  %cmp7.not.3.i = icmp eq i8 %7, 61
  br i1 %cmp7.not.3.i, label %lor.lhs.false5.3.i.if.then3_crit_edge, label %lor.lhs.false5.3.i.lor.lhs.false.4.i_crit_edge

lor.lhs.false5.3.i.lor.lhs.false.4.i_crit_edge:   ; preds = %lor.lhs.false5.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.4.i

lor.lhs.false5.3.i.if.then3_crit_edge:            ; preds = %lor.lhs.false5.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3

for.inc.3.i:                                      ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %len.0)
  %cmp2.4.i = icmp ult i32 %len.0, 11
  br i1 %cmp2.4.i, label %for.inc.3.i.if.else17_crit_edge, label %for.inc.3.i.lor.lhs.false.4.i_crit_edge

for.inc.3.i.lor.lhs.false.4.i_crit_edge:          ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.4.i

for.inc.3.i.if.else17_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else17

lor.lhs.false.4.i:                                ; preds = %for.inc.3.i.lor.lhs.false.4.i_crit_edge, %lor.lhs.false5.3.i.lor.lhs.false.4.i_crit_edge
  %bcmp.4.i = tail call i32 @bcmp(ptr noundef dereferenceable(11) %from.0, ptr noundef nonnull dereferenceable(11) @.str.21, i32 11) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4.i)
  %tobool.not.4.i = icmp ne i32 %bcmp.4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %len.0)
  %cmp4.4.i = icmp eq i32 %len.0, 11
  %or.cond.4.i = or i1 %cmp4.4.i, %tobool.not.4.i
  br i1 %or.cond.4.i, label %lor.lhs.false.4.i.for.inc.4.i_crit_edge, label %lor.lhs.false5.4.i

lor.lhs.false.4.i.for.inc.4.i_crit_edge:          ; preds = %lor.lhs.false.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4.i

lor.lhs.false5.4.i:                               ; preds = %lor.lhs.false.4.i
  %arrayidx6.4.i = getelementptr i8, ptr %from.0, i32 11
  %8 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %9)
  %cmp7.not.4.i = icmp eq i8 %9, 61
  br i1 %cmp7.not.4.i, label %lor.lhs.false5.4.i.if.then3_crit_edge, label %lor.lhs.false5.4.i.for.inc.4.i_crit_edge

lor.lhs.false5.4.i.for.inc.4.i_crit_edge:         ; preds = %lor.lhs.false5.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4.i

lor.lhs.false5.4.i.if.then3_crit_edge:            ; preds = %lor.lhs.false5.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3

for.inc.4.i:                                      ; preds = %lor.lhs.false5.4.i.for.inc.4.i_crit_edge, %lor.lhs.false.4.i.for.inc.4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len.0)
  %cmp2.5.i = icmp ult i32 %len.0, 16
  br i1 %cmp2.5.i, label %for.inc.4.i.if.else17_crit_edge, label %lor.lhs.false.5.i

for.inc.4.i.if.else17_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else17

lor.lhs.false.5.i:                                ; preds = %for.inc.4.i
  %bcmp.5.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %from.0, ptr noundef nonnull dereferenceable(16) @.str.22, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.5.i)
  %tobool.not.5.i = icmp ne i32 %bcmp.5.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len.0)
  %cmp4.5.i = icmp eq i32 %len.0, 16
  %or.cond.5.i = or i1 %cmp4.5.i, %tobool.not.5.i
  br i1 %or.cond.5.i, label %lor.lhs.false.5.i.if.else17_crit_edge, label %lor.lhs.false5.5.i

lor.lhs.false.5.i.if.else17_crit_edge:            ; preds = %lor.lhs.false.5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else17

lor.lhs.false5.5.i:                               ; preds = %lor.lhs.false.5.i
  %arrayidx6.5.i = getelementptr i8, ptr %from.0, i32 16
  %10 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %11)
  %cmp7.not.5.i = icmp eq i8 %11, 61
  br i1 %cmp7.not.5.i, label %lor.lhs.false5.5.i.if.then3_crit_edge, label %lor.lhs.false5.5.i.if.else17_crit_edge

lor.lhs.false5.5.i.if.else17_crit_edge:           ; preds = %lor.lhs.false5.5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else17

lor.lhs.false5.5.i.if.then3_crit_edge:            ; preds = %lor.lhs.false5.5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false5.5.i.if.then3_crit_edge, %lor.lhs.false5.4.i.if.then3_crit_edge, %lor.lhs.false5.3.i.if.then3_crit_edge, %lor.lhs.false5.2.i.if.then3_crit_edge, %lor.lhs.false5.1.i.if.then3_crit_edge, %lor.lhs.false5.i.if.then3_crit_edge
  %i.029.lcssa.i = phi i32 [ 0, %lor.lhs.false5.i.if.then3_crit_edge ], [ 1, %lor.lhs.false5.1.i.if.then3_crit_edge ], [ 2, %lor.lhs.false5.2.i.if.then3_crit_edge ], [ 3, %lor.lhs.false5.3.i.if.then3_crit_edge ], [ 4, %lor.lhs.false5.4.i.if.then3_crit_edge ], [ 5, %lor.lhs.false5.5.i.if.then3_crit_edge ]
  %.lcssa.i = phi i32 [ 10, %lor.lhs.false5.i.if.then3_crit_edge ], [ 14, %lor.lhs.false5.1.i.if.then3_crit_edge ], [ 12, %lor.lhs.false5.2.i.if.then3_crit_edge ], [ 10, %lor.lhs.false5.3.i.if.then3_crit_edge ], [ 11, %lor.lhs.false5.4.i.if.then3_crit_edge ], [ 16, %lor.lhs.false5.5.i.if.then3_crit_edge ]
  %opt.i = getelementptr [6 x %struct.anon.165], ptr @smk_mount_opts, i32 0, i32 %i.029.lcssa.i, i32 2
  %12 = ptrtoint ptr %opt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opt.i, align 4
  %arrayidx6.le.i = getelementptr i8, ptr %from.0, i32 1
  %add.ptr11.i = getelementptr i8, ptr %arrayidx6.le.i, i32 %.lcssa.i
  %add.ptr = getelementptr i8, ptr %from.0, i32 %len.0
  %sub.ptr.lhs.cast4 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast5 = ptrtoint ptr %add.ptr11.i to i32
  %sub.ptr.sub6 = sub i32 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  %call7 = tail call ptr @kmemdup_nul(ptr noundef %add.ptr11.i, i32 noundef %sub.ptr.sub6, i32 noundef 3264) #18
  %call8 = tail call fastcc i32 @smack_add_opt(i32 noundef %13, ptr noundef %call7, ptr noundef %mnt_opts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then3.if.end25_crit_edge, label %if.then12, !prof !343

if.then3.if.end25_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then12:                                        ; preds = %if.then3
  tail call void @kfree(ptr noundef %call7) #18
  %14 = ptrtoint ptr %mnt_opts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mnt_opts, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.then12.cleanup.thread_crit_edge, label %if.then14

if.then12.cleanup.thread_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smack_free_mnt_opts(ptr noundef nonnull %15)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then14, %if.then12.cleanup.thread_crit_edge
  %16 = ptrtoint ptr %mnt_opts to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %mnt_opts, align 4
  br label %cleanup34

if.else17:                                        ; preds = %lor.lhs.false5.5.i.if.else17_crit_edge, %lor.lhs.false.5.i.if.else17_crit_edge, %for.inc.4.i.if.else17_crit_edge, %for.inc.3.i.if.else17_crit_edge, %if.end.if.else17_crit_edge
  %not.first.0.off0 = xor i1 %first.0.off0, true
  %from.1.idx = sext i1 %not.first.0.off0 to i32
  %from.1 = getelementptr i8, ptr %from.0, i32 %from.1.idx
  %inc = zext i1 %not.first.0.off0 to i32
  %len.1 = add i32 %len.0, %inc
  %cmp21.not = icmp eq ptr %to.0, %from.1
  br i1 %cmp21.not, label %if.else17.if.end23_crit_edge, label %if.then22

if.else17.if.end23_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then22:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #20
  %17 = call ptr @memmove(ptr %to.0, ptr %from.1, i32 %len.1)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.else17.if.end23_crit_edge
  %add.ptr24 = getelementptr i8, ptr %to.0, i32 %len.1
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.then3.if.end25_crit_edge
  %from.2 = phi ptr [ %from.0, %if.then3.if.end25_crit_edge ], [ %from.1, %if.end23 ]
  %to.1 = phi ptr [ %to.0, %if.then3.if.end25_crit_edge ], [ %add.ptr24, %if.end23 ]
  %first.1.off0 = phi i1 [ %first.0.off0, %if.then3.if.end25_crit_edge ], [ false, %if.end23 ]
  %len.2 = phi i32 [ %len.0, %if.then3.if.end25_crit_edge ], [ %len.1, %if.end23 ]
  %arrayidx = getelementptr i8, ptr %from.2, i32 %len.2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %tobool26.not = icmp eq i8 %19, 0
  br i1 %tobool26.not, label %while.end, label %cleanup

cleanup:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  %add = add i32 %len.2, 1
  %add.ptr29 = getelementptr i8, ptr %from.2, i32 %add
  br label %while.cond

while.end:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %to.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %to.1, align 1
  br label %cleanup34

cleanup34:                                        ; preds = %while.end, %cleanup.thread
  %retval.2 = phi i32 [ 0, %while.end ], [ %call8, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_sb_statfs(ptr noundef %dentry) #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_security.i, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %5 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %6 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %ad, align 4
  %9 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sad.i, ptr %9, align 4
  %11 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__func__.smack_sb_statfs, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %12 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dentry, ptr %u.i, align 4
  %smk_floor = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %smk_floor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smk_floor, align 4
  %call1 = call i32 @smk_curacc(ptr noundef %14, i32 noundef 4, ptr noundef nonnull %ad) #18
  %15 = ptrtoint ptr %smk_floor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smk_floor, align 4
  %17 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %security.i.i, align 4
  %25 = load i32, ptr @smack_blob_sizes, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.i = icmp slt i32 %call1, 1
  %26 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 8214847195300495359, ptr %acc.i, align 8
  br i1 %cmp.i, label %entry.smk_bu_current.exit_crit_edge, label %if.end.i

entry.smk_bu_current.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_current.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp2.i = icmp ugt i32 %call1, 3
  %spec.store.select.i = select i1 %cmp2.i, i32 0, i32 %call1
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smk_known.i, align 4
  %smk_known9.i = getelementptr inbounds %struct.smack_known, ptr %16, i32 0, i32 2
  %33 = ptrtoint ptr %smk_known9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smk_known9.i, align 4
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %28, ptr noundef %32, ptr noundef %34, ptr noundef nonnull %acc.i, ptr noundef %comm.i, ptr noundef nonnull @.str.25) #21
  br label %smk_bu_current.exit

smk_bu_current.exit:                              ; preds = %if.end.i, %entry.smk_bu_current.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call1, %entry.smk_bu_current.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_set_mnt_opts(ptr nocapture noundef readonly %sb, ptr noundef readonly %mnt_opts, i32 noundef %kern_flags, ptr nocapture noundef readnone %set_kern_flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 17
  %4 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_security.i, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %smk_flags = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i, i32 0, i32 4
  %7 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smk_flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup86_crit_edge

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup86

if.end:                                           ; preds = %entry
  %i_security = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %i_security to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_security, align 4
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @lsm_inode_alloc(ptr noundef %3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup86_crit_edge

if.then2.cleanup86_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup86

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call8 = tail call zeroext i1 @smack_privileged(i32 noundef 33) #18
  br i1 %call8, label %if.end25, label %if.then9

if.then9:                                         ; preds = %if.end7
  %tobool10.not = icmp eq ptr %mnt_opts, null
  br i1 %tobool10.not, label %if.end12, label %if.then9.cleanup86_crit_edge

if.then9.cleanup86_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup86

if.end12:                                         ; preds = %if.then9
  %11 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %security.i.i, align 4
  %19 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %19
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i, align 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %add.ptr.i, align 4
  %smk_default = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i, i32 0, i32 3
  %23 = ptrtoint ptr %smk_default to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %smk_default, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %24 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_user_ns, align 8
  %cmp14.not = icmp eq ptr %25, @init_user_ns
  br i1 %cmp14.not, label %cleanup86.critedge161, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %26 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_magic, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.then22 [
    i32 1650812274, label %land.lhs.true.cleanup86.critedge_crit_edge
    i32 16914836, label %land.lhs.true.cleanup86.critedge_crit_edge165
    i32 -2054924042, label %land.lhs.true.cleanup86.critedge_crit_edge166
  ]

land.lhs.true.cleanup86.critedge_crit_edge166:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup86.critedge

land.lhs.true.cleanup86.critedge_crit_edge165:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup86.critedge

land.lhs.true.cleanup86.critedge_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup86.critedge

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %smk_flags, align 4
  %or27155 = or i32 %30, 3
  store i32 %or27155, ptr %smk_flags, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %33 = ptrtoint ptr %i_security to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_security, align 4
  %35 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i151 = getelementptr i8, ptr %34, i32 %35
  %36 = ptrtoint ptr %add.ptr.i.i151 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %32, ptr %add.ptr.i.i151, align 4
  br label %if.then81

if.end25:                                         ; preds = %if.end7
  %37 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %smk_flags, align 4
  %or27 = or i32 %38, 1
  store i32 %or27, ptr %smk_flags, align 4
  %tobool28.not = icmp eq ptr %mnt_opts, null
  br i1 %tobool28.not, label %if.end25.if.end78.thread_crit_edge, label %if.then29

if.end25.if.end78.thread_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end78.thread

if.then29:                                        ; preds = %if.end25
  %39 = ptrtoint ptr %mnt_opts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mnt_opts, align 4
  %tobool30.not = icmp eq ptr %40, null
  br i1 %tobool30.not, label %if.then29.if.end39_crit_edge, label %if.then31

if.then29.if.end39_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39

if.then31:                                        ; preds = %if.then29
  %call33 = tail call ptr @smk_import_entry(ptr noundef nonnull %40, i32 noundef 0) #18
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %call33 to i32
  br label %cleanup86

if.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #20
  %smk_default38 = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i, i32 0, i32 3
  %42 = ptrtoint ptr %smk_default38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call33, ptr %smk_default38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %if.then29.if.end39_crit_edge
  %fsfloor = getelementptr inbounds %struct.smack_mnt_opts, ptr %mnt_opts, i32 0, i32 1
  %43 = ptrtoint ptr %fsfloor to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fsfloor, align 4
  %tobool40.not = icmp eq ptr %44, null
  br i1 %tobool40.not, label %if.end39.if.end48_crit_edge, label %if.then41

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

if.then41:                                        ; preds = %if.end39
  %call43 = tail call ptr @smk_import_entry(ptr noundef nonnull %44, i32 noundef 0) #18
  %cmp.i145 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #20
  %45 = ptrtoint ptr %call43 to i32
  br label %cleanup86

if.end47:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #20
  %smk_floor = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i, i32 0, i32 1
  %46 = ptrtoint ptr %smk_floor to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call43, ptr %smk_floor, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end39.if.end48_crit_edge
  %fshat = getelementptr inbounds %struct.smack_mnt_opts, ptr %mnt_opts, i32 0, i32 2
  %47 = ptrtoint ptr %fshat to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fshat, align 4
  %tobool49.not = icmp eq ptr %48, null
  br i1 %tobool49.not, label %if.end48.if.end57_crit_edge, label %if.then50

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

if.then50:                                        ; preds = %if.end48
  %call52 = tail call ptr @smk_import_entry(ptr noundef nonnull %48, i32 noundef 0) #18
  %cmp.i146 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #20
  %49 = ptrtoint ptr %call52 to i32
  br label %cleanup86

if.end56:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #20
  %smk_hat = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i, i32 0, i32 2
  %50 = ptrtoint ptr %smk_hat to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call52, ptr %smk_hat, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end48.if.end57_crit_edge
  %fsroot = getelementptr inbounds %struct.smack_mnt_opts, ptr %mnt_opts, i32 0, i32 3
  %51 = ptrtoint ptr %fsroot to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fsroot, align 4
  %tobool58.not = icmp eq ptr %52, null
  br i1 %tobool58.not, label %if.end57.if.end67_crit_edge, label %if.then59

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end67

if.then59:                                        ; preds = %if.end57
  %call61 = tail call ptr @smk_import_entry(ptr noundef nonnull %52, i32 noundef 0) #18
  %cmp.i147 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #20
  %53 = ptrtoint ptr %call61 to i32
  br label %cleanup86

if.end65:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #20
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call61, ptr %add.ptr.i, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end65, %if.end57.if.end67_crit_edge
  %fstransmute = getelementptr inbounds %struct.smack_mnt_opts, ptr %mnt_opts, i32 0, i32 4
  %55 = ptrtoint ptr %fstransmute to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fstransmute, align 4
  %tobool68.not = icmp eq ptr %56, null
  br i1 %tobool68.not, label %if.end67.if.end78.thread_crit_edge, label %if.then69

if.end67.if.end78.thread_crit_edge:               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end78.thread

if.then69:                                        ; preds = %if.end67
  %call71 = tail call ptr @smk_import_entry(ptr noundef nonnull %56, i32 noundef 0) #18
  %cmp.i148 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #20
  %57 = ptrtoint ptr %call71 to i32
  br label %cleanup86

if.end75:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #20
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call71, ptr %add.ptr.i, align 4
  %59 = ptrtoint ptr %i_security to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_security, align 4
  %61 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i149 = getelementptr i8, ptr %60, i32 %61
  %62 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call71, ptr %add.ptr.i.i149, align 4
  br label %if.then81

if.end78.thread:                                  ; preds = %if.end67.if.end78.thread_crit_edge, %if.end25.if.end78.thread_crit_edge
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 4
  %65 = ptrtoint ptr %i_security to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_security, align 4
  %67 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i151159 = getelementptr i8, ptr %66, i32 %67
  %68 = ptrtoint ptr %add.ptr.i.i151159 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %64, ptr %add.ptr.i.i151159, align 4
  %smk_flags.i152160 = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i.i151159, i32 0, i32 3
  %69 = ptrtoint ptr %smk_flags.i152160 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %smk_flags.i152160, align 4
  br label %cleanup86

if.then81:                                        ; preds = %if.end75, %if.then22
  %add.ptr.i.i151.sink = phi ptr [ %add.ptr.i.i151, %if.then22 ], [ %add.ptr.i.i149, %if.end75 ]
  %smk_flags.i152 = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i.i151.sink, i32 0, i32 3
  %70 = ptrtoint ptr %smk_flags.i152 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %smk_flags.i152, align 4
  %71 = ptrtoint ptr %i_security to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_security, align 4
  %73 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i153 = getelementptr i8, ptr %72, i32 %73
  %smk_flags83 = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i153, i32 0, i32 3
  %74 = ptrtoint ptr %smk_flags83 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %smk_flags83, align 4
  %or84 = or i32 %75, 2
  store i32 %or84, ptr %smk_flags83, align 4
  br label %cleanup86

cleanup86.critedge:                               ; preds = %land.lhs.true.cleanup86.critedge_crit_edge, %land.lhs.true.cleanup86.critedge_crit_edge165, %land.lhs.true.cleanup86.critedge_crit_edge166
  %76 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %smk_flags, align 4
  %or27155.c = or i32 %77, 1
  store i32 %or27155.c, ptr %smk_flags, align 4
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  %80 = ptrtoint ptr %i_security to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_security, align 4
  %82 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i151.c = getelementptr i8, ptr %81, i32 %82
  %83 = ptrtoint ptr %add.ptr.i.i151.c to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %79, ptr %add.ptr.i.i151.c, align 4
  %smk_flags.i152.c = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i.i151.c, i32 0, i32 3
  %84 = ptrtoint ptr %smk_flags.i152.c to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %smk_flags.i152.c, align 4
  br label %cleanup86

cleanup86.critedge161:                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %85 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %smk_flags, align 4
  %or27155.c162 = or i32 %86, 1
  store i32 %or27155.c162, ptr %smk_flags, align 4
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i, align 4
  %89 = ptrtoint ptr %i_security to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_security, align 4
  %91 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i151.c163 = getelementptr i8, ptr %90, i32 %91
  %92 = ptrtoint ptr %add.ptr.i.i151.c163 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %88, ptr %add.ptr.i.i151.c163, align 4
  %smk_flags.i152.c164 = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i.i151.c163, i32 0, i32 3
  %93 = ptrtoint ptr %smk_flags.i152.c164 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %smk_flags.i152.c164, align 4
  br label %cleanup86

cleanup86:                                        ; preds = %cleanup86.critedge161, %cleanup86.critedge, %if.then81, %if.end78.thread, %if.then73, %if.then63, %if.then54, %if.then45, %if.then35, %if.then9.cleanup86_crit_edge, %if.then2.cleanup86_crit_edge, %entry.cleanup86_crit_edge
  %retval.1 = phi i32 [ %41, %if.then35 ], [ %45, %if.then45 ], [ %49, %if.then54 ], [ %53, %if.then63 ], [ %57, %if.then73 ], [ %call3, %if.then2.cleanup86_crit_edge ], [ 0, %entry.cleanup86_crit_edge ], [ -1, %if.then9.cleanup86_crit_edge ], [ 0, %if.then81 ], [ 0, %if.end78.thread ], [ 0, %cleanup86.critedge ], [ 0, %cleanup86.critedge161 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_bprm_creds_for_exec(ptr nocapture noundef %bprm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %cred = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 9
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 4
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %i_security.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_security.i, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i59 = getelementptr i8, ptr %10, i32 %11
  %smk_task = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i59, i32 0, i32 1
  %12 = ptrtoint ptr %smk_task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smk_task, align 4
  %cmp = icmp eq ptr %13, null
  br i1 %cmp, label %entry.cleanup38_crit_edge, label %lor.lhs.false

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

lor.lhs.false:                                    ; preds = %entry
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %cmp5 = icmp eq ptr %13, %15
  br i1 %cmp5, label %lor.lhs.false.cleanup38_crit_edge, label %if.end

lor.lhs.false.cleanup38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

if.end:                                           ; preds = %lor.lhs.false
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_security.i, align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i60 = getelementptr i8, ptr %19, i32 %20
  %smk_flags = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i60, i32 0, i32 4
  %21 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %smk_flags, align 4
  %and = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %23 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i60, align 4
  %cmp8.not = icmp eq ptr %13, %24
  br i1 %cmp8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.cleanup38_crit_edge

land.lhs.true.cleanup38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %unsafe = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 10
  %25 = ptrtoint ptr %unsafe to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %unsafe, align 4
  %and11 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end26_crit_edge, label %if.then13

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then13:                                        ; preds = %if.end10
  %27 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.then13.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then13.rcu_read_lock.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then13
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then13.rcu_read_lock.exit_crit_edge
  %31 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %ptrace.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %ptrace.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptrace.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i61 = icmp eq i32 %36, 0
  br i1 %tobool.not.i61, label %rcu_read_lock.exit.if.end22_crit_edge, label %if.then.i63, !prof !343

rcu_read_lock.exit.if.end22_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then.i63:                                      ; preds = %rcu_read_lock.exit
  %parent.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 72
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %parent.i, align 8
  %call.i62 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool4.not.i = icmp eq i32 %call.i62, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i64, label %if.then.i63.ptrace_parent.exit_crit_edge

if.then.i63.ptrace_parent.exit_crit_edge:         ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #20
  br label %ptrace_parent.exit

land.lhs.true.i64:                                ; preds = %if.then.i63
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i64.ptrace_parent.exit_crit_edge, label %land.lhs.true7.i

land.lhs.true.i64.ptrace_parent.exit_crit_edge:   ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #20
  br label %ptrace_parent.exit

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i64
  %.b15.i = load i1, ptr @ptrace_parent.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true7.i.ptrace_parent.exit_crit_edge, label %if.then9.i

land.lhs.true7.i.ptrace_parent.exit_crit_edge:    ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ptrace_parent.exit

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @ptrace_parent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 127, ptr noundef nonnull @.str.13) #18
  br label %ptrace_parent.exit

ptrace_parent.exit:                               ; preds = %if.then9.i, %land.lhs.true7.i.ptrace_parent.exit_crit_edge, %land.lhs.true.i64.ptrace_parent.exit_crit_edge, %if.then.i63.ptrace_parent.exit_crit_edge
  %cmp16.not = icmp eq ptr %38, null
  br i1 %cmp16.not, label %ptrace_parent.exit.if.end22_crit_edge, label %if.then19, !prof !345

ptrace_parent.exit.if.end22_crit_edge:            ; preds = %ptrace_parent.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then19:                                        ; preds = %ptrace_parent.exit
  call void @__sanitizer_cov_trace_pc() #20
  %39 = ptrtoint ptr %smk_task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %smk_task, align 4
  %call21 = tail call fastcc i32 @smk_ptrace_rule_check(ptr noundef nonnull %38, ptr noundef %40, i32 noundef 2, ptr noundef nonnull @__func__.smack_bprm_creds_for_exec)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %ptrace_parent.exit.if.end22_crit_edge, %rcu_read_lock.exit.if.end22_crit_edge
  %rc.0 = phi i32 [ %call21, %if.then19 ], [ 0, %ptrace_parent.exit.if.end22_crit_edge ], [ 0, %rcu_read_lock.exit.if.end22_crit_edge ]
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i65, label %if.end22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

if.end22.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %if.end22
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %if.end22.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %41 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i72 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp23.not = icmp eq i32 %rc.0, 0
  br i1 %cmp23.not, label %rcu_read_unlock.exit.if.end26_crit_edge, label %rcu_read_unlock.exit.cleanup38_crit_edge

rcu_read_unlock.exit.cleanup38_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

rcu_read_unlock.exit.if.end26_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.end26:                                         ; preds = %rcu_read_unlock.exit.if.end26_crit_edge, %if.end10.if.end26_crit_edge
  %45 = ptrtoint ptr %unsafe to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %unsafe, align 4
  %and28 = and i32 %46, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup38_crit_edge

if.end26.cleanup38_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

if.end31:                                         ; preds = %if.end26
  %47 = ptrtoint ptr %smk_task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %smk_task, align 4
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %add.ptr.i, align 4
  %per_clear = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 11
  %50 = ptrtoint ptr %per_clear to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %per_clear, align 4
  %or = or i32 %51, 7602176
  store i32 %or, ptr %per_clear, align 4
  %52 = load ptr, ptr %add.ptr.i, align 4
  %smk_forked = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 1
  %53 = ptrtoint ptr %smk_forked to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %smk_forked, align 4
  %cmp35.not = icmp eq ptr %52, %54
  br i1 %cmp35.not, label %if.end31.cleanup38_crit_edge, label %if.then36

if.end31.cleanup38_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %secureexec = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 5
  %55 = ptrtoint ptr %secureexec to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %secureexec, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %secureexec, align 4
  br label %cleanup38

cleanup38:                                        ; preds = %if.then36, %if.end31.cleanup38_crit_edge, %if.end26.cleanup38_crit_edge, %rcu_read_unlock.exit.cleanup38_crit_edge, %land.lhs.true.cleanup38_crit_edge, %lor.lhs.false.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.1 = phi i32 [ %rc.0, %rcu_read_unlock.exit.cleanup38_crit_edge ], [ 0, %lor.lhs.false.cleanup38_crit_edge ], [ 0, %entry.cleanup38_crit_edge ], [ 0, %land.lhs.true.cleanup38_crit_edge ], [ -1, %if.end26.cleanup38_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end31.cleanup38_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_inode_alloc_security(ptr nocapture noundef readonly %inode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %11 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_security.i.i, align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %12, i32 %13
  %14 = ptrtoint ptr %add.ptr.i.i1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %add.ptr.i.i1, align 4
  %smk_flags.i = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i.i1, i32 0, i32 3
  %15 = ptrtoint ptr %smk_flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %smk_flags.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_init_security(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %dir, ptr nocapture noundef readnone %qstr, ptr noundef writeonly %name, ptr noundef writeonly %value, ptr noundef writeonly %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %security.i.i, align 4
  %11 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %11
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %i_security.i.i40 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 10
  %16 = ptrtoint ptr %i_security.i.i40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_security.i.i40, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %17, i32 %2
  %18 = ptrtoint ptr %add.ptr.i.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i41, align 4
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.33, ptr %name, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool4.not = icmp eq ptr %value, null
  %tobool5.not = icmp eq ptr %len, null
  %or.cond = or i1 %tobool4.not, %tobool5.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %21 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.then6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then6.rcu_read_lock.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then6.rcu_read_lock.exit_crit_edge
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %13, i32 0, i32 2
  %25 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smk_known, align 4
  %smk_known7 = getelementptr inbounds %struct.smack_known, ptr %19, i32 0, i32 2
  %27 = ptrtoint ptr %smk_known7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smk_known7, align 4
  %smk_rules = getelementptr inbounds %struct.smack_known, ptr %13, i32 0, i32 5
  %call8 = tail call i32 @smk_access_entry(ptr noundef %26, ptr noundef %28, ptr noundef %smk_rules) #18
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i42, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %rcu_read_lock.exit
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %29 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i49 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i50, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp slt i32 %call8, 1
  %and = and i32 %call8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10.not = icmp eq i32 %and, 0
  %or.cond38 = or i1 %cmp, %cmp10.not
  br i1 %or.cond38, label %rcu_read_unlock.exit.if.end15_crit_edge, label %land.lhs.true11

rcu_read_unlock.exit.if.end15_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

land.lhs.true11:                                  ; preds = %rcu_read_unlock.exit
  %33 = ptrtoint ptr %i_security.i.i40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_security.i.i40, align 4
  %35 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %34, i32 %35
  %smk_flags.i = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i.i52, i32 0, i32 3
  %36 = ptrtoint ptr %smk_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %smk_flags.i, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool13.not = icmp eq i32 %38, 0
  br i1 %tobool13.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then14

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  %smk_flags = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 3
  %39 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %smk_flags, align 4
  %or = or i32 %40, 4
  store i32 %or, ptr %smk_flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true11.if.end15_crit_edge, %rcu_read_unlock.exit.if.end15_crit_edge
  %isp.0 = phi ptr [ %19, %if.then14 ], [ %15, %land.lhs.true11.if.end15_crit_edge ], [ %15, %rcu_read_unlock.exit.if.end15_crit_edge ]
  %smk_known16 = getelementptr inbounds %struct.smack_known, ptr %isp.0, i32 0, i32 2
  %41 = ptrtoint ptr %smk_known16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %smk_known16, align 4
  %call17 = tail call noalias ptr @kstrdup(ptr noundef %42, i32 noundef 3136) #18
  %43 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call17, ptr %value, align 4
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %44 = ptrtoint ptr %smk_known16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %smk_known16, align 4
  %call22 = tail call i32 @strlen(ptr noundef %45) #24
  %46 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call22, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end15.cleanup_crit_edge ], [ 0, %if.end20 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_link(ptr noundef %old_dentry, ptr nocapture noundef readnone %dir, ptr noundef %new_dentry) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %ad, align 4
  %4 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sad.i, ptr %4, align 4
  %6 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @__func__.smack_inode_link, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %old_dentry, ptr %u.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_security.i.i, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  %call2 = call i32 @smk_curacc(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %ad) #18
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %call4 = call fastcc i32 @smk_bu_inode(ptr noundef %16, i32 noundef 2, i32 noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %17 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %new_dentry, align 8
  %and.i.i.i.i = and i32 %18, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %d_inode.i21 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i21, align 8
  %i_security.i.i22 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %i_security.i.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_security.i.i22, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %22, i32 %23
  %24 = ptrtoint ptr %add.ptr.i.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i23, align 4
  %26 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %new_dentry, ptr %u.i, align 4
  %call8 = call i32 @smk_curacc(ptr noundef %25, i32 noundef 2, ptr noundef nonnull %ad) #18
  %27 = ptrtoint ptr %d_inode.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i21, align 8
  %call10 = call fastcc i32 @smk_bu_inode(ptr noundef %28, i32 noundef 2, i32 noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call10, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %call4, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_unlink(ptr noundef %dir, ptr noundef %dentry) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %2 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %3 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %ad, align 4
  %6 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sad.i, ptr %6, align 4
  %8 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__func__.smack_inode_unlink, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %9 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dentry, ptr %u.i, align 4
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_security.i.i, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  %call2 = call i32 @smk_curacc(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %ad) #18
  %call3 = call fastcc i32 @smk_bu_inode(ptr noundef %1, i32 noundef 2, i32 noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %15 = call ptr @memset(ptr %3, i32 0, i32 16)
  %16 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 9, ptr %ad, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sad.i, ptr %6, align 4
  %18 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @__func__.smack_inode_unlink, ptr %sad.i, align 4
  %19 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dir, ptr %u.i, align 4
  %i_security.i.i16 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 10
  %20 = ptrtoint ptr %i_security.i.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_security.i.i16, align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %21, i32 %22
  %23 = ptrtoint ptr %add.ptr.i.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i17, align 4
  %call5 = call i32 @smk_curacc(ptr noundef %24, i32 noundef 2, ptr noundef nonnull %ad) #18
  %call6 = call fastcc i32 @smk_bu_inode(ptr noundef %dir, i32 noundef 2, i32 noundef %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call6, %if.then ], [ %call3, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_rmdir(ptr noundef %dir, ptr noundef %dentry) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %ad, align 4
  %4 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sad.i, ptr %4, align 4
  %6 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @__func__.smack_inode_rmdir, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dentry, ptr %u.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_security.i.i, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  %call2 = call i32 @smk_curacc(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %ad) #18
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %call4 = call fastcc i32 @smk_bu_inode(ptr noundef %16, i32 noundef 2, i32 noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %17 = call ptr @memset(ptr %1, i32 0, i32 16)
  %18 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 9, ptr %ad, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sad.i, ptr %4, align 4
  %20 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @__func__.smack_inode_rmdir, ptr %sad.i, align 4
  %21 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dir, ptr %u.i, align 4
  %i_security.i.i18 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 10
  %22 = ptrtoint ptr %i_security.i.i18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_security.i.i18, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %23, i32 %24
  %25 = ptrtoint ptr %add.ptr.i.i19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i19, align 4
  %call6 = call i32 @smk_curacc(ptr noundef %26, i32 noundef 2, ptr noundef nonnull %ad) #18
  %call7 = call fastcc i32 @smk_bu_inode(ptr noundef %dir, i32 noundef 2, i32 noundef %call6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call7, %if.then ], [ %call4, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_rename(ptr nocapture noundef readnone %old_inode, ptr noundef %old_dentry, ptr nocapture noundef readnone %new_inode, ptr noundef %new_dentry) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %ad, align 4
  %4 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sad.i, ptr %4, align 4
  %6 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @__func__.smack_inode_rename, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %old_dentry, ptr %u.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_security.i.i, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  %call2 = call i32 @smk_curacc(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %ad) #18
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %call4 = call fastcc i32 @smk_bu_inode(ptr noundef %16, i32 noundef 6, i32 noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %17 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %new_dentry, align 8
  %and.i.i.i.i = and i32 %18, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %d_inode.i21 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i21, align 8
  %i_security.i.i22 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %i_security.i.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_security.i.i22, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %22, i32 %23
  %24 = ptrtoint ptr %add.ptr.i.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i23, align 4
  %26 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %new_dentry, ptr %u.i, align 4
  %call8 = call i32 @smk_curacc(ptr noundef %25, i32 noundef 6, ptr noundef nonnull %ad) #18
  %27 = ptrtoint ptr %d_inode.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i21, align 8
  %call10 = call fastcc i32 @smk_bu_inode(ptr noundef %28, i32 noundef 6, i32 noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call10, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %call4, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_permission(ptr noundef %inode, i32 noundef %mask) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_security.i, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %5 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %and = and i32 %mask, 128
  %and1 = and i32 %mask, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp = icmp eq i32 %and1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %smk_flags = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i, i32 0, i32 4
  %6 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smk_flags, align 4
  %and2 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %8 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_security.i.i, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %10
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %cmp5.not = icmp eq ptr %12, %14
  br i1 %cmp5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %15 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %16 = call ptr @memset(ptr %15, i32 0, i32 16)
  %17 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 9, ptr %ad, align 4
  %18 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sad.i, ptr %18, align 4
  %20 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @__func__.smack_inode_permission, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %21 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %inode, ptr %u.i, align 4
  %i_security.i.i28 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %22 = ptrtoint ptr %i_security.i.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_security.i.i28, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %23, i32 %24
  %25 = ptrtoint ptr %add.ptr.i.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i29, align 4
  %call13 = call i32 @smk_curacc(ptr noundef %26, i32 noundef %and1, ptr noundef nonnull %ad) #18
  %call14 = call fastcc i32 @smk_bu_inode(ptr noundef %inode, i32 noundef %and1, i32 noundef %call13)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ -13, %if.then3.cleanup_crit_edge ], [ -10, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_setattr(ptr noundef %dentry, ptr nocapture noundef readonly %iattr) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %1 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iattr, align 8
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %3 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %ad, align 4
  %6 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sad.i, ptr %6, align 4
  %8 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__func__.smack_inode_setattr, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %9 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dentry, ptr %u.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_security.i.i, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %14
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i, align 4
  %call2 = call i32 @smk_curacc(ptr noundef %16, i32 noundef 2, ptr noundef nonnull %ad) #18
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %call4 = call fastcc i32 @smk_bu_inode(ptr noundef %18, i32 noundef 2, i32 noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_getattr(ptr nocapture noundef readonly %path) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ad, align 4, !annotation !347
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %5 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  store i8 1, ptr %ad, align 4
  %7 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sad.i, ptr %7, align 4
  %9 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @__func__.smack_inode_getattr, ptr %sad.i, align 4
  %10 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %path, align 4
  %11 = ptrtoint ptr %2 to i32
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %12 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.unpack, ptr %u.i, align 4
  %p.sroa.2.0.u.sroa_idx.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %p.sroa.2.0.u.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %p.sroa.2.0.u.sroa_idx.i, align 4
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 10
  %14 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_security.i.i, align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %16
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 4
  %call2 = call i32 @smk_curacc(ptr noundef %18, i32 noundef 4, ptr noundef nonnull %ad) #18
  %call3 = call fastcc i32 @smk_bu_inode(ptr noundef %4, i32 noundef 4, i32 noundef %call2)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_setxattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(17) @.str.39) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.end28_crit_edge, label %lor.lhs.false

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(21) @.str.40) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.lhs.false.if.end28_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(22) @.str.41) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.lhs.false3.if.end28_crit_edge, label %if.else

lor.lhs.false3.if.end28_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.else:                                          ; preds = %lor.lhs.false3
  %call6 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(21) @.str.42) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.else.if.end28_crit_edge, label %lor.lhs.false8

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

lor.lhs.false8:                                   ; preds = %if.else
  %call9 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(21) @.str.43) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %lor.lhs.false8.if.end28_crit_edge, label %if.else12

lor.lhs.false8.if.end28_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.else12:                                        ; preds = %lor.lhs.false8
  %call13 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(26) @.str.44) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end28.thread

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp16.not = icmp eq i32 %size, 4
  br i1 %cmp16.not, label %lor.lhs.false17, label %if.then15.if.then20_crit_edge

if.then15.if.then20_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then20

lor.lhs.false17:                                  ; preds = %if.then15
  %call18 = tail call i32 @strncmp(ptr noundef %value, ptr noundef nonnull dereferenceable(5) @.str.45, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %lor.lhs.false17.if.end28_crit_edge, label %lor.lhs.false17.if.then20_crit_edge

lor.lhs.false17.if.then20_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then20

lor.lhs.false17.if.end28_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then20:                                        ; preds = %lor.lhs.false17.if.then20_crit_edge, %if.then15.if.then20_crit_edge
  br label %if.end28

if.end28.thread:                                  ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #20
  %call22 = tail call i32 @cap_inode_setxattr(ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #18
  br label %if.end49

if.end28:                                         ; preds = %if.then20, %lor.lhs.false17.if.end28_crit_edge, %lor.lhs.false8.if.end28_crit_edge, %if.else.if.end28_crit_edge, %lor.lhs.false3.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge, %entry.if.end28_crit_edge
  %tobool31.not.ph = phi i1 [ false, %if.else.if.end28_crit_edge ], [ false, %lor.lhs.false8.if.end28_crit_edge ], [ false, %entry.if.end28_crit_edge ], [ false, %lor.lhs.false.if.end28_crit_edge ], [ false, %lor.lhs.false3.if.end28_crit_edge ], [ true, %if.then20 ], [ true, %lor.lhs.false17.if.end28_crit_edge ]
  %tobool41.not.ph = phi i1 [ false, %if.else.if.end28_crit_edge ], [ false, %lor.lhs.false8.if.end28_crit_edge ], [ true, %entry.if.end28_crit_edge ], [ true, %lor.lhs.false.if.end28_crit_edge ], [ true, %lor.lhs.false3.if.end28_crit_edge ], [ true, %if.then20 ], [ true, %lor.lhs.false17.if.end28_crit_edge ]
  %rc.0.ph = phi i32 [ 0, %if.else.if.end28_crit_edge ], [ 0, %lor.lhs.false8.if.end28_crit_edge ], [ 0, %entry.if.end28_crit_edge ], [ 0, %lor.lhs.false.if.end28_crit_edge ], [ 0, %lor.lhs.false3.if.end28_crit_edge ], [ -22, %if.then20 ], [ 0, %lor.lhs.false17.if.end28_crit_edge ]
  %call26 = tail call zeroext i1 @smack_privileged(i32 noundef 33) #18
  %spec.select = select i1 %call26, i32 %rc.0.ph, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp29 = icmp ne i32 %spec.select, 0
  %brmerge = or i1 %tobool31.not.ph, %cmp29
  br i1 %brmerge, label %if.end28.if.end49_crit_edge, label %if.then32

if.end28.if.end49_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool33.not = icmp eq i32 %size, 0
  br i1 %tobool33.not, label %if.then32.if.then46_crit_edge, label %cond.end

if.then32.if.then46_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then46

cond.end:                                         ; preds = %if.then32
  %call34 = tail call ptr @smk_import_entry(ptr noundef %value, i32 noundef %size) #18
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.else38

if.then36:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %1 = ptrtoint ptr %call34 to i32
  br label %if.end49

if.else38:                                        ; preds = %cond.end
  %cmp39 = icmp eq ptr %call34, null
  br i1 %cmp39, label %if.else38.if.then46_crit_edge, label %lor.lhs.false40

if.else38.if.then46_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then46

lor.lhs.false40:                                  ; preds = %if.else38
  br i1 %tobool41.not.ph, label %lor.lhs.false40.if.end49_crit_edge, label %land.lhs.true42

lor.lhs.false40.if.end49_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

land.lhs.true42:                                  ; preds = %lor.lhs.false40
  %cmp43 = icmp eq ptr %call34, @smack_known_star
  %cmp45 = icmp eq ptr %call34, @smack_known_web
  %or.cond = or i1 %cmp43, %cmp45
  br i1 %or.cond, label %land.lhs.true42.if.then46_crit_edge, label %land.lhs.true42.if.end49_crit_edge

land.lhs.true42.if.end49_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

land.lhs.true42.if.then46_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then46

if.then46:                                        ; preds = %land.lhs.true42.if.then46_crit_edge, %if.else38.if.then46_crit_edge, %if.then32.if.then46_crit_edge
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %land.lhs.true42.if.end49_crit_edge, %lor.lhs.false40.if.end49_crit_edge, %if.then36, %if.end28.if.end49_crit_edge, %if.end28.thread
  %rc.2 = phi i32 [ %1, %if.then36 ], [ -22, %if.then46 ], [ 0, %lor.lhs.false40.if.end49_crit_edge ], [ %spec.select, %if.end28.if.end49_crit_edge ], [ 0, %land.lhs.true42.if.end49_crit_edge ], [ %call22, %if.end28.thread ]
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %2 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %ad, align 4
  %5 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sad.i, ptr %5, align 4
  %7 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__func__.smack_inode_setxattr, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %8 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dentry, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %cmp50 = icmp eq i32 %rc.2, 0
  br i1 %cmp50, label %if.then51, label %if.end49.if.end57_crit_edge

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_security.i.i, align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %13
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 4
  %call54 = call i32 @smk_curacc(ptr noundef %15, i32 noundef 2, ptr noundef nonnull %ad) #18
  %16 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i, align 8
  %call56 = call fastcc i32 @smk_bu_inode(ptr noundef %17, i32 noundef 2, i32 noundef %call54)
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end49.if.end57_crit_edge
  %rc.3 = phi i32 [ %call56, %if.then51 ], [ %rc.2, %if.end49.if.end57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %rc.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_inode_post_setxattr(ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_security.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_security.i, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %4
  %call2 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(26) @.str.44) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %smk_flags = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 3
  %5 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smk_flags, align 4
  %or = or i32 %6, 2
  store i32 %or, ptr %smk_flags, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(17) @.str.39) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @smk_import_entry(ptr noundef %value, i32 noundef %size) #18
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5.cleanup_crit_edge, label %if.then8

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %add.ptr.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call10 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(21) @.str.42) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else17

if.then12:                                        ; preds = %if.else
  %call13 = tail call ptr @smk_import_entry(ptr noundef %value, i32 noundef %size) #18
  %cmp.i44 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %if.then12.cleanup_crit_edge, label %if.then15

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  %smk_task = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 1
  %8 = ptrtoint ptr %smk_task to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %smk_task, align 4
  br label %cleanup

if.else17:                                        ; preds = %if.else
  %call18 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(21) @.str.43) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.else17.cleanup_crit_edge

if.else17.cleanup_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then20:                                        ; preds = %if.else17
  %call21 = tail call ptr @smk_import_entry(ptr noundef %value, i32 noundef %size) #18
  %cmp.i45 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.then20.cleanup_crit_edge, label %if.then23

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  %smk_mmap = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 2
  %9 = ptrtoint ptr %smk_mmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %smk_mmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.then20.cleanup_crit_edge, %if.else17.cleanup_crit_edge, %if.then15, %if.then12.cleanup_crit_edge, %if.then8, %if.then5.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_getxattr(ptr noundef %dentry, ptr nocapture noundef readnone %name) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %ad, align 4
  %4 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sad.i, ptr %4, align 4
  %6 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @__func__.smack_inode_getxattr, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dentry, ptr %u.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_security.i.i, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  %call2 = call i32 @smk_curacc(ptr noundef %14, i32 noundef 4, ptr noundef nonnull %ad) #18
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %call4 = call fastcc i32 @smk_bu_inode(ptr noundef %16, i32 noundef 4, i32 noundef %call2)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(17) @.str.39) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(21) @.str.40) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(22) @.str.41) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.lhs.false3.if.then_crit_edge, label %lor.lhs.false6

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(21) @.str.42) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %lor.lhs.false6.if.then_crit_edge, label %lor.lhs.false9

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(26) @.str.44) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %lor.lhs.false9.if.then_crit_edge, label %lor.lhs.false12

lor.lhs.false9.if.then_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(21) @.str.43) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %lor.lhs.false12.if.then_crit_edge, label %if.end18

lor.lhs.false12.if.then_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false12.if.then_crit_edge, %lor.lhs.false9.if.then_crit_edge, %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call15 = tail call zeroext i1 @smack_privileged(i32 noundef 33) #18
  br i1 %call15, label %if.then.if.end21_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.end18:                                         ; preds = %lor.lhs.false12
  %call17 = tail call i32 @cap_inode_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp19.not = icmp eq i32 %call17, 0
  br i1 %cmp19.not, label %if.end18.if.end21_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.end21:                                         ; preds = %if.end18.if.end21_crit_edge, %if.then.if.end21_crit_edge
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %ad, align 4
  %4 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sad.i, ptr %4, align 4
  %6 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @__func__.smack_inode_removexattr, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dentry, ptr %u.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_security.i.i, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  %call24 = call i32 @smk_curacc(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %ad) #18
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %call26 = call fastcc i32 @smk_bu_inode(ptr noundef %16, i32 noundef 2, i32 noundef %call24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %i_security.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_security.i, align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %21
  %call32 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(17) @.str.39) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %22 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_sb, align 4
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_security.i, align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i78 = getelementptr i8, ptr %25, i32 %26
  %smk_default = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i78, i32 0, i32 3
  %27 = ptrtoint ptr %smk_default to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smk_default, align 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %add.ptr.i, align 4
  br label %cleanup

if.else36:                                        ; preds = %if.end29
  %call37 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(21) @.str.42) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #20
  %smk_task = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 1
  %30 = ptrtoint ptr %smk_task to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %smk_task, align 4
  br label %cleanup

if.else40:                                        ; preds = %if.else36
  %call41 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(21) @.str.43) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #20
  %smk_mmap = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 2
  %31 = ptrtoint ptr %smk_mmap to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %smk_mmap, align 4
  br label %cleanup

if.else44:                                        ; preds = %if.else40
  %call45 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(26) @.str.44) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.else44.cleanup_crit_edge

if.else44.cleanup_crit_edge:                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then47:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #20
  %smk_flags = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 3
  %32 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %smk_flags, align 4
  %and = and i32 %33, -3
  store i32 %and, ptr %smk_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.else44.cleanup_crit_edge, %if.then43, %if.then39, %if.then34, %if.end21.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end18.cleanup_crit_edge ], [ %call26, %if.end21.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.else44.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %if.then43 ], [ 0, %if.then34 ], [ -1, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_getsecurity(ptr nocapture noundef readnone %mnt_userns, ptr noundef readonly %inode, ptr nocapture noundef readonly %name, ptr nocapture noundef writeonly %buffer, i1 noundef zeroext %alloc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.33) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %2
  br label %if.end20

if.else:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1397703499, i32 %6)
  %cmp2.not = icmp ne i32 %6, 1397703499
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -256
  %cmp5 = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %cmp5, %cmp2.not
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %lor.lhs.false

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  %sk = getelementptr i8, ptr %inode, i32 -240
  %7 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk, align 16
  %cmp6 = icmp eq ptr %8, null
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %sk_security = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 73
  %9 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_security, align 8
  %call10 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(12) @.str.46) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %smk_in = getelementptr inbounds %struct.socket_smack, ptr %10, i32 0, i32 1
  br label %if.end20

if.else13:                                        ; preds = %if.end8
  %call14 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(13) @.str.47) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.else13.if.end20_crit_edge, label %if.else13.cleanup_crit_edge

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else13.if.end20_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.end20:                                         ; preds = %if.else13.if.end20_crit_edge, %if.then12, %if.then
  %isp.0.in = phi ptr [ %add.ptr.i.i, %if.then ], [ %smk_in, %if.then12 ], [ %10, %if.else13.if.end20_crit_edge ]
  %11 = ptrtoint ptr %isp.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %isp.0 = load ptr, ptr %isp.0.in, align 4
  br i1 %alloc, label %if.then21, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then21:                                        ; preds = %if.end20
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %isp.0, i32 0, i32 2
  %12 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smk_known, align 4
  %call22 = tail call noalias ptr @kstrdup(ptr noundef %13, i32 noundef 3264) #18
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call22, ptr %buffer, align 4
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %if.then21.cleanup_crit_edge, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  %smk_known27 = getelementptr inbounds %struct.smack_known, ptr %isp.0, i32 0, i32 2
  %15 = ptrtoint ptr %smk_known27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smk_known27, align 4
  %call28 = tail call i32 @strlen(ptr noundef %16) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then21.cleanup_crit_edge, %if.else13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end26 ], [ -95, %if.else.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.else13.cleanup_crit_edge ], [ -12, %if.then21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_setsecurity(ptr noundef readonly %inode, ptr nocapture noundef readonly %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %cmp = icmp eq ptr %value, null
  %3 = add i32 %size, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %3)
  %4 = icmp ult i32 %3, -256
  %5 = or i1 %cmp, %4
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @smk_import_entry(ptr noundef nonnull %value, i32 noundef %size) #18
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.33) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %add.ptr.i, align 4
  %smk_flags = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 3
  %8 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smk_flags, align 4
  %or = or i32 %9, 1
  store i32 %or, ptr %smk_flags, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1397703499, i32 %13)
  %cmp13.not = icmp ne i32 %13, 1397703499
  %add.ptr.i67 = getelementptr i8, ptr %inode, i32 -256
  %cmp17 = icmp eq ptr %add.ptr.i67, null
  %or.cond = or i1 %cmp17, %cmp13.not
  br i1 %or.cond, label %if.end12.cleanup_crit_edge, label %lor.lhs.false18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false18:                                  ; preds = %if.end12
  %sk = getelementptr i8, ptr %inode, i32 -240
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %cmp19 = icmp eq ptr %15, null
  br i1 %cmp19, label %lor.lhs.false18.cleanup_crit_edge, label %if.end21

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false18
  %sk_security = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 73
  %16 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk_security, align 8
  %call23 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(12) @.str.46) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  %smk_in = getelementptr inbounds %struct.socket_smack, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %smk_in to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call4, ptr %smk_in, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end21
  %call26 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(13) @.str.47) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then28:                                        ; preds = %if.else
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call4, ptr %17, align 4
  %20 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk, align 16
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %23)
  %cmp30 = icmp eq i16 %23, 2
  br i1 %cmp30, label %if.then32, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then32:                                        ; preds = %if.then28
  %call34 = tail call fastcc i32 @smack_netlbl_add(ptr noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.then32.cleanup_crit_edge, label %do.end

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  %sub = sub i32 0, %call34
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %sub) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then32.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then25, %lor.lhs.false18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then11, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ 0, %if.then11 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end12.cleanup_crit_edge ], [ -95, %lor.lhs.false18.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ], [ 0, %if.then32.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %if.then25 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_inode_listsecurity(ptr nocapture noundef readnone %inode, ptr noundef writeonly %buffer, i32 noundef %buffer_size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp ne ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %buffer_size)
  %cmp1 = icmp ugt i32 %buffer_size, 16
  %or.cond = and i1 %cmp.not, %cmp1
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = call ptr @memcpy(ptr %buffer, ptr @.str.39, i32 17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smack_inode_getsecid(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %secid) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smk_secid, align 4
  %7 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %secid, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_file_alloc_security(ptr nocapture noundef readonly %file) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_security.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 15
  %0 = ptrtoint ptr %f_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_security.i, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %security.i.i, align 4
  %11 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %11
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %add.ptr.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_file_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ad, align 4, !annotation !347
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !343

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %5 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %ad, align 4
  %8 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sad.i, ptr %8, align 4
  %10 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__func__.smack_file_ioctl, ptr %sad.i, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %11 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %f_path, align 8
  %.elt31 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %.elt31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack32 = load i32, ptr %.elt31, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %13 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.unpack, ptr %u.i, align 4
  %p.sroa.2.0.u.sroa_idx.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %p.sroa.2.0.u.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.unpack32, ptr %p.sroa.2.0.u.sroa_idx.i, align 4
  %15 = and i32 %cmd, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.end.land.lhs.true_crit_edge, label %if.end10

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

if.end10:                                         ; preds = %if.end
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %16 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_security.i.i, align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %18
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i, align 4
  %call8 = call i32 @smk_curacc(ptr noundef %20, i32 noundef 2, ptr noundef nonnull %ad) #18
  %call9 = call fastcc i32 @smk_bu_file(ptr noundef %file, i32 noundef 2, i32 noundef %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.end10.land.lhs.true_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10.land.lhs.true_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %tobool14.not = icmp sgt i32 %cmd, -1
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %if.then15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %i_security.i.i33 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %21 = ptrtoint ptr %i_security.i.i33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_security.i.i33, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %22, i32 %23
  %24 = ptrtoint ptr %add.ptr.i.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i34, align 4
  %call17 = call i32 @smk_curacc(ptr noundef %25, i32 noundef 4, ptr noundef nonnull %ad) #18
  %call18 = call fastcc i32 @smk_bu_file(ptr noundef %file, i32 noundef 4, i32 noundef %call17)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %land.lhs.true.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call18, %if.then15 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call9, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_file_lock(ptr noundef %file, i32 noundef %cmd) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ad, align 4, !annotation !347
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !343

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %5 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %ad, align 4
  %8 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sad.i, ptr %8, align 4
  %10 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__func__.smack_file_lock, ptr %sad.i, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %11 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %f_path, align 8
  %.elt12 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %.elt12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack13 = load i32, ptr %.elt12, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %13 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.unpack, ptr %u.i, align 4
  %p.sroa.2.0.u.sroa_idx.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %p.sroa.2.0.u.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.unpack13, ptr %p.sroa.2.0.u.sroa_idx.i, align 4
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %15 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_security.i.i, align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %17
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i, align 4
  %call4 = call i32 @smk_curacc(ptr noundef %19, i32 noundef 8192, ptr noundef nonnull %ad) #18
  %call5 = call fastcc i32 @smk_bu_file(ptr noundef %file, i32 noundef 8192, i32 noundef %call4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_file_fcntl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 36)
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !343

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %cmd, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 5
  br i1 %5, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %6 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.lobit.not = icmp eq i8 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.smack_file_fcntl, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sad.i26 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %8 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 16)
  %10 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ad, align 4
  %11 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sad.i26, ptr %11, align 4
  %13 = ptrtoint ptr %sad.i26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @__func__.smack_file_fcntl, ptr %sad.i26, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %14 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack23 = load i32, ptr %f_path, align 8
  %.elt24 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %.elt24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack25 = load i32, ptr %.elt24, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %16 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.unpack23, ptr %u.i, align 4
  %p.sroa.2.0.u.sroa_idx.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %p.sroa.2.0.u.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.unpack25, ptr %p.sroa.2.0.u.sroa_idx.i, align 4
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %18 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_security.i.i, align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %20
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i, align 4
  %call4 = call i32 @smk_curacc(ptr noundef %22, i32 noundef %switch.load, ptr noundef nonnull %ad) #18
  %call5 = call fastcc i32 @smk_bu_file(ptr noundef %file, i32 noundef %switch.load, i32 noundef %call4)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call5, %switch.lookup ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_mmap_file(ptr noundef readonly %file, i32 noundef %reqprot, i32 noundef %prot, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge, !prof !343

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %i_security.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_security.i, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %smk_mmap = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 2
  %7 = ptrtoint ptr %smk_mmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smk_mmap, align 4
  %cmp7 = icmp eq ptr %8, null
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_security.i, align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i123 = getelementptr i8, ptr %12, i32 %13
  %smk_flags = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i123, i32 0, i32 4
  %14 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smk_flags, align 4
  %and12 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end9.if.end17_crit_edge, label %land.lhs.true

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end9
  %16 = ptrtoint ptr %add.ptr.i123 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i123, align 4
  %cmp15.not = icmp eq ptr %8, %17
  br i1 %cmp15.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %18 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred, align 16
  %security.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %security.i, align 4
  %26 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i124 = getelementptr i8, ptr %25, i32 %26
  %27 = ptrtoint ptr %add.ptr.i124 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i124, align 4
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end17.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end17.rcu_read_lock.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end17
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end17.rcu_read_lock.exit_crit_edge
  %call23 = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %rcu_read_lock.exit.do.end33_crit_edge

rcu_read_lock.exit.do.end33_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end33

land.lhs.true25:                                  ; preds = %rcu_read_lock.exit
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true25.do.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %.b120 = load i1, ptr @smack_mmap_file.__warned.54, align 1
  br i1 %.b120, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @smack_mmap_file.__warned.54, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1678, ptr noundef nonnull @.str.55) #18
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true25.do.end33_crit_edge, %rcu_read_lock.exit.do.end33_crit_edge
  %smk_rules = getelementptr inbounds %struct.smack_known, ptr %28, i32 0, i32 5
  %31 = ptrtoint ptr %smk_rules to i32
  call void @__asan_load4_noabort(i32 %31)
  %srp.0134 = load volatile ptr, ptr %smk_rules, align 4
  %cmp40.not135 = icmp eq ptr %srp.0134, %smk_rules
  br i1 %cmp40.not135, label %do.end33.for.end_crit_edge, label %for.body.lr.ph

do.end33.for.end_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end33
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %8, i32 0, i32 2
  %smk_rules47 = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i124, i32 0, i32 2
  %smk_rules59 = getelementptr inbounds %struct.smack_known, ptr %8, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %srp.0136 = phi ptr [ %srp.0134, %for.body.lr.ph ], [ %srp.0, %for.inc.for.body_crit_edge ]
  %smk_object = getelementptr inbounds %struct.smack_rule, ptr %srp.0136, i32 0, i32 2
  %32 = ptrtoint ptr %smk_object to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smk_object, align 4
  %34 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %smk_known, align 4
  %smk_known41 = getelementptr inbounds %struct.smack_known, ptr %33, i32 0, i32 2
  %36 = ptrtoint ptr %smk_known41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smk_known41, align 4
  %cmp42 = icmp eq ptr %35, %37
  br i1 %cmp42, label %for.body.for.inc_crit_edge, label %if.end44

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end44:                                         ; preds = %for.body
  %smk_subject = getelementptr inbounds %struct.smack_rule, ptr %srp.0136, i32 0, i32 1
  %38 = ptrtoint ptr %smk_subject to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smk_subject, align 4
  %smk_known45 = getelementptr inbounds %struct.smack_known, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %smk_known45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smk_known45, align 4
  %call48 = tail call i32 @smk_access_entry(ptr noundef %41, ptr noundef %37, ptr noundef %smk_rules47) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call48)
  %cmp49 = icmp eq i32 %call48, -2
  %smk_access = getelementptr inbounds %struct.smack_rule, ptr %srp.0136, i32 0, i32 3
  %42 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %smk_access, align 4
  %and52 = select i1 %cmp49, i32 -1, i32 %call48
  %may.0 = and i32 %43, %and52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %may.0)
  %cmp54 = icmp eq i32 %may.0, 0
  br i1 %cmp54, label %if.end44.for.inc_crit_edge, label %if.end56

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end56:                                         ; preds = %if.end44
  %44 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %smk_known, align 4
  %46 = ptrtoint ptr %smk_known41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smk_known41, align 4
  %call60 = tail call i32 @smk_access_entry(ptr noundef %45, ptr noundef %47, ptr noundef %smk_rules59) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call60)
  %cmp61 = icmp eq i32 %call60, -2
  br i1 %cmp61, label %if.end56.for.end_crit_edge, label %if.end63

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end63:                                         ; preds = %if.end56
  %48 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %smk_known, align 4
  %50 = ptrtoint ptr %smk_known41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %smk_known41, align 4
  %call67 = tail call i32 @smk_access_entry(ptr noundef %49, ptr noundef %51, ptr noundef %smk_rules47) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, -2
  %and70 = select i1 %cmp68.not, i32 -1, i32 %call67
  %spec.select = and i32 %and70, %call60
  %or = or i32 %spec.select, %may.0
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %spec.select)
  %cmp72.not = icmp eq i32 %or, %spec.select
  br i1 %cmp72.not, label %if.end63.for.inc_crit_edge, label %if.end63.for.end_crit_edge

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.inc:                                          ; preds = %if.end63.for.inc_crit_edge, %if.end44.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %52 = ptrtoint ptr %srp.0136 to i32
  call void @__asan_load4_noabort(i32 %52)
  %srp.0 = load volatile ptr, ptr %srp.0136, align 4
  %cmp40.not = icmp eq ptr %srp.0, %smk_rules
  br i1 %cmp40.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end63.for.end_crit_edge, %if.end56.for.end_crit_edge, %do.end33.for.end_crit_edge
  %rc.0 = phi i32 [ 0, %do.end33.for.end_crit_edge ], [ -13, %if.end63.for.end_crit_edge ], [ -13, %if.end56.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %call.i125 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i125, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i128

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i128:                               ; preds = %for.end
  %call1.i126 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i126)
  %tobool.not.i127 = icmp eq i32 %call1.i126, 0
  br i1 %tobool.not.i127, label %land.lhs.true.i128.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i130

land.lhs.true.i128.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i130:                              ; preds = %land.lhs.true.i128
  %.b4.i129 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i129, label %land.lhs.true2.i130.rcu_read_unlock.exit_crit_edge, label %if.then.i131

land.lhs.true2.i130.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i130
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i131:                                     ; preds = %land.lhs.true2.i130
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i131, %land.lhs.true2.i130.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i128.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %53 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i132 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i132 to ptr
  %preempt_count.i.i.i.i133 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i133, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i133, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -13, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_mmap_addr(i32 noundef) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smack_file_set_fowner(ptr nocapture noundef readonly %file) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_security.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 15
  %0 = ptrtoint ptr %f_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_security.i, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %security.i.i, align 4
  %11 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %11
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %add.ptr.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_file_send_sigiotask(ptr noundef %tsk, ptr nocapture noundef readonly %fown, i32 noundef %signum) #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cred = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 99
  %0 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cred, align 16
  %security.i = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %security.i, align 4
  %4 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %7 = call ptr @memset(ptr %ad, i32 255, i32 36)
  %f_security.i = getelementptr i8, ptr %fown, i32 112
  %8 = ptrtoint ptr %f_security.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_security.i, align 8
  %10 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i30 = getelementptr i8, ptr %9, i32 %10
  %11 = ptrtoint ptr %add.ptr.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i30, align 4
  %call3 = tail call i32 @smk_access(ptr noundef %12, ptr noundef %6, i32 noundef 8, ptr noundef null) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.i = icmp slt i32 %call3, 1
  %13 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 6989868096655720447, ptr %acc.i, align 8
  br i1 %cmp.i, label %entry.smk_bu_note.exit_crit_edge, label %if.end.i

entry.smk_bu_note.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_note.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp1.i = icmp ugt i32 %call3, 3
  %spec.store.select.i = select i1 %cmp1.i, i32 0, i32 %call3
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smk_known.i, align 4
  %smk_known4.i = getelementptr inbounds %struct.smack_known, ptr %6, i32 0, i32 2
  %18 = ptrtoint ptr %smk_known4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smk_known4.i, align 4
  %call.i31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef nonnull %acc.i, ptr noundef nonnull @.str.56) #21
  br label %smk_bu_note.exit

smk_bu_note.exit:                                 ; preds = %if.end.i, %entry.smk_bu_note.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call3, %entry.smk_bu_note.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  %20 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %smk_bu_note.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

smk_bu_note.exit.rcu_read_lock.exit_crit_edge:    ; preds = %smk_bu_note.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %smk_bu_note.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %smk_bu_note.exit.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 98
  %24 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %real_cred, align 4
  %call7 = call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end13

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call8 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b29 = load i1, ptr @smack_file_send_sigiotask.__warned, align 1
  br i1 %.b29, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @smack_file_send_sigiotask.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1785, ptr noundef nonnull @.str.13) #18
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp.not, label %do.end13.if.end18_crit_edge, label %land.lhs.true15

do.end13.if.end18_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true15:                                  ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #20
  %call16 = call zeroext i1 @smack_privileged_cred(i32 noundef 32, ptr noundef %25) #18
  %spec.select = select i1 %call16, i32 0, i32 %retval.0.i
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true15, %do.end13.if.end18_crit_edge
  %rc.0 = phi i32 [ 0, %do.end13.if.end18_crit_edge ], [ %spec.select, %land.lhs.true15 ]
  %call.i32 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i32, label %if.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

if.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %if.end18
  %call1.i33 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %if.end18.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %26 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i39 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i40, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %30 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %31 = call ptr @memset(ptr %30, i32 0, i32 16)
  %32 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %ad, align 4
  %33 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sad.i, ptr %33, align 4
  %35 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @__func__.smack_file_send_sigiotask, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %36 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %tsk, ptr %u.i, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %12, i32 0, i32 2
  %37 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smk_known, align 4
  %smk_known19 = getelementptr inbounds %struct.smack_known, ptr %6, i32 0, i32 2
  %39 = ptrtoint ptr %smk_known19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %smk_known19, align 4
  call void @smack_log(ptr noundef %38, ptr noundef %40, i32 noundef 8, i32 noundef %rc.0, ptr noundef nonnull %ad) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_file_receive(ptr noundef %file) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ad, align 4, !annotation !347
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !343

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %5 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %ad, align 4
  %8 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sad.i, ptr %8, align 4
  %10 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__func__.smack_file_receive, ptr %sad.i, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %11 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %f_path, align 8
  %.elt55 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %.elt55 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack56 = load i32, ptr %.elt55, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %13 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.unpack, ptr %u.i, align 4
  %p.sroa.2.0.u.sroa_idx.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %p.sroa.2.0.u.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.unpack56, ptr %p.sroa.2.0.u.sroa_idx.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1397703499, i32 %18)
  %cmp = icmp eq i32 %18, 1397703499
  br i1 %cmp, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.end
  %sk = getelementptr i8, ptr %2, i32 -240
  %19 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk, align 16
  %sk_security = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 73
  %21 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk_security, align 8
  %23 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred, align 16
  %security.i = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 23
  %29 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %security.i, align 4
  %31 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i57 = getelementptr i8, ptr %30, i32 %31
  %32 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i57, align 4
  %34 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %22, align 4
  %call7 = call i32 @smk_access(ptr noundef %33, ptr noundef %35, i32 noundef 2, ptr noundef nonnull %ad) #18
  %call8 = call fastcc i32 @smk_bu_file(ptr noundef %file, i32 noundef 0, i32 noundef %call7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then3.cleanup_crit_edge, label %if.end11

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  %smk_in = getelementptr inbounds %struct.socket_smack, ptr %22, i32 0, i32 1
  %36 = ptrtoint ptr %smk_in to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smk_in, align 4
  %38 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i57, align 4
  %call13 = call i32 @smk_access(ptr noundef %37, ptr noundef %39, i32 noundef 2, ptr noundef nonnull %ad) #18
  %call14 = call fastcc i32 @smk_bu_file(ptr noundef %file, i32 noundef 0, i32 noundef %call13)
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %40 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %f_mode, align 8
  %trunc = trunc i32 %41 to i3
  %rev = call i3 @llvm.bitreverse.i3(i3 %trunc)
  %mask = and i3 %rev, -2
  %42 = zext i3 %mask to i32
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %43 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_security.i.i, align 4
  %45 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %45
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i.i, align 4
  %call26 = call i32 @smk_curacc(ptr noundef %47, i32 noundef %42, ptr noundef nonnull %ad) #18
  %call27 = call fastcc i32 @smk_bu_file(ptr noundef %file, i32 noundef %42, i32 noundef %call26)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end11 ], [ %call27, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ %call8, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_file_open(ptr noundef %file) #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 1
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %0 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_cred, align 8
  %security.i = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %security.i, align 4
  %4 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ad, align 4, !annotation !347
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %8 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 16)
  store i8 1, ptr %ad, align 4
  %10 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sad.i, ptr %10, align 4
  %12 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__func__.smack_file_open, ptr %sad.i, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %13 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack = load i32, ptr %f_path, align 8
  %.elt11 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %.elt11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack12 = load i32, ptr %.elt11, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %15 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.unpack, ptr %u.i, align 4
  %p.sroa.2.0.u.sroa_idx.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %p.sroa.2.0.u.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.unpack12, ptr %p.sroa.2.0.u.sroa_idx.i, align 4
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %17 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_security.i.i, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %19
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i, align 4
  %call3 = call i32 @smk_tskacc(ptr noundef %add.ptr.i, ptr noundef %21, i32 noundef 4, ptr noundef nonnull %ad) #18
  %22 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_cred, align 8
  %security.i.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %security.i.i, align 4
  %26 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %25, i32 %26
  %27 = ptrtoint ptr %add.ptr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i.i13, align 4
  %29 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_inode.i, align 8
  %i_security.i.i14 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %i_security.i.i14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_security.i.i14, align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i1.i = getelementptr i8, ptr %32, i32 %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  %34 = getelementptr inbounds [8 x i8], ptr %acc.i, i32 0, i32 1
  %smk_flags.i = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i1.i, i32 0, i32 3
  %35 = getelementptr inbounds i8, ptr %acc.i, i32 2
  %36 = call ptr @memset(ptr %35, i32 255, i32 6)
  %37 = ptrtoint ptr %smk_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %smk_flags.i, align 4
  %and.i = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %39 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb.i, align 4
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 39
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_ino.i, align 8
  %43 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 101
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %s_id.i, i32 noundef %42, ptr noundef %comm.i) #21
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.i = icmp slt i32 %call3, 1
  br i1 %cmp.i, label %if.end.i.smk_bu_credfile.exit_crit_edge, label %if.end7.i

if.end.i.smk_bu_credfile.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_credfile.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp8.i = icmp ugt i32 %call3, 3
  %spec.store.select.i = select i1 %cmp8.i, i32 0, i32 %call3
  %47 = ptrtoint ptr %acc.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 114, ptr %acc.i, align 1
  %48 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %34, align 1
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %28, i32 0, i32 2
  %51 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %smk_known.i, align 4
  %53 = ptrtoint ptr %i_security.i.i14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_security.i.i14, align 4
  %55 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 %55
  %56 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i.i.i, align 4
  %smk_known17.i = getelementptr inbounds %struct.smack_known, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %smk_known17.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %smk_known17.i, align 4
  %i_sb19.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %60 = ptrtoint ptr %i_sb19.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb19.i, align 4
  %s_id20.i = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 39
  %i_ino22.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 11
  %62 = ptrtoint ptr %i_ino22.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_ino22.i, align 8
  %64 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i2.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i2.i to ptr
  %task24.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task24.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task24.i, align 8
  %comm25.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 101
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %50, ptr noundef %52, ptr noundef %59, ptr noundef nonnull %acc.i, ptr noundef %s_id20.i, i32 noundef %63, ptr noundef %file, ptr noundef %comm25.i) #21
  br label %smk_bu_credfile.exit

smk_bu_credfile.exit:                             ; preds = %if.end7.i, %if.end.i.smk_bu_credfile.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end7.i ], [ %call3, %if.end.i.smk_bu_credfile.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_cred_alloc_blank(ptr nocapture noundef readonly %cred, i32 noundef %gfp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %add.ptr.i, align 4
  %smk_forked.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 1
  %4 = ptrtoint ptr %smk_forked.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %smk_forked.i, align 4
  %smk_rules.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2
  %5 = ptrtoint ptr %smk_rules.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %smk_rules.i, ptr %smk_rules.i, align 4
  %prev.i.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %smk_rules.i, ptr %prev.i.i, align 4
  %smk_relabel.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4
  %7 = ptrtoint ptr %smk_relabel.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %smk_relabel.i, ptr %smk_relabel.i, align 4
  %prev.i5.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %smk_relabel.i, ptr %prev.i5.i, align 4
  %smk_rules_lock.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %smk_rules_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_task_smack.__key) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_cred_free(ptr nocapture noundef readonly %cred) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %smk_relabel = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4
  tail call void @smk_destroy_label_list(ptr noundef %smk_relabel) #18
  %smk_rules = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2
  %3 = ptrtoint ptr %smk_rules to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_rules, align 4
  %cmp.i.not12 = icmp eq ptr %4, %smk_rules
  br i1 %cmp.i.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %l.013 = phi ptr [ %n.015, %list_del.exit.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %l.013 to i32
  call void @__asan_load4_noabort(i32 %5)
  %n.015 = load ptr, ptr %l.013, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.013) #18
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.013, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %l.013 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l.013, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %12 = ptrtoint ptr %l.013 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %l.013, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l.013, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = load ptr, ptr @smack_rule_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %l.013) #18
  %cmp.i.not = icmp eq ptr %n.015, %smk_rules
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_cred_prepare(ptr nocapture noundef readonly %new, ptr nocapture noundef readonly %old, i32 noundef %gfp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %security.i17 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 23
  %3 = ptrtoint ptr %security.i17 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %security.i17, align 4
  %add.ptr.i18 = getelementptr i8, ptr %4, i32 %2
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %7 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %add.ptr.i18, align 4
  %smk_forked.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i18, i32 0, i32 1
  %8 = ptrtoint ptr %smk_forked.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %smk_forked.i, align 4
  %smk_rules.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i18, i32 0, i32 2
  %9 = ptrtoint ptr %smk_rules.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %smk_rules.i, ptr %smk_rules.i, align 4
  %prev.i.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i18, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %smk_rules.i, ptr %prev.i.i, align 4
  %smk_relabel.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i18, i32 0, i32 4
  %11 = ptrtoint ptr %smk_relabel.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %smk_relabel.i, ptr %smk_relabel.i, align 4
  %prev.i5.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i18, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %smk_relabel.i, ptr %prev.i5.i, align 4
  %smk_rules_lock.i = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i18, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %smk_rules_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_task_smack.__key) #18
  %smk_rules3 = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2
  %call.i = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b28.i = load i1, ptr @smk_copy_rules.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @smk_copy_rules.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 353, ptr noundef nonnull @.str.55) #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %13 = ptrtoint ptr %smk_rules3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %orp.029.i = load volatile ptr, ptr %smk_rules3, align 4
  %cmp.not30.i = icmp eq ptr %orp.029.i, %smk_rules3
  br i1 %cmp.not30.i, label %do.end.i.if.end_crit_edge, label %for.body.lr.ph.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %or.i.i = or i32 %gfp, 256
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_rcu.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %orp.031.i = phi ptr [ %orp.029.i, %for.body.lr.ph.i ], [ %orp.0.i, %list_add_rcu.exit.i.for.body.i_crit_edge ]
  %14 = load ptr, ptr @smack_rule_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef %or.i.i) #18
  %cmp10.i = icmp eq ptr %call.i.i, null
  br i1 %cmp10.i, label %for.body.i.cleanup_crit_edge, label %if.end12.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12.i:                                       ; preds = %for.body.i
  %15 = call ptr @memcpy(ptr %call.i.i, ptr %orp.031.i, i32 20)
  %16 = ptrtoint ptr %smk_rules.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smk_rules.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %smk_rules.i, ptr noundef %17) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end12.i.list_add_rcu.exit.i_crit_edge

if.end12.i.list_add_rcu.exit.i_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %call.i.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %smk_rules.i, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !348
  %20 = ptrtoint ptr %smk_rules.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call.i.i, ptr %smk_rules.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %prev37.i.i.i, align 4
  br label %list_add_rcu.exit.i

list_add_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.end12.i.list_add_rcu.exit.i_crit_edge
  %22 = ptrtoint ptr %orp.031.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %orp.0.i = load volatile ptr, ptr %orp.031.i, align 4
  %cmp.not.i = icmp eq ptr %orp.0.i, %smk_rules3
  br i1 %cmp.not.i, label %list_add_rcu.exit.i.if.end_crit_edge, label %list_add_rcu.exit.i.for.body.i_crit_edge

list_add_rcu.exit.i.for.body.i_crit_edge:         ; preds = %list_add_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

list_add_rcu.exit.i.if.end_crit_edge:             ; preds = %list_add_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %list_add_rcu.exit.i.if.end_crit_edge, %do.end.i.if.end_crit_edge
  %smk_relabel5 = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4
  %23 = ptrtoint ptr %smk_relabel5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %oklep.016.i = load ptr, ptr %smk_relabel5, align 4
  %cmp.not17.i = icmp eq ptr %oklep.016.i, %smk_relabel5
  br i1 %cmp.not17.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph.i20:                               ; preds = %if.end
  %or.i.i19 = or i32 %gfp, 256
  %and.i.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  %spec.select.i = select i1 %tobool3.not.i.i.i.i, i32 %..i.i.i.i, i32 3
  br label %for.body.i21

for.body.i21:                                     ; preds = %list_add.exit.i.for.body.i21_crit_edge, %for.body.lr.ph.i20
  %oklep.018.i = phi ptr [ %oklep.016.i, %for.body.lr.ph.i20 ], [ %oklep.0.i, %list_add.exit.i.for.body.i21_crit_edge ]
  br i1 %cmp.i19.i.i.i, label %for.body.i21.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !343

for.body.i21.kzalloc.exit.i_crit_edge:            ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #20
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #20
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end.i.i.i.i, %for.body.i21.kzalloc.exit.i_crit_edge
  %retval.0.i20.i.i.i = phi i32 [ 0, %for.body.i21.kzalloc.exit.i_crit_edge ], [ %spec.select.i, %if.end.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i.i, i32 7
  %24 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef %or.i.i19, i32 noundef 12) #23
  %cmp1.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp1.i, label %if.then.i22, label %if.end.i

if.then.i22:                                      ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smk_destroy_label_list(ptr noundef %smk_relabel.i) #18
  br label %cleanup

if.end.i:                                         ; preds = %kzalloc.exit.i
  %smk_label.i = getelementptr inbounds %struct.smack_known_list_elem, ptr %oklep.018.i, i32 0, i32 1
  %26 = ptrtoint ptr %smk_label.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %smk_label.i, align 4
  %smk_label2.i = getelementptr inbounds %struct.smack_known_list_elem, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %smk_label2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %smk_label2.i, align 8
  %29 = ptrtoint ptr %smk_relabel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smk_relabel.i, align 4
  %call.i.i.i23 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %smk_relabel.i, ptr noundef %30) #18
  br i1 %call.i.i.i23, label %if.end.i.i.i24, label %if.end.i.list_add.exit.i_crit_edge

if.end.i.list_add.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit.i

if.end.i.i.i24:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %smk_relabel.i, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %smk_relabel.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i.i, ptr %smk_relabel.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i24, %if.end.i.list_add.exit.i_crit_edge
  %35 = ptrtoint ptr %oklep.018.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %oklep.0.i = load ptr, ptr %oklep.018.i, align 4
  %cmp.not.i25 = icmp eq ptr %oklep.0.i, %smk_relabel5
  br i1 %cmp.not.i25, label %list_add.exit.i.cleanup_crit_edge, label %list_add.exit.i.for.body.i21_crit_edge

list_add.exit.i.for.body.i21_crit_edge:           ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i21

list_add.exit.i.cleanup_crit_edge:                ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.i.cleanup_crit_edge, %if.then.i22, %if.end.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.i22 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %list_add.exit.i.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_cred_transfer(ptr nocapture noundef readonly %new, ptr nocapture noundef readonly %old) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %security.i8 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 23
  %3 = ptrtoint ptr %security.i8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %security.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %4, i32 %2
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %7 = ptrtoint ptr %add.ptr.i9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %add.ptr.i9, align 4
  %8 = load ptr, ptr %add.ptr.i, align 4
  %smk_forked = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i9, i32 0, i32 1
  %9 = ptrtoint ptr %smk_forked to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %smk_forked, align 4
  %smk_rules_lock = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i9, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %smk_rules_lock, ptr noundef nonnull @.str.62, ptr noundef nonnull @smack_cred_transfer.__key) #18
  %smk_rules = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i9, i32 0, i32 2
  %10 = ptrtoint ptr %smk_rules to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %smk_rules, ptr %smk_rules, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %smk_rules, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %smk_rules, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_cred_getsecid(ptr nocapture noundef readonly %cred, ptr nocapture noundef writeonly %secid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 4
  %6 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smk_secid, align 4
  %11 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %secid, align 4
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i2, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rcu_read_lock.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %12 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i9 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_kernel_act_as(ptr nocapture noundef readonly %new, i32 noundef %secid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %call1 = tail call ptr @smack_from_secid(i32 noundef %secid) #18
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %add.ptr.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_kernel_create_files_as(ptr nocapture noundef readonly %new, ptr nocapture noundef readonly %inode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %security.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 23
  %3 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %security.i, align 4
  %5 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i5 = getelementptr i8, ptr %4, i32 %5
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %smk_forked = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i5, i32 0, i32 1
  %8 = ptrtoint ptr %smk_forked to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %smk_forked, align 4
  %9 = ptrtoint ptr %add.ptr.i5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %add.ptr.i5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_task_setpgid(ptr noundef %p, i32 noundef %pgid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_curacc_on_task(ptr noundef %p, i32 noundef 2, ptr noundef nonnull @__func__.smack_task_setpgid)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_task_getpgid(ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_curacc_on_task(ptr noundef %p, i32 noundef 4, ptr noundef nonnull @__func__.smack_task_getpgid)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_task_getsid(ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_curacc_on_task(ptr noundef %p, i32 noundef 4, ptr noundef nonnull @__func__.smack_task_getsid)
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smack_current_getsecid_subj(ptr nocapture noundef writeonly %secid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smk_secid, align 4
  %13 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %secid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_task_getsecid_obj(ptr noundef %p, ptr nocapture noundef writeonly %secid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smk_of_task_struct_obj(ptr noundef %p)
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smk_secid, align 4
  %2 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %secid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_task_setnice(ptr noundef %p, i32 noundef %nice) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_curacc_on_task(ptr noundef %p, i32 noundef 2, ptr noundef nonnull @__func__.smack_task_setnice)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_task_setioprio(ptr noundef %p, i32 noundef %ioprio) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_curacc_on_task(ptr noundef %p, i32 noundef 2, ptr noundef nonnull @__func__.smack_task_setioprio)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_task_getioprio(ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_curacc_on_task(ptr noundef %p, i32 noundef 4, ptr noundef nonnull @__func__.smack_task_getioprio)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_task_setscheduler(ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_curacc_on_task(ptr noundef %p, i32 noundef 2, ptr noundef nonnull @__func__.smack_task_setscheduler)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_task_getscheduler(ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_curacc_on_task(ptr noundef %p, i32 noundef 4, ptr noundef nonnull @__func__.smack_task_getscheduler)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_task_movememory(ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_curacc_on_task(ptr noundef %p, i32 noundef 2, ptr noundef nonnull @__func__.smack_task_movememory)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_task_kill(ptr noundef %p, ptr nocapture noundef readnone %info, i32 noundef %sig, ptr noundef readonly %cred) #5 align 64 {
entry:
  %acc.i21 = alloca [8 x i8], align 8
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %call = tail call fastcc ptr @smk_of_task_struct_obj(ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sig)
  %tobool.not = icmp eq i32 %sig, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %ad, align 4
  %4 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sad.i, ptr %4, align 4
  %6 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @__func__.smack_task_kill, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %p, ptr %u.i, align 4
  %cmp = icmp eq ptr %cred, null
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @smk_curacc(ptr noundef %call, i32 noundef 8, ptr noundef nonnull %ad) #18
  %8 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %security.i.i, align 4
  %16 = load i32, ptr @smack_blob_sizes, align 4
  %call2.i = call fastcc ptr @smk_of_task_struct_obj(ptr noundef %p) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp.i = icmp slt i32 %call2, 1
  %17 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 6989868096655720447, ptr %acc.i, align 8
  br i1 %cmp.i, label %if.then1.smk_bu_task.exit_crit_edge, label %if.end.i

if.then1.smk_bu_task.exit_crit_edge:              ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_task.exit

if.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2)
  %cmp3.i = icmp ugt i32 %call2, 3
  %spec.store.select.i = select i1 %cmp3.i, i32 0, i32 %call2
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smk_known.i, align 4
  %smk_known11.i = getelementptr inbounds %struct.smack_known, ptr %call2.i, i32 0, i32 2
  %24 = ptrtoint ptr %smk_known11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smk_known11.i, align 4
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %comm16.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 101
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %19, ptr noundef %23, ptr noundef %25, ptr noundef nonnull %acc.i, ptr noundef %comm.i, ptr noundef %comm16.i) #21
  br label %smk_bu_task.exit

smk_bu_task.exit:                                 ; preds = %if.end.i, %if.then1.smk_bu_task.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call2, %if.then1.smk_bu_task.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %28 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %security.i, align 4
  %30 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 %30
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %call7 = call i32 @smk_access(ptr noundef %32, ptr noundef %call, i32 noundef 8, ptr noundef nonnull %ad) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i21) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp.i22 = icmp slt i32 %call7, 1
  %33 = ptrtoint ptr %acc.i21 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 6989868096655720447, ptr %acc.i21, align 8
  br i1 %cmp.i22, label %if.end4.smk_bu_note.exit_crit_edge, label %if.end.i24

if.end4.smk_bu_note.exit_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_note.exit

if.end.i24:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call7)
  %cmp1.i = icmp ugt i32 %call7, 3
  %spec.store.select.i23 = select i1 %cmp1.i, i32 0, i32 %call7
  %arrayidx.i26 = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i23
  %34 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i26, align 4
  %smk_known.i27 = getelementptr inbounds %struct.smack_known, ptr %32, i32 0, i32 2
  %36 = ptrtoint ptr %smk_known.i27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smk_known.i27, align 4
  %smk_known4.i = getelementptr inbounds %struct.smack_known, ptr %call, i32 0, i32 2
  %38 = ptrtoint ptr %smk_known4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smk_known4.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %35, ptr noundef %37, ptr noundef %39, ptr noundef nonnull %acc.i21, ptr noundef nonnull @.str.65) #21
  br label %smk_bu_note.exit

smk_bu_note.exit:                                 ; preds = %if.end.i24, %if.end4.smk_bu_note.exit_crit_edge
  %retval.0.i28 = phi i32 [ 0, %if.end.i24 ], [ %call7, %if.end4.smk_bu_note.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i21) #18
  br label %cleanup

cleanup:                                          ; preds = %smk_bu_note.exit, %smk_bu_task.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %smk_bu_task.exit ], [ %retval.0.i28, %smk_bu_note.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_task_to_inode(ptr noundef %p, ptr nocapture noundef readonly %inode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %call1 = tail call fastcc ptr @smk_of_task_struct_obj(ptr noundef %p)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %add.ptr.i, align 4
  %smk_flags = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 3
  %4 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smk_flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %smk_flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_ipc_permission(ptr nocapture noundef readonly %ipp, i16 noundef signext %flag) #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipp, i32 0, i32 10
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %conv8 = zext i16 %flag to i32
  %and.i = and i32 %conv8, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 4
  %and1.i = and i32 %conv8, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or4.i = or i32 %spec.select.i, 2
  %may.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %and6.i = and i32 %conv8, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp ne i32 %and6.i, 0
  %or9.i = zext i1 %tobool7.not.i to i32
  %may.2.i = or i32 %may.1.i, %or9.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %5 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %6 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %ad, align 4
  %9 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sad.i, ptr %9, align 4
  %11 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__func__.smack_ipc_permission, ptr %sad.i, align 4
  %id = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipp, i32 0, i32 2
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 16
  %u = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %14 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %u, align 4
  %call2 = call i32 @smk_curacc(ptr noundef %4, i32 noundef %may.2.i, ptr noundef nonnull %ad) #18
  %call3 = call fastcc i32 @smk_bu_current(ptr noundef nonnull @.str.66, ptr noundef %4, i32 noundef %may.2.i, i32 noundef %call2)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %call3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smack_ipc_getsecid(ptr nocapture noundef readonly %ipp, ptr nocapture noundef writeonly %secid) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipp, i32 0, i32 10
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smk_secid, align 4
  %7 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %secid, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_msg_msg_alloc_security(ptr nocapture noundef readonly %msg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 5), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %security.i.i, align 4
  %11 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %11
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %add.ptr.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_ipc_alloc_security(ptr nocapture noundef readonly %isp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %security.i.i, align 4
  %11 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %11
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %add.ptr.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_msg_queue_associate(ptr nocapture noundef readonly %isp, i32 noundef %msqflg) #5 align 64 {
entry:
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %msqflg, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 4
  %and1.i = and i32 %msqflg, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or4.i = or i32 %spec.select.i, 2
  %may.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %and6.i = and i32 %msqflg, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp ne i32 %and6.i, 0
  %or9.i = zext i1 %tobool7.not.i to i32
  %may.2.i = or i32 %may.1.i, %or9.i
  %security.i.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %0 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i.i.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %5 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %ad.i, align 4
  %9 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sad.i.i, ptr %9, align 4
  %11 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__func__.smk_curacc_msq, ptr %sad.i.i, align 4
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 2
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 16
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %u.i, align 4
  %call1.i = call i32 @smk_curacc(ptr noundef %4, i32 noundef %may.2.i, ptr noundef nonnull %ad.i) #18
  %call2.i = call fastcc i32 @smk_bu_current(ptr noundef nonnull @.str.67, ptr noundef %4, i32 noundef %may.2.i, i32 noundef %call1.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_msg_queue_msgctl(ptr nocapture noundef readonly %isp, i32 noundef %cmd) #5 align 64 {
entry:
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %cmd, label %sw.default [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 11, label %entry.sw.epilog_crit_edge3
    i32 13, label %entry.sw.epilog_crit_edge4
    i32 1, label %entry.sw.bb1_crit_edge
    i32 0, label %entry.sw.bb1_crit_edge5
    i32 3, label %entry.cleanup_crit_edge
    i32 12, label %entry.cleanup_crit_edge6
  ]

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.sw.bb1_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge3, %entry.sw.epilog_crit_edge4
  %may.0 = phi i32 [ 6, %sw.bb1 ], [ 4, %entry.sw.epilog_crit_edge ], [ 4, %entry.sw.epilog_crit_edge3 ], [ 4, %entry.sw.epilog_crit_edge4 ]
  %security.i.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %1 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %security.i.i.i, align 16
  %3 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 %3
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %6 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 16)
  %9 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %ad.i, align 4
  %10 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sad.i.i, ptr %10, align 4
  %12 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__func__.smk_curacc_msq, ptr %sad.i.i, align 4
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 2
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 16
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %15 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %u.i, align 4
  %call1.i = call i32 @smk_curacc(ptr noundef %5, i32 noundef %may.0, ptr noundef nonnull %ad.i) #18
  %call2.i = call fastcc i32 @smk_bu_current(ptr noundef nonnull @.str.67, ptr noundef %5, i32 noundef %may.0, i32 noundef %call1.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge6
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call2.i, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_msg_queue_msgsnd(ptr nocapture noundef readonly %isp, ptr nocapture noundef readnone %msg, i32 noundef %msqflg) #5 align 64 {
entry:
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %msqflg, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 4
  %and1.i = and i32 %msqflg, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or4.i = or i32 %spec.select.i, 2
  %may.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %and6.i = and i32 %msqflg, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp ne i32 %and6.i, 0
  %or9.i = zext i1 %tobool7.not.i to i32
  %may.2.i = or i32 %may.1.i, %or9.i
  %security.i.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %0 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i.i.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %5 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %ad.i, align 4
  %9 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sad.i.i, ptr %9, align 4
  %11 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__func__.smk_curacc_msq, ptr %sad.i.i, align 4
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 2
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 16
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %u.i, align 4
  %call1.i = call i32 @smk_curacc(ptr noundef %4, i32 noundef %may.2.i, ptr noundef nonnull %ad.i) #18
  %call2.i = call fastcc i32 @smk_bu_current(ptr noundef nonnull @.str.67, ptr noundef %4, i32 noundef %may.2.i, i32 noundef %call1.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_msg_queue_msgrcv(ptr nocapture noundef readonly %isp, ptr nocapture noundef readnone %msg, ptr nocapture noundef readnone %target, i32 noundef %type, i32 noundef %mode) #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %0 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i.i.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %5 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %ad.i, align 4
  %9 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sad.i.i, ptr %9, align 4
  %11 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__func__.smk_curacc_msq, ptr %sad.i.i, align 4
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 2
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 16
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %u.i, align 4
  %call1.i = call i32 @smk_curacc(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %ad.i) #18
  %15 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 99
  %19 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 23
  %21 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %security.i.i, align 4
  %23 = load i32, ptr @smack_blob_sizes, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 1
  %24 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 8248062342063980543, ptr %acc.i, align 8
  br i1 %cmp.i, label %entry.smk_bu_current.exit_crit_edge, label %if.end.i

entry.smk_bu_current.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_current.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1.i)
  %cmp2.i = icmp ugt i32 %call1.i, 3
  %spec.store.select.i = select i1 %cmp2.i, i32 0, i32 %call1.i
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smk_known.i, align 4
  %smk_known9.i = getelementptr inbounds %struct.smack_known, ptr %4, i32 0, i32 2
  %31 = ptrtoint ptr %smk_known9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smk_known9.i, align 4
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 101
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %26, ptr noundef %30, ptr noundef %32, ptr noundef nonnull %acc.i, ptr noundef %comm.i, ptr noundef nonnull @.str.67) #21
  br label %smk_bu_current.exit

smk_bu_current.exit:                              ; preds = %if.end.i, %entry.smk_bu_current.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call1.i, %entry.smk_bu_current.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_shm_associate(ptr nocapture noundef readonly %isp, i32 noundef %shmflg) #5 align 64 {
entry:
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %shmflg, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 4
  %and1.i = and i32 %shmflg, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or4.i = or i32 %spec.select.i, 2
  %may.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %and6.i = and i32 %shmflg, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp ne i32 %and6.i, 0
  %or9.i = zext i1 %tobool7.not.i to i32
  %may.2.i = or i32 %may.1.i, %or9.i
  %security.i.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %0 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i.i.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %5 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %ad.i, align 4
  %9 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sad.i.i, ptr %9, align 4
  %11 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__func__.smk_curacc_shm, ptr %sad.i.i, align 4
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 2
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 16
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %u.i, align 4
  %call1.i = call i32 @smk_curacc(ptr noundef %4, i32 noundef %may.2.i, ptr noundef nonnull %ad.i) #18
  %call2.i = call fastcc i32 @smk_bu_current(ptr noundef nonnull @.str.68, ptr noundef %4, i32 noundef %may.2.i, i32 noundef %call1.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_shm_shmctl(ptr nocapture noundef readonly %isp, i32 noundef %cmd) #5 align 64 {
entry:
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %cmd, label %sw.default [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 13, label %entry.sw.epilog_crit_edge3
    i32 15, label %entry.sw.epilog_crit_edge4
    i32 1, label %entry.sw.bb1_crit_edge
    i32 11, label %entry.sw.bb1_crit_edge5
    i32 12, label %entry.sw.bb1_crit_edge6
    i32 0, label %entry.sw.bb1_crit_edge7
    i32 3, label %entry.cleanup_crit_edge
    i32 14, label %entry.cleanup_crit_edge8
  ]

entry.cleanup_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.sw.bb1_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.sw.bb1_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.sw.bb1_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge5, %entry.sw.bb1_crit_edge6, %entry.sw.bb1_crit_edge7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge3, %entry.sw.epilog_crit_edge4
  %may.0 = phi i32 [ 6, %sw.bb1 ], [ 4, %entry.sw.epilog_crit_edge ], [ 4, %entry.sw.epilog_crit_edge3 ], [ 4, %entry.sw.epilog_crit_edge4 ]
  %security.i.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %1 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %security.i.i.i, align 16
  %3 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 %3
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %6 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 16)
  %9 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %ad.i, align 4
  %10 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sad.i.i, ptr %10, align 4
  %12 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__func__.smk_curacc_shm, ptr %sad.i.i, align 4
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 2
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 16
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %15 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %u.i, align 4
  %call1.i = call i32 @smk_curacc(ptr noundef %5, i32 noundef %may.0, ptr noundef nonnull %ad.i) #18
  %call2.i = call fastcc i32 @smk_bu_current(ptr noundef nonnull @.str.68, ptr noundef %5, i32 noundef %may.0, i32 noundef %call1.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge8
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call2.i, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_shm_shmat(ptr nocapture noundef readonly %isp, ptr nocapture noundef readnone %shmaddr, i32 noundef %shmflg) #5 align 64 {
entry:
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %shmflg, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 4
  %and1.i = and i32 %shmflg, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or4.i = or i32 %spec.select.i, 2
  %may.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %and6.i = and i32 %shmflg, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp ne i32 %and6.i, 0
  %or9.i = zext i1 %tobool7.not.i to i32
  %may.2.i = or i32 %may.1.i, %or9.i
  %security.i.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %0 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i.i.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %5 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %ad.i, align 4
  %9 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sad.i.i, ptr %9, align 4
  %11 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__func__.smk_curacc_shm, ptr %sad.i.i, align 4
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 2
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 16
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %u.i, align 4
  %call1.i = call i32 @smk_curacc(ptr noundef %4, i32 noundef %may.2.i, ptr noundef nonnull %ad.i) #18
  %call2.i = call fastcc i32 @smk_bu_current(ptr noundef nonnull @.str.68, ptr noundef %4, i32 noundef %may.2.i, i32 noundef %call1.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_sem_associate(ptr nocapture noundef readonly %isp, i32 noundef %semflg) #5 align 64 {
entry:
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %semflg, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 4
  %and1.i = and i32 %semflg, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or4.i = or i32 %spec.select.i, 2
  %may.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %and6.i = and i32 %semflg, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp ne i32 %and6.i, 0
  %or9.i = zext i1 %tobool7.not.i to i32
  %may.2.i = or i32 %may.1.i, %or9.i
  %security.i.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %0 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i.i.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %5 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %ad.i, align 4
  %9 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sad.i.i, ptr %9, align 4
  %11 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__func__.smk_curacc_sem, ptr %sad.i.i, align 4
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 2
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 16
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %u.i, align 4
  %call1.i = call i32 @smk_curacc(ptr noundef %4, i32 noundef %may.2.i, ptr noundef nonnull %ad.i) #18
  %call2.i = call fastcc i32 @smk_bu_current(ptr noundef nonnull @.str.69, ptr noundef %4, i32 noundef %may.2.i, i32 noundef %call1.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_sem_semctl(ptr nocapture noundef readonly %isp, i32 noundef %cmd) #5 align 64 {
entry:
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %cmd, label %sw.default [
    i32 11, label %entry.sw.epilog_crit_edge
    i32 14, label %entry.sw.epilog_crit_edge3
    i32 15, label %entry.sw.epilog_crit_edge4
    i32 12, label %entry.sw.epilog_crit_edge5
    i32 13, label %entry.sw.epilog_crit_edge6
    i32 2, label %entry.sw.epilog_crit_edge7
    i32 18, label %entry.sw.epilog_crit_edge8
    i32 20, label %entry.sw.epilog_crit_edge9
    i32 16, label %entry.sw.bb1_crit_edge
    i32 17, label %entry.sw.bb1_crit_edge10
    i32 0, label %entry.sw.bb1_crit_edge11
    i32 1, label %entry.sw.bb1_crit_edge12
    i32 3, label %entry.cleanup_crit_edge
    i32 19, label %entry.cleanup_crit_edge13
  ]

entry.cleanup_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge10, %entry.sw.bb1_crit_edge11, %entry.sw.bb1_crit_edge12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge3, %entry.sw.epilog_crit_edge4, %entry.sw.epilog_crit_edge5, %entry.sw.epilog_crit_edge6, %entry.sw.epilog_crit_edge7, %entry.sw.epilog_crit_edge8, %entry.sw.epilog_crit_edge9
  %may.0 = phi i32 [ 6, %sw.bb1 ], [ 4, %entry.sw.epilog_crit_edge ], [ 4, %entry.sw.epilog_crit_edge3 ], [ 4, %entry.sw.epilog_crit_edge4 ], [ 4, %entry.sw.epilog_crit_edge5 ], [ 4, %entry.sw.epilog_crit_edge6 ], [ 4, %entry.sw.epilog_crit_edge7 ], [ 4, %entry.sw.epilog_crit_edge8 ], [ 4, %entry.sw.epilog_crit_edge9 ]
  %security.i.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %1 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %security.i.i.i, align 16
  %3 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 %3
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %6 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 16)
  %9 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %ad.i, align 4
  %10 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sad.i.i, ptr %10, align 4
  %12 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__func__.smk_curacc_sem, ptr %sad.i.i, align 4
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 2
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 16
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %15 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %u.i, align 4
  %call1.i = call i32 @smk_curacc(ptr noundef %5, i32 noundef %may.0, ptr noundef nonnull %ad.i) #18
  %call2.i = call fastcc i32 @smk_bu_current(ptr noundef nonnull @.str.69, ptr noundef %5, i32 noundef %may.0, i32 noundef %call1.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge13
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call2.i, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_sem_semop(ptr nocapture noundef readonly %isp, ptr nocapture noundef readnone %sops, i32 noundef %nsops, i32 noundef %alter) #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 10
  %0 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i.i.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %5 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %ad.i, align 4
  %9 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sad.i.i, ptr %9, align 4
  %11 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__func__.smk_curacc_sem, ptr %sad.i.i, align 4
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %isp, i32 0, i32 2
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 16
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %u.i, align 4
  %call1.i = call i32 @smk_curacc(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %ad.i) #18
  %15 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 99
  %19 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 23
  %21 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %security.i.i, align 4
  %23 = load i32, ptr @smack_blob_sizes, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 1
  %24 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 8248062342063980543, ptr %acc.i, align 8
  br i1 %cmp.i, label %entry.smk_bu_current.exit_crit_edge, label %if.end.i

entry.smk_bu_current.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_current.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1.i)
  %cmp2.i = icmp ugt i32 %call1.i, 3
  %spec.store.select.i = select i1 %cmp2.i, i32 0, i32 %call1.i
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smk_known.i, align 4
  %smk_known9.i = getelementptr inbounds %struct.smack_known, ptr %4, i32 0, i32 2
  %31 = ptrtoint ptr %smk_known9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smk_known9.i, align 4
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 101
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %26, ptr noundef %30, ptr noundef %32, ptr noundef nonnull %acc.i, ptr noundef %comm.i, ptr noundef nonnull @.str.69) #21
  br label %smk_bu_current.exit

smk_bu_current.exit:                              ; preds = %if.end.i, %entry.smk_bu_current.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call1.i, %entry.smk_bu_current.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_d_instantiate(ptr noundef %opt_dentry, ptr noundef %inode) #5 align 64 {
entry:
  %trattr = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trattr) #18
  %cmp = icmp eq ptr %inode, null
  %11 = ptrtoint ptr %trattr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %trattr, align 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_security.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %12 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_security.i, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %14
  %smk_flags = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 3
  %15 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smk_flags, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_security.i, align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i163 = getelementptr i8, ptr %20, i32 %21
  %smk_default = getelementptr inbounds %struct.superblock_smack, ptr %add.ptr.i163, i32 0, i32 3
  %d_parent = getelementptr inbounds %struct.dentry, ptr %opt_dentry, i32 0, i32 3
  %22 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_parent, align 8
  %cmp5 = icmp eq ptr %23, %opt_dentry
  br i1 %cmp5, label %if.then6, label %if.end20

if.then6:                                         ; preds = %if.end3
  %s_magic = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 12
  %24 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_magic, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %25, label %sw.default [
    i32 2613483, label %if.then6.sw.bb_crit_edge
    i32 1667723888, label %if.then6.sw.bb_crit_edge177
    i32 16914836, label %sw.bb9
    i32 1346981957, label %sw.bb12
    i32 1397703499, label %if.then6.sw.epilog_crit_edge
  ]

if.then6.sw.epilog_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then6.sw.bb_crit_edge177:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

if.then6.sw.bb_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

sw.bb:                                            ; preds = %if.then6.sw.bb_crit_edge, %if.then6.sw.bb_crit_edge177
  %27 = ptrtoint ptr %add.ptr.i163 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @smack_known_star, ptr %add.ptr.i163, align 4
  %28 = ptrtoint ptr %smk_default to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @smack_known_star, ptr %smk_default, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  %29 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i164 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i164 to ptr
  %task.i165 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i165 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i165, align 8
  %cred.i166 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 99
  %33 = ptrtoint ptr %cred.i166 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cred.i166, align 16
  %security.i.i167 = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %security.i.i167 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %security.i.i167, align 4
  %add.ptr.i.i168 = getelementptr i8, ptr %36, i32 %8
  %37 = ptrtoint ptr %add.ptr.i.i168 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i168, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  %39 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i169 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i169 to ptr
  %task.i170 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i170 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i170, align 8
  %cred.i171 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 99
  %43 = ptrtoint ptr %cred.i171 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cred.i171, align 16
  %security.i.i172 = getelementptr inbounds %struct.cred, ptr %44, i32 0, i32 23
  %45 = ptrtoint ptr %security.i.i172 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %security.i.i172, align 4
  %add.ptr.i.i173 = getelementptr i8, ptr %46, i32 %8
  %47 = ptrtoint ptr %add.ptr.i.i173 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i.i173, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  %49 = ptrtoint ptr %add.ptr.i163 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i163, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb9, %sw.bb, %if.then6.sw.epilog_crit_edge
  %.sink = phi ptr [ %50, %sw.default ], [ %48, %sw.bb12 ], [ %38, %sw.bb9 ], [ @smack_known_star, %sw.bb ], [ @smack_known_star, %if.then6.sw.epilog_crit_edge ]
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %.sink, ptr %add.ptr.i, align 4
  %52 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %smk_flags, align 4
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end3
  %54 = ptrtoint ptr %smk_default to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %smk_default, align 4
  %s_magic21 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 12
  %56 = ptrtoint ptr %s_magic21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_magic21, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %57, label %if.end20.sw.default25_crit_edge [
    i32 1128357203, label %if.end20.sw.bb22_crit_edge
    i32 2613483, label %if.end20.sw.bb22_crit_edge178
    i32 1667723888, label %if.end20.sw.bb22_crit_edge179
    i32 7377, label %sw.bb23
    i32 40864, label %if.end20.sw.epilog90_crit_edge
    i32 16914836, label %sw.bb24
  ]

if.end20.sw.epilog90_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog90

if.end20.sw.bb22_crit_edge179:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb22

if.end20.sw.bb22_crit_edge178:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb22

if.end20.sw.bb22_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb22

if.end20.sw.default25_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.default25

sw.bb22:                                          ; preds = %if.end20.sw.bb22_crit_edge, %if.end20.sw.bb22_crit_edge178, %if.end20.sw.bb22_crit_edge179
  br label %sw.epilog90

sw.bb23:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog90

sw.bb24:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.default25

sw.default25:                                     ; preds = %sw.bb24, %if.end20.sw.default25_crit_edge
  %final.0 = phi ptr [ %55, %if.end20.sw.default25_crit_edge ], [ @smack_known_star, %sw.bb24 ]
  %59 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %inode, align 8
  %61 = and i16 %60, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %61)
  %cmp27 = icmp eq i16 %61, -16384
  br i1 %cmp27, label %sw.default25.sw.epilog90_crit_edge, label %if.end30

sw.default25.sw.epilog90_crit_edge:               ; preds = %sw.default25
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog90

if.end30:                                         ; preds = %sw.default25
  %i_opflags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 1
  %62 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %i_opflags, align 2
  %64 = and i16 %63, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool33.not = icmp eq i16 %64, 0
  br i1 %tobool33.not, label %if.end30.sw.epilog90_crit_edge, label %if.end35

if.end30.sw.epilog90_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog90

if.end35:                                         ; preds = %if.end30
  %tobool.not.i = icmp eq ptr %opt_dentry, null
  br i1 %tobool.not.i, label %if.end35.dget.exit_crit_edge, label %if.then.i

if.end35.dget.exit_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %dget.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %opt_dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #18
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end35.dget.exit_crit_edge
  %call37 = tail call fastcc ptr @smk_fetch(ptr noundef nonnull @.str.39, ptr noundef nonnull %inode, ptr noundef %opt_dentry)
  %tobool.not.i174 = icmp eq ptr %call37, null
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i174, %cmp.i
  %spec.select = select i1 %spec.select.i, ptr %final.0, ptr %call37
  %65 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %inode, align 8
  %67 = and i16 %66, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %67)
  %cmp44 = icmp eq i16 %67, 16384
  br i1 %cmp44, label %if.then46, label %dget.exit.if.end68_crit_edge

dget.exit.if.end68_crit_edge:                     ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68

if.then46:                                        ; preds = %dget.exit
  %68 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %smk_flags, align 4
  %and48 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #20
  %and52 = and i32 %69, -5
  %70 = ptrtoint ptr %smk_flags to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and52, ptr %smk_flags, align 4
  %call53 = tail call i32 @__vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %opt_dentry, ptr noundef nonnull %inode, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 0) #18
  br label %if.end63

if.else:                                          ; preds = %if.then46
  %call54 = call i32 @__vfs_getxattr(ptr noundef %opt_dentry, ptr noundef nonnull %inode, ptr noundef nonnull @.str.44, ptr noundef nonnull %trattr, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call54)
  %cmp55 = icmp sgt i32 %call54, -1
  br i1 %cmp55, label %land.lhs.true, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end63

land.lhs.true:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %71 = ptrtoint ptr %trattr to i32
  call void @__asan_load4_noabort(i32 %71)
  %lhsv = load i32, ptr %trattr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1414681925, i32 %lhsv)
  %.not = icmp eq i32 %lhsv, 1414681925
  %spec.select158 = select i1 %.not, i32 %call54, i32 -22
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true, %if.else.if.end63_crit_edge, %if.then50
  %rc.0 = phi i32 [ %call53, %if.then50 ], [ %call54, %if.else.if.end63_crit_edge ], [ %spec.select158, %land.lhs.true ]
  %72 = lshr i32 %rc.0, 30
  %73 = and i32 %72, 2
  %74 = xor i32 %73, 2
  br label %if.end68

if.end68:                                         ; preds = %if.end63, %dget.exit.if.end68_crit_edge
  %transflag.0 = phi i32 [ 0, %dget.exit.if.end68_crit_edge ], [ %74, %if.end63 ]
  %call69 = call fastcc ptr @smk_fetch(ptr noundef nonnull @.str.42, ptr noundef nonnull %inode, ptr noundef %opt_dentry)
  %cmp.i175 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  %cmp72 = icmp eq ptr %call69, @smack_known_star
  %or.cond = or i1 %cmp.i175, %cmp72
  %cmp75 = icmp eq ptr %call69, @smack_known_web
  %or.cond160 = or i1 %cmp75, %or.cond
  %skp.0 = select i1 %or.cond160, ptr null, ptr %call69
  %smk_task = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 1
  %75 = ptrtoint ptr %smk_task to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %skp.0, ptr %smk_task, align 4
  %call79 = call fastcc ptr @smk_fetch(ptr noundef nonnull @.str.43, ptr noundef nonnull %inode, ptr noundef %opt_dentry)
  %cmp.i176 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  %cmp83 = icmp eq ptr %call79, @smack_known_star
  %or.cond161 = or i1 %cmp.i176, %cmp83
  %cmp86 = icmp eq ptr %call79, @smack_known_web
  %or.cond162 = or i1 %cmp86, %or.cond161
  %skp.1 = select i1 %or.cond162, ptr null, ptr %call79
  %smk_mmap = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i, i32 0, i32 2
  %76 = ptrtoint ptr %smk_mmap to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %skp.1, ptr %smk_mmap, align 4
  call void @dput(ptr noundef %opt_dentry) #18
  br label %sw.epilog90

sw.epilog90:                                      ; preds = %if.end68, %if.end30.sw.epilog90_crit_edge, %sw.default25.sw.epilog90_crit_edge, %sw.bb23, %sw.bb22, %if.end20.sw.epilog90_crit_edge
  %final.2 = phi ptr [ %spec.select, %if.end68 ], [ %final.0, %if.end30.sw.epilog90_crit_edge ], [ %55, %if.end20.sw.epilog90_crit_edge ], [ %10, %sw.bb23 ], [ @smack_known_star, %sw.bb22 ], [ @smack_known_star, %sw.default25.sw.epilog90_crit_edge ]
  %transflag.1 = phi i32 [ %transflag.0, %if.end68 ], [ 0, %if.end30.sw.epilog90_crit_edge ], [ 0, %if.end20.sw.epilog90_crit_edge ], [ 0, %sw.bb23 ], [ 0, %sw.bb22 ], [ 0, %sw.default25.sw.epilog90_crit_edge ]
  %cmp91 = icmp eq ptr %final.2, null
  %call.final.2 = select i1 %cmp91, ptr %10, ptr %final.2
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.final.2, ptr %add.ptr.i, align 4
  %78 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %smk_flags, align 4
  %or98 = or i32 %transflag.1, %79
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog90, %sw.epilog
  %or98.sink = phi i32 [ %or98, %sw.epilog90 ], [ %53, %sw.epilog ]
  %or100 = or i32 %or98.sink, 1
  %80 = ptrtoint ptr %smk_flags to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or100, ptr %smk_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trattr) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_getprocattr(ptr noundef %p, ptr nocapture noundef readonly %name, ptr nocapture noundef writeonly %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smk_of_task_struct_obj(ptr noundef %p)
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.70) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smk_known, align 4
  %call2 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #18
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call6 = tail call i32 @strlen(ptr noundef nonnull %call2) #24
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_setprocattr(ptr nocapture noundef readonly %name, ptr noundef %value, i32 noundef %size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %call2 = tail call zeroext i1 @smack_privileged(i32 noundef 33) #18
  br i1 %call2, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %smk_relabel = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4
  %9 = ptrtoint ptr %smk_relabel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %smk_relabel, align 4
  %cmp.i.not = icmp eq ptr %10, %smk_relabel
  br i1 %cmp.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cmp = icmp eq ptr %value, null
  %11 = add i32 %size, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %11)
  %12 = icmp ult i32 %11, -255
  %13 = or i1 %cmp, %12
  br i1 %13, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.70) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @smk_import_entry(ptr noundef nonnull %value, i32 noundef %size) #18
  %cmp.i72 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %cmp18 = icmp eq ptr %call13, @smack_known_web
  %cmp20 = icmp eq ptr %call13, @smack_known_star
  %or.cond71 = or i1 %cmp18, %cmp20
  br i1 %or.cond71, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call23 = tail call zeroext i1 @smack_privileged(i32 noundef 33) #18
  br i1 %call23, label %if.end22.if.end40_crit_edge, label %if.then24

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then24:                                        ; preds = %if.end22
  %smk_relabel25 = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then24
  %sklep.0.in = phi ptr [ %smk_relabel25, %if.then24 ], [ %sklep.0, %for.body.for.cond_crit_edge ]
  %15 = ptrtoint ptr %sklep.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %sklep.0 = load ptr, ptr %sklep.0.in, align 4
  %cmp28.not = icmp eq ptr %sklep.0, %smk_relabel25
  br i1 %cmp28.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %smk_label = getelementptr inbounds %struct.smack_known_list_elem, ptr %sklep.0, i32 0, i32 1
  %16 = ptrtoint ptr %smk_label to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smk_label, align 4
  %cmp29 = icmp eq ptr %17, %call13
  br i1 %cmp29, label %for.body.if.end40_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.end40:                                         ; preds = %for.body.if.end40_crit_edge, %if.end22.if.end40_crit_edge
  %call41 = tail call ptr @prepare_creds() #18
  %cmp42 = icmp eq ptr %call41, null
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  %security.i73 = getelementptr inbounds %struct.cred, ptr %call41, i32 0, i32 23
  %18 = ptrtoint ptr %security.i73 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security.i73, align 4
  %20 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i74 = getelementptr i8, ptr %19, i32 %20
  %21 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call13, ptr %add.ptr.i74, align 4
  %smk_relabel46 = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i74, i32 0, i32 4
  tail call void @smk_destroy_label_list(ptr noundef %smk_relabel46) #18
  %call47 = tail call i32 @commit_creds(ptr noundef nonnull %call41) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end40.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then15, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then15 ], [ %size, %if.end44 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -12, %if.end40.cleanup_crit_edge ], [ -1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_unix_stream_connect(ptr nocapture noundef readonly %sock, ptr noundef %other, ptr nocapture noundef readonly %newsk) #5 align 64 {
entry:
  %acc.i34 = alloca [8 x i8], align 8
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  %net = alloca %struct.lsm_network_audit, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sock, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  %sk_security1 = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_security1, align 8
  %sk_security2 = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 73
  %4 = ptrtoint ptr %sk_security2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_security2, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %6 = call ptr @memset(ptr %ad, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %net) #18
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 32) #18
  br i1 %call, label %entry.if.then12_crit_edge, label %if.then

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %smk_in = getelementptr inbounds %struct.socket_smack, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %smk_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smk_in, align 4
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %11 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 16)
  %13 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %ad, align 4
  %14 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sad.i.i, ptr %14, align 4
  %16 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @__func__.smack_unix_stream_connect, ptr %sad.i.i, align 4
  %17 = call ptr @memset(ptr %net, i32 0, i32 48)
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %18 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %net, ptr %u.i, align 4
  %sk2.i = getelementptr inbounds %struct.lsm_network_audit, ptr %net, i32 0, i32 1
  %19 = ptrtoint ptr %sk2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %other, ptr %sk2.i, align 4
  %call3 = call i32 @smk_access(ptr noundef %8, ptr noundef %10, i32 noundef 2, ptr noundef nonnull %ad) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.i = icmp slt i32 %call3, 1
  %20 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 8575135165490135039, ptr %acc.i, align 8
  br i1 %cmp.i, label %smk_bu_note.exit, label %smk_bu_note.exit.thread

smk_bu_note.exit.thread:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp1.i = icmp ugt i32 %call3, 3
  %spec.store.select.i = select i1 %cmp1.i, i32 0, i32 %call3
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %8, i32 0, i32 2
  %23 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smk_known.i, align 4
  %smk_known4.i = getelementptr inbounds %struct.smack_known, ptr %10, i32 0, i32 2
  %25 = ptrtoint ptr %smk_known4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smk_known4.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef nonnull %acc.i, ptr noundef nonnull @.str.71) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  br label %if.then5

smk_bu_note.exit:                                 ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %smk_bu_note.exit.if.then5_crit_edge, label %smk_bu_note.exit.if.end16_crit_edge

smk_bu_note.exit.if.end16_crit_edge:              ; preds = %smk_bu_note.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

smk_bu_note.exit.if.then5_crit_edge:              ; preds = %smk_bu_note.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5

if.then5:                                         ; preds = %smk_bu_note.exit.if.then5_crit_edge, %smk_bu_note.exit.thread
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %smk_in7 = getelementptr inbounds %struct.socket_smack, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %smk_in7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smk_in7, align 4
  %call8 = call i32 @smk_access(ptr noundef %28, ptr noundef %30, i32 noundef 2, ptr noundef nonnull %ad) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i34) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp.i35 = icmp slt i32 %call8, 1
  %31 = ptrtoint ptr %acc.i34 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 8575135165490135039, ptr %acc.i34, align 8
  br i1 %cmp.i35, label %if.end10, label %if.end10.thread55

if.end10.thread55:                                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call8)
  %cmp1.i36 = icmp ugt i32 %call8, 3
  %spec.store.select.i37 = select i1 %cmp1.i36, i32 0, i32 %call8
  %arrayidx.i40 = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i37
  %32 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i40, align 4
  %smk_known.i41 = getelementptr inbounds %struct.smack_known, ptr %28, i32 0, i32 2
  %34 = ptrtoint ptr %smk_known.i41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %smk_known.i41, align 4
  %smk_known4.i42 = getelementptr inbounds %struct.smack_known, ptr %30, i32 0, i32 2
  %36 = ptrtoint ptr %smk_known4.i42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smk_known4.i42, align 4
  %call.i43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %33, ptr noundef %35, ptr noundef %37, ptr noundef nonnull %acc.i34, ptr noundef nonnull @.str.71) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i34) #18
  br label %if.then12

if.end10:                                         ; preds = %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i34) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp11 = icmp eq i32 %call8, 0
  br i1 %cmp11, label %if.end10.if.then12_crit_edge, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end10.thread55, %entry.if.then12_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %smk_packet = getelementptr inbounds %struct.socket_smack, ptr %5, i32 0, i32 2
  %40 = ptrtoint ptr %smk_packet to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %smk_packet, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %smk_packet15 = getelementptr inbounds %struct.socket_smack, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %smk_packet15 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %smk_packet15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end10.if.end16_crit_edge, %smk_bu_note.exit.if.end16_crit_edge
  %rc.050 = phi i32 [ 0, %if.then12 ], [ %call8, %if.end10.if.end16_crit_edge ], [ %call3, %smk_bu_note.exit.if.end16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %net) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %rc.050
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_unix_may_send(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %other) #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  %net = alloca %struct.lsm_network_audit, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %sk_security = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_security, align 8
  %sk1 = getelementptr inbounds %struct.socket, ptr %other, i32 0, i32 4
  %4 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk1, align 16
  %sk_security2 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 73
  %6 = ptrtoint ptr %sk_security2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_security2, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %8 = call ptr @memset(ptr %ad, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %net) #18
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %9 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %10 = call ptr @memset(ptr %9, i32 0, i32 16)
  %11 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %ad, align 4
  %12 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sad.i.i, ptr %12, align 4
  %14 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @__func__.smack_unix_may_send, ptr %sad.i.i, align 4
  %15 = call ptr @memset(ptr %net, i32 0, i32 48)
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %16 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %net, ptr %u.i, align 4
  %sk2.i = getelementptr inbounds %struct.lsm_network_audit, ptr %net, i32 0, i32 1
  %17 = ptrtoint ptr %sk2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %sk2.i, align 4
  %call = call zeroext i1 @smack_privileged(i32 noundef 32) #18
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %smk_in = getelementptr inbounds %struct.socket_smack, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %smk_in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smk_in, align 4
  %call4 = call i32 @smk_access(ptr noundef %19, ptr noundef %21, i32 noundef 2, ptr noundef nonnull %ad) #18
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %24 = ptrtoint ptr %smk_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smk_in, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp.i = icmp slt i32 %call4, 1
  %26 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 8575135165490135039, ptr %acc.i, align 8
  br i1 %cmp.i, label %if.end.smk_bu_note.exit_crit_edge, label %if.end.i

if.end.smk_bu_note.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_note.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call4)
  %cmp1.i = icmp ugt i32 %call4, 3
  %spec.store.select.i = select i1 %cmp1.i, i32 0, i32 %call4
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %23, i32 0, i32 2
  %29 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smk_known.i, align 4
  %smk_known4.i = getelementptr inbounds %struct.smack_known, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %smk_known4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smk_known4.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %28, ptr noundef %30, ptr noundef %32, ptr noundef nonnull %acc.i, ptr noundef nonnull @.str.72) #21
  br label %smk_bu_note.exit

smk_bu_note.exit:                                 ; preds = %if.end.i, %if.end.smk_bu_note.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call4, %if.end.smk_bu_note.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  br label %cleanup

cleanup:                                          ; preds = %smk_bu_note.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %smk_bu_note.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %net) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_socket_post_create(ptr nocapture noundef readonly %sock, i32 noundef %family, i32 noundef %type, i32 noundef %protocol, i32 noundef %kern) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3, !prof !343

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %sk_security = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 73
  %8 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_security, align 8
  %smk_in = getelementptr inbounds %struct.socket_smack, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %smk_in to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smack_known_web, ptr %smk_in, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @smack_known_web, ptr %9, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %family)
  %cmp6.not = icmp eq i32 %family, 2
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %12 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk, align 16
  %sk_security.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 73
  %14 = ptrtoint ptr %sk_security.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_security.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call fastcc void @local_bh_disable() #18
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_lock_nested(ptr noundef %sk_lock.i, i32 noundef 1) #18
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %skc_family.i, align 8
  %smk_netlabel.i = getelementptr inbounds %struct.smack_known, ptr %17, i32 0, i32 4
  %call1.i = tail call i32 @netlbl_sock_setattr(ptr noundef %13, i16 noundef zeroext %19, ptr noundef %smk_netlabel.i) #18
  %20 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %call1.i, label %if.end8.smack_netlbl_add.exit_crit_edge [
    i32 0, label %if.end8.sw.epilog.sink.split.i_crit_edge
    i32 -89, label %sw.bb2.i
  ]

if.end8.sw.epilog.sink.split.i_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

if.end8.smack_netlbl_add.exit_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %smack_netlbl_add.exit

sw.bb2.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %if.end8.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 3, %sw.bb2.i ], [ 2, %if.end8.sw.epilog.sink.split.i_crit_edge ]
  %smk_state3.i = getelementptr inbounds %struct.socket_smack, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %smk_state3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink.i, ptr %smk_state3.i, align 4
  br label %smack_netlbl_add.exit

smack_netlbl_add.exit:                            ; preds = %sw.epilog.sink.split.i, %if.end8.smack_netlbl_add.exit_crit_edge
  %rc.0.i = phi i32 [ %call1.i, %if.end8.smack_netlbl_add.exit_crit_edge ], [ 0, %sw.epilog.sink.split.i ]
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #18
  tail call fastcc void @local_bh_enable() #18
  br label %cleanup

cleanup:                                          ; preds = %smack_netlbl_add.exit, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %smack_netlbl_add.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_socket_socketpair(ptr nocapture noundef readonly %socka, ptr nocapture noundef readonly %sockb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %socka, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %sk_security = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_security, align 8
  %sk1 = getelementptr inbounds %struct.socket, ptr %sockb, i32 0, i32 4
  %4 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk1, align 16
  %sk_security2 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 73
  %6 = ptrtoint ptr %sk_security2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_security2, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %smk_packet = getelementptr inbounds %struct.socket_smack, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %smk_packet to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %smk_packet, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %smk_packet4 = getelementptr inbounds %struct.socket_smack, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %smk_packet4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %smk_packet4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_socket_connect(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %sap, i32 noundef %addrlen) #5 align 64 {
entry:
  %acc.i.i = alloca [8 x i8], align 8
  %net.i = alloca %struct.lsm_network_audit, align 4
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.end:                                           ; preds = %entry
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.102)
  switch i16 %3, label %if.end.cleanup42_crit_edge [
    i16 2, label %if.end.if.end11_crit_edge
    i16 10, label %if.end.if.end11_crit_edge55
  ]

if.end.if.end11_crit_edge55:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.end.cleanup42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %if.end.if.end11_crit_edge55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addrlen)
  %cmp12 = icmp ult i32 %addrlen, 2
  br i1 %cmp12, label %if.end11.cleanup42_crit_edge, label %if.end15

if.end11.cleanup42_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.end15:                                         ; preds = %if.end11
  %5 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sap, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %6, label %if.end15.cleanup42_crit_edge [
    i16 10, label %if.then19
    i16 2, label %lor.lhs.false
  ]

if.end15.cleanup42_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %addrlen)
  %cmp20 = icmp slt i32 %addrlen, 24
  br i1 %cmp20, label %if.then19.cleanup42_crit_edge, label %if.end23

if.then19.cleanup42_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.end23:                                         ; preds = %if.then19
  %call = tail call fastcc ptr @smack_ipv6host_label(ptr noundef %sap)
  %cmp24.not = icmp eq ptr %call, null
  br i1 %cmp24.not, label %if.end23.cleanup42_crit_edge, label %if.then26

if.end23.cleanup42_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.then26:                                        ; preds = %if.end23
  %8 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk, align 16
  %sk_security = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 73
  %10 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_security, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %net.i) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %14 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %16 = call ptr @memset(ptr %15, i32 0, i32 16)
  %17 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %ad.i, align 4
  %18 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sad.i.i.i, ptr %18, align 4
  %20 = ptrtoint ptr %sad.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @__func__.smk_ipv6_check, ptr %sad.i.i.i, align 4
  %21 = call ptr @memset(ptr %net.i, i32 0, i32 48)
  %u.i.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %22 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %net.i, ptr %u.i.i, align 4
  %family.i = getelementptr inbounds %struct.lsm_network_audit, ptr %net.i, i32 0, i32 2
  %23 = ptrtoint ptr %family.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 10, ptr %family.i, align 4
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 1
  %24 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sin6_port.i, align 2
  %dport.i = getelementptr inbounds %struct.lsm_network_audit, ptr %net.i, i32 0, i32 3
  %26 = ptrtoint ptr %dport.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %dport.i, align 2
  %fam7.i = getelementptr inbounds %struct.lsm_network_audit, ptr %net.i, i32 0, i32 5
  %sin6_addr8.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %fam7.i, ptr %sin6_addr8.i, i32 16)
  %call.i = call i32 @smk_access(ptr noundef %13, ptr noundef nonnull %call, i32 noundef 2, ptr noundef nonnull %ad.i) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i.i = icmp slt i32 %call.i, 1
  %28 = ptrtoint ptr %acc.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 8575135165490135039, ptr %acc.i.i, align 8
  br i1 %cmp.i.i, label %if.then26.smk_ipv6_check.exit_crit_edge, label %if.end.i.i

if.then26.smk_ipv6_check.exit_crit_edge:          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_ipv6_check.exit

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp1.i.i = icmp ugt i32 %call.i, 3
  %spec.store.select.i.i = select i1 %cmp1.i.i, i32 0, i32 %call.i
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %smk_known.i.i = getelementptr inbounds %struct.smack_known, ptr %13, i32 0, i32 2
  %31 = ptrtoint ptr %smk_known.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smk_known.i.i, align 4
  %smk_known4.i.i = getelementptr inbounds %struct.smack_known, ptr %call, i32 0, i32 2
  %33 = ptrtoint ptr %smk_known4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smk_known4.i.i, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %30, ptr noundef %32, ptr noundef %34, ptr noundef nonnull %acc.i.i, ptr noundef nonnull @.str.73) #21
  br label %smk_ipv6_check.exit

smk_ipv6_check.exit:                              ; preds = %if.end.i.i, %if.then26.smk_ipv6_check.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %call.i, %if.then26.smk_ipv6_check.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %net.i) #18
  br label %cleanup42

lor.lhs.false:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addrlen)
  %cmp36 = icmp ult i32 %addrlen, 16
  br i1 %cmp36, label %lor.lhs.false.cleanup42_crit_edge, label %if.end39

lor.lhs.false.cleanup42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.end39:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  %call41 = tail call fastcc i32 @smk_ipv4_check(ptr noundef nonnull %1, ptr noundef %sap)
  br label %cleanup42

cleanup42:                                        ; preds = %if.end39, %lor.lhs.false.cleanup42_crit_edge, %smk_ipv6_check.exit, %if.end23.cleanup42_crit_edge, %if.then19.cleanup42_crit_edge, %if.end15.cleanup42_crit_edge, %if.end11.cleanup42_crit_edge, %if.end.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  %retval.1 = phi i32 [ %call41, %if.end39 ], [ 0, %entry.cleanup42_crit_edge ], [ 0, %if.end.cleanup42_crit_edge ], [ 0, %if.end11.cleanup42_crit_edge ], [ 0, %if.then19.cleanup42_crit_edge ], [ %retval.0.i.i, %smk_ipv6_check.exit ], [ 0, %if.end23.cleanup42_crit_edge ], [ 0, %if.end15.cleanup42_crit_edge ], [ 0, %lor.lhs.false.cleanup42_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_socket_sendmsg(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %msg, i32 noundef %size) #5 align 64 {
entry:
  %acc.i.i = alloca [8 x i8], align 8
  %net.i = alloca %struct.lsm_network_audit, align 4
  %ad.i = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 8
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %sk_security = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 73
  %4 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_security, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %skc_family, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %7, label %if.end.cleanup_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb11
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp3 = icmp ult i32 %10, 16
  br i1 %cmp3, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp6.not = icmp eq i16 %12, 2
  br i1 %cmp6.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call fastcc i32 @smk_ipv4_check(ptr noundef %3, ptr noundef nonnull %1)
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %msg_namelen12 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %msg_namelen12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_namelen12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %14)
  %cmp13 = icmp slt i32 %14, 24
  br i1 %cmp13, label %sw.bb11.cleanup_crit_edge, label %lor.lhs.false15

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false15:                                  ; preds = %sw.bb11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %16)
  %cmp17.not = icmp eq i16 %16, 10
  br i1 %cmp17.not, label %if.end20, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false15
  %call21 = tail call fastcc ptr @smack_ipv6host_label(ptr noundef nonnull %1)
  %cmp22.not = icmp eq ptr %call21, null
  br i1 %cmp22.not, label %if.end20.cleanup_crit_edge, label %if.then24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %net.i) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad.i) #18
  %19 = call ptr @memset(ptr %ad.i, i32 255, i32 12)
  %sad.i.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.smk_audit_info, ptr %ad.i, i32 0, i32 1, i32 1
  %21 = call ptr @memset(ptr %20, i32 0, i32 16)
  %22 = ptrtoint ptr %ad.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %ad.i, align 4
  %23 = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sad.i.i.i, ptr %23, align 4
  %25 = ptrtoint ptr %sad.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @__func__.smk_ipv6_check, ptr %sad.i.i.i, align 4
  %26 = call ptr @memset(ptr %net.i, i32 0, i32 48)
  %u.i.i = getelementptr inbounds %struct.common_audit_data, ptr %ad.i, i32 0, i32 1
  %27 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %net.i, ptr %u.i.i, align 4
  %family.i = getelementptr inbounds %struct.lsm_network_audit, ptr %net.i, i32 0, i32 2
  %28 = ptrtoint ptr %family.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 10, ptr %family.i, align 4
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sin6_port.i, align 2
  %dport.i = getelementptr inbounds %struct.lsm_network_audit, ptr %net.i, i32 0, i32 3
  %31 = ptrtoint ptr %dport.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %dport.i, align 2
  %fam7.i = getelementptr inbounds %struct.lsm_network_audit, ptr %net.i, i32 0, i32 5
  %sin6_addr8.i = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %32 = call ptr @memcpy(ptr %fam7.i, ptr %sin6_addr8.i, i32 16)
  %call.i = call i32 @smk_access(ptr noundef %18, ptr noundef nonnull %call21, i32 noundef 2, ptr noundef nonnull %ad.i) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i.i = icmp slt i32 %call.i, 1
  %33 = ptrtoint ptr %acc.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 8575135165490135039, ptr %acc.i.i, align 8
  br i1 %cmp.i.i, label %if.then24.smk_ipv6_check.exit_crit_edge, label %if.end.i.i

if.then24.smk_ipv6_check.exit_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_ipv6_check.exit

if.end.i.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp1.i.i = icmp ugt i32 %call.i, 3
  %spec.store.select.i.i = select i1 %cmp1.i.i, i32 0, i32 %call.i
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %smk_known.i.i = getelementptr inbounds %struct.smack_known, ptr %18, i32 0, i32 2
  %36 = ptrtoint ptr %smk_known.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smk_known.i.i, align 4
  %smk_known4.i.i = getelementptr inbounds %struct.smack_known, ptr %call21, i32 0, i32 2
  %38 = ptrtoint ptr %smk_known4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smk_known4.i.i, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %35, ptr noundef %37, ptr noundef %39, ptr noundef nonnull %acc.i.i, ptr noundef nonnull @.str.73) #21
  br label %smk_ipv6_check.exit

smk_ipv6_check.exit:                              ; preds = %if.end.i.i, %if.then24.smk_ipv6_check.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %call.i, %if.then24.smk_ipv6_check.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad.i) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %net.i) #18
  br label %cleanup

cleanup:                                          ; preds = %smk_ipv6_check.exit, %if.end20.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %if.end9, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i.i, %smk_ipv6_check.exit ], [ 0, %if.end20.cleanup_crit_edge ], [ %call, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_socket_sock_rcv_skb(ptr noundef %sk, ptr noundef %skb) #5 align 64 {
entry:
  %acc.i129 = alloca [8 x i8], align 8
  %nexthdr.i = alloca i8, align 1
  %_ipv6h.i = alloca %struct.ipv6hdr, align 4
  %frag_off.i = alloca i16, align 2
  %_tcph.i = alloca %struct.tcphdr, align 4
  %_udph.i = alloca %struct.udphdr, align 8
  %_dccph.i = alloca %struct.dccp_hdr, align 2
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  %net = alloca %struct.lsm_network_audit, align 4
  %sadd = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %2 = call ptr @memset(ptr %ad, i32 255, i32 36)
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %3 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_family, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %net) #18
  %5 = call ptr @memset(ptr %net, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sadd) #18
  %6 = getelementptr inbounds %struct.sockaddr_in6, ptr %sadd, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sockaddr_in6, ptr %sadd, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sockaddr_in6, ptr %sadd, i32 0, i32 3, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.sockaddr_in6, ptr %sadd, i32 0, i32 3, i32 0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sockaddr_in6, ptr %sadd, i32 0, i32 3, i32 0, i32 0, i32 3
  %11 = call ptr @memset(ptr %sadd, i32 255, i32 28)
  %12 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %4, label %entry.sw.epilog_crit_edge [
    i16 10, label %land.lhs.true
    i16 2, label %entry.sw.bb_crit_edge
  ]

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.lhs.true:                                    ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %14)
  %cmp3 = icmp eq i16 %14, 2048
  br i1 %cmp3, label %land.lhs.true.sw.bb_crit_edge, label %sw.bb27

land.lhs.true.sw.bb_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

sw.bb:                                            ; preds = %land.lhs.true.sw.bb_crit_edge, %entry.sw.bb_crit_edge
  %cmp.i = icmp eq ptr %skb, null
  br i1 %cmp.i, label %sw.bb.if.then8_crit_edge, label %lor.lhs.false.i

sw.bb.if.then8_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

lor.lhs.false.i:                                  ; preds = %sw.bb
  %secmark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %15 = ptrtoint ptr %secmark.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %secmark.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1.i = icmp eq i32 %16, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then8_crit_edge, label %smack_from_skb.exit

lor.lhs.false.i.if.then8_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

smack_from_skb.exit:                              ; preds = %lor.lhs.false.i
  %call.i = tail call ptr @smack_from_secid(i32 noundef %16) #18
  %cmp6 = icmp eq ptr %call.i, null
  br i1 %cmp6, label %smack_from_skb.exit.if.then8_crit_edge, label %smack_from_skb.exit.if.end14_crit_edge

smack_from_skb.exit.if.end14_crit_edge:           ; preds = %smack_from_skb.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

smack_from_skb.exit.if.then8_crit_edge:           ; preds = %smack_from_skb.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.then8:                                         ; preds = %smack_from_skb.exit.if.then8_crit_edge, %lor.lhs.false.i.if.then8_crit_edge, %sw.bb.if.then8_crit_edge
  %call9 = tail call fastcc ptr @smack_from_netlbl(ptr noundef %sk, i16 noundef zeroext 2, ptr noundef %skb)
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.then12, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_net_ambient to i32))
  %17 = load ptr, ptr @smack_net_ambient, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then8.if.end14_crit_edge, %smack_from_skb.exit.if.end14_crit_edge
  %skp.0 = phi ptr [ %17, %if.then12 ], [ %call9, %if.then8.if.end14_crit_edge ], [ %call.i, %smack_from_skb.exit.if.end14_crit_edge ]
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %18 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %19 = call ptr @memset(ptr %18, i32 0, i32 16)
  %20 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %ad, align 4
  %21 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sad.i.i, ptr %21, align 4
  %23 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @__func__.smack_socket_sock_rcv_skb, ptr %sad.i.i, align 4
  %24 = getelementptr inbounds i8, ptr %net, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 44)
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %26 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %net, ptr %u.i, align 4
  %family15 = getelementptr inbounds %struct.lsm_network_audit, ptr %net, i32 0, i32 2
  %27 = ptrtoint ptr %family15 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %family15, align 4
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %28 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %skb_iif, align 8
  %30 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %net, align 4
  %call19 = call i32 @ipv4_skb_to_auditdata(ptr noundef %skb, ptr noundef nonnull %ad, ptr noundef null) #18
  %smk_in = getelementptr inbounds %struct.socket_smack, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %smk_in to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smk_in, align 4
  %call20 = call i32 @smk_access(ptr noundef %skp.0, ptr noundef %32, i32 noundef 2, ptr noundef nonnull %ad) #18
  %33 = ptrtoint ptr %smk_in to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smk_in, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp.i107 = icmp slt i32 %call20, 1
  %35 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 8575135165490135039, ptr %acc.i, align 8
  br i1 %cmp.i107, label %smk_bu_note.exit, label %smk_bu_note.exit.thread

smk_bu_note.exit.thread:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call20)
  %cmp1.i108 = icmp ugt i32 %call20, 3
  %spec.store.select.i = select i1 %cmp1.i108, i32 0, i32 %call20
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %skp.0, i32 0, i32 2
  %38 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smk_known.i, align 4
  %smk_known4.i = getelementptr inbounds %struct.smack_known, ptr %34, i32 0, i32 2
  %40 = ptrtoint ptr %smk_known4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smk_known4.i, align 4
  %call.i110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %37, ptr noundef %39, ptr noundef %41, ptr noundef nonnull %acc.i, ptr noundef nonnull @.str.75) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  br label %sw.epilog

smk_bu_note.exit:                                 ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp23.not = icmp eq i32 %call20, 0
  br i1 %cmp23.not, label %smk_bu_note.exit.sw.epilog_crit_edge, label %if.then25

smk_bu_note.exit.sw.epilog_crit_edge:             ; preds = %smk_bu_note.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then25:                                        ; preds = %smk_bu_note.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @netlbl_skbuff_err(ptr noundef %skb, i16 noundef zeroext 2, i32 noundef %call20, i32 noundef 0) #18
  br label %sw.epilog

sw.bb27:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr.i) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ipv6h.i) #18
  %42 = call ptr @memset(ptr %_ipv6h.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #18
  %43 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !347
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph.i) #18
  %44 = call ptr @memset(ptr %_tcph.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_udph.i) #18
  %45 = ptrtoint ptr %_udph.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 -1, ptr %_udph.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_dccph.i) #18
  %46 = call ptr @memset(ptr %_dccph.i, i32 255, i32 12)
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %6, align 2
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %48 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %50 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %51 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %54 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %56 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_len.i.i.i, align 8
  %58 = add i32 %57, %sub.ptr.sub.i.i
  %sub.i4.i.i = sub i32 %55, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 40
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !345

if.end.i.i.i:                                     ; preds = %sw.bb27
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.smk_skb_to_addr_ipv6.exit.thread153_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.smk_skb_to_addr_ipv6.exit.thread153_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit.thread153

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i, ptr noundef nonnull %_ipv6h.i, i32 noundef 40) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.smk_skb_to_addr_ipv6.exit.thread153_crit_edge, label %lor.lhs.false.i.i.i.if.end.i113_crit_edge

lor.lhs.false.i.i.i.if.end.i113_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i113

lor.lhs.false.i.i.i.smk_skb_to_addr_ipv6.exit.thread153_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit.thread153

skb_header_pointer.exit.i:                        ; preds = %sw.bb27
  %add.ptr.i.i61.i = getelementptr i8, ptr %53, i32 %sub.ptr.sub.i.i
  %cmp.i112 = icmp eq ptr %add.ptr.i.i61.i, null
  br i1 %cmp.i112, label %skb_header_pointer.exit.i.smk_skb_to_addr_ipv6.exit.thread153_crit_edge, label %skb_header_pointer.exit.i.if.end.i113_crit_edge

skb_header_pointer.exit.i.if.end.i113_crit_edge:  ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i113

skb_header_pointer.exit.i.smk_skb_to_addr_ipv6.exit.thread153_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit.thread153

if.end.i113:                                      ; preds = %skb_header_pointer.exit.i.if.end.i113_crit_edge, %lor.lhs.false.i.i.i.if.end.i113_crit_edge
  %retval.0.i.i112.i = phi ptr [ %add.ptr.i.i61.i, %skb_header_pointer.exit.i.if.end.i113_crit_edge ], [ %_ipv6h.i, %lor.lhs.false.i.i.i.if.end.i113_crit_edge ]
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i112.i, i32 0, i32 5
  %59 = call ptr @memcpy(ptr %7, ptr %saddr.i, i32 16)
  %nexthdr2.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i112.i, i32 0, i32 3
  %60 = ptrtoint ptr %nexthdr2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %nexthdr2.i, align 2
  %62 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %nexthdr.i, align 1
  %add.i = add i32 %sub.ptr.sub.i.i, 40
  %call3.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %add.i, ptr noundef nonnull %nexthdr.i, ptr noundef nonnull %frag_off.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i113.smk_skb_to_addr_ipv6.exit.thread153_crit_edge, label %if.end6.i

if.end.i113.smk_skb_to_addr_ipv6.exit.thread153_crit_edge: ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit.thread153

if.end6.i:                                        ; preds = %if.end.i113
  %63 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nexthdr.i, align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %64, label %if.end6.i.smk_skb_to_addr_ipv6.exit_crit_edge [
    i8 6, label %sw.bb.i
    i8 17, label %if.end6.i.sw.bb13.i_crit_edge
    i8 -120, label %if.end6.i.sw.bb13.i_crit_edge167
    i8 33, label %sw.bb21.i
  ]

if.end6.i.sw.bb13.i_crit_edge167:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb13.i

if.end6.i.sw.bb13.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb13.i

if.end6.i.smk_skb_to_addr_ipv6.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit

sw.bb.i:                                          ; preds = %if.end6.i
  %66 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i.i.i, align 4
  %68 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i.i, align 8
  %70 = add i32 %call3.i, %69
  %sub.i4.i64.i = sub i32 %67, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i64.i)
  %cmp.not.i.i65.i = icmp slt i32 %sub.i4.i64.i, 20
  br i1 %cmp.not.i.i65.i, label %if.end.i.i70.i, label %skb_header_pointer.exit76.i, !prof !345

if.end.i.i70.i:                                   ; preds = %sw.bb.i
  %tobool2.not.i.i69.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i69.i, label %if.end.i.i70.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, label %lor.lhs.false.i.i74.i

if.end.i.i70.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge: ; preds = %if.end.i.i70.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit.thread

lor.lhs.false.i.i74.i:                            ; preds = %if.end.i.i70.i
  %call.i.i71.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %call3.i, ptr noundef nonnull %_tcph.i, i32 noundef 20) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71.i)
  %cmp3.i.i72.i = icmp slt i32 %call.i.i71.i, 0
  br i1 %cmp3.i.i72.i, label %lor.lhs.false.i.i74.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, label %lor.lhs.false.i.i74.i.cleanup.sink.split.i_crit_edge

lor.lhs.false.i.i74.i.cleanup.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i.i74.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

lor.lhs.false.i.i74.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i74.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit.thread

skb_header_pointer.exit76.i:                      ; preds = %sw.bb.i
  %71 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i67.i = getelementptr i8, ptr %72, i32 %call3.i
  %cmp8.not.i = icmp eq ptr %add.ptr.i.i67.i, null
  br i1 %cmp8.not.i, label %skb_header_pointer.exit76.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, label %skb_header_pointer.exit76.i.cleanup.sink.split.i_crit_edge

skb_header_pointer.exit76.i.cleanup.sink.split.i_crit_edge: ; preds = %skb_header_pointer.exit76.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

skb_header_pointer.exit76.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit76.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit.thread

sw.bb13.i:                                        ; preds = %if.end6.i.sw.bb13.i_crit_edge, %if.end6.i.sw.bb13.i_crit_edge167
  %73 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i.i.i, align 4
  %75 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %data_len.i.i.i, align 8
  %77 = add i32 %call3.i, %76
  %sub.i4.i79.i = sub i32 %74, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i79.i)
  %cmp.not.i.i80.i = icmp slt i32 %sub.i4.i79.i, 8
  br i1 %cmp.not.i.i80.i, label %if.end.i.i85.i, label %skb_header_pointer.exit91.i, !prof !345

if.end.i.i85.i:                                   ; preds = %sw.bb13.i
  %tobool2.not.i.i84.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i84.i, label %if.end.i.i85.i.smk_skb_to_addr_ipv6.exit_crit_edge, label %lor.lhs.false.i.i89.i

if.end.i.i85.i.smk_skb_to_addr_ipv6.exit_crit_edge: ; preds = %if.end.i.i85.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit

lor.lhs.false.i.i89.i:                            ; preds = %if.end.i.i85.i
  %call.i.i86.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %call3.i, ptr noundef nonnull %_udph.i, i32 noundef 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86.i)
  %cmp3.i.i87.i = icmp slt i32 %call.i.i86.i, 0
  br i1 %cmp3.i.i87.i, label %lor.lhs.false.i.i89.i.smk_skb_to_addr_ipv6.exit_crit_edge, label %lor.lhs.false.i.i89.i.cleanup.sink.split.i_crit_edge

lor.lhs.false.i.i89.i.cleanup.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i.i89.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

lor.lhs.false.i.i89.i.smk_skb_to_addr_ipv6.exit_crit_edge: ; preds = %lor.lhs.false.i.i89.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit

skb_header_pointer.exit91.i:                      ; preds = %sw.bb13.i
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i82.i = getelementptr i8, ptr %79, i32 %call3.i
  %cmp15.not.i = icmp eq ptr %add.ptr.i.i82.i, null
  br i1 %cmp15.not.i, label %skb_header_pointer.exit91.i.smk_skb_to_addr_ipv6.exit_crit_edge, label %skb_header_pointer.exit91.i.cleanup.sink.split.i_crit_edge

skb_header_pointer.exit91.i.cleanup.sink.split.i_crit_edge: ; preds = %skb_header_pointer.exit91.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

skb_header_pointer.exit91.i.smk_skb_to_addr_ipv6.exit_crit_edge: ; preds = %skb_header_pointer.exit91.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit

sw.bb21.i:                                        ; preds = %if.end6.i
  %80 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i.i.i, align 4
  %82 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len.i.i.i, align 8
  %84 = add i32 %call3.i, %83
  %sub.i4.i94.i = sub i32 %81, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i4.i94.i)
  %cmp.not.i.i95.i = icmp slt i32 %sub.i4.i94.i, 12
  br i1 %cmp.not.i.i95.i, label %if.end.i.i100.i, label %skb_header_pointer.exit106.i, !prof !345

if.end.i.i100.i:                                  ; preds = %sw.bb21.i
  %tobool2.not.i.i99.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i99.i, label %if.end.i.i100.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, label %lor.lhs.false.i.i104.i

if.end.i.i100.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge: ; preds = %if.end.i.i100.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit.thread

lor.lhs.false.i.i104.i:                           ; preds = %if.end.i.i100.i
  %call.i.i101.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %call3.i, ptr noundef nonnull %_dccph.i, i32 noundef 12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.i)
  %cmp3.i.i102.i = icmp slt i32 %call.i.i101.i, 0
  br i1 %cmp3.i.i102.i, label %lor.lhs.false.i.i104.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, label %lor.lhs.false.i.i104.i.cleanup.sink.split.i_crit_edge

lor.lhs.false.i.i104.i.cleanup.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i.i104.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

lor.lhs.false.i.i104.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i104.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit.thread

skb_header_pointer.exit106.i:                     ; preds = %sw.bb21.i
  %85 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i97.i = getelementptr i8, ptr %86, i32 %call3.i
  %cmp23.not.i = icmp eq ptr %add.ptr.i.i97.i, null
  br i1 %cmp23.not.i, label %skb_header_pointer.exit106.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, label %skb_header_pointer.exit106.i.cleanup.sink.split.i_crit_edge

skb_header_pointer.exit106.i.cleanup.sink.split.i_crit_edge: ; preds = %skb_header_pointer.exit106.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

skb_header_pointer.exit106.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit106.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_skb_to_addr_ipv6.exit.thread

cleanup.sink.split.i:                             ; preds = %skb_header_pointer.exit106.i.cleanup.sink.split.i_crit_edge, %lor.lhs.false.i.i104.i.cleanup.sink.split.i_crit_edge, %skb_header_pointer.exit91.i.cleanup.sink.split.i_crit_edge, %lor.lhs.false.i.i89.i.cleanup.sink.split.i_crit_edge, %skb_header_pointer.exit76.i.cleanup.sink.split.i_crit_edge, %lor.lhs.false.i.i74.i.cleanup.sink.split.i_crit_edge
  %.sink.in.i = phi ptr [ %add.ptr.i.i67.i, %skb_header_pointer.exit76.i.cleanup.sink.split.i_crit_edge ], [ %_tcph.i, %lor.lhs.false.i.i74.i.cleanup.sink.split.i_crit_edge ], [ %add.ptr.i.i82.i, %skb_header_pointer.exit91.i.cleanup.sink.split.i_crit_edge ], [ %_udph.i, %lor.lhs.false.i.i89.i.cleanup.sink.split.i_crit_edge ], [ %add.ptr.i.i97.i, %skb_header_pointer.exit106.i.cleanup.sink.split.i_crit_edge ], [ %_dccph.i, %lor.lhs.false.i.i104.i.cleanup.sink.split.i_crit_edge ]
  %87 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %.sink.i = load i16, ptr %.sink.in.i, align 2
  %88 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %.sink.i, ptr %6, align 2
  br label %smk_skb_to_addr_ipv6.exit

smk_skb_to_addr_ipv6.exit.thread:                 ; preds = %skb_header_pointer.exit106.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, %lor.lhs.false.i.i104.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, %if.end.i.i100.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, %skb_header_pointer.exit76.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, %lor.lhs.false.i.i74.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge, %if.end.i.i70.i.smk_skb_to_addr_ipv6.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_dccph.i) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udph.i) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ipv6h.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #18
  br label %if.end41

smk_skb_to_addr_ipv6.exit.thread153:              ; preds = %if.end.i113.smk_skb_to_addr_ipv6.exit.thread153_crit_edge, %skb_header_pointer.exit.i.smk_skb_to_addr_ipv6.exit.thread153_crit_edge, %lor.lhs.false.i.i.i.smk_skb_to_addr_ipv6.exit.thread153_crit_edge, %if.end.i.i.i.smk_skb_to_addr_ipv6.exit.thread153_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_dccph.i) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udph.i) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ipv6h.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #18
  br label %sw.epilog

smk_skb_to_addr_ipv6.exit:                        ; preds = %cleanup.sink.split.i, %skb_header_pointer.exit91.i.smk_skb_to_addr_ipv6.exit_crit_edge, %lor.lhs.false.i.i89.i.smk_skb_to_addr_ipv6.exit_crit_edge, %if.end.i.i85.i.smk_skb_to_addr_ipv6.exit_crit_edge, %if.end6.i.smk_skb_to_addr_ipv6.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_dccph.i) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udph.i) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ipv6h.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #18
  %89 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %64, label %smk_skb_to_addr_ipv6.exit.sw.epilog_crit_edge [
    i8 17, label %smk_skb_to_addr_ipv6.exit.if.end41_crit_edge
    i8 -120, label %smk_skb_to_addr_ipv6.exit.if.end41_crit_edge168
    i8 6, label %smk_skb_to_addr_ipv6.exit.if.end41_crit_edge169
    i8 33, label %smk_skb_to_addr_ipv6.exit.if.end41_crit_edge170
  ]

smk_skb_to_addr_ipv6.exit.if.end41_crit_edge170:  ; preds = %smk_skb_to_addr_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

smk_skb_to_addr_ipv6.exit.if.end41_crit_edge169:  ; preds = %smk_skb_to_addr_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

smk_skb_to_addr_ipv6.exit.if.end41_crit_edge168:  ; preds = %smk_skb_to_addr_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

smk_skb_to_addr_ipv6.exit.if.end41_crit_edge:     ; preds = %smk_skb_to_addr_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

smk_skb_to_addr_ipv6.exit.sw.epilog_crit_edge:    ; preds = %smk_skb_to_addr_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end41:                                         ; preds = %smk_skb_to_addr_ipv6.exit.if.end41_crit_edge, %smk_skb_to_addr_ipv6.exit.if.end41_crit_edge168, %smk_skb_to_addr_ipv6.exit.if.end41_crit_edge169, %smk_skb_to_addr_ipv6.exit.if.end41_crit_edge170, %smk_skb_to_addr_ipv6.exit.thread
  %cmp.i115 = icmp eq ptr %skb, null
  br i1 %cmp.i115, label %if.end41.if.then45_crit_edge, label %lor.lhs.false.i118

if.end41.if.then45_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

lor.lhs.false.i118:                               ; preds = %if.end41
  %secmark.i116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %90 = ptrtoint ptr %secmark.i116 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %secmark.i116, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp1.i117 = icmp eq i32 %91, 0
  br i1 %cmp1.i117, label %lor.lhs.false.i118.if.then45_crit_edge, label %smack_from_skb.exit122

lor.lhs.false.i118.if.then45_crit_edge:           ; preds = %lor.lhs.false.i118
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

smack_from_skb.exit122:                           ; preds = %lor.lhs.false.i118
  %call.i119 = call ptr @smack_from_secid(i32 noundef %91) #18
  %cmp43 = icmp eq ptr %call.i119, null
  br i1 %cmp43, label %smack_from_skb.exit122.if.then45_crit_edge, label %smack_from_skb.exit122.if.end54_crit_edge

smack_from_skb.exit122.if.end54_crit_edge:        ; preds = %smack_from_skb.exit122
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

smack_from_skb.exit122.if.then45_crit_edge:       ; preds = %smack_from_skb.exit122
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

if.then45:                                        ; preds = %smack_from_skb.exit122.if.then45_crit_edge, %lor.lhs.false.i118.if.then45_crit_edge, %if.end41.if.then45_crit_edge
  %92 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.i124 = icmp eq i32 %93, 0
  br i1 %cmp.i124, label %land.lhs.true.i, label %if.then45.if.end48_crit_edge

if.then45.if.end48_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

land.lhs.true.i:                                  ; preds = %if.then45
  %94 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp3.i = icmp eq i32 %95, 0
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end48_crit_edge

land.lhs.true.i.if.end48_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %96 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp6.i = icmp eq i32 %97, 0
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.if.end48_crit_edge

land.lhs.true4.i.if.end48_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %98 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp9.i = icmp eq i16 %99, 0
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true7.i.if.end48_crit_edge

land.lhs.true7.i.if.end48_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

land.lhs.true11.i:                                ; preds = %land.lhs.true7.i
  %arrayidx12.i = getelementptr inbounds i16, ptr %7, i32 7
  %100 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx12.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %101)
  %cmp14.i = icmp eq i16 %101, 1
  br i1 %cmp14.i, label %land.lhs.true11.i.sw.epilog_crit_edge, label %land.lhs.true11.i.if.end48_crit_edge

land.lhs.true11.i.if.end48_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

land.lhs.true11.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end48:                                         ; preds = %land.lhs.true11.i.if.end48_crit_edge, %land.lhs.true7.i.if.end48_crit_edge, %land.lhs.true4.i.if.end48_crit_edge, %land.lhs.true.i.if.end48_crit_edge, %if.then45.if.end48_crit_edge
  %call49 = call fastcc ptr @smack_ipv6host_label(ptr noundef nonnull %sadd)
  %cmp50 = icmp eq ptr %call49, null
  br i1 %cmp50, label %if.then52, label %if.end48.if.end54_crit_edge

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_net_ambient to i32))
  %102 = load ptr, ptr @smack_net_ambient, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end48.if.end54_crit_edge, %smack_from_skb.exit122.if.end54_crit_edge
  %skp.1 = phi ptr [ %102, %if.then52 ], [ %call49, %if.end48.if.end54_crit_edge ], [ %call.i119, %smack_from_skb.exit122.if.end54_crit_edge ]
  %sad.i.i127 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %103 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %104 = call ptr @memset(ptr %103, i32 0, i32 16)
  %105 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 2, ptr %ad, align 4
  %106 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %sad.i.i127, ptr %106, align 4
  %108 = ptrtoint ptr %sad.i.i127 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @__func__.smack_socket_sock_rcv_skb, ptr %sad.i.i127, align 4
  %109 = getelementptr inbounds i8, ptr %net, i32 4
  %110 = call ptr @memset(ptr %109, i32 0, i32 44)
  %u.i128 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %111 = ptrtoint ptr %u.i128 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %net, ptr %u.i128, align 4
  %family57 = getelementptr inbounds %struct.lsm_network_audit, ptr %net, i32 0, i32 2
  %112 = ptrtoint ptr %family57 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 10, ptr %family57, align 4
  %skb_iif58 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %113 = ptrtoint ptr %skb_iif58 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %skb_iif58, align 8
  %115 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %net, align 4
  %call63 = call i32 @ipv6_skb_to_auditdata(ptr noundef %skb, ptr noundef nonnull %ad, ptr noundef null) #18
  %smk_in64 = getelementptr inbounds %struct.socket_smack, ptr %1, i32 0, i32 1
  %116 = ptrtoint ptr %smk_in64 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %smk_in64, align 4
  %call65 = call i32 @smk_access(ptr noundef %skp.1, ptr noundef %117, i32 noundef 2, ptr noundef nonnull %ad) #18
  %118 = ptrtoint ptr %smk_in64 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %smk_in64, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i129) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call65)
  %cmp.i130 = icmp slt i32 %call65, 1
  %120 = ptrtoint ptr %acc.i129 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 8575135165490135039, ptr %acc.i129, align 8
  br i1 %cmp.i130, label %smk_bu_note.exit140, label %smk_bu_note.exit140.thread

smk_bu_note.exit140.thread:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call65)
  %cmp1.i131 = icmp ugt i32 %call65, 3
  %spec.store.select.i132 = select i1 %cmp1.i131, i32 0, i32 %call65
  %arrayidx.i135 = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i132
  %121 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i135, align 4
  %smk_known.i136 = getelementptr inbounds %struct.smack_known, ptr %skp.1, i32 0, i32 2
  %123 = ptrtoint ptr %smk_known.i136 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %smk_known.i136, align 4
  %smk_known4.i137 = getelementptr inbounds %struct.smack_known, ptr %119, i32 0, i32 2
  %125 = ptrtoint ptr %smk_known4.i137 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %smk_known4.i137, align 4
  %call.i138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %122, ptr noundef %124, ptr noundef %126, ptr noundef nonnull %acc.i129, ptr noundef nonnull @.str.76) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i129) #18
  br label %sw.epilog

smk_bu_note.exit140:                              ; preds = %if.end54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i129) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp68.not = icmp eq i32 %call65, 0
  br i1 %cmp68.not, label %smk_bu_note.exit140.sw.epilog_crit_edge, label %if.then70

smk_bu_note.exit140.sw.epilog_crit_edge:          ; preds = %smk_bu_note.exit140
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then70:                                        ; preds = %smk_bu_note.exit140
  call void @__sanitizer_cov_trace_pc() #20
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, ptr noundef %cb.i) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then70, %smk_bu_note.exit140.sw.epilog_crit_edge, %smk_bu_note.exit140.thread, %land.lhs.true11.i.sw.epilog_crit_edge, %smk_skb_to_addr_ipv6.exit.sw.epilog_crit_edge, %smk_skb_to_addr_ipv6.exit.thread153, %if.then25, %smk_bu_note.exit.sw.epilog_crit_edge, %smk_bu_note.exit.thread, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call65, %if.then70 ], [ 0, %smk_bu_note.exit140.sw.epilog_crit_edge ], [ %call20, %if.then25 ], [ 0, %smk_bu_note.exit.sw.epilog_crit_edge ], [ 0, %smk_skb_to_addr_ipv6.exit.sw.epilog_crit_edge ], [ 0, %smk_bu_note.exit.thread ], [ 0, %smk_skb_to_addr_ipv6.exit.thread153 ], [ 0, %smk_bu_note.exit140.thread ], [ 0, %land.lhs.true11.i.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sadd) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %net) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_socket_getpeersec_stream(ptr nocapture noundef readonly %sock, ptr noundef %optval, ptr noundef %optlen, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %sk_security = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_security, align 8
  %smk_packet = getelementptr inbounds %struct.socket_smack, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %smk_packet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smk_packet, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smk_known, align 4
  %call = tail call i32 @strlen(ptr noundef %7) #24
  %add = add i32 %call, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %slen.0 = phi i32 [ %add, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %rcp.0 = phi ptr [ %7, %if.then ], [ @.str.77, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %slen.0, i32 %len)
  %cmp2 = icmp ugt i32 %slen.0, %len
  br i1 %cmp2, label %if.end.if.end8_crit_edge, label %if.end8.i.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end8.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slen.0)
  %cmp9.i.i = icmp slt i32 %slen.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.end8_crit_edge, label %if.then27.i.i, !prof !343

land.rhs16.i.i.if.end8_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.78, i32 noundef 230, i32 noundef 9, ptr noundef null) #18
  br label %if.end8

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %rcp.0, i32 noundef %slen.0, i1 noundef zeroext true) #18
  tail call void @__might_fault(ptr noundef nonnull @.str.80, i32 noundef 174) #18
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %slen.0, i32 -1226833920) #26, !srcloc !349
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rcp.0, i32 noundef %slen.0) #18
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef %rcp.0, i32 noundef %slen.0) #18
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %slen.0, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %slen.0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp5.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %cmp5.not, i32 0, i32 -14
  br label %if.end8

if.end8:                                          ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %rc.0 = phi i32 [ -34, %if.end.if.end8_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end8_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 4021) #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !350
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #18, !srcloc !351
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !352
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %slen.0, i32 -1226833921) #18, !srcloc !353
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #18, !srcloc !351
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11.not = icmp eq i32 %12, 0
  %spec.select18 = select i1 %cmp11.not, i32 %rc.0, i32 -14
  ret i32 %spec.select18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_socket_getpeersec_dgram(ptr noundef readonly %sock, ptr noundef %skb, ptr nocapture noundef writeonly %secid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %skb, null
  br i1 %cmp.not, label %entry.land.lhs.true_crit_edge, label %if.then

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %1, label %if.then.land.lhs.true_crit_edge [
    i16 2048, label %if.then.lor.lhs.false.i_crit_edge
    i16 -31011, label %if.then.lor.lhs.false.i70_crit_edge
  ]

if.then.lor.lhs.false.i70_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.i70

if.then.lor.lhs.false.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.i

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %cmp13.not = icmp eq ptr %sock, null
  br i1 %cmp13.not, label %land.lhs.true.sw.epilog.thread_crit_edge, label %if.end18

land.lhs.true.sw.epilog.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.thread

if.end18:                                         ; preds = %land.lhs.true
  %sk16 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %3 = ptrtoint ptr %sk16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk16, align 16
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %skc_family, align 8
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %6, label %if.end18.sw.epilog.thread_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb20
    i16 10, label %sw.bb36
  ]

if.end18.sw.epilog.thread_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %sk16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk16, align 16
  %sk_security = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 73
  %10 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_security, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end18
  br i1 %cmp.not, label %sw.bb20.if.then26_crit_edge, label %sw.bb20.lor.lhs.false.i_crit_edge

sw.bb20.lor.lhs.false.i_crit_edge:                ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.i

sw.bb20.if.then26_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then26

lor.lhs.false.i:                                  ; preds = %sw.bb20.lor.lhs.false.i_crit_edge, %if.then.lor.lhs.false.i_crit_edge
  %secmark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %14 = ptrtoint ptr %secmark.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %secmark.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.i = icmp eq i32 %15, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.if.end23_crit_edge, label %smack_from_skb.exit

lor.lhs.false.i.if.end23_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

smack_from_skb.exit:                              ; preds = %lor.lhs.false.i
  %call.i = tail call ptr @smack_from_secid(i32 noundef %15) #18
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %smack_from_skb.exit.if.end23_crit_edge, label %smack_from_skb.exit.sw.epilog_crit_edge

smack_from_skb.exit.sw.epilog_crit_edge:          ; preds = %smack_from_skb.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

smack_from_skb.exit.if.end23_crit_edge:           ; preds = %smack_from_skb.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.end23:                                         ; preds = %smack_from_skb.exit.if.end23_crit_edge, %lor.lhs.false.i.if.end23_crit_edge
  %cmp24.not = icmp eq ptr %sock, null
  br i1 %cmp24.not, label %if.end23.if.end28_crit_edge, label %if.end23.if.then26_crit_edge

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then26:                                        ; preds = %if.end23.if.then26_crit_edge, %sw.bb20.if.then26_crit_edge
  %sk27 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %16 = ptrtoint ptr %sk27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk27, align 16
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %sk.0 = phi ptr [ %17, %if.then26 ], [ null, %if.end23.if.end28_crit_edge ]
  %call30 = tail call fastcc ptr @smack_from_netlbl(ptr noundef %sk.0, i16 noundef zeroext 2, ptr noundef %skb)
  %cmp31.not = icmp eq ptr %call30, null
  br i1 %cmp31.not, label %if.end28.sw.epilog.thread_crit_edge, label %if.end28.sw.epilog_crit_edge

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end28.sw.epilog.thread_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.thread

sw.bb36:                                          ; preds = %if.end18
  br i1 %cmp.not, label %sw.bb36.sw.epilog.thread_crit_edge, label %sw.bb36.lor.lhs.false.i70_crit_edge

sw.bb36.lor.lhs.false.i70_crit_edge:              ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.i70

sw.bb36.sw.epilog.thread_crit_edge:               ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.thread

lor.lhs.false.i70:                                ; preds = %sw.bb36.lor.lhs.false.i70_crit_edge, %if.then.lor.lhs.false.i70_crit_edge
  %secmark.i68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %18 = ptrtoint ptr %secmark.i68 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %secmark.i68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.i69 = icmp eq i32 %19, 0
  br i1 %cmp1.i69, label %lor.lhs.false.i70.sw.epilog.thread_crit_edge, label %smack_from_skb.exit74

lor.lhs.false.i70.sw.epilog.thread_crit_edge:     ; preds = %lor.lhs.false.i70
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.thread

smack_from_skb.exit74:                            ; preds = %lor.lhs.false.i70
  %call.i71 = tail call ptr @smack_from_secid(i32 noundef %19) #18
  %tobool38.not = icmp eq ptr %call.i71, null
  br i1 %tobool38.not, label %smack_from_skb.exit74.sw.epilog.thread_crit_edge, label %smack_from_skb.exit74.sw.epilog_crit_edge

smack_from_skb.exit74.sw.epilog_crit_edge:        ; preds = %smack_from_skb.exit74
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

smack_from_skb.exit74.sw.epilog.thread_crit_edge: ; preds = %smack_from_skb.exit74
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %smack_from_skb.exit74.sw.epilog.thread_crit_edge, %lor.lhs.false.i70.sw.epilog.thread_crit_edge, %sw.bb36.sw.epilog.thread_crit_edge, %if.end28.sw.epilog.thread_crit_edge, %if.end18.sw.epilog.thread_crit_edge, %land.lhs.true.sw.epilog.thread_crit_edge
  %20 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %secid, align 4
  br label %23

sw.epilog:                                        ; preds = %smack_from_skb.exit74.sw.epilog_crit_edge, %if.end28.sw.epilog_crit_edge, %smack_from_skb.exit.sw.epilog_crit_edge, %sw.bb
  %call.i71.sink = phi ptr [ %13, %sw.bb ], [ %call.i, %smack_from_skb.exit.sw.epilog_crit_edge ], [ %call30, %if.end28.sw.epilog_crit_edge ], [ %call.i71, %smack_from_skb.exit74.sw.epilog_crit_edge ]
  %smk_secid40 = getelementptr inbounds %struct.smack_known, ptr %call.i71.sink, i32 0, i32 3
  %21 = ptrtoint ptr %smk_secid40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %s.0 = load i32, ptr %smk_secid40, align 4
  %22 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %s.0, ptr %secid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s.0)
  %cmp42 = icmp eq i32 %s.0, 0
  br i1 %cmp42, label %sw.epilog._crit_edge, label %sw.epilog._crit_edge89

sw.epilog._crit_edge89:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %24

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %23

23:                                               ; preds = %sw.epilog._crit_edge, %sw.epilog.thread
  br label %24

24:                                               ; preds = %23, %sw.epilog._crit_edge89
  %25 = phi i32 [ -22, %23 ], [ 0, %sw.epilog._crit_edge89 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_sk_alloc_security(ptr nocapture noundef writeonly %sk, i32 noundef %family, i32 noundef %gfp_flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !343

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 7
  %11 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef %or.i, i32 noundef 16) #23
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #20
  %13 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, ptr %10, ptr @smack_known_web, !prof !343
  %19 = getelementptr inbounds %struct.socket_smack, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select, ptr %19, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select, ptr %call7.i.i, align 8
  %smk_packet = getelementptr inbounds %struct.socket_smack, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %smk_packet to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %smk_packet, align 8
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %23 = ptrtoint ptr %sk_security to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %sk_security, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_sk_free_security(ptr nocapture noundef readonly %sk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  tail call void @kfree(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smack_sock_graft(ptr noundef readonly %sk, ptr nocapture noundef readnone %parent) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %cmp = icmp eq ptr %sk, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %11 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %skc_family, align 8
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %12, label %lor.lhs.false.cleanup_crit_edge [
    i16 2, label %lor.lhs.false.if.end_crit_edge
    i16 10, label %lor.lhs.false.if.end_crit_edge14
  ]

lor.lhs.false.if.end_crit_edge14:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge14
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %14 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_security, align 8
  %smk_in = getelementptr inbounds %struct.socket_smack, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %smk_in to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %smk_in, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %10, ptr %15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inet_conn_request(ptr noundef %sk, ptr noundef %skb, ptr noundef %req) #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  %net = alloca %struct.lsm_network_audit, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_security, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %4 = call ptr @memset(ptr %ad, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %net) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp = icmp eq i16 %1, 10
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then:                                          ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %6)
  %cmp3 = icmp eq i16 %6, 2048
  br i1 %cmp3, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %family.0 = phi i16 [ %1, %entry.if.end6_crit_edge ], [ 2, %if.then.if.end6_crit_edge ]
  %cmp.i = icmp eq ptr %skb, null
  br i1 %cmp.i, label %if.end6.if.then9_crit_edge, label %lor.lhs.false.i

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then9

lor.lhs.false.i:                                  ; preds = %if.end6
  %secmark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %7 = ptrtoint ptr %secmark.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %secmark.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.i = icmp eq i32 %8, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then9_crit_edge, label %smack_from_skb.exit

lor.lhs.false.i.if.then9_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then9

smack_from_skb.exit:                              ; preds = %lor.lhs.false.i
  %call.i64 = tail call ptr @smack_from_secid(i32 noundef %8) #18
  %cmp7 = icmp eq ptr %call.i64, null
  br i1 %cmp7, label %smack_from_skb.exit.if.then9_crit_edge, label %smack_from_skb.exit.if.end15_crit_edge

smack_from_skb.exit.if.end15_crit_edge:           ; preds = %smack_from_skb.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

smack_from_skb.exit.if.then9_crit_edge:           ; preds = %smack_from_skb.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then9

if.then9:                                         ; preds = %smack_from_skb.exit.if.then9_crit_edge, %lor.lhs.false.i.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %call10 = tail call fastcc ptr @smack_from_netlbl(ptr noundef %sk, i16 noundef zeroext %family.0, ptr noundef %skb)
  %cmp11 = icmp eq ptr %call10, null
  %spec.store.select = select i1 %cmp11, ptr @smack_known_huh, ptr %call10
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %smack_from_skb.exit.if.end15_crit_edge
  %skp.0 = phi ptr [ %spec.store.select, %if.then9 ], [ %call.i64, %smack_from_skb.exit.if.end15_crit_edge ]
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %9 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %10 = call ptr @memset(ptr %9, i32 0, i32 16)
  %11 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %ad, align 4
  %12 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sad.i.i, ptr %12, align 4
  %14 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @__func__.smack_inet_conn_request, ptr %sad.i.i, align 4
  %15 = getelementptr inbounds i8, ptr %net, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 44)
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %17 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %net, ptr %u.i, align 4
  %family16 = getelementptr inbounds %struct.lsm_network_audit, ptr %net, i32 0, i32 2
  %18 = ptrtoint ptr %family16 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %family.0, ptr %family16, align 4
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %19 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %skb_iif, align 8
  %21 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %net, align 4
  %call20 = call i32 @ipv4_skb_to_auditdata(ptr noundef %skb, ptr noundef nonnull %ad, ptr noundef null) #18
  %smk_in = getelementptr inbounds %struct.socket_smack, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %smk_in to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smk_in, align 4
  %call21 = call i32 @smk_access(ptr noundef %skp.0, ptr noundef %23, i32 noundef 2, ptr noundef nonnull %ad) #18
  %24 = ptrtoint ptr %smk_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smk_in, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp.i65 = icmp slt i32 %call21, 1
  %26 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 8575135165490135039, ptr %acc.i, align 8
  br i1 %cmp.i65, label %smk_bu_note.exit, label %smk_bu_note.exit.thread

smk_bu_note.exit.thread:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call21)
  %cmp1.i66 = icmp ugt i32 %call21, 3
  %spec.store.select.i = select i1 %cmp1.i66, i32 0, i32 %call21
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %skp.0, i32 0, i32 2
  %29 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smk_known.i, align 4
  %smk_known4.i = getelementptr inbounds %struct.smack_known, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %smk_known4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smk_known4.i, align 4
  %call.i68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %28, ptr noundef %30, ptr noundef %32, ptr noundef nonnull %acc.i, ptr noundef nonnull @.str.81) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  br label %if.end27

smk_bu_note.exit:                                 ; preds = %if.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp24.not = icmp eq i32 %call21, 0
  br i1 %cmp24.not, label %smk_bu_note.exit.if.end27_crit_edge, label %smk_bu_note.exit.cleanup_crit_edge

smk_bu_note.exit.cleanup_crit_edge:               ; preds = %smk_bu_note.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

smk_bu_note.exit.if.end27_crit_edge:              ; preds = %smk_bu_note.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.end27:                                         ; preds = %smk_bu_note.exit.if.end27_crit_edge, %smk_bu_note.exit.thread
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %skp.0, i32 0, i32 3
  %33 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %smk_secid, align 4
  %peer_secid = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 11
  %35 = ptrtoint ptr %peer_secid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %peer_secid, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %39 to i32
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %saddr, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end27.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end27.rcu_read_lock.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end27
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end27.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i70 = icmp eq i32 %41, 0
  br i1 %cmp.i70, label %rcu_read_lock.exit.smack_ipv4host_label.exit_crit_edge, label %do.body.i

rcu_read_lock.exit.smack_ipv4host_label.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %smack_ipv4host_label.exit

do.body.i:                                        ; preds = %rcu_read_lock.exit
  %call.i71 = call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i74, label %do.body.i.for.cond.i.preheader_crit_edge

do.body.i.for.cond.i.preheader_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.preheader

land.lhs.true.i74:                                ; preds = %do.body.i
  %call1.i73 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool2.not.i = icmp eq i32 %call1.i73, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i74.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i74.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i74
  %.b32.i = load i1, ptr @smack_ipv4host_label.__warned, align 1
  br i1 %.b32.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then5.i

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.preheader

if.then5.i:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @smack_ipv4host_label.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2308, ptr noundef nonnull @.str.55) #18
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then5.i, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i74.for.cond.i.preheader_crit_edge, %do.body.i.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %snp.0.in.i = phi ptr [ %snp.0.i, %for.body.i.for.cond.i_crit_edge ], [ @smk_net4addr_list, %for.cond.i.preheader ]
  %46 = ptrtoint ptr %snp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %snp.0.i = load volatile ptr, ptr %snp.0.in.i, align 4
  %cmp11.not.i = icmp eq ptr %snp.0.i, @smk_net4addr_list
  br i1 %cmp11.not.i, label %for.cond.i.smack_ipv4host_label.exit_crit_edge, label %for.body.i

for.cond.i.smack_ipv4host_label.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smack_ipv4host_label.exit

for.body.i:                                       ; preds = %for.cond.i
  %smk_host.i = getelementptr inbounds %struct.smk_net4addr, ptr %snp.0.i, i32 0, i32 1
  %47 = ptrtoint ptr %smk_host.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %smk_host.i, align 4
  %smk_mask.i = getelementptr inbounds %struct.smk_net4addr, ptr %snp.0.i, i32 0, i32 2
  %49 = ptrtoint ptr %smk_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %smk_mask.i, align 4
  %and.i = and i32 %50, %41
  %cmp15.i = icmp eq i32 %48, %and.i
  br i1 %cmp15.i, label %if.then16.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

if.then16.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %smk_label.i = getelementptr inbounds %struct.smk_net4addr, ptr %snp.0.i, i32 0, i32 4
  %51 = ptrtoint ptr %smk_label.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %smk_label.i, align 4
  br label %smack_ipv4host_label.exit

smack_ipv4host_label.exit:                        ; preds = %if.then16.i, %for.cond.i.smack_ipv4host_label.exit_crit_edge, %rcu_read_lock.exit.smack_ipv4host_label.exit_crit_edge
  %retval.0.i75 = phi ptr [ %52, %if.then16.i ], [ null, %rcu_read_lock.exit.smack_ipv4host_label.exit_crit_edge ], [ null, %for.cond.i.smack_ipv4host_label.exit_crit_edge ]
  %call.i76 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i76, label %smack_ipv4host_label.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i79

smack_ipv4host_label.exit.rcu_read_unlock.exit_crit_edge: ; preds = %smack_ipv4host_label.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i79:                                ; preds = %smack_ipv4host_label.exit
  %call1.i77 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, label %if.then.i82

land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i82, %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, %smack_ipv4host_label.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %53 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i83 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i84, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %cmp30 = icmp eq ptr %retval.0.i75, null
  br i1 %cmp30, label %if.then32, label %if.else34

if.then32:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  %smk_netlabel = getelementptr inbounds %struct.smack_known, ptr %skp.0, i32 0, i32 4
  %call33 = call i32 @netlbl_req_setattr(ptr noundef %req, ptr noundef %smk_netlabel) #18
  br label %cleanup

if.else34:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @netlbl_req_delattr(ptr noundef %req) #18
  br label %cleanup

cleanup:                                          ; preds = %if.else34, %if.then32, %smk_bu_note.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %call21, %smk_bu_note.exit.cleanup_crit_edge ], [ %call33, %if.then32 ], [ 0, %if.else34 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %net) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_inet_csk_clone(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  %peer_secid = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %peer_secid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_secid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call ptr @smack_from_secid(i32 noundef %3) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.sink = phi ptr [ %call, %if.then ], [ null, %entry.if.end_crit_edge ]
  %4 = getelementptr inbounds %struct.socket_smack, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.sink, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_key_alloc(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %cred, i32 noundef %flags) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %security = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 6
  %5 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %security, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @smack_key_free(ptr nocapture noundef writeonly %key) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 6
  %0 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %security, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_key_permission(ptr noundef %key_ref, ptr nocapture noundef readonly %cred, i32 noundef %need_perm) #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ad, align 4, !annotation !347
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %1 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %security.i, align 4
  %3 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %3
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %6 = zext i32 %need_perm to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %need_perm, label %sw.default [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.epilog_crit_edge41
    i32 1, label %entry.sw.epilog_crit_edge42
    i32 3, label %entry.sw.bb2_crit_edge
    i32 5, label %entry.sw.bb2_crit_edge43
    i32 6, label %entry.sw.bb2_crit_edge44
    i32 0, label %entry.cleanup_crit_edge
    i32 7, label %entry.cleanup_crit_edge45
    i32 8, label %entry.cleanup_crit_edge46
    i32 9, label %entry.cleanup_crit_edge47
    i32 10, label %entry.cleanup_crit_edge48
  ]

entry.cleanup_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.sw.bb2_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2

entry.sw.bb2_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2

entry.sw.epilog_crit_edge42:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge41:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge43, %entry.sw.bb2_crit_edge44
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge41, %entry.sw.epilog_crit_edge42
  %request.0 = phi i32 [ 2, %sw.bb2 ], [ 4, %entry.sw.epilog_crit_edge ], [ 4, %entry.sw.epilog_crit_edge41 ], [ 4, %entry.sw.epilog_crit_edge42 ]
  %7 = ptrtoint ptr %key_ref to i32
  %and.i = and i32 %7, -2
  %8 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %security = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %security, align 4
  %cmp6 = icmp eq ptr %10, null
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq ptr %5, null
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = tail call zeroext i1 @smack_privileged(i32 noundef 32) #18
  br i1 %call12, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %11 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 16)
  %13 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %ad, align 4
  %14 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sad.i, ptr %14, align 4
  %16 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @__func__.smack_key_permission, ptr %sad.i, align 4
  %serial = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %serial, align 4
  %u = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %19 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %u, align 4
  %description = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 16, i32 0, i32 4
  %20 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %description, align 8
  %key_desc = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %key_desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %key_desc, align 4
  %23 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %security, align 4
  %call18 = call i32 @smk_access(ptr noundef nonnull %5, ptr noundef %24, i32 noundef %request.0, ptr noundef nonnull %ad) #18
  %25 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %security, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp.i = icmp slt i32 %call18, 1
  %27 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 -71776119061217281, ptr %acc.i, align 8
  br i1 %cmp.i, label %if.end14.smk_bu_note.exit_crit_edge, label %if.end.i

if.end14.smk_bu_note.exit_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_note.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call18)
  %cmp1.i = icmp ugt i32 %call18, 3
  %spec.store.select.i = select i1 %cmp1.i, i32 0, i32 %call18
  %and.i.i = and i32 %request.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.i.thread

if.end.i.i.thread:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %acc.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 114, ptr %acc.i, align 8
  br label %smk_bu_mode.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %and1.i.i = and i32 %request.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then31.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %acc.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 119, ptr %acc.i, align 8
  br label %smk_bu_mode.exit.i

if.then31.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %acc.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 45, ptr %acc.i, align 8
  br label %smk_bu_mode.exit.i

smk_bu_mode.exit.i:                               ; preds = %if.then31.i.i, %if.then3.i.i, %if.end.i.i.thread
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %5, i32 0, i32 2
  %33 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smk_known.i, align 4
  %smk_known4.i = getelementptr inbounds %struct.smack_known, ptr %26, i32 0, i32 2
  %35 = ptrtoint ptr %smk_known4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %smk_known4.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %32, ptr noundef %34, ptr noundef %36, ptr noundef nonnull %acc.i, ptr noundef nonnull @.str.82) #21
  br label %smk_bu_note.exit

smk_bu_note.exit:                                 ; preds = %smk_bu_mode.exit.i, %if.end14.smk_bu_note.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %smk_bu_mode.exit.i ], [ %call18, %if.end14.smk_bu_note.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  br label %cleanup

cleanup:                                          ; preds = %smk_bu_note.exit, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge45, %entry.cleanup_crit_edge46, %entry.cleanup_crit_edge47, %entry.cleanup_crit_edge48
  %retval.0 = phi i32 [ -22, %sw.default ], [ %retval.0.i, %smk_bu_note.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge45 ], [ 0, %entry.cleanup_crit_edge46 ], [ 0, %entry.cleanup_crit_edge47 ], [ 0, %entry.cleanup_crit_edge48 ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -13, %if.end8.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_key_getsecurity(ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %_buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 6
  %0 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smk_known, align 4
  %call = tail call noalias ptr @kstrdup(ptr noundef %3, i32 noundef 3264) #18
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call i32 @strlen(ptr noundef nonnull %call) #24
  %add = add i32 %call5, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %entry.cleanup.sink.split_crit_edge
  %call.sink = phi ptr [ %call, %if.end4 ], [ null, %entry.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %add, %if.end4 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %_buffer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.sink, ptr %_buffer, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_watch_key(ptr noundef readonly %key) #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ad, align 4, !annotation !347
  %1 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %security.i.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %security.i.i, align 4
  %9 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %9
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 4
  %cmp = icmp eq ptr %key, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %security = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 6
  %12 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %security, align 4
  %cmp1 = icmp eq ptr %13, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq ptr %11, null
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %do.end

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.end3
  %call8 = tail call zeroext i1 @smack_privileged_cred(i32 noundef 32, ptr noundef %6) #18
  br i1 %call8, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %14 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %15 = call ptr @memset(ptr %14, i32 0, i32 16)
  %16 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 6, ptr %ad, align 4
  %17 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sad.i, ptr %17, align 4
  %19 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @__func__.smack_watch_key, ptr %sad.i, align 4
  %serial = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %20 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %serial, align 4
  %u = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %22 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %u, align 4
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %23 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %description, align 8
  %key_desc = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %key_desc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %key_desc, align 4
  %26 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %security, align 4
  %call15 = call i32 @smk_access(ptr noundef nonnull %11, ptr noundef %27, i32 noundef 4, ptr noundef nonnull %ad) #18
  %28 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %security, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp.i = icmp slt i32 %call15, 1
  %30 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 8214847195300495359, ptr %acc.i, align 8
  br i1 %cmp.i, label %if.end10.smk_bu_note.exit_crit_edge, label %if.end.i

if.end10.smk_bu_note.exit_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_note.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call15)
  %cmp1.i = icmp ugt i32 %call15, 3
  %spec.store.select.i = select i1 %cmp1.i, i32 0, i32 %call15
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %11, i32 0, i32 2
  %33 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smk_known.i, align 4
  %smk_known4.i = getelementptr inbounds %struct.smack_known, ptr %29, i32 0, i32 2
  %35 = ptrtoint ptr %smk_known4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %smk_known4.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %32, ptr noundef %34, ptr noundef %36, ptr noundef nonnull %acc.i, ptr noundef nonnull @.str.83) #21
  br label %smk_bu_note.exit

smk_bu_note.exit:                                 ; preds = %if.end.i, %if.end10.smk_bu_note.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call15, %if.end10.smk_bu_note.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  br label %cleanup

cleanup:                                          ; preds = %smk_bu_note.exit, %do.end.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %smk_bu_note.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -13, %if.end3.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_post_notification(ptr nocapture noundef readonly %w_cred, ptr noundef readonly %cred, ptr nocapture noundef readonly %n) #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %bf.load)
  %cmp = icmp ult i32 %bf.load, 256
  %tobool.not = icmp eq ptr %cred, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end2:                                          ; preds = %entry
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %2 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %security.i, align 4
  %4 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %security.i15 = getelementptr inbounds %struct.cred, ptr %w_cred, i32 0, i32 23
  %7 = ptrtoint ptr %security.i15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %security.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 %4
  %9 = ptrtoint ptr %add.ptr.i16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i16, align 4
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %11 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 16)
  %13 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %ad, align 4
  %14 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sad.i, ptr %14, align 4
  %16 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @__func__.smack_post_notification, ptr %sad.i, align 4
  %call6 = call i32 @smk_access(ptr noundef %6, ptr noundef %10, i32 noundef 2, ptr noundef nonnull %ad) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp.i = icmp slt i32 %call6, 1
  %17 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 8575135165490135039, ptr %acc.i, align 8
  br i1 %cmp.i, label %if.end2.smk_bu_note.exit_crit_edge, label %if.end.i

if.end2.smk_bu_note.exit_crit_edge:               ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_note.exit

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call6)
  %cmp1.i = icmp ugt i32 %call6, 3
  %spec.store.select.i = select i1 %cmp1.i, i32 0, i32 %call6
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %6, i32 0, i32 2
  %20 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smk_known.i, align 4
  %smk_known4.i = getelementptr inbounds %struct.smack_known, ptr %10, i32 0, i32 2
  %22 = ptrtoint ptr %smk_known4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smk_known4.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %19, ptr noundef %21, ptr noundef %23, ptr noundef nonnull %acc.i, ptr noundef nonnull @.str.84) #21
  br label %smk_bu_note.exit

smk_bu_note.exit:                                 ; preds = %if.end.i, %if.end2.smk_bu_note.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call6, %if.end2.smk_bu_note.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  br label %cleanup

cleanup:                                          ; preds = %smk_bu_note.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %smk_bu_note.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_audit_rule_init(i32 noundef %field, i32 noundef %op, ptr noundef %rulestr, ptr nocapture noundef writeonly %vrule) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vrule to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %vrule, align 4
  %1 = zext i32 %field to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %field, label %entry.cleanup_crit_edge [
    i32 13, label %entry.if.end_crit_edge
    i32 19, label %entry.if.end_crit_edge17
  ]

entry.if.end_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %op)
  %switch = icmp ult i32 %op, 2
  br i1 %switch, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call = tail call ptr @smk_import_entry(ptr noundef %rulestr, i32 noundef 0) #18
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known, align 4
  %5 = ptrtoint ptr %vrule to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %vrule, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then8 ], [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_audit_rule_known(ptr nocapture noundef readonly %krule) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %field_count = getelementptr inbounds %struct.audit_krule, ptr %krule, i32 0, i32 6
  %0 = ptrtoint ptr %field_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %fields = getelementptr inbounds %struct.audit_krule, ptr %krule, i32 0, i32 8
  %2 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fields, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.audit_field, ptr %3, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %5, label %for.inc [
    i32 13, label %for.body.cleanup_crit_edge
    i32 19, label %for.body.cleanup_crit_edge14
  ]

for.body.cleanup_crit_edge14:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.body.cleanup_crit_edge14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_audit_rule_match(i32 noundef %secid, i32 noundef %field, i32 noundef %op, ptr noundef readnone %vrule) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vrule, null
  br i1 %tobool.not, label %land.end, label %if.end43, !prof !345

land.end:                                         ; preds = %entry
  %.b66 = load i1, ptr @smack_audit_rule_match.__already_done, align 1
  br i1 %.b66, label %land.end.cleanup_crit_edge, label %if.then14, !prof !343

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then14:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @smack_audit_rule_match.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 4523, i32 noundef 9, ptr noundef nonnull @.str.85) #18
  br label %cleanup

if.end43:                                         ; preds = %entry
  %0 = zext i32 %field to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %field, label %if.end43.cleanup_crit_edge [
    i32 13, label %if.end43.if.end46_crit_edge
    i32 19, label %if.end43.if.end46_crit_edge67
  ]

if.end43.if.end46_crit_edge67:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.end43.if.end46_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end46:                                         ; preds = %if.end43.if.end46_crit_edge, %if.end43.if.end46_crit_edge67
  %call = tail call ptr @smack_from_secid(i32 noundef %secid) #18
  %1 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %op, label %if.end46.cleanup_crit_edge [
    i32 0, label %if.then48
    i32 1, label %if.then53
  ]

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smk_known, align 4
  %cmp49 = icmp eq ptr %3, %vrule
  %conv = zext i1 %cmp49 to i32
  br label %cleanup

if.then53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  %smk_known54 = getelementptr inbounds %struct.smack_known, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %smk_known54 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smk_known54, align 4
  %cmp55 = icmp ne ptr %5, %vrule
  %conv56 = zext i1 %cmp55 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.then48, %if.end46.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then14, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then48 ], [ %conv56, %if.then53 ], [ -2, %if.then14 ], [ -2, %land.end.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_ismaclabel(ptr nocapture noundef readonly %name) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.33) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_secid_to_secctx(i32 noundef %secid, ptr noundef writeonly %secdata, ptr nocapture noundef writeonly %seclen) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @smack_from_secid(i32 noundef %secid) #18
  %tobool.not = icmp eq ptr %secdata, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smk_known, align 4
  %2 = ptrtoint ptr %secdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %secdata, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %smk_known1 = getelementptr inbounds %struct.smack_known, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %smk_known1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known1, align 4
  %call2 = tail call i32 @strlen(ptr noundef %4) #24
  %5 = ptrtoint ptr %seclen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2, ptr %seclen, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_secctx_to_secid(ptr noundef %secdata, i32 noundef %seclen, ptr nocapture noundef writeonly %secid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @smk_find_entry(ptr noundef %secdata) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smk_secid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %2 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %secid, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_notifysecctx(ptr noundef %inode, ptr noundef %ctx, i32 noundef %ctxlen) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smack_inode_setsecurity(ptr noundef %inode, ptr noundef nonnull @.str.33, ptr noundef %ctx, i32 noundef %ctxlen, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_setsecctx(ptr noundef %dentry, ptr noundef %ctx, i32 noundef %ctxlen) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__vfs_setxattr_noperm(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.39, ptr noundef %ctx, i32 noundef %ctxlen, i32 noundef 0) #18
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_inode_getsecctx(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %ctx, ptr nocapture noundef writeonly %ctxlen) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smk_known, align 4
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ctx, align 4
  %8 = load ptr, ptr %smk_known, align 4
  %call2 = tail call i32 @strlen(ptr noundef %8) #24
  %9 = ptrtoint ptr %ctxlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2, ptr %ctxlen, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_inode_copy_up(ptr nocapture noundef readonly %dentry, ptr nocapture noundef %new) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %new, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call ptr @prepare_creds() #18
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %new_creds.0 = phi ptr [ %call, %if.then.if.end3_crit_edge ], [ %1, %entry.if.end3_crit_edge ]
  %security.i = getelementptr inbounds %struct.cred, ptr %new_creds.0, i32 0, i32 23
  %2 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %security.i, align 4
  %4 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %i_security.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_security.i, align 4
  %9 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i14 = getelementptr i8, ptr %8, i32 %9
  %10 = ptrtoint ptr %add.ptr.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i14, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %new_creds.0, ptr %new, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_inode_copy_up_xattr(ptr nocapture noundef readonly %name) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(17) @.str.39) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %. = select i1 %cmp, i32 1, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_dentry_create_files_as(ptr nocapture noundef readonly %dentry, i32 noundef %mode, ptr nocapture noundef readnone %name, ptr nocapture noundef readonly %old, ptr nocapture noundef readonly %new) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 23
  %0 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i, align 4
  %2 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %security.i21 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 23
  %3 = ptrtoint ptr %security.i21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %security.i21, align 4
  %add.ptr.i22 = getelementptr i8, ptr %4, i32 %2
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %7 = ptrtoint ptr %add.ptr.i22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %add.ptr.i22, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %8 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %i_security.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_security.i, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i23 = getelementptr i8, ptr %13, i32 %14
  %smk_flags = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i23, i32 0, i32 3
  %15 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smk_flags, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then:                                          ; preds = %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smk_known, align 4
  %25 = ptrtoint ptr %add.ptr.i23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i23, align 4
  %smk_known6 = getelementptr inbounds %struct.smack_known, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %smk_known6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smk_known6, align 4
  %smk_rules = getelementptr inbounds %struct.smack_known, ptr %22, i32 0, i32 5
  %call8 = tail call i32 @smk_access_entry(ptr noundef %24, ptr noundef %28, ptr noundef %smk_rules) #18
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i24, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %rcu_read_lock.exit
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %29 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i31 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i32, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp slt i32 %call8, 1
  %and9 = and i32 %call8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond = or i1 %cmp, %tobool10.not
  br i1 %or.cond, label %rcu_read_unlock.exit.if.end14_crit_edge, label %if.then11

rcu_read_unlock.exit.if.end14_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then11:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %add.ptr.i23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i23, align 4
  %35 = ptrtoint ptr %add.ptr.i22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %add.ptr.i22, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %rcu_read_unlock.exit.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_uring_override_creds(ptr nocapture noundef readonly %new) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %security.i15 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 23
  %9 = ptrtoint ptr %security.i15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %security.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %10, i32 %8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %add.ptr.i16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i16, align 4
  %cmp = icmp eq ptr %12, %14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = tail call zeroext i1 @smack_privileged_cred(i32 noundef 32, ptr noundef %5) #18
  %not.call11 = xor i1 %call11, true
  %. = sext i1 %not.call11 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_uring_sqpoll() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %call1 = tail call zeroext i1 @smack_privileged_cred(i32 noundef 33, ptr noundef %5) #18
  %not.call1 = xor i1 %call1, true
  %. = sext i1 %not.call1 to i32
  ret i32 %.
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smk_of_task_struct_obj(ptr noundef %t) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @smk_of_task_struct_obj.__warned, align 1
  br i1 %.b11, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @smk_of_task_struct_obj.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 400, ptr noundef nonnull @.str.13) #18
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %call.i12 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i12, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %do.end7
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %11 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i19 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_ptrace_rule_check(ptr noundef %tracer, ptr noundef %tracee_known, i32 noundef %mode, ptr noundef %func) unnamed_addr #5 align 64 {
entry:
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 36)
  %and = and i32 %mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %ad, align 4
  %4 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sad.i, ptr %4, align 4
  %6 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %func, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tracer, ptr %u.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %saip.0 = phi ptr [ %ad, %if.then ], [ null, %entry.if.end_crit_edge ]
  %8 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %tracer, i32 0, i32 98
  %12 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %real_cred, align 4
  %call = call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true4

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end9

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @smk_ptrace_rule_check.__warned, align 1
  br i1 %.b56, label %land.lhs.true4.do.end9_crit_edge, label %if.then6

land.lhs.true4.do.end9_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end9

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @smk_ptrace_rule_check.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 434, ptr noundef nonnull @.str.13) #18
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %land.lhs.true4.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %security.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %security.i, align 4
  %16 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %16
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %and13 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end9.if.end36_crit_edge, label %land.lhs.true15

do.end9.if.end36_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

land.lhs.true15:                                  ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_ptrace_rule to i32))
  %19 = load i32, ptr @smack_ptrace_rule, align 4
  %.off = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then18, label %land.lhs.true15.if.end36_crit_edge

land.lhs.true15.if.end36_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then18:                                        ; preds = %land.lhs.true15
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smk_known, align 4
  %smk_known19 = getelementptr inbounds %struct.smack_known, ptr %tracee_known, i32 0, i32 2
  %22 = ptrtoint ptr %smk_known19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smk_known19, align 4
  %cmp20 = icmp eq ptr %21, %23
  br i1 %cmp20, label %if.then18.if.end30_crit_edge, label %if.else

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp22 = icmp eq i32 %19, 2
  br i1 %cmp22, label %if.else.if.end30_crit_edge, label %if.else24

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call25 = call zeroext i1 @smack_privileged_cred(i32 noundef 19, ptr noundef %13) #18
  %. = select i1 %call25, i32 0, i32 -13
  br label %if.end30

if.end30:                                         ; preds = %if.else24, %if.else.if.end30_crit_edge, %if.then18.if.end30_crit_edge
  %rc.0 = phi i32 [ 0, %if.then18.if.end30_crit_edge ], [ -13, %if.else.if.end30_crit_edge ], [ %., %if.else24 ]
  %tobool31.not = icmp eq ptr %saip.0, null
  br i1 %tobool31.not, label %if.end30.if.end35_crit_edge, label %if.then32

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smk_known, align 4
  %26 = ptrtoint ptr %smk_known19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %smk_known19, align 4
  call void @smack_log(ptr noundef %25, ptr noundef %27, i32 noundef 0, i32 noundef %rc.0, ptr noundef nonnull %saip.0) #18
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end30.if.end35_crit_edge
  %call.i57 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i57, label %if.end35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

if.end35.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %if.end35
  %call1.i58 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %if.end35.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true15.if.end36_crit_edge, %do.end9.if.end36_crit_edge
  %and1.i = shl i32 %mode, 2
  %28 = and i32 %and1.i, 4
  %retval.0.i = select i1 %tobool14.not, i32 %28, i32 6
  %call38 = call i32 @smk_tskacc(ptr noundef %add.ptr.i, ptr noundef %tracee_known, i32 noundef %retval.0.i, ptr noundef %saip.0) #18
  %call.i67 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i67, label %if.end36.rcu_read_unlock.exit77_crit_edge, label %land.lhs.true.i70

if.end36.rcu_read_unlock.exit77_crit_edge:        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit77

land.lhs.true.i70:                                ; preds = %if.end36
  %call1.i68 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit77_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit77_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit77

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit77_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit77_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit77

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit77

rcu_read_unlock.exit77:                           ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit77_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit77_crit_edge, %if.end36.rcu_read_unlock.exit77_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit77, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %rc.0, %rcu_read_unlock.exit ], [ %call38, %rcu_read_unlock.exit77 ]
  %29 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i74 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i76 = add i32 %32, -1
  store volatile i32 %sub.i.i.i76, ptr %preempt_count.i.i.i.i75, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smack_privileged_cred(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smack_log(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smk_tskacc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smack_privileged(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smack_add_opt(i32 noundef %token, ptr noundef %s, ptr nocapture noundef %mnt_opts) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mnt_opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_opts, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #23
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %mnt_opts to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %mnt_opts, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %opts.0 = phi ptr [ %1, %entry.if.end3_crit_edge ], [ %call7.i.i, %if.end ]
  %tobool4.not = icmp eq ptr %s, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %4 = zext i32 %token to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %token, label %if.end6.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb16
    i32 3, label %sw.bb21
    i32 4, label %sw.bb26
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  %5 = ptrtoint ptr %opts.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %opts.0, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.end9, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %opts.0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %s, ptr %opts.0, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end6
  %fsfloor = getelementptr inbounds %struct.smack_mnt_opts, ptr %opts.0, i32 0, i32 1
  %8 = ptrtoint ptr %fsfloor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fsfloor, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.end14, label %sw.bb11.do.end_crit_edge

sw.bb11.do.end_crit_edge:                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end14:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %fsfloor to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %s, ptr %fsfloor, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.end6
  %fshat = getelementptr inbounds %struct.smack_mnt_opts, ptr %opts.0, i32 0, i32 2
  %11 = ptrtoint ptr %fshat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fshat, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %if.end19, label %sw.bb16.do.end_crit_edge

sw.bb16.do.end_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end19:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %fshat to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %s, ptr %fshat, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end6
  %fsroot = getelementptr inbounds %struct.smack_mnt_opts, ptr %opts.0, i32 0, i32 3
  %14 = ptrtoint ptr %fsroot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fsroot, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.end24, label %sw.bb21.do.end_crit_edge

sw.bb21.do.end_crit_edge:                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end24:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %fsroot to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %s, ptr %fsroot, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %if.end6
  %fstransmute = getelementptr inbounds %struct.smack_mnt_opts, ptr %opts.0, i32 0, i32 4
  %17 = ptrtoint ptr %fstransmute to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fstransmute, align 4
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %if.end29, label %sw.bb26.do.end_crit_edge

sw.bb26.do.end_crit_edge:                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end29:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %fstransmute to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %s, ptr %fstransmute, align 4
  br label %cleanup

do.end:                                           ; preds = %sw.bb26.do.end_crit_edge, %sw.bb21.do.end_crit_edge, %sw.bb16.do.end_crit_edge, %sw.bb11.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end29, %if.end24, %if.end19, %if.end14, %if.end9, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end29 ], [ 0, %if.end24 ], [ 0, %if.end19 ], [ 0, %if.end14 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smk_curacc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_bu_current(ptr noundef %note, ptr nocapture noundef readonly %oskp, i32 noundef %mode, i32 noundef %rc) unnamed_addr #5 align 64 {
entry:
  %acc = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rc)
  %cmp = icmp slt i32 %rc, 1
  %9 = ptrtoint ptr %acc to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %acc, align 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rc)
  %cmp2 = icmp ugt i32 %rc, 3
  %spec.store.select = select i1 %cmp2, i32 0, i32 %rc
  %and.i19 = and i32 %mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool.not.i = icmp eq i32 %and.i19, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %acc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 114, ptr %acc, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %i.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end.if.end.i_crit_edge ]
  %and1.i = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc4.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx5.i = getelementptr i8, ptr %acc, i32 %i.0.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 119, ptr %arrayidx5.i, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %i.1.i = phi i32 [ %inc4.i, %if.then3.i ], [ %i.0.i, %if.end.i.if.end6.i_crit_edge ]
  %and7.i = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end12.i_crit_edge, label %if.then9.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc10.i = add nuw nsw i32 %i.1.i, 1
  %arrayidx11.i = getelementptr i8, ptr %acc, i32 %i.1.i
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 120, ptr %arrayidx11.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end12.i_crit_edge
  %i.2.i = phi i32 [ %inc10.i, %if.then9.i ], [ %i.1.i, %if.end6.i.if.end12.i_crit_edge ]
  %and13.i = and i32 %mode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then15.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc16.i = add nuw nsw i32 %i.2.i, 1
  %arrayidx17.i = getelementptr i8, ptr %acc, i32 %i.2.i
  %13 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 97, ptr %arrayidx17.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end18.i_crit_edge
  %i.3.i = phi i32 [ %inc16.i, %if.then15.i ], [ %i.2.i, %if.end12.i.if.end18.i_crit_edge ]
  %and19.i = and i32 %mode, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end24.i_crit_edge, label %if.then21.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc22.i = add nuw nsw i32 %i.3.i, 1
  %arrayidx23.i = getelementptr i8, ptr %acc, i32 %i.3.i
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 116, ptr %arrayidx23.i, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end24.i_crit_edge
  %i.4.i = phi i32 [ %inc22.i, %if.then21.i ], [ %i.3.i, %if.end18.i.if.end24.i_crit_edge ]
  %and25.i = and i32 %mode, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end30.i, label %if.end30.thread.i

if.end30.thread.i:                                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc28.i = add nuw nsw i32 %i.4.i, 1
  %arrayidx29.i = getelementptr i8, ptr %acc, i32 %i.4.i
  %15 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 108, ptr %arrayidx29.i, align 1
  br label %smk_bu_mode.exit

if.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4.i)
  %cmp.i = icmp eq i32 %i.4.i, 0
  br i1 %cmp.i, label %if.then31.i, label %if.end30.i.smk_bu_mode.exit_crit_edge

if.end30.i.smk_bu_mode.exit_crit_edge:            ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_mode.exit

if.then31.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %acc to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 45, ptr %acc, align 8
  br label %smk_bu_mode.exit

smk_bu_mode.exit:                                 ; preds = %if.then31.i, %if.end30.i.smk_bu_mode.exit_crit_edge, %if.end30.thread.i
  %i.6.i = phi i32 [ 1, %if.then31.i ], [ %i.4.i, %if.end30.i.smk_bu_mode.exit_crit_edge ], [ %inc28.i, %if.end30.thread.i ]
  %arrayidx35.i = getelementptr i8, ptr %acc, i32 %i.6.i
  %17 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx35.i, align 1
  %arrayidx = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smk_known, align 4
  %smk_known9 = getelementptr inbounds %struct.smack_known, ptr %oskp, i32 0, i32 2
  %24 = ptrtoint ptr %smk_known9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smk_known9, align 4
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %19, ptr noundef %23, ptr noundef %25, ptr noundef nonnull %acc, ptr noundef %comm, ptr noundef %note) #21
  br label %cleanup

cleanup:                                          ; preds = %smk_bu_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smk_bu_mode.exit ], [ %rc, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lsm_inode_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smk_import_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smk_access_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_bu_inode(ptr nocapture noundef readonly %inode, i32 noundef %mode, i32 noundef %rc) unnamed_addr #5 align 64 {
entry:
  %acc = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %i_security.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %9 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_security.i, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i51 = getelementptr i8, ptr %10, i32 %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc) #18
  %smk_flags = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i51, i32 0, i32 3
  %12 = ptrtoint ptr %acc to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %acc, align 8
  %13 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %smk_flags, align 4
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end5

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %s_id, i32 noundef %18, ptr noundef %comm) #21
  br label %if.end

if.end:                                           ; preds = %do.end5, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rc)
  %cmp = icmp slt i32 %rc, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rc)
  %cmp13 = icmp ugt i32 %rc, 3
  %spec.store.select = select i1 %cmp13, i32 0, i32 %rc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.store.select)
  %cmp16 = icmp ne i32 %spec.store.select, 2
  %and17 = and i32 %mode, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond = or i1 %tobool18.not, %cmp16
  br i1 %or.cond, label %if.end12.if.end21_crit_edge, label %if.then19

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %smk_flags, align 4
  %or = or i32 %20, 8
  store i32 %or, ptr %smk_flags, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end12.if.end21_crit_edge
  %and.i52 = and i32 %mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i = icmp eq i32 %and.i52, 0
  br i1 %tobool.not.i, label %if.end21.if.end.i_crit_edge, label %if.then.i

if.end21.if.end.i_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %acc to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 114, ptr %acc, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end21.if.end.i_crit_edge
  %i.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end21.if.end.i_crit_edge ]
  %and1.i = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc4.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx5.i = getelementptr i8, ptr %acc, i32 %i.0.i
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 119, ptr %arrayidx5.i, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %i.1.i = phi i32 [ %inc4.i, %if.then3.i ], [ %i.0.i, %if.end.i.if.end6.i_crit_edge ]
  %and7.i = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end12.i_crit_edge, label %if.then9.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc10.i = add nuw nsw i32 %i.1.i, 1
  %arrayidx11.i = getelementptr i8, ptr %acc, i32 %i.1.i
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 120, ptr %arrayidx11.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end12.i_crit_edge
  %i.2.i = phi i32 [ %inc10.i, %if.then9.i ], [ %i.1.i, %if.end6.i.if.end12.i_crit_edge ]
  %and13.i = and i32 %mode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then15.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc16.i = add nuw nsw i32 %i.2.i, 1
  %arrayidx17.i = getelementptr i8, ptr %acc, i32 %i.2.i
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 97, ptr %arrayidx17.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end18.i_crit_edge
  %i.3.i = phi i32 [ %inc16.i, %if.then15.i ], [ %i.2.i, %if.end12.i.if.end18.i_crit_edge ]
  %and19.i = and i32 %mode, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end24.i_crit_edge, label %if.then21.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc22.i = add nuw nsw i32 %i.3.i, 1
  %arrayidx23.i = getelementptr i8, ptr %acc, i32 %i.3.i
  %25 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 116, ptr %arrayidx23.i, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end24.i_crit_edge
  %i.4.i = phi i32 [ %inc22.i, %if.then21.i ], [ %i.3.i, %if.end18.i.if.end24.i_crit_edge ]
  %and25.i = and i32 %mode, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end30.i, label %if.end30.thread.i

if.end30.thread.i:                                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc28.i = add nuw nsw i32 %i.4.i, 1
  %arrayidx29.i = getelementptr i8, ptr %acc, i32 %i.4.i
  %26 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 108, ptr %arrayidx29.i, align 1
  br label %smk_bu_mode.exit

if.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4.i)
  %cmp.i = icmp eq i32 %i.4.i, 0
  br i1 %cmp.i, label %if.then31.i, label %if.end30.i.smk_bu_mode.exit_crit_edge

if.end30.i.smk_bu_mode.exit_crit_edge:            ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_mode.exit

if.then31.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  %27 = ptrtoint ptr %acc to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 45, ptr %acc, align 8
  br label %smk_bu_mode.exit

smk_bu_mode.exit:                                 ; preds = %if.then31.i, %if.end30.i.smk_bu_mode.exit_crit_edge, %if.end30.thread.i
  %i.6.i = phi i32 [ 1, %if.then31.i ], [ %i.4.i, %if.end30.i.smk_bu_mode.exit_crit_edge ], [ %inc28.i, %if.end30.thread.i ]
  %arrayidx35.i = getelementptr i8, ptr %acc, i32 %i.6.i
  %28 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx35.i, align 1
  %arrayidx = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smk_known, align 4
  %35 = ptrtoint ptr %add.ptr.i51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i51, align 4
  %smk_known27 = getelementptr inbounds %struct.smack_known, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %smk_known27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smk_known27, align 4
  %i_sb29 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %39 = ptrtoint ptr %i_sb29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb29, align 4
  %s_id30 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 39
  %i_ino32 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_ino32, align 8
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %comm35 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 101
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %30, ptr noundef %34, ptr noundef %38, ptr noundef nonnull %acc, ptr noundef %s_id30, i32 noundef %42, ptr noundef %comm35) #21
  br label %cleanup

cleanup:                                          ; preds = %smk_bu_mode.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smk_bu_mode.exit ], [ %rc, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc) #18
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smack_netlbl_add(ptr noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call fastcc void @local_bh_disable()
  %sk_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4
  tail call void @_raw_spin_lock_nested(ptr noundef %sk_lock, i32 noundef 1) #18
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %4 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %skc_family, align 8
  %smk_netlabel = getelementptr inbounds %struct.smack_known, ptr %3, i32 0, i32 4
  %call1 = tail call i32 @netlbl_sock_setattr(ptr noundef %sk, i16 noundef zeroext %5, ptr noundef %smk_netlabel) #18
  %6 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %call1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 -89, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb2 ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %smk_state3 = getelementptr inbounds %struct.socket_smack, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %smk_state3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %smk_state3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call1, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #18
  tail call fastcc void @local_bh_enable()
  ret i32 %rc.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_sock_setattr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_bu_file(ptr noundef %file, i32 noundef %mode, i32 noundef %rc) unnamed_addr #5 align 64 {
entry:
  %acc = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !333) #18
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
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %i_security.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_security.i, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i47 = getelementptr i8, ptr %14, i32 %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc) #18
  %smk_flags = getelementptr inbounds %struct.inode_smack, ptr %add.ptr.i47, i32 0, i32 3
  %16 = ptrtoint ptr %acc to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %acc, align 8
  %17 = ptrtoint ptr %smk_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %smk_flags, align 4
  %and = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %i_sb = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %s_id, i32 noundef %22, ptr noundef %comm) #21
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rc)
  %cmp = icmp slt i32 %rc, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rc)
  %cmp14 = icmp ugt i32 %rc, 3
  %spec.store.select = select i1 %cmp14, i32 0, i32 %rc
  %and.i48 = and i32 %mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i, label %if.end13.if.end.i_crit_edge, label %if.then.i

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %acc to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 114, ptr %acc, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end13.if.end.i_crit_edge
  %i.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end13.if.end.i_crit_edge ]
  %and1.i = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc4.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx5.i = getelementptr i8, ptr %acc, i32 %i.0.i
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 119, ptr %arrayidx5.i, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %i.1.i = phi i32 [ %inc4.i, %if.then3.i ], [ %i.0.i, %if.end.i.if.end6.i_crit_edge ]
  %and7.i = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end12.i_crit_edge, label %if.then9.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc10.i = add nuw nsw i32 %i.1.i, 1
  %arrayidx11.i = getelementptr i8, ptr %acc, i32 %i.1.i
  %25 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 120, ptr %arrayidx11.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end12.i_crit_edge
  %i.2.i = phi i32 [ %inc10.i, %if.then9.i ], [ %i.1.i, %if.end6.i.if.end12.i_crit_edge ]
  %and13.i = and i32 %mode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then15.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc16.i = add nuw nsw i32 %i.2.i, 1
  %arrayidx17.i = getelementptr i8, ptr %acc, i32 %i.2.i
  %26 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 97, ptr %arrayidx17.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end18.i_crit_edge
  %i.3.i = phi i32 [ %inc16.i, %if.then15.i ], [ %i.2.i, %if.end12.i.if.end18.i_crit_edge ]
  %and19.i = and i32 %mode, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end24.i_crit_edge, label %if.then21.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc22.i = add nuw nsw i32 %i.3.i, 1
  %arrayidx23.i = getelementptr i8, ptr %acc, i32 %i.3.i
  %27 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 116, ptr %arrayidx23.i, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end24.i_crit_edge
  %i.4.i = phi i32 [ %inc22.i, %if.then21.i ], [ %i.3.i, %if.end18.i.if.end24.i_crit_edge ]
  %and25.i = and i32 %mode, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end30.i, label %if.end30.thread.i

if.end30.thread.i:                                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc28.i = add nuw nsw i32 %i.4.i, 1
  %arrayidx29.i = getelementptr i8, ptr %acc, i32 %i.4.i
  %28 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 108, ptr %arrayidx29.i, align 1
  br label %smk_bu_mode.exit

if.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4.i)
  %cmp.i = icmp eq i32 %i.4.i, 0
  br i1 %cmp.i, label %if.then31.i, label %if.end30.i.smk_bu_mode.exit_crit_edge

if.end30.i.smk_bu_mode.exit_crit_edge:            ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_mode.exit

if.then31.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %acc to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 45, ptr %acc, align 8
  br label %smk_bu_mode.exit

smk_bu_mode.exit:                                 ; preds = %if.then31.i, %if.end30.i.smk_bu_mode.exit_crit_edge, %if.end30.thread.i
  %i.6.i = phi i32 [ 1, %if.then31.i ], [ %i.4.i, %if.end30.i.smk_bu_mode.exit_crit_edge ], [ %inc28.i, %if.end30.thread.i ]
  %arrayidx35.i = getelementptr i8, ptr %acc, i32 %i.6.i
  %30 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx35.i, align 1
  %arrayidx = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %10, i32 0, i32 2
  %33 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smk_known, align 4
  %35 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_security.i, align 4
  %37 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @smack_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %37
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i.i, align 4
  %smk_known23 = getelementptr inbounds %struct.smack_known, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %smk_known23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smk_known23, align 4
  %i_sb25 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %42 = ptrtoint ptr %i_sb25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb25, align 4
  %s_id26 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 39
  %i_ino28 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %44 = ptrtoint ptr %i_ino28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino28, align 8
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %comm31 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 101
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %32, ptr noundef %34, ptr noundef %41, ptr noundef nonnull %acc, ptr noundef %s_id26, i32 noundef %45, ptr noundef %file, ptr noundef %comm31) #21
  br label %cleanup

cleanup:                                          ; preds = %smk_bu_mode.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smk_bu_mode.exit ], [ %rc, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smk_access(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smk_destroy_label_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smack_from_secid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_curacc_on_task(ptr noundef %p, i32 noundef %access, ptr noundef %caller) unnamed_addr #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %0 = call ptr @memset(ptr %ad, i32 255, i32 12)
  %call = tail call fastcc ptr @smk_of_task_struct_obj(ptr noundef %p)
  %sad.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %ad, align 4
  %4 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sad.i, ptr %4, align 4
  %6 = ptrtoint ptr %sad.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %caller, ptr %sad.i, align 4
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %p, ptr %u.i, align 4
  %call1 = call i32 @smk_curacc(ptr noundef %call, i32 noundef %access, ptr noundef nonnull %ad) #18
  %8 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %security.i.i, align 4
  %16 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %16
  %call2.i = call fastcc ptr @smk_of_task_struct_obj(ptr noundef %p) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.i = icmp slt i32 %call1, 1
  %17 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %acc.i, align 8
  br i1 %cmp.i, label %entry.smk_bu_task.exit_crit_edge, label %if.end.i

entry.smk_bu_task.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_task.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp3.i = icmp ugt i32 %call1, 3
  %spec.store.select.i = select i1 %cmp3.i, i32 0, i32 %call1
  %and.i25.i = and i32 %access, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.not.i.i = icmp eq i32 %and.i25.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %acc.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 114, ptr %acc.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %i.0.i.i = phi i32 [ 1, %if.then.i.i ], [ 0, %if.end.i.if.end.i.i_crit_edge ]
  %and1.i.i = and i32 %access, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc4.i.i = add nuw nsw i32 %i.0.i.i, 1
  %arrayidx5.i.i = getelementptr i8, ptr %acc.i, i32 %i.0.i.i
  %19 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 119, ptr %arrayidx5.i.i, align 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc4.i.i, %if.then3.i.i ], [ %i.0.i.i, %if.end.i.i.if.end6.i.i_crit_edge ]
  %and7.i.i = and i32 %access, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end12.i.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc10.i.i = add nuw nsw i32 %i.1.i.i, 1
  %arrayidx11.i.i = getelementptr i8, ptr %acc.i, i32 %i.1.i.i
  %20 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 120, ptr %arrayidx11.i.i, align 1
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then9.i.i, %if.end6.i.i.if.end12.i.i_crit_edge
  %i.2.i.i = phi i32 [ %inc10.i.i, %if.then9.i.i ], [ %i.1.i.i, %if.end6.i.i.if.end12.i.i_crit_edge ]
  %and13.i.i = and i32 %access, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end12.i.i.if.end18.i.i_crit_edge, label %if.then15.i.i

if.end12.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc16.i.i = add nuw nsw i32 %i.2.i.i, 1
  %arrayidx17.i.i = getelementptr i8, ptr %acc.i, i32 %i.2.i.i
  %21 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 97, ptr %arrayidx17.i.i, align 1
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then15.i.i, %if.end12.i.i.if.end18.i.i_crit_edge
  %i.3.i.i = phi i32 [ %inc16.i.i, %if.then15.i.i ], [ %i.2.i.i, %if.end12.i.i.if.end18.i.i_crit_edge ]
  %and19.i.i = and i32 %access, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end18.i.i.if.end24.i.i_crit_edge, label %if.then21.i.i

if.end18.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.i.i

if.then21.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc22.i.i = add nuw nsw i32 %i.3.i.i, 1
  %arrayidx23.i.i = getelementptr i8, ptr %acc.i, i32 %i.3.i.i
  %22 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 116, ptr %arrayidx23.i.i, align 1
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then21.i.i, %if.end18.i.i.if.end24.i.i_crit_edge
  %i.4.i.i = phi i32 [ %inc22.i.i, %if.then21.i.i ], [ %i.3.i.i, %if.end18.i.i.if.end24.i.i_crit_edge ]
  %and25.i.i = and i32 %access, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end30.i.i, label %if.end30.thread.i.i

if.end30.thread.i.i:                              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc28.i.i = add nuw nsw i32 %i.4.i.i, 1
  %arrayidx29.i.i = getelementptr i8, ptr %acc.i, i32 %i.4.i.i
  %23 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 108, ptr %arrayidx29.i.i, align 1
  br label %smk_bu_mode.exit.i

if.end30.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4.i.i)
  %cmp.i.i = icmp eq i32 %i.4.i.i, 0
  br i1 %cmp.i.i, label %if.then31.i.i, label %if.end30.i.i.smk_bu_mode.exit.i_crit_edge

if.end30.i.i.smk_bu_mode.exit.i_crit_edge:        ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smk_bu_mode.exit.i

if.then31.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %acc.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 45, ptr %acc.i, align 8
  br label %smk_bu_mode.exit.i

smk_bu_mode.exit.i:                               ; preds = %if.then31.i.i, %if.end30.i.i.smk_bu_mode.exit.i_crit_edge, %if.end30.thread.i.i
  %i.6.i.i = phi i32 [ 1, %if.then31.i.i ], [ %i.4.i.i, %if.end30.i.i.smk_bu_mode.exit.i_crit_edge ], [ %inc28.i.i, %if.end30.thread.i.i ]
  %arrayidx35.i.i = getelementptr i8, ptr %acc.i, i32 %i.6.i.i
  %25 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx35.i.i, align 1
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smk_known.i, align 4
  %smk_known11.i = getelementptr inbounds %struct.smack_known, ptr %call2.i, i32 0, i32 2
  %32 = ptrtoint ptr %smk_known11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smk_known11.i, align 4
  %34 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %comm16.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 101
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %27, ptr noundef %31, ptr noundef %33, ptr noundef nonnull %acc.i, ptr noundef %comm.i, ptr noundef %comm16.i) #21
  br label %smk_bu_task.exit

smk_bu_task.exit:                                 ; preds = %smk_bu_mode.exit.i, %entry.smk_bu_task.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %smk_bu_mode.exit.i ], [ %call1, %entry.smk_bu_task.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smk_fetch(ptr noundef %name, ptr noundef %ip, ptr noundef %dp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_opflags = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 1
  %0 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_opflags, align 2
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3392, i32 noundef 256) #23
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @__vfs_getxattr(ptr noundef %dp, ptr noundef %ip, ptr noundef %name, ptr noundef nonnull %call7.i.i, i32 noundef 256) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %4 = inttoptr i32 %call6 to ptr
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp11 = icmp eq i32 %call6, 0
  br i1 %cmp11, label %if.else.if.end17_crit_edge, label %if.else14

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call15 = tail call ptr @smk_import_entry(ptr noundef nonnull %call7.i.i, i32 noundef %call6) #18
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.else.if.end17_crit_edge, %if.then9
  %skp.0 = phi ptr [ %4, %if.then9 ], [ %call15, %if.else14 ], [ null, %if.else.if.end17_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %skp.0, %if.end17 ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smack_ipv6host_label(ptr nocapture noundef readonly %sip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %sip, i32 0, i32 3
  %0 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin6_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr %struct.sockaddr_in6, ptr %sip, i32 0, i32 3, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.i = icmp eq i32 %3, 0
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.body_crit_edge

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %arrayidx5.i = getelementptr %struct.sockaddr_in6, ptr %sip, i32 0, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.i = icmp eq i32 %5, 0
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.do.body_crit_edge

land.lhs.true4.i.do.body_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %arrayidx8.i = getelementptr %struct.sockaddr_in6, ptr %sip, i32 0, i32 3, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp9.i = icmp eq i16 %7, 0
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true7.i.do.body_crit_edge

land.lhs.true7.i.do.body_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true11.i:                                ; preds = %land.lhs.true7.i
  %arrayidx12.i = getelementptr i16, ptr %sin6_addr, i32 7
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx12.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp14.i = icmp eq i16 %9, 1
  br i1 %cmp14.i, label %land.lhs.true11.i.cleanup_crit_edge, label %land.lhs.true11.i.do.body_crit_edge

land.lhs.true11.i.do.body_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true11.i.do.body_crit_edge, %land.lhs.true7.i.do.body_crit_edge, %land.lhs.true4.i.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge, %entry.do.body_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @smack_ipv6host_label.__warned, align 1
  br i1 %.b56, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @smack_ipv6host_label.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2363, ptr noundef nonnull @.str.55) #18
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smk_net6addr_list to i32))
  %snp.060 = load volatile ptr, ptr @smk_net6addr_list, align 4
  %cmp.not61 = icmp eq ptr %snp.060, @smk_net6addr_list
  br i1 %cmp.not61, label %do.end.cleanup_crit_edge, label %for.body.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.preheader:                               ; preds = %do.end
  %arrayidx.7 = getelementptr [8 x i16], ptr %sin6_addr, i32 0, i32 7
  %arrayidx.1 = getelementptr [8 x i16], ptr %sin6_addr, i32 0, i32 1
  %arrayidx.2 = getelementptr %struct.sockaddr_in6, ptr %sip, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx.3 = getelementptr [8 x i16], ptr %sin6_addr, i32 0, i32 3
  %arrayidx.4 = getelementptr %struct.sockaddr_in6, ptr %sip, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx.5 = getelementptr [8 x i16], ptr %sin6_addr, i32 0, i32 5
  %arrayidx.6 = getelementptr %struct.sockaddr_in6, ptr %sip, i32 0, i32 3, i32 0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc32.for.body_crit_edge, %for.body.preheader
  %snp.062 = phi ptr [ %snp.0, %for.inc32.for.body_crit_edge ], [ %snp.060, %for.body.preheader ]
  %smk_label = getelementptr inbounds %struct.smk_net6addr, ptr %snp.062, i32 0, i32 4
  %10 = ptrtoint ptr %smk_label to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smk_label, align 4
  %cmp12 = icmp eq ptr %11, null
  br i1 %cmp12, label %for.body.for.inc32_crit_edge, label %for.cond15.preheader

for.body.for.inc32_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc32

for.cond15.preheader:                             ; preds = %for.body
  %smk_mask = getelementptr inbounds %struct.smk_net6addr, ptr %snp.062, i32 0, i32 2
  %smk_host = getelementptr inbounds %struct.smk_net6addr, ptr %snp.062, i32 0, i32 1
  %12 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sin6_addr, align 2
  %14 = ptrtoint ptr %smk_mask to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %smk_mask, align 2
  %and55 = and i16 %15, %13
  %16 = ptrtoint ptr %smk_host to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %smk_host, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and55, i16 %17)
  %cmp24.not = icmp eq i16 %and55, %17
  br i1 %cmp24.not, label %for.cond15, label %for.cond15.preheader.for.inc32_crit_edge

for.cond15.preheader.for.inc32_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc32

for.cond15:                                       ; preds = %for.cond15.preheader
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.1, align 2
  %arrayidx19.1 = getelementptr [8 x i16], ptr %smk_mask, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx19.1, align 2
  %and55.1 = and i16 %21, %19
  %arrayidx22.1 = getelementptr [8 x i16], ptr %smk_host, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx22.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and55.1, i16 %23)
  %cmp24.not.1 = icmp eq i16 %and55.1, %23
  br i1 %cmp24.not.1, label %for.cond15.1, label %for.cond15.for.inc32_crit_edge

for.cond15.for.inc32_crit_edge:                   ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc32

for.cond15.1:                                     ; preds = %for.cond15
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.2, align 2
  %arrayidx19.2 = getelementptr %struct.smk_net6addr, ptr %snp.062, i32 0, i32 2, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx19.2, align 2
  %and55.2 = and i16 %27, %25
  %arrayidx22.2 = getelementptr %struct.smk_net6addr, ptr %snp.062, i32 0, i32 1, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx22.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and55.2, i16 %29)
  %cmp24.not.2 = icmp eq i16 %and55.2, %29
  br i1 %cmp24.not.2, label %for.cond15.2, label %for.cond15.1.for.inc32_crit_edge

for.cond15.1.for.inc32_crit_edge:                 ; preds = %for.cond15.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc32

for.cond15.2:                                     ; preds = %for.cond15.1
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.3, align 2
  %arrayidx19.3 = getelementptr [8 x i16], ptr %smk_mask, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx19.3, align 2
  %and55.3 = and i16 %33, %31
  %arrayidx22.3 = getelementptr [8 x i16], ptr %smk_host, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx22.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and55.3, i16 %35)
  %cmp24.not.3 = icmp eq i16 %and55.3, %35
  br i1 %cmp24.not.3, label %for.cond15.3, label %for.cond15.2.for.inc32_crit_edge

for.cond15.2.for.inc32_crit_edge:                 ; preds = %for.cond15.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc32

for.cond15.3:                                     ; preds = %for.cond15.2
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.4, align 2
  %arrayidx19.4 = getelementptr %struct.smk_net6addr, ptr %snp.062, i32 0, i32 2, i32 0, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx19.4, align 2
  %and55.4 = and i16 %39, %37
  %arrayidx22.4 = getelementptr %struct.smk_net6addr, ptr %snp.062, i32 0, i32 1, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx22.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and55.4, i16 %41)
  %cmp24.not.4 = icmp eq i16 %and55.4, %41
  br i1 %cmp24.not.4, label %for.cond15.4, label %for.cond15.3.for.inc32_crit_edge

for.cond15.3.for.inc32_crit_edge:                 ; preds = %for.cond15.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc32

for.cond15.4:                                     ; preds = %for.cond15.3
  %42 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.5, align 2
  %arrayidx19.5 = getelementptr [8 x i16], ptr %smk_mask, i32 0, i32 5
  %44 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx19.5, align 2
  %and55.5 = and i16 %45, %43
  %arrayidx22.5 = getelementptr [8 x i16], ptr %smk_host, i32 0, i32 5
  %46 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx22.5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and55.5, i16 %47)
  %cmp24.not.5 = icmp eq i16 %and55.5, %47
  br i1 %cmp24.not.5, label %for.cond15.5, label %for.cond15.4.for.inc32_crit_edge

for.cond15.4.for.inc32_crit_edge:                 ; preds = %for.cond15.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc32

for.cond15.5:                                     ; preds = %for.cond15.4
  %48 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.6, align 2
  %arrayidx19.6 = getelementptr %struct.smk_net6addr, ptr %snp.062, i32 0, i32 2, i32 0, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx19.6 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx19.6, align 2
  %and55.6 = and i16 %51, %49
  %arrayidx22.6 = getelementptr %struct.smk_net6addr, ptr %snp.062, i32 0, i32 1, i32 0, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx22.6 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx22.6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and55.6, i16 %53)
  %cmp24.not.6 = icmp eq i16 %and55.6, %53
  br i1 %cmp24.not.6, label %for.cond15.6, label %for.cond15.5.for.inc32_crit_edge

for.cond15.5.for.inc32_crit_edge:                 ; preds = %for.cond15.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc32

for.cond15.6:                                     ; preds = %for.cond15.5
  %54 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.7, align 2
  %arrayidx19.7 = getelementptr [8 x i16], ptr %smk_mask, i32 0, i32 7
  %56 = ptrtoint ptr %arrayidx19.7 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx19.7, align 2
  %and55.7 = and i16 %57, %55
  %arrayidx22.7 = getelementptr [8 x i16], ptr %smk_host, i32 0, i32 7
  %58 = ptrtoint ptr %arrayidx22.7 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx22.7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and55.7, i16 %59)
  %cmp24.not.7 = icmp eq i16 %and55.7, %59
  br i1 %cmp24.not.7, label %for.cond15.6.cleanup_crit_edge, label %for.cond15.6.for.inc32_crit_edge

for.cond15.6.for.inc32_crit_edge:                 ; preds = %for.cond15.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc32

for.cond15.6.cleanup_crit_edge:                   ; preds = %for.cond15.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc32:                                        ; preds = %for.cond15.6.for.inc32_crit_edge, %for.cond15.5.for.inc32_crit_edge, %for.cond15.4.for.inc32_crit_edge, %for.cond15.3.for.inc32_crit_edge, %for.cond15.2.for.inc32_crit_edge, %for.cond15.1.for.inc32_crit_edge, %for.cond15.for.inc32_crit_edge, %for.cond15.preheader.for.inc32_crit_edge, %for.body.for.inc32_crit_edge
  %60 = ptrtoint ptr %snp.062 to i32
  call void @__asan_load4_noabort(i32 %60)
  %snp.0 = load volatile ptr, ptr %snp.062, align 4
  %cmp.not = icmp eq ptr %snp.0, @smk_net6addr_list
  br i1 %cmp.not, label %for.inc32.cleanup_crit_edge, label %for.inc32.for.body_crit_edge

for.inc32.for.body_crit_edge:                     ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc32.cleanup_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc32.cleanup_crit_edge, %for.cond15.6.cleanup_crit_edge, %do.end.cleanup_crit_edge, %land.lhs.true11.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true11.i.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc32.cleanup_crit_edge ], [ %11, %for.cond15.6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_ipv4_check(ptr noundef %sk, ptr nocapture noundef readonly %sap) unnamed_addr #5 align 64 {
entry:
  %acc.i = alloca [8 x i8], align 8
  %ad = alloca %struct.smk_audit_info, align 4
  %net = alloca %struct.lsm_network_audit, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ad) #18
  %2 = call ptr @memset(ptr %ad, i32 255, i32 36)
  %3 = tail call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 2
  %7 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sin_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %rcu_read_lock.exit.if.end8_crit_edge, label %do.body.i

rcu_read_lock.exit.if.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

do.body.i:                                        ; preds = %rcu_read_lock.exit
  %call.i18 = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i21, label %do.body.i.for.cond.i.preheader_crit_edge

do.body.i.for.cond.i.preheader_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.preheader

land.lhs.true.i21:                                ; preds = %do.body.i
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i21.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i21.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i21
  %.b32.i = load i1, ptr @smack_ipv4host_label.__warned, align 1
  br i1 %.b32.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then5.i

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.preheader

if.then5.i:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @smack_ipv4host_label.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2308, ptr noundef nonnull @.str.55) #18
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then5.i, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i21.for.cond.i.preheader_crit_edge, %do.body.i.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %snp.0.in.i = phi ptr [ %snp.0.i, %for.body.i.for.cond.i_crit_edge ], [ @smk_net4addr_list, %for.cond.i.preheader ]
  %9 = ptrtoint ptr %snp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %snp.0.i = load volatile ptr, ptr %snp.0.in.i, align 4
  %cmp11.not.i = icmp eq ptr %snp.0.i, @smk_net4addr_list
  br i1 %cmp11.not.i, label %for.cond.i.if.end8_crit_edge, label %for.body.i

for.cond.i.if.end8_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

for.body.i:                                       ; preds = %for.cond.i
  %smk_host.i = getelementptr inbounds %struct.smk_net4addr, ptr %snp.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %smk_host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smk_host.i, align 4
  %12 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sin_addr.i, align 4
  %smk_mask.i = getelementptr inbounds %struct.smk_net4addr, ptr %snp.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %smk_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smk_mask.i, align 4
  %and.i = and i32 %15, %13
  %cmp15.i = icmp eq i32 %11, %and.i
  br i1 %cmp15.i, label %smack_ipv4host_label.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

smack_ipv4host_label.exit:                        ; preds = %for.body.i
  %smk_label.i = getelementptr inbounds %struct.smk_net4addr, ptr %snp.0.i, i32 0, i32 4
  %16 = ptrtoint ptr %smk_label.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smk_label.i, align 4
  %cmp.not = icmp eq ptr %17, null
  br i1 %cmp.not, label %smack_ipv4host_label.exit.if.end8_crit_edge, label %if.then

smack_ipv4host_label.exit.if.end8_crit_edge:      ; preds = %smack_ipv4host_label.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then:                                          ; preds = %smack_ipv4host_label.exit
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %net) #18
  %sad.i.i = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1
  %18 = getelementptr inbounds %struct.smk_audit_info, ptr %ad, i32 0, i32 1, i32 1
  %19 = call ptr @memset(ptr %18, i32 0, i32 16)
  %20 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %ad, align 4
  %21 = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sad.i.i, ptr %21, align 4
  %23 = ptrtoint ptr %sad.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @__func__.smk_ipv4_check, ptr %sad.i.i, align 4
  %24 = call ptr @memset(ptr %net, i32 0, i32 48)
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %25 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %net, ptr %u.i, align 4
  %26 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sap, align 4
  %family = getelementptr inbounds %struct.lsm_network_audit, ptr %net, i32 0, i32 2
  %28 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %family, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 1
  %29 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sin_port, align 2
  %dport = getelementptr inbounds %struct.lsm_network_audit, ptr %net, i32 0, i32 3
  %31 = ptrtoint ptr %dport to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %dport, align 2
  %32 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sin_addr.i, align 4
  %fam = getelementptr inbounds %struct.lsm_network_audit, ptr %net, i32 0, i32 5
  %34 = ptrtoint ptr %fam to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fam, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call5 = call i32 @smk_access(ptr noundef %36, ptr noundef nonnull %17, i32 noundef 2, ptr noundef nonnull %ad) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp.i22 = icmp slt i32 %call5, 1
  %37 = ptrtoint ptr %acc.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 8575135165490135039, ptr %acc.i, align 8
  br i1 %cmp.i22, label %smk_bu_note.exit, label %smk_bu_note.exit.thread

smk_bu_note.exit.thread:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5)
  %cmp1.i = icmp ugt i32 %call5, 3
  %spec.store.select.i = select i1 %cmp1.i, i32 0, i32 %call5
  %arrayidx.i = getelementptr [4 x ptr], ptr @smk_bu_mess, i32 0, i32 %spec.store.select.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %smk_known.i = getelementptr inbounds %struct.smack_known, ptr %36, i32 0, i32 2
  %40 = ptrtoint ptr %smk_known.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smk_known.i, align 4
  %smk_known4.i = getelementptr inbounds %struct.smack_known, ptr %17, i32 0, i32 2
  %42 = ptrtoint ptr %smk_known4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %smk_known4.i, align 4
  %call.i23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef nonnull %acc.i, ptr noundef nonnull @.str.74) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  br label %if.then7

smk_bu_note.exit:                                 ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acc.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %smk_bu_note.exit.if.then7_crit_edge, label %smk_bu_note.exit.if.end_crit_edge

smk_bu_note.exit.if.end_crit_edge:                ; preds = %smk_bu_note.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

smk_bu_note.exit.if.then7_crit_edge:              ; preds = %smk_bu_note.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7

if.then7:                                         ; preds = %smk_bu_note.exit.if.then7_crit_edge, %smk_bu_note.exit.thread
  %44 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk_security, align 8
  %smk_state.i = getelementptr inbounds %struct.socket_smack, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %smk_state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %smk_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.not.i = icmp eq i32 %47, 2
  br i1 %cmp.not.i, label %if.end.i25, label %if.then7.if.end_crit_edge

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i25:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @local_bh_disable() #18
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4
  call void @_raw_spin_lock_nested(ptr noundef %sk_lock.i, i32 noundef 1) #18
  call void @netlbl_sock_delattr(ptr noundef %sk) #18
  call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #18
  call fastcc void @local_bh_enable() #18
  %48 = ptrtoint ptr %smk_state.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %smk_state.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i25, %if.then7.if.end_crit_edge, %smk_bu_note.exit.if.end_crit_edge
  %retval.0.i2440 = phi i32 [ %call5, %smk_bu_note.exit.if.end_crit_edge ], [ 0, %if.then7.if.end_crit_edge ], [ 0, %if.end.i25 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %net) #18
  br label %if.end8

if.end8:                                          ; preds = %if.end, %smack_ipv4host_label.exit.if.end8_crit_edge, %for.cond.i.if.end8_crit_edge, %rcu_read_lock.exit.if.end8_crit_edge
  %rc.0 = phi i32 [ %retval.0.i2440, %if.end ], [ 0, %smack_ipv4host_label.exit.if.end8_crit_edge ], [ 0, %rcu_read_lock.exit.if.end8_crit_edge ], [ 0, %for.cond.i.if.end8_crit_edge ]
  %call.i26 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i26, label %if.end8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

if.end8.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %if.end8
  %call1.i27 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %if.end8.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %49 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i33 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ad) #18
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_sock_delattr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smack_from_netlbl(ptr noundef readonly %sk, i16 noundef zeroext %family, ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  %secattr = alloca %struct.netlbl_lsm_secattr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %secattr) #18
  %0 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %1 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %2 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %3 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 0, i32 1
  %4 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 1
  %5 = call ptr @memset(ptr %secattr, i32 0, i32 28)
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %6 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_security, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ssp.0 = phi ptr [ %7, %if.then ], [ null, %entry.if.end_crit_edge ]
  %call = call i32 @netlbl_skbuff_getattr(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef nonnull %secattr) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then1:                                         ; preds = %if.end
  %8 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %secattr, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %data.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  br label %smack_from_secattr.exit

if.end.i:                                         ; preds = %if.then1
  %and2.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.not.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %4, align 4
  %call.i = call ptr @smack_from_secid(i32 noundef %15) #18
  br label %smack_from_secattr.exit

if.end5.i:                                        ; preds = %if.end.i
  %and7.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %cmp8.not.i = icmp eq i32 %and7.i, 0
  br i1 %cmp8.not.i, label %if.end76.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end5.i
  %16 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !344
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i, label %if.then9.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then9.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then9.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then9.i.rcu_read_lock.exit.i_crit_edge
  %call10.i = call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call11.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true13.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %.b99.i = load i1, ptr @smack_from_secattr.__warned, align 1
  br i1 %.b99.i, label %land.lhs.true13.i.do.end.i_crit_edge, label %if.then15.i

land.lhs.true13.i.do.end.i_crit_edge:             ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

if.then15.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @smack_from_secattr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 3749, ptr noundef nonnull @.str.55) #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.then15.i, %land.lhs.true13.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_known_list to i32))
  %skp.0134.i = load volatile ptr, ptr @smack_known_list, align 4
  %cmp21.not135.i = icmp eq ptr %skp.0134.i, @smack_known_list
  br i1 %cmp21.not135.i, label %do.end.i.if.end70.critedge.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end70.critedge.i_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70.critedge.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %skp.0136.i = phi ptr [ %skp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %skp.0134.i, %do.end.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %attr23.i = getelementptr inbounds %struct.smack_known, ptr %skp.0136.i, i32 0, i32 4, i32 4
  %lvl25.i = getelementptr inbounds %struct.smack_known, ptr %skp.0136.i, i32 0, i32 4, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %lvl25.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lvl25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp26.not.i = icmp eq i32 %21, %23
  br i1 %cmp26.not.i, label %if.end28.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end28.i:                                       ; preds = %for.body.i
  %24 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %secattr, align 4
  %and30.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %cmp31.i = icmp eq i32 %and30.i, 0
  br i1 %cmp31.i, label %if.then32.i, label %if.end28.i.for.cond40.i_crit_edge

if.end28.i.for.cond40.i_crit_edge:                ; preds = %if.end28.i
  br label %for.cond40.i

if.then32.i:                                      ; preds = %if.end28.i
  %smk_netlabel.le.i = getelementptr inbounds %struct.smack_known, ptr %skp.0136.i, i32 0, i32 4
  %26 = ptrtoint ptr %smk_netlabel.le.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %smk_netlabel.le.i, align 4
  %and35.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %cmp36.not.i = icmp eq i32 %and35.i, 0
  %call.i100.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i100.i, label %if.then32.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i103.i

if.then32.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i

land.lhs.true.i103.i:                             ; preds = %if.then32.i
  %call1.i101.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101.i)
  %tobool.not.i102.i = icmp eq i32 %call1.i101.i, 0
  br i1 %tobool.not.i102.i, label %land.lhs.true.i103.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i105.i

land.lhs.true.i103.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i103.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i105.i:                            ; preds = %land.lhs.true.i103.i
  %.b4.i104.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104.i, label %land.lhs.true2.i105.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i106.i

land.lhs.true2.i105.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i105.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i

if.then.i106.i:                                   ; preds = %land.lhs.true2.i105.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i106.i, %land.lhs.true2.i105.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i103.i.rcu_read_unlock.exit.i_crit_edge, %if.then32.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %28 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i107.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i107.i to ptr
  %preempt_count.i.i.i.i108.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i108.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i108.i, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br i1 %cmp36.not.i, label %rcu_read_unlock.exit.i.smack_from_secattr.exit_crit_edge, label %rcu_read_unlock.exit.i.if.end70.i_crit_edge

rcu_read_unlock.exit.i.if.end70.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70.i

rcu_read_unlock.exit.i.smack_from_secattr.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smack_from_secattr.exit

for.cond40.i:                                     ; preds = %for.body42.i.for.cond40.i_crit_edge, %if.end28.i.for.cond40.i_crit_edge
  %kcat.0.i = phi i32 [ %call51.i, %for.body42.i.for.cond40.i_crit_edge ], [ -1, %if.end28.i.for.cond40.i_crit_edge ]
  %acat.0.i = phi i32 [ %call45.i, %for.body42.i.for.cond40.i_crit_edge ], [ -1, %if.end28.i.for.cond40.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %acat.0.i, i32 %kcat.0.i)
  %cmp41.i = icmp eq i32 %acat.0.i, %kcat.0.i
  br i1 %cmp41.i, label %for.body42.i, label %for.cond40.i.for.end.i_crit_edge

for.cond40.i.for.end.i_crit_edge:                 ; preds = %for.cond40.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body42.i:                                     ; preds = %for.cond40.i
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  %add.i = add i32 %kcat.0.i, 1
  %call45.i = call i32 @netlbl_catmap_walk(ptr noundef %33, i32 noundef %add.i) #18
  %34 = ptrtoint ptr %attr23.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %attr23.i, align 4
  %call51.i = call i32 @netlbl_catmap_walk(ptr noundef %35, i32 noundef %add.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp52.i = icmp slt i32 %call45.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp53.i = icmp slt i32 %call51.i, 0
  %or.cond.i = select i1 %cmp52.i, i1 true, i1 %cmp53.i
  br i1 %or.cond.i, label %for.body42.i.for.end.i_crit_edge, label %for.body42.i.for.cond40.i_crit_edge

for.body42.i.for.cond40.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond40.i

for.body42.i.for.end.i_crit_edge:                 ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %for.body42.i.for.end.i_crit_edge, %for.cond40.i.for.end.i_crit_edge
  %kcat.1.i = phi i32 [ %call51.i, %for.body42.i.for.end.i_crit_edge ], [ %kcat.0.i, %for.cond40.i.for.end.i_crit_edge ]
  %acat.1.i = phi i32 [ %call45.i, %for.body42.i.for.end.i_crit_edge ], [ %acat.0.i, %for.cond40.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %acat.1.i, i32 %kcat.1.i)
  %cmp56.i = icmp eq i32 %acat.1.i, %kcat.1.i
  br i1 %cmp56.i, label %if.then69.critedge.i, label %for.end.i.for.inc.i_crit_edge

for.end.i.for.inc.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %36 = ptrtoint ptr %skp.0136.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %skp.0.i = load volatile ptr, ptr %skp.0136.i, align 4
  %cmp21.not.i = icmp eq ptr %skp.0.i, @smack_known_list
  br i1 %cmp21.not.i, label %for.inc.i.if.end70.critedge.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end70.critedge.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70.critedge.i

if.then69.critedge.i:                             ; preds = %for.end.i
  %call.i109.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i109.i, label %if.then69.critedge.i.rcu_read_unlock.exit119.i_crit_edge, label %land.lhs.true.i112.i

if.then69.critedge.i.rcu_read_unlock.exit119.i_crit_edge: ; preds = %if.then69.critedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit119.i

land.lhs.true.i112.i:                             ; preds = %if.then69.critedge.i
  %call1.i110.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110.i)
  %tobool.not.i111.i = icmp eq i32 %call1.i110.i, 0
  br i1 %tobool.not.i111.i, label %land.lhs.true.i112.i.rcu_read_unlock.exit119.i_crit_edge, label %land.lhs.true2.i114.i

land.lhs.true.i112.i.rcu_read_unlock.exit119.i_crit_edge: ; preds = %land.lhs.true.i112.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit119.i

land.lhs.true2.i114.i:                            ; preds = %land.lhs.true.i112.i
  %.b4.i113.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i113.i, label %land.lhs.true2.i114.i.rcu_read_unlock.exit119.i_crit_edge, label %if.then.i115.i

land.lhs.true2.i114.i.rcu_read_unlock.exit119.i_crit_edge: ; preds = %land.lhs.true2.i114.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit119.i

if.then.i115.i:                                   ; preds = %land.lhs.true2.i114.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit119.i

rcu_read_unlock.exit119.i:                        ; preds = %if.then.i115.i, %land.lhs.true2.i114.i.rcu_read_unlock.exit119.i_crit_edge, %land.lhs.true.i112.i.rcu_read_unlock.exit119.i_crit_edge, %if.then69.critedge.i.rcu_read_unlock.exit119.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %37 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i116.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i116.i to ptr
  %preempt_count.i.i.i.i117.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i117.i, align 4
  %sub.i.i.i118.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i118.i, ptr %preempt_count.i.i.i.i117.i, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %smack_from_secattr.exit

if.end70.critedge.i:                              ; preds = %for.inc.i.if.end70.critedge.i_crit_edge, %do.end.i.if.end70.critedge.i_crit_edge
  %call.i120.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i120.i, label %if.end70.critedge.i.rcu_read_unlock.exit130.i_crit_edge, label %land.lhs.true.i123.i

if.end70.critedge.i.rcu_read_unlock.exit130.i_crit_edge: ; preds = %if.end70.critedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit130.i

land.lhs.true.i123.i:                             ; preds = %if.end70.critedge.i
  %call1.i121.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121.i)
  %tobool.not.i122.i = icmp eq i32 %call1.i121.i, 0
  br i1 %tobool.not.i122.i, label %land.lhs.true.i123.i.rcu_read_unlock.exit130.i_crit_edge, label %land.lhs.true2.i125.i

land.lhs.true.i123.i.rcu_read_unlock.exit130.i_crit_edge: ; preds = %land.lhs.true.i123.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit130.i

land.lhs.true2.i125.i:                            ; preds = %land.lhs.true.i123.i
  %.b4.i124.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i124.i, label %land.lhs.true2.i125.i.rcu_read_unlock.exit130.i_crit_edge, label %if.then.i126.i

land.lhs.true2.i125.i.rcu_read_unlock.exit130.i_crit_edge: ; preds = %land.lhs.true2.i125.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit130.i

if.then.i126.i:                                   ; preds = %land.lhs.true2.i125.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit130.i

rcu_read_unlock.exit130.i:                        ; preds = %if.then.i126.i, %land.lhs.true2.i125.i.rcu_read_unlock.exit130.i_crit_edge, %land.lhs.true.i123.i.rcu_read_unlock.exit130.i_crit_edge, %if.end70.critedge.i.rcu_read_unlock.exit130.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !346
  %41 = call i32 @llvm.read_register.i32(metadata !333) #18
  %and.i.i.i.i.i127.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i127.i to ptr
  %preempt_count.i.i.i.i128.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i128.i, align 4
  %sub.i.i.i129.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i129.i, ptr %preempt_count.i.i.i.i128.i, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %if.end70.i

if.end70.i:                                       ; preds = %rcu_read_unlock.exit130.i, %rcu_read_unlock.exit.i.if.end70.i_crit_edge
  %cmp71.not.i = icmp eq ptr %ssp.0, null
  br i1 %cmp71.not.i, label %if.end70.i.if.end75.i_crit_edge, label %land.lhs.true72.i

if.end70.i.if.end75.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end75.i

land.lhs.true72.i:                                ; preds = %if.end70.i
  %smk_in.i = getelementptr inbounds %struct.socket_smack, ptr %ssp.0, i32 0, i32 1
  %45 = ptrtoint ptr %smk_in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %smk_in.i, align 4
  %cmp73.i = icmp eq ptr %46, @smack_known_star
  br i1 %cmp73.i, label %land.lhs.true72.i.smack_from_secattr.exit_crit_edge, label %land.lhs.true72.i.if.end75.i_crit_edge

land.lhs.true72.i.if.end75.i_crit_edge:           ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end75.i

land.lhs.true72.i.smack_from_secattr.exit_crit_edge: ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smack_from_secattr.exit

if.end75.i:                                       ; preds = %land.lhs.true72.i.if.end75.i_crit_edge, %if.end70.i.if.end75.i_crit_edge
  br label %smack_from_secattr.exit

if.end76.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_net_ambient to i32))
  %47 = load ptr, ptr @smack_net_ambient, align 4
  br label %smack_from_secattr.exit

smack_from_secattr.exit:                          ; preds = %if.end76.i, %if.end75.i, %land.lhs.true72.i.smack_from_secattr.exit_crit_edge, %rcu_read_unlock.exit119.i, %rcu_read_unlock.exit.i.smack_from_secattr.exit_crit_edge, %if.then4.i, %if.then.i
  %retval.0.i = phi ptr [ %13, %if.then.i ], [ %call.i, %if.then4.i ], [ @smack_known_star, %if.end75.i ], [ %47, %if.end76.i ], [ %skp.0136.i, %rcu_read_unlock.exit119.i ], [ %skp.0136.i, %rcu_read_unlock.exit.i.smack_from_secattr.exit_crit_edge ], [ @smack_known_web, %land.lhs.true72.i.smack_from_secattr.exit_crit_edge ]
  %48 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %secattr, align 4
  %and = and i32 %49, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %smack_from_secattr.exit.if.end7_crit_edge, label %if.then4

smack_from_secattr.exit.if.end7_crit_edge:        ; preds = %smack_from_secattr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then4:                                         ; preds = %smack_from_secattr.exit
  call void @__sanitizer_cov_trace_pc() #20
  %smk_netlabel = getelementptr inbounds %struct.smack_known, ptr %retval.0.i, i32 0, i32 4
  %call5 = call i32 @netlbl_cache_add(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef %smk_netlabel) #18
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %smack_from_secattr.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %skp.0 = phi ptr [ %retval.0.i, %if.then4 ], [ %retval.0.i, %smack_from_secattr.exit.if.end7_crit_edge ], [ null, %if.end.if.end7_crit_edge ]
  %50 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %secattr, align 4
  %and.i12 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %if.end7.if.end.i16_crit_edge, label %if.then.i14

if.end7.if.end.i16_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i16

if.then.i14:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %53) #18
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then.i14, %if.end7.if.end.i16_crit_edge
  %54 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %secattr, align 4
  %and2.i15 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i15)
  %tobool3.not.i = icmp eq i32 %and2.i15, 0
  br i1 %tobool3.not.i, label %if.end.i16.if.end5.i21_crit_edge, label %if.then4.i18

if.end.i16.if.end5.i21_crit_edge:                 ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i21

if.then4.i18:                                     ; preds = %if.end.i16
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %57, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !354
  call void @llvm.prefetch.p0(ptr %57, i32 1, i32 3, i32 1) #18
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #18, !srcloc !355
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then4.i18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end5.i21_crit_edge, label %if.then10.i.i.i.i.i, !prof !343

if.end5.i.i.i.i.i.if.end5.i21_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i21

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @refcount_warn_saturate(ptr noundef %57, i32 noundef 3) #18
  br label %if.end5.i21

if.end.i.i:                                       ; preds = %if.then4.i18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !356
  %free.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %free.i.i, align 4
  %tobool.not.i.i19 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i19, label %if.end.i.i.if.end3.i.i_crit_edge, label %if.then1.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %data.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %57, i32 0, i32 2
  %61 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i, align 4
  call void %60(ptr noundef %62) #18
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end3.i.i_crit_edge
  call void @kfree(ptr noundef %57) #18
  br label %if.end5.i21

if.end5.i21:                                      ; preds = %if.end3.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end5.i21_crit_edge, %if.end.i16.if.end5.i21_crit_edge
  %63 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %secattr, align 4
  %and7.i20 = and i32 %64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i20)
  %tobool8.not.i = icmp eq i32 %and7.i20, 0
  br i1 %tobool8.not.i, label %if.end5.i21.netlbl_secattr_destroy.exit_crit_edge, label %if.then9.i22

if.end5.i21.netlbl_secattr_destroy.exit_crit_edge: ; preds = %if.end5.i21
  call void @__sanitizer_cov_trace_pc() #20
  br label %netlbl_secattr_destroy.exit

if.then9.i22:                                     ; preds = %if.end5.i21
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %2, align 4
  %tobool.not3.i.i = icmp eq ptr %66, null
  br i1 %tobool.not3.i.i, label %if.then9.i22.netlbl_secattr_destroy.exit_crit_edge, label %if.then9.i22.while.body.i.i_crit_edge

if.then9.i22.while.body.i.i_crit_edge:            ; preds = %if.then9.i22
  br label %while.body.i.i

if.then9.i22.netlbl_secattr_destroy.exit_crit_edge: ; preds = %if.then9.i22
  call void @__sanitizer_cov_trace_pc() #20
  br label %netlbl_secattr_destroy.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then9.i22.while.body.i.i_crit_edge
  %catmap.addr.04.i.i = phi ptr [ %68, %while.body.i.i.while.body.i.i_crit_edge ], [ %66, %if.then9.i22.while.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next.i.i, align 8
  call void @kfree(ptr noundef nonnull %catmap.addr.04.i.i) #18
  %tobool.not.i16.i = icmp eq ptr %68, null
  br i1 %tobool.not.i16.i, label %while.body.i.i.netlbl_secattr_destroy.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.i

while.body.i.i.netlbl_secattr_destroy.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netlbl_secattr_destroy.exit

netlbl_secattr_destroy.exit:                      ; preds = %while.body.i.i.netlbl_secattr_destroy.exit_crit_edge, %if.then9.i22.netlbl_secattr_destroy.exit_crit_edge, %if.end5.i21.netlbl_secattr_destroy.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %secattr) #18
  ret ptr %skp.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv4_skb_to_auditdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_skbuff_err(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skb_to_auditdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_skbuff_getattr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_cache_add(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_walk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_req_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_req_delattr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smk_find_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_setxattr_noperm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smk_insert_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { cold }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nobuiltin }
attributes #25 = { nobuiltin nounwind }
attributes #26 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !153, !154, !155, !157, !159, !161, !162, !163, !165, !166, !167, !169, !171, !173, !175, !176, !178, !180, !182, !184, !185, !186, !187, !189, !191, !193, !195, !196, !197, !199, !200, !202, !204, !205, !207, !209, !211, !212, !213, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !312, !314, !316, !318, !320, !321, !323, !324, !326, !327, !329, !330, !332}
!llvm.named.register.sp = !{!333}
!llvm.module.flags = !{!334, !335, !336, !337, !338, !339, !340, !341}
!llvm.ident = !{!342}

!0 = !{ptr @smack_blob_sizes, !1, !"smack_blob_sizes", i1 false, i1 false}
!1 = !{!"../security/smack/smack_lsm.c", i32 4744, i32 23}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/smack/smack_lsm.c", i32 4979, i32 10}
!4 = !{ptr @__lsm_smack, !5, !"__lsm_smack", i1 false, i1 false}
!5 = !{!"../security/smack/smack_lsm.c", i32 4978, i32 1}
!6 = !{ptr @smack_rule_cache, !7, !"smack_rule_cache", i1 false, i1 false}
!7 = !{!"../security/smack/smack_lsm.c", i32 58, i32 20}
!8 = !{ptr @smack_enabled, !9, !"smack_enabled", i1 false, i1 false}
!9 = !{!"../security/smack/smack_lsm.c", i32 59, i32 5}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/smack/smack_lsm.c", i32 4941, i32 21}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/smack/smack_lsm.c", i32 4957, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @smack_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @smack_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/smack/smack_lsm.c", i32 4959, i32 2}
!20 = !{ptr @smack_init._entry.5, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @smack_init._entry_ptr.7, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/smack/smack_lsm.c", i32 4965, i32 2}
!24 = !{ptr @smack_init._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @smack_init._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @init_task_smack.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../security/smack/smack_lsm.c", i32 335, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @smack_hooks, !30, !"smack_hooks", i1 false, i1 false}
!30 = !{!"../security/smack/smack_lsm.c", i32 4753, i32 34}
!31 = !{ptr @__func__.smack_ptrace_access_check, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/smack/smack_lsm.c", i32 486, i32 51}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../security/smack/smack.h", i32 400, i32 9}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../security/smack/smack_lsm.c", i32 434, i32 15}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../security/smack/smack_lsm.c", i32 502, i32 31}
!48 = !{ptr @__func__.smack_ptrace_traceme, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/smack/smack_lsm.c", i32 504, i32 59}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../security/smack/smack.h", i32 421, i32 32}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/smack/smack_lsm.c", i32 664, i32 2}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/smack/smack_lsm.c", i32 665, i32 2}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/smack/smack_lsm.c", i32 666, i32 2}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/smack/smack_lsm.c", i32 667, i32 2}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/smack/smack_lsm.c", i32 668, i32 2}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/smack/smack_lsm.c", i32 669, i32 2}
!64 = !{ptr @smack_fs_parameters, !65, !"smack_fs_parameters", i1 false, i1 false}
!65 = !{!"../security/smack/smack_lsm.c", i32 663, i32 39}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/smack/smack_lsm.c", i32 611, i32 2}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @smack_add_opt._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @smack_add_opt._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @smk_mount_opts, !72, !"smk_mount_opts", i1 false, i1 false}
!72 = !{!"../security/smack/smack_lsm.c", i32 66, i32 3}
!73 = !{ptr @__func__.smack_sb_statfs, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../security/smack/smack_lsm.c", i32 863, i32 19}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../security/smack/smack_lsm.c", i32 867, i32 22}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../security/smack/smack_lsm.c", i32 142, i32 38}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../security/smack/smack_lsm.c", i32 151, i32 2}
!81 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @smk_bu_current._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @smk_bu_current._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../security/smack/smack_lsm.c", i32 90, i32 2}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../security/smack/smack_lsm.c", i32 91, i32 2}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../security/smack/smack_lsm.c", i32 92, i32 2}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../security/smack/smack_lsm.c", i32 93, i32 2}
!92 = !{ptr @smk_bu_mess, !93, !"smk_bu_mess", i1 false, i1 false}
!93 = !{!"../security/smack/smack_lsm.c", i32 89, i32 14}
!94 = !{ptr @__func__.smack_bprm_creds_for_exec, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../security/smack/smack_lsm.c", i32 908, i32 10}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../include/linux/ptrace.h", i32 127, i32 10}
!98 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../security/smack/smack_lsm.c", i32 967, i32 11}
!101 = !{ptr @__func__.smack_inode_link, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../security/smack/smack_lsm.c", i32 1012, i32 19}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../security/smack/smack_lsm.c", i32 185, i32 38}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../security/smack/smack_lsm.c", i32 190, i32 3}
!107 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @smk_bu_inode._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @smk_bu_inode._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../security/smack/smack_lsm.c", i32 203, i32 2}
!112 = !{ptr @smk_bu_inode._entry.36, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @smk_bu_inode._entry_ptr.38, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @__func__.smack_inode_unlink, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../security/smack/smack_lsm.c", i32 1043, i32 19}
!116 = !{ptr @__func__.smack_inode_rmdir, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../security/smack/smack_lsm.c", i32 1076, i32 19}
!118 = !{ptr @__func__.smack_inode_rename, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../security/smack/smack_lsm.c", i32 1118, i32 19}
!120 = !{ptr @__func__.smack_inode_permission, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../security/smack/smack_lsm.c", i32 1165, i32 19}
!122 = !{ptr @__func__.smack_inode_setattr, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../security/smack/smack_lsm.c", i32 1189, i32 19}
!124 = !{ptr @__func__.smack_inode_getattr, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../security/smack/smack_lsm.c", i32 1209, i32 19}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../security/smack/smack_lsm.c", i32 1243, i32 19}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../security/smack/smack_lsm.c", i32 1244, i32 19}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../security/smack/smack_lsm.c", i32 1245, i32 19}
!132 = !{ptr @.str.42, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../security/smack/smack_lsm.c", i32 1248, i32 26}
!134 = !{ptr @.str.43, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../security/smack/smack_lsm.c", i32 1249, i32 19}
!136 = !{ptr @.str.44, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../security/smack/smack_lsm.c", i32 1253, i32 26}
!138 = !{ptr @.str.45, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../security/smack/smack_lsm.c", i32 1256, i32 22}
!140 = !{ptr @__func__.smack_inode_setxattr, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../security/smack/smack_lsm.c", i32 1273, i32 19}
!142 = !{ptr @__func__.smack_inode_getxattr, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../security/smack/smack_lsm.c", i32 1335, i32 19}
!144 = !{ptr @__func__.smack_inode_removexattr, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../security/smack/smack_lsm.c", i32 1374, i32 19}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../security/smack/smack_lsm.c", i32 1439, i32 20}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../security/smack/smack_lsm.c", i32 1441, i32 25}
!150 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../security/smack/smack_lsm.c", i32 2727, i32 5}
!152 = !{ptr @.str.49, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @smack_inode_setsecurity._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @smack_inode_setsecurity._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @__func__.smack_file_ioctl, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../security/smack/smack_lsm.c", i32 1541, i32 19}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../security/smack/smack_lsm.c", i32 215, i32 38}
!159 = !{ptr @.str.50, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../security/smack/smack_lsm.c", i32 222, i32 3}
!161 = !{ptr @smk_bu_file._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @smk_bu_file._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.52, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../security/smack/smack_lsm.c", i32 231, i32 2}
!165 = !{ptr @smk_bu_file._entry.51, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @smk_bu_file._entry_ptr.53, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @__func__.smack_file_lock, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../security/smack/smack_lsm.c", i32 1573, i32 19}
!169 = !{ptr @__func__.smack_file_fcntl, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../security/smack/smack_lsm.c", i32 1607, i32 20}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../security/smack/smack_lsm.c", i32 1668, i32 19}
!173 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!174 = !{!"../security/smack/smack_lsm.c", i32 1678, i32 2}
!175 = !{ptr @.str.55, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.56, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../security/smack/smack_lsm.c", i32 1782, i32 19}
!178 = distinct !{null, !179, !"__warned", i1 false, i1 false}
!179 = !{!"../security/smack/smack_lsm.c", i32 1785, i32 10}
!180 = !{ptr @__func__.smack_file_send_sigiotask, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../security/smack/smack_lsm.c", i32 1790, i32 19}
!182 = !{ptr @.str.57, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../security/smack/smack_lsm.c", i32 130, i32 2}
!184 = !{ptr @.str.58, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @smk_bu_note._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @smk_bu_note._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @__func__.smack_file_receive, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../security/smack/smack_lsm.c", i32 1815, i32 19}
!189 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!190 = !{!"../security/smack/smack_lsm.c", i32 1821, i32 20}
!191 = !{ptr @__func__.smack_file_open, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../security/smack/smack_lsm.c", i32 1867, i32 19}
!193 = !{ptr @.str.59, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../security/smack/smack_lsm.c", i32 252, i32 3}
!195 = !{ptr @smk_bu_credfile._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @smk_bu_credfile._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @smk_bu_credfile._entry.60, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../security/smack/smack_lsm.c", i32 261, i32 2}
!199 = !{ptr @smk_bu_credfile._entry_ptr.61, !198, !"_entry_ptr", i1 false, i1 false}
!200 = distinct !{null, !201, !"__warned", i1 false, i1 false}
!201 = !{!"../security/smack/smack_lsm.c", i32 353, i32 2}
!202 = !{ptr @smack_cred_transfer.__key, !203, !"__key", i1 false, i1 false}
!203 = !{!"../security/smack/smack_lsm.c", i32 1956, i32 2}
!204 = !{ptr @.str.62, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @__func__.smack_task_setpgid, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../security/smack/smack_lsm.c", i32 2044, i32 42}
!207 = distinct !{null, !208, !"__warned", i1 false, i1 false}
!208 = !{!"../security/smack/smack_lsm.c", i32 163, i32 38}
!209 = !{ptr @.str.63, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../security/smack/smack_lsm.c", i32 173, i32 2}
!211 = !{ptr @.str.64, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @smk_bu_task._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @smk_bu_task._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @__func__.smack_task_getpgid, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../security/smack/smack_lsm.c", i32 2055, i32 41}
!216 = !{ptr @__func__.smack_task_getsid, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../security/smack/smack_lsm.c", i32 2066, i32 41}
!218 = !{ptr @__func__.smack_task_setnice, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../security/smack/smack_lsm.c", i32 2105, i32 42}
!220 = !{ptr @__func__.smack_task_setioprio, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../security/smack/smack_lsm.c", i32 2117, i32 42}
!222 = !{ptr @__func__.smack_task_getioprio, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../security/smack/smack_lsm.c", i32 2128, i32 41}
!224 = !{ptr @__func__.smack_task_setscheduler, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../security/smack/smack_lsm.c", i32 2139, i32 42}
!226 = !{ptr @__func__.smack_task_getscheduler, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../security/smack/smack_lsm.c", i32 2150, i32 41}
!228 = !{ptr @__func__.smack_task_movememory, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../security/smack/smack_lsm.c", i32 2161, i32 42}
!230 = !{ptr @__func__.smack_task_kill, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../security/smack/smack_lsm.c", i32 2185, i32 19}
!232 = !{ptr @.str.65, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../security/smack/smack_lsm.c", i32 2203, i32 19}
!234 = !{ptr @__func__.smack_ipc_permission, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../security/smack/smack_lsm.c", i32 3239, i32 19}
!236 = !{ptr @.str.66, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../security/smack/smack_lsm.c", i32 3243, i32 22}
!238 = !{ptr @__func__.smk_curacc_msq, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../security/smack/smack_lsm.c", i32 3131, i32 19}
!240 = !{ptr @.str.67, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../security/smack/smack_lsm.c", i32 3135, i32 22}
!242 = !{ptr @__func__.smk_curacc_shm, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../security/smack/smack_lsm.c", i32 2947, i32 19}
!244 = !{ptr @.str.68, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../security/smack/smack_lsm.c", i32 2951, i32 22}
!246 = !{ptr @__func__.smk_curacc_sem, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../security/smack/smack_lsm.c", i32 3036, i32 19}
!248 = !{ptr @.str.69, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../security/smack/smack_lsm.c", i32 3040, i32 22}
!250 = !{ptr @.str.70, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../security/smack/smack_lsm.c", i32 3495, i32 19}
!252 = distinct !{null, !253, !"__warned", i1 false, i1 false}
!253 = !{!"../security/smack/smack_lsm.c", i32 3520, i32 38}
!254 = !{ptr @__func__.smack_unix_stream_connect, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../security/smack/smack_lsm.c", i32 3599, i32 24}
!256 = !{ptr @.str.71, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../security/smack/smack_lsm.c", i32 3603, i32 20}
!258 = !{ptr @__func__.smack_unix_may_send, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../security/smack/smack_lsm.c", i32 3642, i32 23}
!260 = !{ptr @.str.72, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../security/smack/smack_lsm.c", i32 3650, i32 19}
!262 = distinct !{null, !263, !"__warned", i1 false, i1 false}
!263 = !{!"../security/smack/smack_lsm.c", i32 2363, i32 2}
!264 = !{ptr @__func__.smk_ipv6_check, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../security/smack/smack_lsm.c", i32 2511, i32 23}
!266 = !{ptr @.str.73, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../security/smack/smack_lsm.c", i32 2520, i32 19}
!268 = !{ptr @__func__.smk_ipv4_check, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../security/smack/smack_lsm.c", i32 2472, i32 24}
!270 = !{ptr @.str.74, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../security/smack/smack_lsm.c", i32 2479, i32 20}
!272 = distinct !{null, !273, !"__warned", i1 false, i1 false}
!273 = !{!"../security/smack/smack_lsm.c", i32 2308, i32 2}
!274 = !{ptr @__func__.smack_socket_sock_rcv_skb, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../security/smack/smack_lsm.c", i32 3937, i32 24}
!276 = !{ptr @.str.75, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../security/smack/smack_lsm.c", i32 3949, i32 20}
!278 = !{ptr @.str.76, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../security/smack/smack_lsm.c", i32 3976, i32 20}
!280 = distinct !{null, !281, !"__warned", i1 false, i1 false}
!281 = !{!"../security/smack/smack_lsm.c", i32 3749, i32 3}
!282 = !{ptr @.str.77, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../security/smack/smack_lsm.c", i32 4006, i32 14}
!284 = distinct !{null, !285, !"__already_done", i1 false, i1 false}
!285 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!286 = !{ptr @.str.78, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.79, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!289 = !{ptr @.str.80, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!291 = !{ptr @__func__.smack_inet_conn_request, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../security/smack/smack_lsm.c", i32 4165, i32 23}
!293 = !{ptr @.str.81, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../security/smack/smack_lsm.c", i32 4175, i32 19}
!295 = !{ptr @__func__.smack_key_permission, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../security/smack/smack_lsm.c", i32 4325, i32 19}
!297 = !{ptr @.str.82, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../security/smack/smack_lsm.c", i32 4330, i32 19}
!299 = distinct !{null, !300, !"__warned", i1 false, i1 false}
!300 = !{!"../security/smack/smack_lsm.c", i32 4392, i32 46}
!301 = !{ptr @__func__.smack_watch_key, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../security/smack/smack_lsm.c", i32 4396, i32 19}
!303 = !{ptr @.str.83, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../security/smack/smack_lsm.c", i32 4401, i32 19}
!305 = !{ptr @__func__.smack_post_notification, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../security/smack/smack_lsm.c", i32 4431, i32 19}
!307 = !{ptr @.str.84, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../security/smack/smack_lsm.c", i32 4433, i32 19}
!309 = distinct !{null, !310, !"__already_done", i1 false, i1 false}
!310 = !{!"../security/smack/smack_lsm.c", i32 4523, i32 3}
!311 = !{ptr @.str.85, !310, !"<string literal>", i1 false, i1 false}
!312 = distinct !{null, !313, !"__warned", i1 false, i1 false}
!313 = !{!"../security/smack/smack_lsm.c", i32 4712, i32 38}
!314 = distinct !{null, !315, !"__warned", i1 false, i1 false}
!315 = !{!"../security/smack/smack_lsm.c", i32 4722, i32 46}
!316 = distinct !{null, !317, !"__warned", i1 false, i1 false}
!317 = !{!"../security/smack/smack_lsm.c", i32 4736, i32 43}
!318 = !{ptr @init_smack_known_list.__key, !319, !"__key", i1 false, i1 false}
!319 = !{!"../security/smack/smack_lsm.c", i32 4908, i32 2}
!320 = !{ptr @.str.87, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @init_smack_known_list.__key.88, !322, !"__key", i1 false, i1 false}
!322 = !{!"../security/smack/smack_lsm.c", i32 4909, i32 2}
!323 = !{ptr @.str.89, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @init_smack_known_list.__key.90, !325, !"__key", i1 false, i1 false}
!325 = !{!"../security/smack/smack_lsm.c", i32 4910, i32 2}
!326 = !{ptr @.str.91, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @init_smack_known_list.__key.92, !328, !"__key", i1 false, i1 false}
!328 = !{!"../security/smack/smack_lsm.c", i32 4911, i32 2}
!329 = !{ptr @.str.93, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @init_smack_known_list.__key.94, !331, !"__key", i1 false, i1 false}
!331 = !{!"../security/smack/smack_lsm.c", i32 4912, i32 2}
!332 = !{ptr @.str.95, !331, !"<string literal>", i1 false, i1 false}
!333 = !{!"sp"}
!334 = !{i32 1, !"wchar_size", i32 2}
!335 = !{i32 1, !"min_enum_size", i32 4}
!336 = !{i32 8, !"branch-target-enforcement", i32 0}
!337 = !{i32 8, !"sign-return-address", i32 0}
!338 = !{i32 8, !"sign-return-address-all", i32 0}
!339 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!340 = !{i32 7, !"uwtable", i32 1}
!341 = !{i32 7, !"frame-pointer", i32 2}
!342 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!343 = !{!"branch_weights", i32 2000, i32 1}
!344 = !{i64 2150042647}
!345 = !{!"branch_weights", i32 1, i32 2000}
!346 = !{i64 2150042913}
!347 = !{!"auto-init"}
!348 = !{i64 2151545159}
!349 = !{i64 2152892904, i64 2152892929}
!350 = !{i64 5387778}
!351 = !{i64 5387975}
!352 = !{i64 2152873208}
!353 = !{i64 2158599650, i64 2158599930, i64 2158600264, i64 2158600598}
!354 = !{i64 2148795331}
!355 = !{i64 2148709771, i64 2148709803, i64 2148709832, i64 2148709866, i64 2148709897, i64 2148709920}
!356 = !{i64 2149993104}
