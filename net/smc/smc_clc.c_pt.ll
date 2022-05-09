; ModuleID = '/llk/IR_all_yes/net/smc/smc_clc.c_pt.bc'
source_filename = "../net/smc/smc_clc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smc_clc_eid_table = type { %struct.rwlock_t, %struct.list_head, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.smc_clc_eid_entry = type { %struct.list_head, [32 x i8] }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.153 }
%union.anon.153 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon.0, %union.anon.171, %union.anon.172, [48 x i8], %union.anon.173, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.175, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { i64 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, ptr }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.177, i32, i32, i32, i16, i16, %union.anon.179, i32, %union.anon.180, %union.anon.181, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.177 = type { i32 }
%union.anon.179 = type { i32 }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.smc_clnt_opts_area_hdr = type { i8, i8, i8, %struct.smc_clc_v2_flag, [2 x i8], i16 }
%struct.smc_clc_v2_flag = type { i8 }
%struct.smc_clc_v2_extension = type { %struct.smc_clnt_opts_area_hdr, [16 x i8], [16 x i8], [0 x [32 x i8]] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.smc_clc_msg_proposal_prefix = type { i32, i8, [2 x i8], i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.170, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.170 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.smc_clc_ipv6_prefix = type <{ %struct.in6_addr, i8 }>
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.149, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.150, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.151, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.149 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.143, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.85, %union.anon.86 }
%union.anon.85 = type { ptr }
%union.anon.86 = type { i64 }
%union.anon.143 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.smc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, ptr, %struct.smc_connection, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i8, i32, i32, i32, i8, %struct.mutex }
%struct.smc_connection = type { %struct.rb_node, ptr, ptr, i32, i8, i32, %struct.atomic_t, i32, ptr, ptr, i32, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %struct.atomic_t, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.delayed_work, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, i32, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.tasklet_struct, i8, i64, i8 }
%struct.smc_host_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_host_cursor, %union.smc_host_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%struct.smc_wr_rx_hdr = type { %union.anon.222 }
%union.anon.222 = type { i8 }
%struct.smc_cdc_producer_flags = type { i8 }
%struct.smc_cdc_conn_state_flags = type { i8 }
%union.smc_host_cursor = type { %struct.atomic64_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.217, i32 }
%union.anon.217 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.74, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.49 }
%struct.llist_node = type { ptr }
%union.anon.49 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.51 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.74 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.smc_clc_msg_hdr = type <{ [4 x i8], i8, i16, i8 }>
%struct.smc_clc_msg_decline = type { %struct.smc_clc_msg_hdr, [8 x i8], i32, i8, [3 x i8], %struct.smc_clc_msg_trail }
%struct.smc_clc_msg_trail = type { [4 x i8] }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.192 }
%union.anon.192 = type { %struct.anon.193 }
%struct.anon.193 = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.208 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.203 }
%struct.anon.203 = type { i64, i64 }
%union.anon.208 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.204, ptr, i32, i32, i32, %union.anon.205 }
%union.anon.204 = type { i64 }
%union.anon.205 = type { i32 }
%struct.smc_rtoken = type { i64, i32 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.smc_clc_msg_proposal = type { %struct.smc_clc_msg_hdr, %struct.smc_clc_msg_local, i16 }
%struct.smc_clc_msg_local = type { [8 x i8], [16 x i8], [6 x i8] }
%struct.smc_clc_msg_decline_v2 = type { %struct.smc_clc_msg_hdr, [8 x i8], i32, i8, [3 x i8], [4 x i32], %struct.smc_clc_msg_trail }
%struct.__kernel_sockaddr_storage = type { %union.anon.228 }
%union.anon.228 = type { ptr, [124 x i8] }
%struct.smc_clc_msg_proposal_area = type { %struct.smc_clc_msg_proposal, %struct.smc_clc_msg_smcd, %struct.smc_clc_msg_proposal_prefix, [8 x %struct.smc_clc_ipv6_prefix], %struct.smc_clc_v2_extension, [8 x [32 x i8]], %struct.smc_clc_smcd_v2_extension, [8 x %struct.smc_clc_smcd_gid_chid], %struct.smc_clc_msg_trail }
%struct.smc_clc_msg_smcd = type { %struct.smc_clc_smcd_gid_chid, i16, [28 x i8] }
%struct.smc_clc_smcd_gid_chid = type <{ i64, i16 }>
%struct.smc_clc_smcd_v2_extension = type { [32 x i8], [16 x i8], [0 x %struct.smc_clc_smcd_gid_chid] }
%struct.smc_init_info = type { i8, i8, i8, i8, i8, i16, i32, [32 x i8], i8, i8, [16 x i8], [6 x i8], [8 x i8], ptr, [16 x i8], i8, i32, %struct.smc_init_info_smcrv2, [9 x i64], [9 x ptr], [9 x i16], i8, i8, i8 }
%struct.smc_init_info_smcrv2 = type { i32, ptr, i32, ptr, i8, [16 x i8], i8, [6 x i8], %struct.smc_gidlist }
%struct.smc_gidlist = type { i8, [2 x [16 x i8]] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.smc_ib_device = type { %struct.list_head, ptr, [2 x %struct.ib_port_attr], %struct.ib_event_handler, ptr, ptr, %struct.tasklet_struct, %struct.tasklet_struct, [2 x [6 x i8]], [2 x [16 x i8]], [2 x i8], i8, %struct.work_struct, i32, [1 x i32], %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, [2 x %struct.atomic_t], [2 x i32] }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.smcd_dev = type { ptr, %struct.device, ptr, i64, %struct.list_head, %struct.spinlock, ptr, %struct.list_head, ptr, [16 x i8], i8, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, i8 }
%struct.smc_clc_msg_accept_confirm_v2 = type { %struct.smc_clc_msg_hdr, %union.anon.225 }
%union.anon.225 = type { %struct.anon.226 }
%struct.anon.226 = type { %struct.smcr_clc_msg_accept_confirm, [32 x i8], [8 x i8] }
%struct.smcr_clc_msg_accept_confirm = type <{ %struct.smc_clc_msg_local, [3 x i8], i32, i8, i32, i8, i8, i64, i8, [3 x i8] }>
%struct.smc_clc_first_contact_ext = type { i16, [2 x i8], [32 x i8] }
%struct.smc_clc_fce_gid_ext = type { [16 x i8], i8, [3 x i8], [0 x [16 x i8]] }
%struct.smc_clc_msg_accept_confirm = type { %struct.smc_clc_msg_hdr, %union.anon.230 }
%union.anon.230 = type { %struct.smcr_clc_msg_accept_confirm }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.219 }
%union.anon.219 = type { %struct.anon.221, [40 x i8] }
%struct.anon.221 = type { i16, i64, i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.194, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.194 = type { %struct.list_head }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@smc_clc_eid_table = internal global { %struct.smc_clc_eid_table, [40 x i8] } zeroinitializer, align 32
@smc_gen_nl_family = external dso_local global %struct.genl_family, align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@SMC_EYECATCHER = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\E2\D4\C3\D9", [28 x i8] zeroinitializer }, align 32
@local_systemid = external dso_local local_unnamed_addr global [8 x i8], align 1
@smc_hostname = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@smc_clc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&smc_clc_eid_table.lock\00", [40 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@smc_clc_prfx_match4_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/smc/smc_clc.c\00", [46 x i8] zeroinitializer }, align 32
@smc_clc_prfx_match4_rcu.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@SMCD_EYECATCHER = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\E2\D4\C3\C4", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smc_clc_prfx_set4_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smc_clc_prfx_set4_rcu.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 78, i64 114]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"smc_clc_eid_table\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 51, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 255, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"SMC_EYECATCHER\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 38, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"smc_hostname\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 42, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1165, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 991, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 2077, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 580, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 232, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 313, i32 9 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 723, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"SMCD_EYECATCHER\00", align 1
@___asan_gen_.63 = private constant [21 x i8] c"../net/smc/smc_clc.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 40, i32 19 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @smc_clc_eid_table, ptr @.str, ptr @SMC_EYECATCHER, ptr @smc_hostname, ptr @smc_clc_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @SMCD_EYECATCHER], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_clc_eid_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMC_EYECATCHER to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_hostname to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_clc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMCD_EYECATCHER to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_clc_ueid_count() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  %0 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  %conv = zext i8 %0 to i32
  tail call void @_raw_read_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  ret i32 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_add_ueid(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 37, i16 %5)
  %cmp.not = icmp eq i16 %5, 37
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %if.end
  %end.0.i.i = phi ptr [ %add.ptr.i.i, %if.end ], [ %incdec.ptr.i.i, %land.rhs.i.i.while.cond.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %end.0.i.i, i32 -1
  %cmp.not.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i
  br i1 %cmp.not.i.i, label %while.cond.i.i.cleanup_crit_edge, label %land.rhs.i.i

while.cond.i.i.cleanup_crit_edge:                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %6 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %10 = and i8 %9, 32
  %cmp2.not.i.i = icmp eq i8 %10, 0
  br i1 %cmp2.not.i.i, label %if.end.i.i, label %land.rhs.i.i.while.cond.i.i_crit_edge

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

if.end.i.i:                                       ; preds = %land.rhs.i.i
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i, align 1
  %conv6.i.i = zext i8 %12 to i32
  %arrayidx7.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv6.i.i
  %13 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %14 to i32
  %and9.i.i = and i32 %conv8.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %cmp10.not.i.i = icmp ne i32 %and9.i.i, 0
  %and15.i.i = and i32 %conv8.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %cmp16.not.i.i = icmp eq i32 %and15.i.i, 0
  %or.cond.i.i = and i1 %cmp10.not.i.i, %cmp16.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.while.body23.i.i_crit_edge, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i.while.body23.i.i_crit_edge:            ; preds = %if.end.i.i
  br label %while.body23.i.i

while.cond20.i.i:                                 ; preds = %while.body23.i.i
  %incdec.ptr46.i.i = getelementptr i8, ptr %ueid.addr.066.i.i, i32 1
  %cmp21.not.i.i = icmp ugt ptr %incdec.ptr46.i.i, %incdec.ptr.i.i
  br i1 %cmp21.not.i.i, label %if.end.i, label %while.cond20.i.i.while.body23.i.i_crit_edge

while.cond20.i.i.while.body23.i.i_crit_edge:      ; preds = %while.cond20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body23.i.i

while.body23.i.i:                                 ; preds = %while.cond20.i.i.while.body23.i.i_crit_edge, %if.end.i.i.while.body23.i.i_crit_edge
  %ueid.addr.066.i.i = phi ptr [ %incdec.ptr46.i.i, %while.cond20.i.i.while.body23.i.i_crit_edge ], [ %add.ptr.i, %if.end.i.i.while.body23.i.i_crit_edge ]
  %15 = ptrtoint ptr %ueid.addr.066.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ueid.addr.066.i.i, align 1
  %conv24.i.i = zext i8 %16 to i32
  %arrayidx25.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv24.i.i
  %17 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx25.i.i, align 1
  %conv26.i.i = zext i8 %18 to i32
  %and27.i.i = and i32 %conv26.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %cmp28.not.i.i = icmp ne i32 %and27.i.i, 0
  %and34.i.i = and i32 %conv26.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %cmp35.not.i.i = icmp eq i32 %and34.i.i, 0
  %or.cond61.i.i = and i1 %cmp28.not.i.i, %cmp35.not.i.i
  %.off.i.i = add i8 %16, -45
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %or.cond62.i.i = select i1 %or.cond61.i.i, i1 true, i1 %switch.i.i
  br i1 %or.cond62.i.i, label %while.cond20.i.i, label %while.body23.i.i.cleanup_crit_edge

while.body23.i.i.cleanup_crit_edge:               ; preds = %while.body23.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %while.cond20.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 40) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %eid.i = getelementptr inbounds %struct.smc_clc_eid_entry, ptr %call7.i.i.i, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %eid.i, ptr %add.ptr.i, i32 32)
  tail call void @_raw_write_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  %21 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp.i = icmp ugt i8 %21, 3
  br i1 %cmp.i, label %if.end3.i.err_out.i_crit_edge, label %if.end3.i.for.cond.i_crit_edge

if.end3.i.for.cond.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.cond.i

if.end3.i.err_out.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end3.i.for.cond.i_crit_edge
  %tmp_ueid.0.in.i = phi ptr [ %tmp_ueid.0.i, %for.body.i.for.cond.i_crit_edge ], [ getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), %if.end3.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %tmp_ueid.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp_ueid.0.i = load ptr, ptr %tmp_ueid.0.in.i, align 4
  %cmp7.not.i = icmp eq ptr %tmp_ueid.0.i, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp7.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %eid9.i = getelementptr inbounds %struct.smc_clc_eid_entry, ptr %tmp_ueid.0.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(32) %eid9.i, ptr noundef dereferenceable(32) %add.ptr.i, i32 32) #18
  %tobool12.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool12.not.i, label %for.body.i.err_out.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.body.i.err_out.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out.i

for.end.i:                                        ; preds = %for.cond.i
  %23 = load ptr, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %23, ptr noundef getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.list_add_tail.exit.i_crit_edge

for.end.i.list_add_tail.exit.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1, i32 1), align 4
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i.i, ptr %23, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.end.i.list_add_tail.exit.i_crit_edge
  %27 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  %inc.i = add i8 %27, 1
  store i8 %inc.i, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  tail call void @_raw_write_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  br label %cleanup

err_out.i:                                        ; preds = %for.body.i.err_out.i_crit_edge, %if.end3.i.err_out.i_crit_edge
  %rc.0.i = phi i32 [ -34, %if.end3.i.err_out.i_crit_edge ], [ -17, %for.body.i.err_out.i_crit_edge ]
  tail call void @_raw_write_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_out.i, %list_add_tail.exit.i, %if.end.i.cleanup_crit_edge, %while.body23.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %while.cond.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %rc.0.i, %err_out.i ], [ 0, %list_add_tail.exit.i ], [ -12, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %while.body23.i.i.cleanup_crit_edge ], [ -22, %while.cond.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_remove_ueid(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 37, i16 %5)
  %cmp.not = icmp eq i16 %5, 37
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %call2 = tail call fastcc i32 @smc_clc_ueid_remove(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_clc_ueid_remove(ptr noundef readonly %ueid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  %0 = load ptr, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), align 4
  %cmp.not24 = icmp eq ptr %0, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp.not24, label %entry.if.end15_crit_edge, label %for.body.lr.ph

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %ueid, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lst_ueid.026 = phi ptr [ %0, %for.body.lr.ph ], [ %tmp_ueid.028, %for.inc.for.body_crit_edge ]
  %rc.025 = phi i32 [ -2, %for.body.lr.ph ], [ %rc.1, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %lst_ueid.026 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp_ueid.028 = load ptr, ptr %lst_ueid.026, align 4
  br i1 %tobool.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %eid = getelementptr inbounds %struct.smc_clc_eid_entry, ptr %lst_ueid.026, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(32) %eid, ptr noundef nonnull dereferenceable(32) %ueid, i32 32) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp eq i32 %bcmp, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lst_ueid.026) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lst_ueid.026, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %lst_ueid.026 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lst_ueid.026, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %lst_ueid.026 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %lst_ueid.026, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %lst_ueid.026, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  %dec = add i8 %10, -1
  store i8 %dec, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %lst_ueid.026) #14
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %lor.lhs.false.for.inc_crit_edge
  %rc.1 = phi i32 [ %rc.025, %lor.lhs.false.for.inc_crit_edge ], [ 0, %list_del.exit ]
  %cmp.not = icmp eq ptr %tmp_ueid.028, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool12.not = icmp eq i32 %rc.1, 0
  br i1 %tobool12.not, label %land.lhs.true, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true:                                    ; preds = %for.end
  %11 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  store i8 1, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 3), align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %for.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  %rc.2 = phi i32 [ %rc.1, %for.end.if.end15_crit_edge ], [ 0, %land.lhs.true.if.end15_crit_edge ], [ -11, %if.then14 ], [ -2, %entry.if.end15_crit_edge ]
  tail call void @_raw_write_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_flush_ueid(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  %0 = load ptr, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), align 4
  %cmp.not24.i = icmp eq ptr %0, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp.not24.i, label %entry.smc_clc_ueid_remove.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.smc_clc_ueid_remove.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_clc_ueid_remove.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %lst_ueid.026.i = phi ptr [ %tmp_ueid.028.i, %list_del.exit.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %lst_ueid.026.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp_ueid.028.i = load ptr, ptr %lst_ueid.026.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lst_ueid.026.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %lst_ueid.026.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %lst_ueid.026.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lst_ueid.026.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %8 = ptrtoint ptr %lst_ueid.026.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %lst_ueid.026.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lst_ueid.026.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %10 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  %dec.i = add i8 %10, -1
  store i8 %dec.i, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %lst_ueid.026.i) #14
  %cmp.not.i = icmp eq ptr %tmp_ueid.028.i, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.end.i, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %list_del.exit.i
  %11 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not.i = icmp eq i8 %11, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %for.end.i.smc_clc_ueid_remove.exit_crit_edge

for.end.i.smc_clc_ueid_remove.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_clc_ueid_remove.exit

if.then14.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store i8 1, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 3), align 1
  br label %smc_clc_ueid_remove.exit

smc_clc_ueid_remove.exit:                         ; preds = %if.then14.i, %for.end.i.smc_clc_ueid_remove.exit_crit_edge, %entry.smc_clc_ueid_remove.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_dump_ueid(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %ueid_str.i.i = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 12
  %3 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlmsg_seq, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  %lst_ueid.018.i = load ptr, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), align 4
  %cmp.not19.i = icmp eq ptr %lst_ueid.018.i, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp.not19.i, label %entry._smc_nl_ueid_dump.exit_crit_edge, label %for.body.lr.ph.i

entry._smc_nl_ueid_dump.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %_smc_nl_ueid_dump.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lst_ueid.021.i = phi ptr [ %lst_ueid.018.i, %for.body.lr.ph.i ], [ %lst_ueid.0.i, %for.inc.i.for.body.i_crit_edge ]
  %idx.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %inc.i = add i32 %idx.020.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.020.i, i32 %10)
  %cmp1.i = icmp slt i32 %idx.020.i, %10
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %ueid_str.i.i) #14
  %11 = call ptr @memset(ptr %ueid_str.i.i, i32 255, i32 33)
  %call.i.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %4, i32 noundef %8, ptr noundef nonnull @smc_gen_nl_family, i32 noundef 2, i8 noundef zeroext 9) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.smc_nl_ueid_dumpinfo.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.smc_nl_ueid_dumpinfo.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_nl_ueid_dumpinfo.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %eid.i = getelementptr inbounds %struct.smc_clc_eid_entry, ptr %lst_ueid.021.i, i32 0, i32 1
  %call1.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ueid_str.i.i, i32 noundef 33, ptr noundef nonnull @.str, ptr noundef %eid.i) #14
  %call.i.i.i = call i32 @strlen(ptr noundef nonnull %ueid_str.i.i) #18
  %add.i.i.i = add i32 %call.i.i.i, 1
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i.i.i, ptr noundef nonnull %ueid_str.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  %add.ptr1.i1.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  br i1 %tobool4.not.i.i, label %smc_nl_ueid_dumpinfo.exit.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %tobool.not.i.i.i.i.i = icmp eq ptr %add.ptr1.i1.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.smc_nl_ueid_dumpinfo.exit.thread.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.smc_nl_ueid_dumpinfo.exit.thread.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_nl_ueid_dumpinfo.exit.thread.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ugt ptr %13, %add.ptr1.i1.i.i
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, !prof !49

if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %14 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i1.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i.i) #14
  br label %smc_nl_ueid_dumpinfo.exit.thread.i

smc_nl_ueid_dumpinfo.exit.thread.i:               ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.smc_nl_ueid_dumpinfo.exit.thread.i_crit_edge, %if.end.i.smc_nl_ueid_dumpinfo.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %ueid_str.i.i) #14
  br label %_smc_nl_ueid_dump.exit

smc_nl_ueid_dumpinfo.exit.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i1.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %18 = ptrtoint ptr %add.ptr1.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.ptr.sub.i.i.i.i, ptr %add.ptr1.i1.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %ueid_str.i.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %smc_nl_ueid_dumpinfo.exit.i, %for.body.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %lst_ueid.021.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %lst_ueid.0.i = load ptr, ptr %lst_ueid.021.i, align 4
  %cmp.not.i = icmp eq ptr %lst_ueid.0.i, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.inc.i._smc_nl_ueid_dump.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i._smc_nl_ueid_dump.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_smc_nl_ueid_dump.exit

_smc_nl_ueid_dump.exit:                           ; preds = %for.inc.i._smc_nl_ueid_dump.exit_crit_edge, %smc_nl_ueid_dumpinfo.exit.thread.i, %entry._smc_nl_ueid_dump.exit_crit_edge
  %idx.016.i = phi i32 [ %idx.020.i, %smc_nl_ueid_dumpinfo.exit.thread.i ], [ 0, %entry._smc_nl_ueid_dump.exit_crit_edge ], [ %inc.i, %for.inc.i._smc_nl_ueid_dump.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %idx.016.i, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_dump_seid(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %seid_str = alloca [33 x i8], align 1
  %seid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %seid_str) #14
  %1 = call ptr @memset(ptr %seid_str, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seid) #14
  %2 = ptrtoint ptr %seid to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %seid, align 4, !annotation !50
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 12
  %9 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlmsg_seq, align 4
  %call3 = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %10, i32 noundef %14, ptr noundef nonnull @smc_gen_nl_family, i32 noundef 2, i8 noundef zeroext 13) #14
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call zeroext i1 @smc_ism_is_v2_capable() #14
  br i1 %call7, label %if.end9, label %if.end6.end_crit_edge

if.end6.end_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %end

if.end9:                                          ; preds = %if.end6
  call void @smc_ism_get_system_eid(ptr noundef nonnull %seid) #14
  %15 = ptrtoint ptr %seid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %seid, align 4
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %seid_str, i32 noundef 33, ptr noundef nonnull @.str, ptr noundef %16)
  %call.i = call i32 @strlen(ptr noundef nonnull %seid_str) #18
  %add.i = add i32 %call.i, 1
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef nonnull %seid_str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool13.not = icmp eq i32 %call1.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.if.then.i_crit_edge

if.end9.if.then.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end15:                                         ; preds = %if.end9
  call void @_raw_read_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  %17 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 3), align 1
  call void @_raw_read_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #14
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %tmp.i, align 1
  %call.i38 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool17.not = icmp eq i32 %call.i38, 0
  br i1 %tobool17.not, label %if.end15.end_crit_edge, label %if.end15.if.then.i_crit_edge

if.end15.if.then.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end15.end_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %end

end:                                              ; preds = %if.end15.end_crit_edge, %if.end6.end_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call3, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %0, align 4
  %len22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len22, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end15.if.then.i_crit_edge, %if.end9.if.then.i_crit_edge
  %add.ptr1.i39 = getelementptr i8, ptr %call3, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i39, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %27, %add.ptr1.i39
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !49

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i39 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %25, %end ], [ -12, %if.end.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seid) #14
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %seid_str) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smc_ism_is_v2_capable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ism_get_system_eid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_enable_seid(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  store i8 1, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 3), align 1
  tail call void @_raw_write_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_disable_seid(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  %0 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i8 0, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 3), align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ 0, %if.else ], [ -2, %entry.if.end_crit_edge ]
  tail call void @_raw_write_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smc_clc_match_eid(ptr nocapture noundef writeonly %negotiated_eid, ptr nocapture noundef readonly %smc_v2_ext, ptr noundef readonly %peer_eid, ptr noundef readonly %local_eid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %negotiated_eid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %negotiated_eid, align 1
  tail call void @_raw_read_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  %tobool.not = icmp eq ptr %peer_eid, null
  %tobool1.not = icmp eq ptr %local_eid, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %land.lhs.true4

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %flag = getelementptr inbounds %struct.smc_clnt_opts_area_hdr, ptr %smc_v2_ext, i32 0, i32 3
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %flag, align 1
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool6.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool6.not, label %land.lhs.true4.if.end_crit_edge, label %land.lhs.true7

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %peer_eid, ptr noundef nonnull dereferenceable(32) %local_eid, i32 32) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  %3 = call ptr @memcpy(ptr %negotiated_eid, ptr %peer_eid, i32 32)
  br label %out

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true4.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %smc_v2_ext to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %smc_v2_ext, align 2
  %conv10 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp31.not = icmp eq i8 %5, 0
  br i1 %cmp31.not, label %if.end.out_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx12 = getelementptr %struct.smc_clc_v2_extension, ptr %smc_v2_ext, i32 0, i32 3, i32 %i.032
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %tmp_ueid.0.in.i = phi ptr [ getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), %for.body ], [ %tmp_ueid.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %tmp_ueid.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp_ueid.0.i = load ptr, ptr %tmp_ueid.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp_ueid.0.i, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.inc, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %eid.i = getelementptr inbounds %struct.smc_clc_eid_entry, ptr %tmp_ueid.0.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(32) %eid.i, ptr noundef dereferenceable(32) %arrayidx12, i32 32) #18
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then14, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then14:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = call ptr @memcpy(ptr %negotiated_eid, ptr %arrayidx12, i32 32)
  br label %out

for.inc:                                          ; preds = %for.cond.i
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %conv10
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.then14, %if.end.out_crit_edge, %if.then
  %match.0.off0 = phi i1 [ true, %if.then14 ], [ true, %if.then ], [ false, %if.end.out_crit_edge ], [ false, %for.inc.out_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  ret i1 %match.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_clc_prfx_match(ptr nocapture noundef readonly %clcsock, ptr nocapture noundef readonly %prop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %clcsock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %call = tail call fastcc ptr @sk_dst_get(ptr noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.out_rel_crit_edge, label %if.end3

if.end.out_rel_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_rel

if.end3:                                          ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !51
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  %ipv6_prefixes_cnt = getelementptr inbounds %struct.smc_clc_msg_proposal_prefix, ptr %prop, i32 0, i32 3
  %8 = ptrtoint ptr %ipv6_prefixes_cnt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ipv6_prefixes_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %rcu_read_lock.exit
  %ip_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 78
  %12 = ptrtoint ptr %ip_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ip_ptr.i.i, align 32
  %call.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then5.__in_dev_get_rcu.exit.i_crit_edge

if.then5.__in_dev_get_rcu.exit.i_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %if.then5
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 232, ptr noundef nonnull @.str.4) #14
  br label %__in_dev_get_rcu.exit.i

__in_dev_get_rcu.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge, %if.then5.__in_dev_get_rcu.exit.i_crit_edge
  %tobool.not.i17 = icmp eq ptr %13, null
  br i1 %tobool.not.i17, label %__in_dev_get_rcu.exit.i.if.end10_crit_edge, label %if.end.i

__in_dev_get_rcu.exit.i.if.end10_crit_edge:       ; preds = %__in_dev_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end.i:                                         ; preds = %__in_dev_get_rcu.exit.i
  %ifa_list.i = getelementptr inbounds %struct.in_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ifa_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %ifa_list.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i18, label %if.end.i.do.end11.i_crit_edge

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i

land.lhs.true.i18:                                ; preds = %if.end.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i18.do.end11.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i18.do.end11.i_crit_edge:           ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i18
  %.b46.i = load i1, ptr @smc_clc_prfx_match4_rcu.__warned, align 1
  br i1 %.b46.i, label %land.lhs.true6.i.do.end11.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end11.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smc_clc_prfx_match4_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 580, ptr noundef nonnull @.str.4) #14
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end11.i_crit_edge, %land.lhs.true.i18.do.end11.i_crit_edge, %if.end.i.do.end11.i_crit_edge
  %tobool13.not49.i = icmp eq ptr %15, null
  br i1 %tobool13.not49.i, label %do.end11.i.if.end10_crit_edge, label %for.body.lr.ph.i

do.end11.i.if.end10_crit_edge:                    ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %do.end11.i
  %prefix_len.i = getelementptr inbounds %struct.smc_clc_msg_proposal_prefix, ptr %prop, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %do.end36.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ifa.050.i = phi ptr [ %15, %for.body.lr.ph.i ], [ %26, %do.end36.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %prefix_len.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prefix_len.i, align 4
  %conv.i = zext i8 %17 to i32
  %ifa_mask.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.050.i, i32 0, i32 6
  %18 = ptrtoint ptr %ifa_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ifa_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i47.i = icmp eq i32 %19, 0
  %20 = tail call i32 @llvm.cttz.i32(i32 %19, i1 false) #14, !range !52
  %sub.i.i = sub nuw nsw i32 32, %20
  %retval.0.i.i = select i1 %tobool.not.i47.i, i32 0, i32 %sub.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, %conv.i
  br i1 %cmp.i, label %land.lhs.true16.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true16.i:                                ; preds = %for.body.i
  %21 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prop, align 4
  %ifa_address.i.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.050.i, i32 0, i32 5
  %23 = ptrtoint ptr %ifa_address.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifa_address.i.i, align 4
  %xor.i.i = xor i32 %24, %22
  %and.i.i = and i32 %xor.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i48.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i48.i, label %land.lhs.true16.i.if.end10_crit_edge, label %land.lhs.true16.i.for.inc.i_crit_edge

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true16.i.if.end10_crit_edge:             ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.i:                                        ; preds = %land.lhs.true16.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %ifa_next.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.050.i, i32 0, i32 1
  %25 = ptrtoint ptr %ifa_next.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %ifa_next.i, align 4
  %call26.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true28.i, label %for.inc.i.do.end36.i_crit_edge

for.inc.i.do.end36.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36.i

land.lhs.true28.i:                                ; preds = %for.inc.i
  %call29.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true28.i.do.end36.i_crit_edge, label %land.lhs.true31.i

land.lhs.true28.i.do.end36.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36.i

land.lhs.true31.i:                                ; preds = %land.lhs.true28.i
  %.b4445.i = load i1, ptr @smc_clc_prfx_match4_rcu.__warned.8, align 1
  br i1 %.b4445.i, label %land.lhs.true31.i.do.end36.i_crit_edge, label %if.then33.i

land.lhs.true31.i.do.end36.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36.i

if.then33.i:                                      ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smc_clc_prfx_match4_rcu.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 580, ptr noundef nonnull @.str.4) #14
  br label %do.end36.i

do.end36.i:                                       ; preds = %if.then33.i, %land.lhs.true31.i.do.end36.i_crit_edge, %land.lhs.true28.i.do.end36.i_crit_edge, %for.inc.i.do.end36.i_crit_edge
  %tobool13.not.i = icmp eq ptr %26, null
  br i1 %tobool13.not.i, label %do.end36.i.if.end10_crit_edge, label %do.end36.i.for.body.i_crit_edge

do.end36.i.for.body.i_crit_edge:                  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end36.i.if.end10_crit_edge:                    ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.else:                                          ; preds = %rcu_read_lock.exit
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 80
  %27 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i19 = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i.i19, label %if.else.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

if.else.__in6_dev_get.exit.i_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %if.else
  %call2.i.i20 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i20)
  %tobool.not.i.i21 = icmp eq i32 %call2.i.i20, 0
  br i1 %tobool.not.i.i21, label %land.lhs.true.i.i22, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

land.lhs.true.i.i22:                              ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i22.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i22.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i.i22
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i22
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i.i23

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

if.then.i.i23:                                    ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 313, ptr noundef nonnull @.str.4) #14
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i.i23, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i.i22.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %if.else.__in6_dev_get.exit.i_crit_edge
  %tobool.not.i24 = icmp eq ptr %28, null
  br i1 %tobool.not.i24, label %__in6_dev_get.exit.i.if.end10_crit_edge, label %if.end.i25

__in6_dev_get.exit.i.if.end10_crit_edge:          ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end.i25:                                       ; preds = %__in6_dev_get.exit.i
  %add.ptr.i = getelementptr i8, ptr %prop, i32 8
  %29 = ptrtoint ptr %ipv6_prefixes_cnt to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ipv6_prefixes_cnt, align 1
  %31 = tail call i8 @llvm.umin.i8(i8 %30, i8 8) #14
  %cond.i = zext i8 %31 to i32
  %addr_list.i = getelementptr inbounds %struct.inet6_dev, ptr %28, i32 0, i32 2
  %32 = ptrtoint ptr %addr_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn64.i = load ptr, ptr %addr_list.i, align 4
  %cmp8.not66.i = icmp eq ptr %.pn64.i, %addr_list.i
  br i1 %cmp8.not66.i, label %if.end.i25.if.end10_crit_edge, label %for.body.lr.ph.i26

if.end.i25.if.end10_crit_edge:                    ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.body.lr.ph.i26:                               ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp1562.not69.i = icmp eq i8 %31, 0
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.inc29.i.for.body.i27_crit_edge, %for.body.lr.ph.i26
  %.pn67.i = phi ptr [ %.pn64.i, %for.body.lr.ph.i26 ], [ %.pn.i, %for.inc29.i.for.body.i27_crit_edge ]
  %ifa.068.i = getelementptr i8, ptr %.pn67.i, i32 -228
  %call.i54.i = tail call i32 @__ipv6_addr_type(ptr noundef %ifa.068.i) #14
  %and.i = and i32 %call.i54.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp ne i32 %and.i, 0
  %brmerge.i = select i1 %tobool11.not.i, i1 true, i1 %cmp1562.not69.i
  br i1 %brmerge.i, label %for.body.i27.for.inc29.i_crit_edge, label %for.body17.lr.ph.i

for.body.i27.for.inc29.i_crit_edge:               ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc29.i

for.body17.lr.ph.i:                               ; preds = %for.body.i27
  %prefix_len.i28 = getelementptr i8, ptr %.pn67.i, i32 -212
  %33 = ptrtoint ptr %prefix_len.i28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prefix_len.i28, align 8
  %shr.i.i = lshr i32 %34, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %34)
  %tobool.not.i55.i = icmp ult i32 %34, 32
  %shl.i.i = shl nuw nsw i32 %shr.i.i, 2
  %and.i57.i = and i32 %34, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.i)
  %tobool4.not.i58.i = icmp eq i32 %and.i57.i, 0
  %arrayidx.i.i = getelementptr i32, ptr %ifa.068.i, i32 %shr.i.i
  %sub.i.i29 = sub nuw nsw i32 32, %and.i57.i
  %shl7.i.i = shl nsw i32 -1, %sub.i.i29
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.inc.i33.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %i.063.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc.i, %for.inc.i33.for.body17.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.smc_clc_ipv6_prefix, ptr %add.ptr.i, i32 %i.063.i
  %prefix_len18.i = getelementptr inbounds %struct.smc_clc_ipv6_prefix, ptr %arrayidx.i, i32 0, i32 1
  %35 = ptrtoint ptr %prefix_len18.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %prefix_len18.i, align 1
  %conv19.i = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv19.i)
  %cmp20.i = icmp eq i32 %34, %conv19.i
  br i1 %cmp20.i, label %land.lhs.true.i30, label %for.body17.i.for.inc.i33_crit_edge

for.body17.i.for.inc.i33_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i33

land.lhs.true.i30:                                ; preds = %for.body17.i
  br i1 %tobool.not.i55.i, label %land.lhs.true.i30.if.end.i.i_crit_edge, label %land.lhs.true.i56.i

land.lhs.true.i30.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i56.i:                              ; preds = %land.lhs.true.i30
  %bcmp.i.i = tail call i32 @bcmp(ptr %ifa.068.i, ptr %arrayidx.i, i32 %shl.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool3.not.i.i31 = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool3.not.i.i31, label %land.lhs.true.i56.i.if.end.i.i_crit_edge, label %land.lhs.true.i56.i.for.inc.i33_crit_edge

land.lhs.true.i56.i.for.inc.i33_crit_edge:        ; preds = %land.lhs.true.i56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i33

land.lhs.true.i56.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i56.i.if.end.i.i_crit_edge, %land.lhs.true.i30.if.end.i.i_crit_edge
  br i1 %tobool4.not.i58.i, label %if.end.i.i.if.end10_crit_edge, label %land.lhs.true5.i59.i

if.end.i.i.if.end10_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true5.i59.i:                             ; preds = %if.end.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx6.i.i = getelementptr i32, ptr %arrayidx.i, i32 %shr.i.i
  %39 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx6.i.i, align 4
  %xor.i.i32 = xor i32 %40, %38
  %and8.i.i = and i32 %xor.i.i32, %shl7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true5.i59.i.if.end10_crit_edge, label %land.lhs.true5.i59.i.for.inc.i33_crit_edge

land.lhs.true5.i59.i.for.inc.i33_crit_edge:       ; preds = %land.lhs.true5.i59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i33

land.lhs.true5.i59.i.if.end10_crit_edge:          ; preds = %land.lhs.true5.i59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.i33:                                      ; preds = %land.lhs.true5.i59.i.for.inc.i33_crit_edge, %land.lhs.true.i56.i.for.inc.i33_crit_edge, %for.body17.i.for.inc.i33_crit_edge
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i
  br i1 %exitcond.not.i, label %for.inc.i33.for.inc29.i_crit_edge, label %for.inc.i33.for.body17.i_crit_edge

for.inc.i33.for.body17.i_crit_edge:               ; preds = %for.inc.i33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17.i

for.inc.i33.for.inc29.i_crit_edge:                ; preds = %for.inc.i33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i33.for.inc29.i_crit_edge, %for.body.i27.for.inc29.i_crit_edge
  %41 = ptrtoint ptr %.pn67.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i = load ptr, ptr %.pn67.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn.i, %addr_list.i
  br i1 %cmp8.not.i, label %for.inc29.i.if.end10_crit_edge, label %for.inc29.i.for.body.i27_crit_edge

for.inc29.i.for.body.i27_crit_edge:               ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i27

for.inc29.i.if.end10_crit_edge:                   ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end10:                                         ; preds = %for.inc29.i.if.end10_crit_edge, %land.lhs.true5.i59.i.if.end10_crit_edge, %if.end.i.i.if.end10_crit_edge, %if.end.i25.if.end10_crit_edge, %__in6_dev_get.exit.i.if.end10_crit_edge, %do.end36.i.if.end10_crit_edge, %land.lhs.true16.i.if.end10_crit_edge, %do.end11.i.if.end10_crit_edge, %__in_dev_get_rcu.exit.i.if.end10_crit_edge
  %rc.0 = phi i32 [ -19, %__in_dev_get_rcu.exit.i.if.end10_crit_edge ], [ -2, %do.end11.i.if.end10_crit_edge ], [ -19, %__in6_dev_get.exit.i.if.end10_crit_edge ], [ -2, %if.end.i25.if.end10_crit_edge ], [ -2, %do.end36.i.if.end10_crit_edge ], [ 0, %land.lhs.true16.i.if.end10_crit_edge ], [ 0, %if.end.i.i.if.end10_crit_edge ], [ 0, %land.lhs.true5.i59.i.if.end10_crit_edge ], [ -2, %for.inc29.i.if.end10_crit_edge ]
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i35, label %if.end10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

if.end10.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %if.end10
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.11) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %if.end10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !53
  %42 = tail call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i.i.i.i.i42 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %out_rel

out_rel:                                          ; preds = %rcu_read_unlock.exit, %if.end.out_rel_crit_edge
  %rc.1 = phi i32 [ %rc.0, %rcu_read_unlock.exit ], [ -19, %if.end.out_rel_crit_edge ]
  tail call void @dst_release(ptr noundef nonnull %call) #14
  br label %out

out:                                              ; preds = %out_rel, %entry.out_crit_edge
  %rc.2 = phi i32 [ %rc.1, %out_rel ], [ -107, %entry.out_crit_edge ]
  ret i32 %rc.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sk_dst_get(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !51
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_dst_cache = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %4 = ptrtoint ptr %sk_dst_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_dst_cache, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @sk_dst_get.__warned, align 1
  br i1 %.b16, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2077, ptr noundef nonnull @.str.4) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end13_crit_edge, label %land.lhs.true10

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true10:                                  ; preds = %do.end7
  %__refcnt = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %__refcnt, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt, ptr %__refcnt, i32 0, i32 1, ptr elementtype(i32) %__refcnt) #14, !srcloc !55
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true10.if.end13_crit_edge, label %do.end11.i.i.i.i

land.lhs.true10.if.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

do.end11.i.i.i.i:                                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !56
  br label %if.end13

if.end13:                                         ; preds = %do.end11.i.i.i.i, %land.lhs.true10.if.end13_crit_edge, %do.end7.if.end13_crit_edge
  %dst.0 = phi ptr [ null, %do.end7.if.end13_crit_edge ], [ null, %land.lhs.true10.if.end13_crit_edge ], [ %5, %do.end11.i.i.i.i ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i17, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end13
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.11) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !53
  %7 = tail call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i.i.i.i.i24 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %dst.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_clc_wait_msg(ptr nocapture noundef %smc, ptr noundef %buf, i32 noundef %buflen, i8 noundef zeroext %expected_type, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %vec = alloca %struct.kvec, align 4
  %tmp = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clcsock, align 8
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %sk_rcvtimeo = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 62
  %4 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_rcvtimeo, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #14
  %6 = call ptr @memset(ptr %msg, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec) #14
  %7 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %8 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %vec, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buflen, ptr %7, align 4
  %10 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %timeout, ptr %sk_rcvtimeo, align 4
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 0, ptr noundef nonnull %vec, i32 noundef 1, i32 noundef 8) #14
  %11 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clcsock, align 8
  %call = call i32 @sock_recvmsg(ptr noundef %12, ptr noundef nonnull %msg, i32 noundef 258) #14
  %13 = call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stack.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %entry.if.then_crit_edge, !prof !57

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

signal_pending.exit:                              ; preds = %entry
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %signal_pending.exit.if.then_crit_edge

signal_pending.exit.if.then_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %signal_pending.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %24 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %sk_err, align 4
  %sk_err8 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %25 = ptrtoint ptr %sk_err8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %sk_err8, align 4
  br label %out

if.end:                                           ; preds = %signal_pending.exit
  %sk_err9 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %26 = ptrtoint ptr %sk_err9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sk_err9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not = icmp eq i32 %27, 0
  br i1 %tobool10.not, label %if.end22, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %27)
  %cmp = icmp eq i32 %27, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %expected_type)
  %cmp14 = icmp eq i8 %expected_type, 4
  %or.cond = and i1 %cmp14, %cmp
  br i1 %or.cond, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %sk_err9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %sk_err9, align 4
  br label %out

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 0, %27
  %sk_err20 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %29 = ptrtoint ptr %sk_err20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %sk_err20, align 4
  br label %out

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %sk_err26 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %30 = ptrtoint ptr %sk_err26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 104, ptr %sk_err26, align 4
  br label %out

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28 = icmp slt i32 %call, 0
  br i1 %cmp28, label %if.then30, label %if.end41

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp31.not = icmp eq i32 %call, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %expected_type)
  %cmp34.not = icmp eq i8 %expected_type, 4
  %or.cond158 = and i1 %cmp34.not, %cmp31.not
  br i1 %or.cond158, label %if.then30.out_crit_edge, label %if.then36

if.then30.out_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then36:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  %sub37 = sub i32 0, %call
  %sk_err39 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %31 = ptrtoint ptr %sk_err39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub37, ptr %sk_err39, align 4
  br label %out

if.end41:                                         ; preds = %if.end27
  %length = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %buf, i32 0, i32 2
  %32 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %length, align 1
  %conv42 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp43 = icmp ult i32 %call, 8
  br i1 %cmp43, label %if.end41.if.then59_crit_edge, label %lor.lhs.false45

if.end41.if.then59_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

lor.lhs.false45:                                  ; preds = %if.end41
  %version = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %buf, i32 0, i32 3
  %34 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load)
  %cmp47 = icmp ult i8 %bf.load, 16
  br i1 %cmp47, label %lor.lhs.false45.if.then59_crit_edge, label %lor.lhs.false49

lor.lhs.false45.if.then59_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %type = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %buf, i32 0, i32 1
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %cmp51.not = icmp eq i8 %36, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %expected_type)
  %cmp57.not = icmp eq i8 %36, %expected_type
  %or.cond159 = or i1 %cmp51.not, %cmp57.not
  br i1 %or.cond159, label %if.end62, label %lor.lhs.false49.if.then59_crit_edge

lor.lhs.false49.if.then59_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

if.then59:                                        ; preds = %lor.lhs.false49.if.then59_crit_edge, %lor.lhs.false45.if.then59_crit_edge, %if.end41.if.then59_crit_edge
  %sk_err61 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %37 = ptrtoint ptr %sk_err61 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 71, ptr %sk_err61, align 4
  br label %out

if.end62:                                         ; preds = %lor.lhs.false49
  %38 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %39 = call i32 @llvm.smin.i32(i32 %conv42, i32 %buflen)
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 0, ptr noundef nonnull %vec, i32 noundef 1, i32 noundef %39) #14
  %40 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clcsock, align 8
  %call70 = call i32 @sock_recvmsg(ptr noundef %41, ptr noundef nonnull %msg, i32 noundef 256) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call70, i32 %39)
  %cmp71 = icmp slt i32 %call70, %39
  br i1 %cmp71, label %if.end62.if.then76_crit_edge, label %lor.lhs.false73

if.end62.if.then76_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76

lor.lhs.false73:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_cmp4(i32 %conv42, i32 %buflen)
  %cmp63 = icmp sle i32 %conv42, %buflen
  %call75 = call fastcc zeroext i1 @smc_clc_msg_hdr_valid(ptr noundef %buf, i1 noundef zeroext %cmp63)
  br i1 %call75, label %if.end79, label %lor.lhs.false73.if.then76_crit_edge

lor.lhs.false73.if.then76_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76

if.then76:                                        ; preds = %lor.lhs.false73.if.then76_crit_edge, %if.end62.if.then76_crit_edge
  %sk_err78 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %42 = ptrtoint ptr %sk_err78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 71, ptr %sk_err78, align 4
  br label %out

if.end79:                                         ; preds = %lor.lhs.false73
  %sub80 = sub i32 %conv42, %call70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub80)
  %tobool81.not162 = icmp eq i32 %sub80, 0
  br i1 %tobool81.not162, label %if.end79.while.end_crit_edge, label %if.end79.while.body_crit_edge

if.end79.while.body_crit_edge:                    ; preds = %if.end79
  br label %while.body

if.end79.while.end_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end79.while.body_crit_edge
  %datlen.0163 = phi i32 [ %sub89, %while.body.while.body_crit_edge ], [ %sub80, %if.end79.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tmp) #14
  %43 = call ptr @memset(ptr %tmp, i32 255, i32 100)
  %44 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %tmp, ptr %vec, align 4
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 100, ptr %7, align 4
  %46 = call i32 @llvm.smin.i32(i32 %datlen.0163, i32 100)
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 0, ptr noundef nonnull %vec, i32 noundef 1, i32 noundef %46) #14
  %47 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clcsock, align 8
  %call88 = call i32 @sock_recvmsg(ptr noundef %48, ptr noundef nonnull %msg, i32 noundef 256) #14
  %sub89 = sub i32 %datlen.0163, %call88
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tmp) #14
  %tobool81.not = icmp eq i32 %sub89, 0
  br i1 %tobool81.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end79.while.end_crit_edge
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %50)
  %cmp92 = icmp eq i8 %50, 4
  br i1 %cmp92, label %if.then94, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then94:                                        ; preds = %while.end
  %peer_diagnosis = getelementptr inbounds %struct.smc_clc_msg_decline, ptr %buf, i32 0, i32 2
  %51 = ptrtoint ptr %peer_diagnosis to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %peer_diagnosis, align 4
  %peer_diagnosis95 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 15
  %53 = ptrtoint ptr %peer_diagnosis95 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %peer_diagnosis95, align 4
  %54 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load96 = load i8, ptr %version, align 1
  %55 = and i8 %bf.load96, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool99.not = icmp eq i8 %55, 0
  br i1 %tobool99.not, label %if.then94.out_crit_edge, label %if.then100

if.then94.out_crit_edge:                          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then100:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #16
  %lgr = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %56 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lgr, align 4
  %sync_err = getelementptr inbounds %struct.smc_link_group, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %sync_err to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load101 = load i8, ptr %sync_err, align 8
  %bf.set = or i8 %bf.load101, -128
  store i8 %bf.set, ptr %sync_err, align 8
  %59 = load ptr, ptr %lgr, align 4
  call void @smc_lgr_terminate_sched(ptr noundef %59) #14
  br label %out

out:                                              ; preds = %if.then100, %if.then94.out_crit_edge, %while.end.out_crit_edge, %if.then76, %if.then59, %if.then36, %if.then30.out_crit_edge, %if.then24, %if.else, %if.then16, %if.then
  %reason_code.0 = phi i32 [ -4, %if.then ], [ -11, %if.then16 ], [ %sub, %if.else ], [ -71, %if.then59 ], [ -71, %if.then76 ], [ 0, %while.end.out_crit_edge ], [ -104, %if.then24 ], [ -11, %if.then30.out_crit_edge ], [ %call, %if.then36 ], [ 83886080, %if.then100 ], [ 83886080, %if.then94.out_crit_edge ]
  %60 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %5, ptr %sk_rcvtimeo, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #14
  ret i32 %reason_code.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @smc_clc_msg_hdr_valid(ptr noundef readonly %clcm, i1 noundef zeroext %check_trl) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %clcm, ptr noundef nonnull dereferenceable(4) @SMC_EYECATCHER, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bcmp52 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %clcm, ptr noundef nonnull dereferenceable(4) @SMCD_EYECATCHER, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp52)
  %tobool4.not = icmp eq i32 %bcmp52, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clcm, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %if.end.sw.bb10_crit_edge
    i8 3, label %if.end.sw.bb10_crit_edge79
    i8 4, label %sw.bb19
  ]

if.end.sw.bb10_crit_edge79:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %typev1.i.i.i = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clcm, i32 0, i32 3
  %3 = ptrtoint ptr %typev1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i.i.i = load i8, ptr %typev1.i.i.i, align 1
  %4 = and i8 %bf.load.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %.not.i.i.i = icmp eq i8 %4, 0
  br i1 %.not.i.i.i, label %smc_get_clc_msg_smcd.exit.i.i, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %iparea_offset.i.i.i = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %clcm, i32 0, i32 2
  %5 = ptrtoint ptr %iparea_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %iparea_offset.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %6)
  %cmp.not.i.i.i = icmp ne i16 %6, 40
  %add.ptr.i.i.i = getelementptr %struct.smc_clc_msg_proposal, ptr %clcm, i32 1
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.not.i.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.i.smc_get_clc_v2_ext.exit.i_crit_edge, label %land.lhs.true.i.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true.i.i.i.lor.lhs.false.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i.i

land.lhs.true.i.i.i.smc_get_clc_v2_ext.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_get_clc_v2_ext.exit.i

smc_get_clc_msg_smcd.exit.i.i:                    ; preds = %sw.bb
  %add.ptr.i.old.i.i = getelementptr %struct.smc_clc_msg_proposal, ptr %clcm, i32 1
  %tobool.not.old.i.i = icmp eq ptr %add.ptr.i.old.i.i, null
  br i1 %tobool.not.old.i.i, label %smc_get_clc_msg_smcd.exit.i.i.smc_get_clc_v2_ext.exit.i_crit_edge, label %smc_get_clc_msg_smcd.exit.i.i.lor.lhs.false.i.i_crit_edge

smc_get_clc_msg_smcd.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %smc_get_clc_msg_smcd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i.i

smc_get_clc_msg_smcd.exit.i.i.smc_get_clc_v2_ext.exit.i_crit_edge: ; preds = %smc_get_clc_msg_smcd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_get_clc_v2_ext.exit.i

lor.lhs.false.i.i:                                ; preds = %smc_get_clc_msg_smcd.exit.i.i.lor.lhs.false.i.i_crit_edge, %land.lhs.true.i.i.i.lor.lhs.false.i.i_crit_edge
  %v2_ext_offset.i.i = getelementptr %struct.smc_clc_msg_proposal, ptr %clcm, i32 1, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %v2_ext_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %v2_ext_offset.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.smc_get_clc_v2_ext.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.smc_get_clc_v2_ext.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_get_clc_v2_ext.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr2.i.i = getelementptr %struct.smc_clc_msg_proposal, ptr %clcm, i32 1, i32 1, i32 0, i32 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %conv.i.i
  br label %smc_get_clc_v2_ext.exit.i

smc_get_clc_v2_ext.exit.i:                        ; preds = %if.end.i.i, %lor.lhs.false.i.i.smc_get_clc_v2_ext.exit.i_crit_edge, %smc_get_clc_msg_smcd.exit.i.i.smc_get_clc_v2_ext.exit.i_crit_edge, %land.lhs.true.i.i.i.smc_get_clc_v2_ext.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr4.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.smc_get_clc_v2_ext.exit.i_crit_edge ], [ null, %smc_get_clc_msg_smcd.exit.i.i.smc_get_clc_v2_ext.exit.i_crit_edge ], [ null, %land.lhs.true.i.i.i.smc_get_clc_v2_ext.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %clcm, i32 40
  %iparea_offset.i.i = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %clcm, i32 0, i32 2
  %9 = ptrtoint ptr %iparea_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %iparea_offset.i.i, align 2
  %conv.i83.i = zext i16 %10 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i83.i
  %bf.lshr.mask.i = and i8 %bf.load.i.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.lshr.mask.i)
  %cmp.i = icmp eq i8 %bf.lshr.mask.i, 16
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %smc_get_clc_v2_ext.exit.i
  %bf.clear.i = and i8 %bf.load.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear.i)
  %cmp6.i = icmp eq i8 %bf.clear.i, 2
  br i1 %cmp6.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %length.i = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clcm, i32 0, i32 2
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %length.i, align 1
  %conv9.i = zext i16 %12 to i32
  %ipv6_prefixes_cnt.i = getelementptr inbounds %struct.smc_clc_msg_proposal_prefix, ptr %add.ptr1.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ipv6_prefixes_cnt.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ipv6_prefixes_cnt.i, align 1
  %conv12.i = zext i8 %14 to i32
  %mul.i = mul nuw nsw i32 %conv12.i, 17
  %add13.i = add nuw nsw i32 %conv.i83.i, 52
  %add14.i = add nuw nsw i32 %add13.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i, i32 %conv9.i)
  %cmp15.not.i = icmp eq i32 %add14.i, %conv9.i
  br i1 %cmp15.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.else.i:                                        ; preds = %smc_get_clc_v2_ext.exit.i
  %length19.i = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clcm, i32 0, i32 2
  %15 = ptrtoint ptr %length19.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %length19.i, align 1
  %conv20.i = zext i16 %16 to i32
  %bf.clear23.i = and i8 %bf.load.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear23.i)
  %cmp25.not.i = icmp eq i8 %bf.clear23.i, 2
  br i1 %cmp25.not.i, label %if.else.i.cond.end.i_crit_edge, label %cond.true.i

if.else.i.cond.end.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv6_prefixes_cnt27.i = getelementptr inbounds %struct.smc_clc_msg_proposal_prefix, ptr %add.ptr1.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %ipv6_prefixes_cnt27.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ipv6_prefixes_cnt27.i, align 1
  %conv28.i = zext i8 %18 to i32
  %mul29.i = mul nuw nsw i32 %conv28.i, 17
  %phi.bo84.i = add nuw nsw i32 %mul29.i, 92
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo84.i, %cond.true.i ], [ 84, %if.else.i.cond.end.i_crit_edge ]
  %19 = and i8 %bf.load.i.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp36.not.i = icmp eq i8 %19, 8
  br i1 %cmp36.not.i, label %cond.end.i.cond.end44.i_crit_edge, label %cond.true38.i

cond.end.i.cond.end44.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end44.i

cond.true38.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %retval.0.i.i, align 2
  %conv40.i = zext i8 %21 to i32
  %mul41.i = shl nuw nsw i32 %conv40.i, 5
  %add42.i = add nuw nsw i32 %mul41.i, 40
  br label %cond.end44.i

cond.end44.i:                                     ; preds = %cond.true38.i, %cond.end.i.cond.end44.i_crit_edge
  %cond45.i = phi i32 [ %add42.i, %cond.true38.i ], [ 0, %cond.end.i.cond.end44.i_crit_edge ]
  %22 = and i8 %bf.load.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %.not.i = icmp eq i8 %22, 0
  br i1 %.not.i, label %cond.end44.i.cond.end60.i_crit_edge, label %cond.true54.i

cond.end44.i.cond.end60.i_crit_edge:              ; preds = %cond.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end60.i

cond.true54.i:                                    ; preds = %cond.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  %ism_gid_cnt.i = getelementptr inbounds %struct.smc_clnt_opts_area_hdr, ptr %retval.0.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %ism_gid_cnt.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ism_gid_cnt.i, align 1
  %conv56.i = zext i8 %24 to i32
  %mul57.i = mul nuw nsw i32 %conv56.i, 10
  %add58.i = add nuw nsw i32 %mul57.i, 48
  br label %cond.end60.i

cond.end60.i:                                     ; preds = %cond.true54.i, %cond.end44.i.cond.end60.i_crit_edge
  %cond61.i = phi i32 [ %add58.i, %cond.true54.i ], [ 0, %cond.end44.i.cond.end60.i_crit_edge ]
  %add62.i = add nuw nsw i32 %cond45.i, %cond.i
  %add63.i = add nuw nsw i32 %add62.i, %cond61.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add63.i, i32 %conv20.i)
  %cmp64.not.i = icmp eq i32 %add63.i, %conv20.i
  br i1 %cmp64.not.i, label %cond.end60.i.sw.epilog_crit_edge, label %cond.end60.i.cleanup_crit_edge

cond.end60.i.cleanup_crit_edge:                   ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end60.i.sw.epilog_crit_edge:                 ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge79
  %typev1.i = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clcm, i32 0, i32 3
  %25 = ptrtoint ptr %typev1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %typev1.i, align 1
  %bf.clear.i53 = and i8 %bf.load.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear.i53)
  %switch.i = icmp ult i8 %bf.clear.i53, 2
  br i1 %switch.i, label %if.end.i55, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i55:                                       ; preds = %sw.bb10
  %bf.lshr.mask.i54 = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.lshr.mask.i54)
  %cmp11.i = icmp eq i8 %bf.lshr.mask.i54, 16
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i57

if.then13.i:                                      ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i53)
  %cmp18.i = icmp eq i8 %bf.clear.i53, 0
  %length.i56 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clcm, i32 0, i32 2
  %26 = ptrtoint ptr %length.i56 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %length.i56, align 1
  br i1 %cmp18.i, label %land.lhs.true20.i, label %land.lhs.true30.i

land.lhs.true20.i:                                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %27)
  %cmp22.not.i = icmp eq i16 %27, 68
  br i1 %cmp22.not.i, label %land.lhs.true20.i.if.end13_crit_edge, label %land.lhs.true20.i.cleanup_crit_edge

land.lhs.true20.i.cleanup_crit_edge:              ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true20.i.if.end13_crit_edge:             ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true30.i:                                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %27)
  %cmp33.not.i = icmp eq i16 %27, 48
  br i1 %cmp33.not.i, label %land.lhs.true30.i.if.end13_crit_edge, label %land.lhs.true30.i.cleanup_crit_edge

land.lhs.true30.i.cleanup_crit_edge:              ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true30.i.if.end13_crit_edge:             ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.else.i57:                                      ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i53)
  %cmp41.i = icmp eq i8 %bf.clear.i53, 1
  %length44.i = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clcm, i32 0, i32 2
  %28 = ptrtoint ptr %length44.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %length44.i, align 1
  br i1 %cmp41.i, label %smc_clc_msg_acc_conf_valid.exit, label %land.lhs.true61.i

land.lhs.true61.i:                                ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_const_cmp2(i16 108, i16 %29)
  %cmp64.i = icmp ult i16 %29, 108
  br i1 %cmp64.i, label %land.lhs.true61.i.cleanup_crit_edge, label %land.lhs.true61.i.if.end13_crit_edge

land.lhs.true61.i.if.end13_crit_edge:             ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true61.i.cleanup_crit_edge:              ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

smc_clc_msg_acc_conf_valid.exit:                  ; preds = %if.else.i57
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %29, label %smc_clc_msg_acc_conf_valid.exit.cleanup_crit_edge [
    i16 114, label %smc_clc_msg_acc_conf_valid.exit.if.end13_crit_edge
    i16 78, label %smc_clc_msg_acc_conf_valid.exit.if.end13_crit_edge80
  ]

smc_clc_msg_acc_conf_valid.exit.if.end13_crit_edge80: ; preds = %smc_clc_msg_acc_conf_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

smc_clc_msg_acc_conf_valid.exit.if.end13_crit_edge: ; preds = %smc_clc_msg_acc_conf_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

smc_clc_msg_acc_conf_valid.exit.cleanup_crit_edge: ; preds = %smc_clc_msg_acc_conf_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %smc_clc_msg_acc_conf_valid.exit.if.end13_crit_edge, %smc_clc_msg_acc_conf_valid.exit.if.end13_crit_edge80, %land.lhs.true61.i.if.end13_crit_edge, %land.lhs.true30.i.if.end13_crit_edge, %land.lhs.true20.i.if.end13_crit_edge
  br i1 %check_trl, label %if.end13.land.lhs.true25_crit_edge, label %if.end13.if.end36_crit_edge

if.end13.if.end36_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end13.land.lhs.true25_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true25

sw.bb19:                                          ; preds = %if.end
  %typev1.i60 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clcm, i32 0, i32 3
  %31 = ptrtoint ptr %typev1.i60 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i61 = load i8, ptr %typev1.i60, align 1
  %bf.clear.i62 = and i8 %bf.load.i61, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i62)
  %switch.not.not.i = icmp eq i8 %bf.clear.i62, 0
  br i1 %switch.not.not.i, label %if.end.i66, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i66:                                       ; preds = %sw.bb19
  %bf.lshr.mask.i63 = and i8 %bf.load.i61, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.lshr.mask.i63)
  %cmp11.i64 = icmp eq i8 %bf.lshr.mask.i63, 16
  %length.i65 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clcm, i32 0, i32 2
  %32 = ptrtoint ptr %length.i65 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %length.i65, align 1
  br i1 %cmp11.i64, label %if.then13.i68, label %if.else.i69

if.then13.i68:                                    ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %33)
  %cmp15.not.i67 = icmp eq i16 %33, 28
  br i1 %cmp15.not.i67, label %if.then13.i68.if.end36_crit_edge, label %if.then13.i68.cleanup_crit_edge

if.then13.i68.cleanup_crit_edge:                  ; preds = %if.then13.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13.i68.if.end36_crit_edge:                 ; preds = %if.then13.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.else.i69:                                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_const_cmp2(i16 44, i16 %33)
  %cmp21.not.i = icmp eq i16 %33, 44
  br i1 %cmp21.not.i, label %if.else.i69.if.end36_crit_edge, label %if.else.i69.cleanup_crit_edge

if.else.i69.cleanup_crit_edge:                    ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.i69.if.end36_crit_edge:                   ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

sw.epilog:                                        ; preds = %cond.end60.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge
  br i1 %check_trl, label %sw.epilog.land.lhs.true25_crit_edge, label %sw.epilog.if.end36_crit_edge

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

sw.epilog.land.lhs.true25_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true25

land.lhs.true25:                                  ; preds = %sw.epilog.land.lhs.true25_crit_edge, %if.end13.land.lhs.true25_crit_edge
  %conv16.pn.in.in = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clcm, i32 0, i32 2
  %34 = ptrtoint ptr %conv16.pn.in.in to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %conv16.pn.in = load i16, ptr %conv16.pn.in.in, align 1
  %conv16.pn = zext i16 %conv16.pn.in to i32
  %add.ptr17.pn = getelementptr i8, ptr %clcm, i32 %conv16.pn
  %trl.078 = getelementptr i8, ptr %add.ptr17.pn, i32 -4
  %bcmp50 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %trl.078, ptr noundef nonnull dereferenceable(4) @SMC_EYECATCHER, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp50)
  %tobool29.not = icmp eq i32 %bcmp50, 0
  br i1 %tobool29.not, label %land.lhs.true25.if.end36_crit_edge, label %land.lhs.true30

land.lhs.true25.if.end36_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %bcmp51 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %trl.078, ptr noundef nonnull dereferenceable(4) @SMCD_EYECATCHER, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp51)
  %tobool34.not = icmp eq i32 %bcmp51, 0
  br i1 %tobool34.not, label %land.lhs.true30.if.end36_crit_edge, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true30.if.end36_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true30.if.end36_crit_edge, %land.lhs.true25.if.end36_crit_edge, %sw.epilog.if.end36_crit_edge, %if.else.i69.if.end36_crit_edge, %if.then13.i68.if.end36_crit_edge, %if.end13.if.end36_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %land.lhs.true30.cleanup_crit_edge, %if.else.i69.cleanup_crit_edge, %if.then13.i68.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %smc_clc_msg_acc_conf_valid.exit.cleanup_crit_edge, %land.lhs.true61.i.cleanup_crit_edge, %land.lhs.true30.i.cleanup_crit_edge, %land.lhs.true20.i.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %cond.end60.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end36 ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %smc_clc_msg_acc_conf_valid.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %land.lhs.true30.cleanup_crit_edge ], [ false, %if.then.i.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %cond.end60.i.cleanup_crit_edge ], [ false, %sw.bb10.cleanup_crit_edge ], [ false, %land.lhs.true30.i.cleanup_crit_edge ], [ false, %land.lhs.true20.i.cleanup_crit_edge ], [ false, %land.lhs.true61.i.cleanup_crit_edge ], [ false, %sw.bb19.cleanup_crit_edge ], [ false, %if.then13.i68.cleanup_crit_edge ], [ false, %if.else.i69.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_lgr_terminate_sched(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_clc_send_decline(ptr nocapture noundef readonly %smc, i32 noundef %peer_diag_info, i8 noundef zeroext %version) local_unnamed_addr #0 align 64 {
entry:
  %dclc = alloca %struct.smc_clc_msg_decline_v2, align 4
  %msg = alloca %struct.msghdr, align 8
  %vec = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %dclc) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec) #14
  %0 = getelementptr inbounds i8, ptr %dclc, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 36)
  %2 = ptrtoint ptr %dclc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -489372711, ptr %dclc, align 4
  %type = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %dclc, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %type, align 4
  %version3 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %dclc, i32 0, i32 3
  %bf.shl = shl i8 %version, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %version)
  %cmp = icmp eq i8 %version, 1
  %conv5 = select i1 %cmp, i8 0, i8 32
  %os_type = getelementptr inbounds %struct.smc_clc_msg_decline_v2, ptr %dclc, i32 0, i32 3
  %4 = ptrtoint ptr %os_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv5, ptr %os_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %peer_diag_info)
  %cmp11 = icmp eq i32 %peer_diag_info, 67108864
  %conv14 = select i1 %cmp11, i8 8, i8 0
  %bf.set20 = or i8 %bf.shl, %conv14
  %5 = ptrtoint ptr %version3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set20, ptr %version3, align 1
  %lgr.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lgr.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.land.lhs.true_crit_edge, label %smc_conn_lgr_valid.exit

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

smc_conn_lgr_valid.exit:                          ; preds = %entry
  %alert_token_local.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.i.not = icmp eq i32 %9, 0
  br i1 %tobool1.i.not, label %smc_conn_lgr_valid.exit.land.lhs.true_crit_edge, label %lor.lhs.false

smc_conn_lgr_valid.exit.land.lhs.true_crit_edge:  ; preds = %smc_conn_lgr_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %smc_conn_lgr_valid.exit
  %10 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lgr.i, align 4
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_smcd, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %smc_conn_lgr_valid.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call22 = tail call zeroext i1 @smc_ib_is_valid_local_systemid() #14
  br i1 %call22, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %id_for_peer = getelementptr inbounds %struct.smc_clc_msg_decline_v2, ptr %dclc, i32 0, i32 1
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @local_systemid to i32), i32 8)
  %14 = load i64, ptr @local_systemid, align 1
  %15 = ptrtoint ptr %id_for_peer to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %id_for_peer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %16 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %peer_diagnosis = getelementptr inbounds %struct.smc_clc_msg_decline_v2, ptr %dclc, i32 0, i32 2
  %17 = ptrtoint ptr %peer_diagnosis to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %peer_diag_info, ptr %peer_diagnosis, align 4
  %trl31 = getelementptr inbounds %struct.smc_clc_msg_decline_v2, ptr %dclc, i32 0, i32 6
  %trl = getelementptr inbounds %struct.smc_clc_msg_decline, ptr %dclc, i32 0, i32 5
  %trl31.sink = select i1 %cmp, ptr %trl, ptr %trl31
  %send_len.0 = select i1 %cmp, i32 28, i32 44
  %18 = ptrtoint ptr %trl31.sink to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -489372711, ptr %trl31.sink, align 4
  %conv35 = trunc i32 %send_len.0 to i16
  %length = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %dclc, i32 0, i32 2
  %19 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %conv35, ptr %length, align 1
  %20 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %21 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dclc, ptr %vec, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %send_len.0, ptr %16, align 4
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %23 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clcsock, align 8
  %call37 = call i32 @kernel_sendmsg(ptr noundef %24, ptr noundef nonnull %msg, ptr noundef nonnull %vec, i32 noundef 1, i32 noundef %send_len.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %send_len.0)
  %cmp41 = icmp slt i32 %call37, %send_len.0
  %or.cond = or i1 %cmp38, %cmp41
  %25 = call i32 @llvm.smin.i32(i32 %call37, i32 0)
  %26 = select i1 %or.cond, i32 -71, i32 %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %dclc) #14
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smc_ib_is_valid_local_systemid() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_clc_send_proposal(ptr nocapture noundef %smc, ptr nocapture noundef readonly %ini) local_unnamed_addr #0 align 64 {
entry:
  %addrs.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %vec = alloca [8 x %struct.kvec], align 4
  %msg = alloca %struct.msghdr, align 8
  %eid111 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vec) #14
  %0 = call ptr @memset(ptr %vec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #14
  %1 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 652) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pclc_smcd2 = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 1
  %pclc_prfx3 = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 2
  %pclc_prfx_ipv6 = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 3
  %pclc_v2_ext = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 4
  %pclc_smcd_v2_ext = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 6
  %pclc_gidchids = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 7
  %pclc_trl = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 8
  %version = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %call7.i.i, i32 0, i32 3
  %smc_type_v1 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 1
  %3 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %smc_type_v1, align 1
  %bf.value = and i8 %4, 3
  %smc_type_v2 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 2
  %5 = ptrtoint ptr %smc_type_v2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %smc_type_v2, align 2
  %bf.value11 = shl i8 %6, 2
  %bf.shl = and i8 %bf.value11, 12
  %bf.clear12 = or i8 %bf.value, %bf.shl
  %bf.set13 = or i8 %bf.clear12, 32
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.set13, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp.not = icmp eq i8 %4, 2
  br i1 %cmp.not, label %if.end.if.end34_crit_edge, label %if.then16

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then16:                                        ; preds = %if.end
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %8 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clcsock, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i, align 16
  %call.i = tail call fastcc ptr @sk_dst_get(ptr noundef %11) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addrs.i) #14
  %12 = call ptr @memset(ptr %addrs.i, i32 255, i32 128)
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %smc_clc_prfx_set.exit.thread, label %if.end.i

smc_clc_prfx_set.exit.thread:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addrs.i) #14
  br label %if.then19

if.end.i:                                         ; preds = %if.then16
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i.smc_clc_prfx_set.exit.thread412_crit_edge, label %if.end3.i

if.end.i.smc_clc_prfx_set.exit.thread412_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_clc_prfx_set.exit.thread412

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call i32 @kernel_getsockname(ptr noundef %9, ptr noundef nonnull %addrs.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end3.i.smc_clc_prfx_set.exit.thread412_crit_edge, label %if.end6.i

if.end3.i.smc_clc_prfx_set.exit.thread412_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_clc_prfx_set.exit.thread412

if.end6.i:                                        ; preds = %if.end3.i
  %15 = call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !51
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %if.end6.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end6.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end6.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end6.i.rcu_read_lock.exit.i_crit_edge
  %19 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %20)
  %cmp7.i = icmp eq i16 %20, 2
  br i1 %cmp7.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %addrs.i, i32 0, i32 2
  %21 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sin_addr.i, align 4
  %call10.i = call fastcc i32 @smc_clc_prfx_set4_rcu(ptr noundef nonnull %call.i, i32 noundef %22, ptr noundef %pclc_prfx3) #14
  br label %if.end18.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addrs.i, i32 0, i32 3
  %23 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sin6_addr.i, align 4
  %arrayidx2.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addrs.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %26, %24
  %arrayidx4.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addrs.i, i32 0, i32 3, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %28, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then12.i, label %if.else15.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addrs.i, i32 0, i32 3, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %call14.i = call fastcc i32 @smc_clc_prfx_set4_rcu(ptr noundef nonnull %call.i, i32 noundef %30, ptr noundef %pclc_prfx3) #14
  br label %if.end18.i

if.else15.i:                                      ; preds = %if.else.i
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %ip6_ptr.i.i.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 80
  %33 = ptrtoint ptr %ip6_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %ip6_ptr.i.i.i, align 8
  %call.i.i.i = call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i.i.i, label %if.else15.i.__in6_dev_get.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.else15.i.__in6_dev_get.exit.i.i_crit_edge:     ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.else15.i
  %call2.i.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.__in6_dev_get.exit.i.i_crit_edge

lor.lhs.false.i.i.i.__in6_dev_get.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call3.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.__in6_dev_get.exit.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.__in6_dev_get.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b10.i.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i.i, label %land.lhs.true5.i.i.i.__in6_dev_get.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.__in6_dev_get.exit.i.i_crit_edge: ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 313, ptr noundef nonnull @.str.4) #14
  br label %__in6_dev_get.exit.i.i

__in6_dev_get.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.__in6_dev_get.exit.i.i_crit_edge, %land.lhs.true.i.i.i.__in6_dev_get.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.__in6_dev_get.exit.i.i_crit_edge, %if.else15.i.__in6_dev_get.exit.i.i_crit_edge
  %tobool.not.i28.i = icmp eq ptr %34, null
  br i1 %tobool.not.i28.i, label %__in6_dev_get.exit.i.i.if.end18.i_crit_edge, label %if.end.i.i

__in6_dev_get.exit.i.i.if.end18.i_crit_edge:      ; preds = %__in6_dev_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.end.i.i:                                       ; preds = %__in6_dev_get.exit.i.i
  %addr_list.i.i = getelementptr inbounds %struct.inet6_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %addr_list.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn46.i.i = load ptr, ptr %addr_list.i.i, align 4
  %cmp.not48.i.i = icmp eq ptr %.pn46.i.i, %addr_list.i.i
  br i1 %cmp.not48.i.i, label %for.end.thread52.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

for.end.thread52.i.i:                             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv6_prefixes_cnt55.i.i = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %ipv6_prefixes_cnt55.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ipv6_prefixes_cnt55.i.i, align 1
  br label %51

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %.pn50.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn46.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %cnt.049.i.i = phi i32 [ %cnt.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %ifa.051.i.i = getelementptr i8, ptr %.pn50.i.i, i32 -228
  %call.i38.i.i = call i32 @__ipv6_addr_type(ptr noundef %ifa.051.i.i) #14
  %and.i.i = and i32 %call.i38.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.smc_clc_ipv6_prefix, ptr %pclc_prfx_ipv6, i32 %cnt.049.i.i
  %prefix_len.i.i = getelementptr i8, ptr %.pn50.i.i, i32 -212
  %37 = ptrtoint ptr %prefix_len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prefix_len.i.i, align 8
  %shr.i.i.i = ashr i32 %38, 3
  %and.i39.i.i = and i32 %38, 7
  %39 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 16)
  %40 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %ifa.051.i.i, i32 %shr.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i39.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end5.i.i.ipv6_addr_prefix.exit.i.i_crit_edge, label %if.then.i40.i.i

if.end5.i.i.ipv6_addr_prefix.exit.i.i_crit_edge:  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipv6_addr_prefix.exit.i.i

if.then.i40.i.i:                                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr [16 x i8], ptr %ifa.051.i.i, i32 0, i32 %shr.i.i.i
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i, align 1
  %shr4.i.i.i = lshr i32 65280, %and.i39.i.i
  %43 = trunc i32 %shr4.i.i.i to i8
  %conv6.i.i.i = and i8 %42, %43
  %arrayidx8.i.i.i = getelementptr [16 x i8], ptr %arrayidx.i.i, i32 0, i32 %shr.i.i.i
  %44 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv6.i.i.i, ptr %arrayidx8.i.i.i, align 1
  br label %ipv6_addr_prefix.exit.i.i

ipv6_addr_prefix.exit.i.i:                        ; preds = %if.then.i40.i.i, %if.end5.i.i.ipv6_addr_prefix.exit.i.i_crit_edge
  %45 = ptrtoint ptr %prefix_len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %prefix_len.i.i, align 8
  %conv.i.i = trunc i32 %46 to i8
  %prefix_len9.i.i = getelementptr %struct.smc_clc_ipv6_prefix, ptr %pclc_prfx_ipv6, i32 %cnt.049.i.i, i32 1
  %47 = ptrtoint ptr %prefix_len9.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i.i, ptr %prefix_len9.i.i, align 1
  %inc.i.i = add i32 %cnt.049.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.i)
  %cmp10.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %cmp10.i.i, label %for.end.thread.i.i, label %ipv6_addr_prefix.exit.i.i.for.inc.i.i_crit_edge

ipv6_addr_prefix.exit.i.i.for.inc.i.i_crit_edge:  ; preds = %ipv6_addr_prefix.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.end.thread.i.i:                               ; preds = %ipv6_addr_prefix.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv6_prefixes_cnt43.i.i = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 2, i32 3
  %48 = ptrtoint ptr %ipv6_prefixes_cnt43.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 8, ptr %ipv6_prefixes_cnt43.i.i, align 1
  br label %if.end18.i

for.inc.i.i:                                      ; preds = %ipv6_addr_prefix.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %cnt.1.i.i = phi i32 [ %cnt.049.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %ipv6_addr_prefix.exit.i.i.for.inc.i.i_crit_edge ]
  %49 = ptrtoint ptr %.pn50.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i.i = load ptr, ptr %.pn50.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %addr_list.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %conv19.i.i = trunc i32 %cnt.1.i.i to i8
  %ipv6_prefixes_cnt.i.i = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %ipv6_prefixes_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv19.i.i, ptr %ipv6_prefixes_cnt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.1.i.i)
  %tobool20.not.i.i = icmp eq i32 %cnt.1.i.i, 0
  br i1 %tobool20.not.i.i, label %for.end.i.i._crit_edge, label %for.end.i.i.if.end18.i_crit_edge

for.end.i.i.if.end18.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

for.end.i.i._crit_edge:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %51

51:                                               ; preds = %for.end.i.i._crit_edge, %for.end.thread52.i.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %51, %for.end.i.i.if.end18.i_crit_edge, %for.end.thread.i.i, %__in6_dev_get.exit.i.i.if.end18.i_crit_edge, %if.then12.i, %if.then9.i
  %rc.0.i = phi i32 [ %call10.i, %if.then9.i ], [ %call14.i, %if.then12.i ], [ -19, %__in6_dev_get.exit.i.i.if.end18.i_crit_edge ], [ 0, %for.end.thread.i.i ], [ -19, %51 ], [ 0, %for.end.i.i.if.end18.i_crit_edge ]
  %call.i29.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i29.i, label %if.end18.i.smc_clc_prfx_set.exit_crit_edge, label %land.lhs.true.i32.i

if.end18.i.smc_clc_prfx_set.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_clc_prfx_set.exit

land.lhs.true.i32.i:                              ; preds = %if.end18.i
  %call1.i30.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call1.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i32.i.smc_clc_prfx_set.exit_crit_edge, label %land.lhs.true2.i34.i

land.lhs.true.i32.i.smc_clc_prfx_set.exit_crit_edge: ; preds = %land.lhs.true.i32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_clc_prfx_set.exit

land.lhs.true2.i34.i:                             ; preds = %land.lhs.true.i32.i
  %.b4.i33.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33.i, label %land.lhs.true2.i34.i.smc_clc_prfx_set.exit_crit_edge, label %if.then.i35.i

land.lhs.true2.i34.i.smc_clc_prfx_set.exit_crit_edge: ; preds = %land.lhs.true2.i34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_clc_prfx_set.exit

if.then.i35.i:                                    ; preds = %land.lhs.true2.i34.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.11) #14
  br label %smc_clc_prfx_set.exit

smc_clc_prfx_set.exit.thread412:                  ; preds = %if.end3.i.smc_clc_prfx_set.exit.thread412_crit_edge, %if.end.i.smc_clc_prfx_set.exit.thread412_crit_edge
  call void @dst_release(ptr noundef nonnull %call.i) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addrs.i) #14
  br label %if.then19

smc_clc_prfx_set.exit:                            ; preds = %if.then.i35.i, %land.lhs.true2.i34.i.smc_clc_prfx_set.exit_crit_edge, %land.lhs.true.i32.i.smc_clc_prfx_set.exit_crit_edge, %if.end18.i.smc_clc_prfx_set.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !53
  %52 = call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i.i.i.i.i36.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i36.i to ptr
  %preempt_count.i.i.i.i37.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i37.i, align 4
  %sub.i.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i37.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @dst_release(ptr noundef nonnull %call.i) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addrs.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool18.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool18.not, label %if.else, label %smc_clc_prfx_set.exit.if.then19_crit_edge

smc_clc_prfx_set.exit.if.then19_crit_edge:        ; preds = %smc_clc_prfx_set.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

if.then19:                                        ; preds = %smc_clc_prfx_set.exit.if.then19_crit_edge, %smc_clc_prfx_set.exit.thread412, %smc_clc_prfx_set.exit.thread
  %56 = ptrtoint ptr %smc_type_v2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %smc_type_v2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp22 = icmp eq i8 %57, 2
  br i1 %cmp22, label %if.then19.cleanup.sink.split_crit_edge, label %if.end25

if.then19.cleanup.sink.split_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load28 = load i8, ptr %version, align 1
  %bf.clear29 = and i8 %bf.load28, -4
  %bf.set30 = or i8 %bf.clear29, 2
  store i8 %bf.set30, ptr %version, align 1
  br label %if.end34

if.else:                                          ; preds = %smc_clc_prfx_set.exit
  call void @__sanitizer_cov_trace_pc() #16
  %iparea_offset = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %call7.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %iparea_offset to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 40, ptr %iparea_offset, align 2
  %ipv6_prefixes_cnt = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 2, i32 3
  %60 = ptrtoint ptr %ipv6_prefixes_cnt to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ipv6_prefixes_cnt, align 1
  %conv31 = zext i8 %61 to i32
  %mul = mul nuw nsw i32 %conv31, 17
  %add32 = add nuw nsw i32 %mul, 92
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end25, %if.end.if.end34_crit_edge
  %plen.0 = phi i32 [ 84, %if.end25 ], [ %add32, %if.else ], [ 84, %if.end.if.end34_crit_edge ]
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -489372711, ptr %call7.i.i, align 8
  %type = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %call7.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %type, align 4
  %64 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %smc_type_v1, align 1
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %65, label %if.end34.if.end50_crit_edge [
    i8 3, label %if.end34.if.then41_crit_edge
    i8 0, label %if.end34.if.then41_crit_edge427
  ]

if.end34.if.then41_crit_edge427:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41

if.end34.if.then41_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41

if.end34.if.end50_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then41:                                        ; preds = %if.end34.if.then41_crit_edge, %if.end34.if.then41_crit_edge427
  %lcl = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %call7.i.i, i32 0, i32 1
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @local_systemid to i32), i32 8)
  %67 = load i64, ptr @local_systemid, align 1
  %68 = ptrtoint ptr %lcl to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %lcl, align 8
  %gid = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %call7.i.i, i32 0, i32 1, i32 1
  %ib_gid = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 14
  %69 = call ptr @memcpy(ptr %gid, ptr %ib_gid, i32 16)
  %mac = getelementptr inbounds %struct.smc_clc_msg_proposal, ptr %call7.i.i, i32 0, i32 1, i32 2
  %ib_dev = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 13
  %70 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ib_dev, align 4
  %ib_port = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 15
  %72 = ptrtoint ptr %ib_port to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ib_port, align 8
  %conv49 = zext i8 %73 to i32
  %sub = add nsw i32 %conv49, -1
  %arrayidx = getelementptr %struct.smc_ib_device, ptr %71, i32 0, i32 8, i32 %sub
  %74 = call ptr @memcpy(ptr %mac, ptr %arrayidx, i32 6)
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %if.end34.if.end50_crit_edge
  %75 = and i8 %65, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %76 = icmp eq i8 %75, 1
  br i1 %76, label %if.then54, label %if.end50.if.end66_crit_edge

if.end50.if.end66_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then54:                                        ; preds = %if.end50
  %ism_dev = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 19
  %77 = ptrtoint ptr %ism_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ism_dev, align 8
  %tobool56.not = icmp eq ptr %78, null
  br i1 %tobool56.not, label %if.then54.if.end66_crit_edge, label %if.then57

if.then54.if.end66_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  %local_gid = getelementptr inbounds %struct.smcd_dev, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %local_gid to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %local_gid, align 8
  %81 = ptrtoint ptr %pclc_smcd2 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %pclc_smcd2, align 8
  %call63 = call zeroext i16 @smc_ism_get_chid(ptr noundef nonnull %78) #14
  %chid = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %82 = ptrtoint ptr %chid to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %call63, ptr %chid, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then57, %if.then54.if.end66_crit_edge, %if.end50.if.end66_crit_edge
  %83 = ptrtoint ptr %smc_type_v2 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %smc_type_v2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %cmp69 = icmp eq i8 %84, 2
  br i1 %cmp69, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %v2_ext_offset = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %v2_ext_offset to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %v2_ext_offset, align 2
  br label %if.end106

if.else72:                                        ; preds = %if.end66
  %flag = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  %86 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load75 = load i8, ptr %flag, align 1
  %bf.clear76 = and i8 %bf.load75, 15
  store i8 %bf.clear76, ptr %flag, align 1
  %87 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %smc_type_v1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %cmp80.not = icmp eq i8 %88, 2
  br i1 %cmp80.not, label %if.else72.if.end90_crit_edge, label %if.then82

if.else72.if.end90_crit_edge:                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then82:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #16
  %ipv6_prefixes_cnt83 = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 2, i32 3
  %89 = ptrtoint ptr %ipv6_prefixes_cnt83 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ipv6_prefixes_cnt83, align 1
  %conv84 = zext i8 %90 to i16
  %mul85 = mul nuw nsw i16 %conv84, 17
  %add88 = add nuw nsw i16 %mul85, 36
  br label %if.end90

if.end90:                                         ; preds = %if.then82, %if.else72.if.end90_crit_edge
  %v2_ext_offset73.0 = phi i16 [ %add88, %if.then82 ], [ 28, %if.else72.if.end90_crit_edge ]
  %v2_ext_offset91 = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %v2_ext_offset91 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %v2_ext_offset73.0, ptr %v2_ext_offset91, align 2
  %add92 = add nuw nsw i32 %plen.0, 40
  call void @_raw_read_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  %92 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  %93 = ptrtoint ptr %pclc_v2_ext to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %pclc_v2_ext, align 8
  %conv94 = zext i8 %92 to i32
  %mul95 = shl nuw nsw i32 %conv94, 5
  %add96 = add nuw nsw i32 %add92, %mul95
  %ueident.0415 = load ptr, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), align 4
  %cmp97.not416 = icmp eq ptr %ueident.0415, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp97.not416, label %if.end90.for.end_crit_edge, label %for.body.lr.ph

if.end90.for.end_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end90
  %user_eids = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ueident.0418 = phi ptr [ %ueident.0415, %for.body.lr.ph ], [ %ueident.0, %for.body.for.body_crit_edge ]
  %i.0417 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %inc = add i32 %i.0417, 1
  %arrayidx99 = getelementptr [0 x [32 x i8]], ptr %user_eids, i32 0, i32 %i.0417
  %eid = getelementptr inbounds %struct.smc_clc_eid_entry, ptr %ueident.0418, i32 0, i32 1
  %94 = call ptr @memcpy(ptr %arrayidx99, ptr %eid, i32 32)
  %95 = ptrtoint ptr %ueident.0418 to i32
  call void @__asan_load4_noabort(i32 %95)
  %ueident.0 = load ptr, ptr %ueident.0418, align 4
  %cmp97.not = icmp eq ptr %ueident.0, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp97.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end90.for.end_crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  br label %if.end106

if.end106:                                        ; preds = %for.end, %if.then71
  %plen.1 = phi i32 [ %plen.0, %if.then71 ], [ %add96, %for.end ]
  %96 = ptrtoint ptr %smc_type_v2 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %smc_type_v2, align 2
  %98 = and i8 %97, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %98)
  %99 = icmp eq i8 %98, 1
  br i1 %99, label %if.then110, label %if.end106.if.end166_crit_edge

if.end106.if.end166_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166

if.then110:                                       ; preds = %if.end106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eid111) #14
  %100 = ptrtoint ptr %eid111 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %eid111, align 4
  %101 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 3), align 1
  %flag113 = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  %102 = ptrtoint ptr %flag113 to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load114 = load i8, ptr %flag113, align 1
  %bf.value115 = and i8 %101, 1
  %bf.clear116 = and i8 %bf.load114, -2
  %bf.set117 = or i8 %bf.clear116, %bf.value115
  store i8 %bf.set117, ptr %flag113, align 1
  %ism_offered_cnt = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 21
  %103 = ptrtoint ptr %ism_offered_cnt to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ism_offered_cnt, align 2
  %ism_gid_cnt = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %105 = ptrtoint ptr %ism_gid_cnt to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %ism_gid_cnt, align 1
  %106 = ptrtoint ptr %pclc_v2_ext to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %pclc_v2_ext, align 8
  %conv121 = zext i8 %107 to i16
  %mul122 = shl nuw nsw i16 %conv121, 5
  %add123 = add nuw nsw i16 %mul122, 32
  %smcd_v2_ext_offset = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 5
  %108 = ptrtoint ptr %smcd_v2_ext_offset to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %add123, ptr %smcd_v2_ext_offset, align 2
  call void @smc_ism_get_system_eid(ptr noundef nonnull %eid111) #14
  %109 = ptrtoint ptr %eid111 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %eid111, align 4
  %tobool126.not = icmp eq ptr %110, null
  br i1 %tobool126.not, label %if.then110.if.end135_crit_edge, label %land.lhs.true

if.then110.if.end135_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135

land.lhs.true:                                    ; preds = %if.then110
  %111 = ptrtoint ptr %flag113 to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load129 = load i8, ptr %flag113, align 1
  %bf.clear130 = and i8 %bf.load129, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear130)
  %tobool132.not = icmp eq i8 %bf.clear130, 0
  br i1 %tobool132.not, label %land.lhs.true.if.end135_crit_edge, label %if.then133

land.lhs.true.if.end135_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135

if.then133:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %112 = call ptr @memcpy(ptr %pclc_smcd_v2_ext, ptr %110, i32 32)
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %land.lhs.true.if.end135_crit_edge, %if.then110.if.end135_crit_edge
  %add136 = add i32 %plen.1, 48
  %113 = ptrtoint ptr %ism_offered_cnt to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ism_offered_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool138.not = icmp eq i8 %114, 0
  br i1 %tobool138.not, label %if.end135.if.end165_crit_edge, label %for.cond140.preheader

if.end135.if.end165_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

for.cond140.preheader:                            ; preds = %if.end135
  %115 = ptrtoint ptr %ism_offered_cnt to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ism_offered_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp143.not420 = icmp eq i8 %116, 0
  br i1 %cmp143.not420, label %for.cond140.preheader.for.end160_crit_edge, label %for.cond140.preheader.for.body145_crit_edge

for.cond140.preheader.for.body145_crit_edge:      ; preds = %for.cond140.preheader
  br label %for.body145

for.cond140.preheader.for.end160_crit_edge:       ; preds = %for.cond140.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end160

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %for.cond140.preheader.for.body145_crit_edge
  %i.1421 = phi i32 [ %inc159, %for.body145.for.body145_crit_edge ], [ 1, %for.cond140.preheader.for.body145_crit_edge ]
  %arrayidx147 = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 %i.1421
  %117 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx147, align 4
  %local_gid148 = getelementptr inbounds %struct.smcd_dev, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %local_gid148 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %local_gid148, align 8
  %sub149 = add nsw i32 %i.1421, -1
  %arrayidx150 = getelementptr %struct.smc_clc_smcd_gid_chid, ptr %pclc_gidchids, i32 %sub149
  %121 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 %120, ptr %arrayidx150, align 2
  %call154 = call zeroext i16 @smc_ism_get_chid(ptr noundef %118) #14
  %chid157 = getelementptr %struct.smc_clc_smcd_gid_chid, ptr %pclc_gidchids, i32 %sub149, i32 1
  %122 = ptrtoint ptr %chid157 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %call154, ptr %chid157, align 2
  %inc159 = add nuw nsw i32 %i.1421, 1
  %123 = ptrtoint ptr %ism_offered_cnt to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %ism_offered_cnt, align 2
  %conv142 = zext i8 %124 to i32
  %cmp143.not.not = icmp ult i32 %i.1421, %conv142
  br i1 %cmp143.not.not, label %for.body145.for.body145_crit_edge, label %for.end160.loopexit

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body145

for.end160.loopexit:                              ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast = zext i8 %124 to i32
  %phi.bo = mul nuw nsw i32 %phi.cast, 10
  br label %for.end160

for.end160:                                       ; preds = %for.end160.loopexit, %for.cond140.preheader.for.end160_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end160.loopexit ], [ 0, %for.cond140.preheader.for.end160_crit_edge ]
  %add164 = add i32 %.lcssa, %add136
  br label %if.end165

if.end165:                                        ; preds = %for.end160, %if.end135.if.end165_crit_edge
  %plen.2 = phi i32 [ %add164, %for.end160 ], [ %add136, %if.end135.if.end165_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eid111) #14
  %125 = ptrtoint ptr %smc_type_v2 to i32
  call void @__asan_load1_noabort(i32 %125)
  %.pr = load i8, ptr %smc_type_v2, align 2
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.end106.if.end166_crit_edge
  %126 = phi i8 [ %.pr, %if.end165 ], [ %97, %if.end106.if.end166_crit_edge ]
  %plen.3 = phi i32 [ %plen.2, %if.end165 ], [ %plen.1, %if.end106.if.end166_crit_edge ]
  %127 = zext i8 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %126, label %if.end166.if.end173_crit_edge [
    i8 3, label %if.end166.if.then170_crit_edge
    i8 0, label %if.end166.if.then170_crit_edge428
  ]

if.end166.if.then170_crit_edge428:                ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then170

if.end166.if.then170_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then170

if.end166.if.end173_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

if.then170:                                       ; preds = %if.end166.if.then170_crit_edge, %if.end166.if.then170_crit_edge428
  %roce = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 4, i32 1
  %ib_gid_v2 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 5
  %128 = call ptr @memcpy(ptr %roce, ptr %ib_gid_v2, i32 16)
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %if.end166.if.end173_crit_edge
  %conv174 = trunc i32 %plen.3 to i16
  %length = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %call7.i.i, i32 0, i32 2
  %129 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %129, i32 2)
  store i16 %conv174, ptr %length, align 1
  %130 = ptrtoint ptr %pclc_trl to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -489372711, ptr %pclc_trl, align 8
  %131 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %132 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call7.i.i, ptr %vec, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %133 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 40, ptr %iov_len, align 4
  %arrayidx181 = getelementptr inbounds [8 x %struct.kvec], ptr %vec, i32 0, i32 1
  %134 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %pclc_smcd2, ptr %arrayidx181, align 4
  %iov_len185 = getelementptr inbounds [8 x %struct.kvec], ptr %vec, i32 0, i32 1, i32 1
  %135 = ptrtoint ptr %iov_len185 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 40, ptr %iov_len185, align 4
  %136 = ptrtoint ptr %smc_type_v1 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %smc_type_v1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %137)
  %cmp188.not = icmp eq i8 %137, 2
  br i1 %cmp188.not, label %if.end173.if.end210_crit_edge, label %if.then190

if.end173.if.end210_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

if.then190:                                       ; preds = %if.end173
  %arrayidx191 = getelementptr inbounds [8 x %struct.kvec], ptr %vec, i32 0, i32 2
  %138 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %pclc_prfx3, ptr %arrayidx191, align 4
  %iov_len195 = getelementptr inbounds [8 x %struct.kvec], ptr %vec, i32 0, i32 2, i32 1
  %139 = ptrtoint ptr %iov_len195 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 8, ptr %iov_len195, align 4
  %ipv6_prefixes_cnt196 = getelementptr inbounds %struct.smc_clc_msg_proposal_area, ptr %call7.i.i, i32 0, i32 2, i32 3
  %140 = ptrtoint ptr %ipv6_prefixes_cnt196 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ipv6_prefixes_cnt196, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp198.not = icmp eq i8 %141, 0
  br i1 %cmp198.not, label %if.then190.if.end210_crit_edge, label %if.then200

if.then190.if.end210_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

if.then200:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx201 = getelementptr inbounds [8 x %struct.kvec], ptr %vec, i32 0, i32 3
  %142 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %pclc_prfx_ipv6, ptr %arrayidx201, align 4
  %conv204 = zext i8 %141 to i32
  %mul205 = mul nuw nsw i32 %conv204, 17
  %iov_len208 = getelementptr inbounds [8 x %struct.kvec], ptr %vec, i32 0, i32 3, i32 1
  %143 = ptrtoint ptr %iov_len208 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %mul205, ptr %iov_len208, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.then200, %if.then190.if.end210_crit_edge, %if.end173.if.end210_crit_edge
  %i.2 = phi i32 [ 4, %if.then200 ], [ 3, %if.then190.if.end210_crit_edge ], [ 2, %if.end173.if.end210_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %126)
  %cmp213.not = icmp eq i8 %126, 2
  br i1 %cmp213.not, label %if.end210.if.end248_crit_edge, label %if.then215

if.end210.if.end248_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end248

if.then215:                                       ; preds = %if.end210
  %arrayidx216 = getelementptr [8 x %struct.kvec], ptr %vec, i32 0, i32 %i.2
  %144 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %pclc_v2_ext, ptr %arrayidx216, align 4
  %145 = ptrtoint ptr %pclc_v2_ext to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %pclc_v2_ext, align 8
  %conv220 = zext i8 %146 to i32
  %mul221 = shl nuw nsw i32 %conv220, 5
  %add222 = add nuw nsw i32 %mul221, 40
  %inc223 = add nuw nsw i32 %i.2, 1
  %iov_len225 = getelementptr [8 x %struct.kvec], ptr %vec, i32 0, i32 %i.2, i32 1
  %147 = ptrtoint ptr %iov_len225 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %add222, ptr %iov_len225, align 4
  %148 = and i8 %126, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %148)
  %149 = icmp eq i8 %148, 1
  br i1 %149, label %if.then229, label %if.then215.if.end248_crit_edge

if.then215.if.end248_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end248

if.then229:                                       ; preds = %if.then215
  %arrayidx230 = getelementptr [8 x %struct.kvec], ptr %vec, i32 0, i32 %inc223
  %150 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %pclc_smcd_v2_ext, ptr %arrayidx230, align 4
  %inc232 = add nuw nsw i32 %i.2, 2
  %iov_len234 = getelementptr [8 x %struct.kvec], ptr %vec, i32 0, i32 %inc223, i32 1
  %151 = ptrtoint ptr %iov_len234 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 48, ptr %iov_len234, align 4
  %ism_offered_cnt235 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 21
  %152 = ptrtoint ptr %ism_offered_cnt235 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %ism_offered_cnt235, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool236.not = icmp eq i8 %153, 0
  br i1 %tobool236.not, label %if.then229.if.end248_crit_edge, label %if.then237

if.then229.if.end248_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end248

if.then237:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx238 = getelementptr [8 x %struct.kvec], ptr %vec, i32 0, i32 %inc232
  %154 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %pclc_gidchids, ptr %arrayidx238, align 4
  %conv241 = zext i8 %153 to i32
  %mul242 = mul nuw nsw i32 %conv241, 10
  %inc243 = add nuw nsw i32 %i.2, 3
  %iov_len245 = getelementptr [8 x %struct.kvec], ptr %vec, i32 0, i32 %inc232, i32 1
  %155 = ptrtoint ptr %iov_len245 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %mul242, ptr %iov_len245, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then237, %if.then229.if.end248_crit_edge, %if.then215.if.end248_crit_edge, %if.end210.if.end248_crit_edge
  %i.3 = phi i32 [ %inc243, %if.then237 ], [ %inc232, %if.then229.if.end248_crit_edge ], [ %inc223, %if.then215.if.end248_crit_edge ], [ %i.2, %if.end210.if.end248_crit_edge ]
  %arrayidx249 = getelementptr [8 x %struct.kvec], ptr %vec, i32 0, i32 %i.3
  %156 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %pclc_trl, ptr %arrayidx249, align 4
  %inc251 = add nuw nsw i32 %i.3, 1
  %iov_len253 = getelementptr [8 x %struct.kvec], ptr %vec, i32 0, i32 %i.3, i32 1
  %157 = ptrtoint ptr %iov_len253 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 4, ptr %iov_len253, align 4
  %clcsock254 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %158 = ptrtoint ptr %clcsock254 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %clcsock254, align 8
  %call256 = call i32 @kernel_sendmsg(ptr noundef %159, ptr noundef nonnull %msg, ptr noundef nonnull %vec, i32 noundef %inc251, i32 noundef %plen.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %cmp257 = icmp slt i32 %call256, 0
  br i1 %cmp257, label %if.then259, label %if.else266

if.then259:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #16
  %160 = ptrtoint ptr %clcsock254 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %clcsock254, align 8
  %sk = getelementptr inbounds %struct.socket, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %sk, align 16
  %sk_err = getelementptr inbounds %struct.sock, ptr %163, i32 0, i32 51
  %164 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %sk_err, align 4
  %sk_err262 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %166 = ptrtoint ptr %sk_err262 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %sk_err262, align 4
  %sub265 = sub i32 0, %165
  br label %cleanup.sink.split

if.else266:                                       ; preds = %if.end248
  %167 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %167, i32 2)
  %168 = load i16, ptr %length, align 1
  %conv269 = zext i16 %168 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call256, i32 %conv269)
  %cmp270 = icmp ult i32 %call256, %conv269
  br i1 %cmp270, label %if.then272, label %if.else266.cleanup.sink.split_crit_edge

if.else266.cleanup.sink.split_crit_edge:          ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then272:                                       ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #16
  %sk_err275 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %169 = ptrtoint ptr %sk_err275 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 101, ptr %sk_err275, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then272, %if.else266.cleanup.sink.split_crit_edge, %if.then259, %if.then19.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 50331648, %if.then19.cleanup.sink.split_crit_edge ], [ %sub265, %if.then259 ], [ -101, %if.then272 ], [ 0, %if.else266.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vec) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @smc_ism_get_chid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_clc_send_confirm(ptr nocapture noundef %smc, i1 noundef zeroext %clnt_first_contact, i8 noundef zeroext %version, ptr noundef %eid, ptr noundef %ini) local_unnamed_addr #0 align 64 {
entry:
  %cclc_v2 = alloca %struct.smc_clc_msg_accept_confirm_v2, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %cclc_v2) #14
  %0 = call ptr @memset(ptr %cclc_v2, i32 0, i32 104)
  %type = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %cclc_v2, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %type, align 2
  %conv = zext i1 %clnt_first_contact to i32
  %call = call fastcc i32 @smc_clc_send_confirm_accept(ptr noundef %smc, ptr noundef nonnull %cclc_v2, i32 noundef %conv, i8 noundef zeroext %version, ptr noundef %eid, ptr noundef %ini)
  %length = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %cclc_v2, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %length, align 1
  %conv2 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv2)
  %cmp = icmp slt i32 %call, %conv2
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp4 = icmp sgt i32 %call, -1
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sk_err = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %4 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 101, ptr %sk_err, align 4
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %5 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clcsock, align 8
  %sk7 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %sk7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk7, align 16
  %sk_err8 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 51
  %9 = ptrtoint ptr %sk_err8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_err8, align 4
  %sk_err10 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %11 = ptrtoint ptr %sk_err10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sk_err10, align 4
  %sub13 = sub i32 0, %10
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6, %entry.if.end14_crit_edge
  %reason_code.0 = phi i32 [ -101, %if.then6 ], [ %sub13, %if.else ], [ 0, %entry.if.end14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %cclc_v2) #14
  ret i32 %reason_code.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_clc_send_confirm_accept(ptr nocapture noundef readonly %smc, ptr noundef %clc_v2, i32 noundef %first_contact, i8 noundef zeroext %version, ptr noundef readonly %eid, ptr noundef %ini) unnamed_addr #0 align 64 {
entry:
  %fce = alloca %struct.smc_clc_first_contact_ext, align 2
  %gle = alloca %struct.smc_clc_fce_gid_ext, align 1
  %trl = alloca %struct.smc_clc_msg_trail, align 4
  %vec = alloca [5 x %struct.kvec], align 4
  %msg = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fce) #14
  %0 = call ptr @memset(ptr %fce, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %gle) #14
  %1 = getelementptr inbounds %struct.smc_clc_fce_gid_ext, ptr %gle, i32 0, i32 1
  %2 = call ptr @memset(ptr %gle, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trl) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vec) #14
  %3 = call ptr @memset(ptr %vec, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #14
  %version2 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clc_v2, i32 0, i32 3
  %4 = ptrtoint ptr %version2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %version2, align 1
  %bf.shl = shl i8 %version, 4
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, %bf.shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_contact)
  %tobool.not = icmp eq i32 %first_contact, 0
  %bf.clear5 = and i8 %bf.load, 4
  %bf.clear10 = and i8 %bf.set, -13
  %5 = or i8 %bf.clear5, %bf.clear10
  %bf.set11 = or i8 %5, 8
  %storemerge330 = select i1 %tobool.not, i8 %bf.set, i8 %bf.set11
  %6 = ptrtoint ptr %version2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge330, ptr %version2, align 1
  %lgr = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lgr, align 4
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_smcd, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %if.else55, label %if.then13

if.then13:                                        ; preds = %entry
  %11 = ptrtoint ptr %clc_v2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 -489372732, ptr %clc_v2, align 1
  %bf.clear17 = and i8 %storemerge330, -4
  %bf.set18 = or i8 %bf.clear17, 1
  %12 = ptrtoint ptr %version2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.set18, ptr %version2, align 1
  %13 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lgr, align 4
  %smcd = getelementptr inbounds %struct.smc_link_group, ptr %14, i32 0, i32 21, i32 0, i32 1
  %15 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smcd, align 8
  %local_gid = getelementptr inbounds %struct.smcd_dev, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %local_gid to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %local_gid, align 8
  %19 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %18, ptr %19, align 1
  %rmb_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 9
  %21 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmb_desc, align 4
  %token = getelementptr inbounds %struct.smc_buf_desc, ptr %22, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %token, align 8
  %token21 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %token21 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %token21, align 1
  %rmbe_size_short = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 10
  %26 = ptrtoint ptr %rmbe_size_short to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rmbe_size_short, align 8
  %conv22 = trunc i32 %27 to i8
  %dmbe_size = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 0, i32 1, i32 9
  %28 = ptrtoint ptr %dmbe_size to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load24 = load i8, ptr %dmbe_size, align 1
  %bf.shl26 = shl i8 %conv22, 4
  %bf.clear27 = and i8 %bf.load24, 15
  %bf.set28 = or i8 %bf.clear27, %bf.shl26
  store i8 %bf.set28, ptr %dmbe_size, align 1
  %dmbe_idx = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 0, i32 1, i32 8
  %29 = ptrtoint ptr %dmbe_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %dmbe_idx, align 1
  %linkid = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 0, i32 1, i32 12
  %30 = load ptr, ptr %lgr, align 4
  %id = getelementptr inbounds %struct.smc_link_group, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 8
  %33 = ptrtoint ptr %linkid to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %linkid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %version)
  %cmp = icmp eq i8 %version, 1
  br i1 %cmp, label %if.end156.thread, label %if.else

if.end156.thread:                                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clc_v2, i32 0, i32 2
  %34 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 48, ptr %length, align 1
  %35 = ptrtoint ptr %trl to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -489372732, ptr %trl, align 4
  %36 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %37 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %clc_v2, ptr %vec, align 4
  br label %if.else172

if.else:                                          ; preds = %if.then13
  %38 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lgr, align 4
  %smcd38 = getelementptr inbounds %struct.smc_link_group, ptr %39, i32 0, i32 21, i32 0, i32 1
  %40 = ptrtoint ptr %smcd38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smcd38, align 8
  %call = tail call zeroext i16 @smc_ism_get_chid(ptr noundef %41) #14
  %chid = getelementptr inbounds %struct.smc_clc_msg_accept_confirm_v2, ptr %clc_v2, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %chid to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %call, ptr %chid, align 2
  %tobool39.not = icmp eq ptr %eid, null
  br i1 %tobool39.not, label %if.else.if.end45_crit_edge, label %land.lhs.true

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true:                                    ; preds = %if.else
  %43 = ptrtoint ptr %eid to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %eid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool41.not = icmp eq i8 %44, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end45_crit_edge, label %if.then42

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %eid43 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm_v2, ptr %clc_v2, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %45 = call ptr @memcpy(ptr %eid43, ptr %eid, i32 32)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %land.lhs.true.if.end45_crit_edge, %if.else.if.end45_crit_edge
  br i1 %tobool.not, label %if.end45.if.end48_crit_edge, label %if.then47

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %46 = getelementptr inbounds i8, ptr %fce, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %46, align 2
  %48 = ptrtoint ptr %fce to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 32, ptr %fce, align 2
  %hostname.i = getelementptr inbounds %struct.smc_clc_first_contact_ext, ptr %fce, i32 0, i32 2
  %49 = call ptr @memcpy(ptr %hostname.i, ptr @smc_hostname, i32 32)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end45.if.end48_crit_edge
  %len.0 = phi i16 [ 78, %if.end45.if.end48_crit_edge ], [ 114, %if.then47 ]
  %length51 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clc_v2, i32 0, i32 2
  %50 = ptrtoint ptr %length51 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %len.0, ptr %length51, align 1
  br label %if.end156

if.else55:                                        ; preds = %entry
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %51 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lnk, align 8
  %53 = ptrtoint ptr %clc_v2 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 -489372711, ptr %clc_v2, align 1
  %bf.clear62 = and i8 %storemerge330, -4
  %54 = ptrtoint ptr %version2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %bf.clear62, ptr %version2, align 1
  %length65 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clc_v2, i32 0, i32 2
  %55 = ptrtoint ptr %length65 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 68, ptr %length65, align 1
  %56 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @local_systemid to i32), i32 8)
  %57 = load i64, ptr @local_systemid, align 1
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %57, ptr %56, align 1
  %gid68 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 0, i32 1
  %gid69 = getelementptr inbounds %struct.smc_link, ptr %52, i32 0, i32 34
  %59 = call ptr @memcpy(ptr %gid68, ptr %gid69, i32 16)
  %mac = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 0, i32 2
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %52, align 8
  %ibport = getelementptr inbounds %struct.smc_link, ptr %52, i32 0, i32 1
  %62 = ptrtoint ptr %ibport to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ibport, align 4
  %conv73 = zext i8 %63 to i32
  %sub = add nsw i32 %conv73, -1
  %arrayidx74 = getelementptr %struct.smc_ib_device, ptr %61, i32 0, i32 8, i32 %sub
  %64 = call ptr @memcpy(ptr %mac, ptr %arrayidx74, i32 6)
  %qpn = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 1
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %52, i32 0, i32 3
  %65 = ptrtoint ptr %roce_qp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %roce_qp, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %66, i32 0, i32 19
  %67 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qp_num, align 4
  %t.1.extract.trunc.i = trunc i32 %68 to i24
  %69 = ptrtoint ptr %qpn to i32
  call void @__asan_storeN_noabort(i32 %69, i32 3)
  store i24 %t.1.extract.trunc.i, ptr %qpn, align 1
  %rmb_desc76 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 9
  %70 = ptrtoint ptr %rmb_desc76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmb_desc76, align 4
  %mr_rx = getelementptr inbounds %struct.smc_buf_desc, ptr %71, i32 0, i32 5, i32 1, i32 12
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %52, i32 0, i32 46
  %72 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %link_idx, align 1
  %idxprom = zext i8 %73 to i32
  %arrayidx77 = getelementptr [3 x ptr], ptr %mr_rx, i32 0, i32 %idxprom
  %74 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx77, align 4
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rkey, align 4
  %rmb_rkey = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 2
  %78 = ptrtoint ptr %rmb_rkey to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %rmb_rkey, align 1
  %rmbe_idx = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 3
  %79 = ptrtoint ptr %rmbe_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %rmbe_idx, align 1
  %alert_token_local = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 3
  %80 = ptrtoint ptr %alert_token_local to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %alert_token_local, align 4
  %rmbe_alert_token = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 4
  %82 = ptrtoint ptr %rmbe_alert_token to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %81, ptr %rmbe_alert_token, align 1
  %type = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clc_v2, i32 0, i32 1
  %83 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %type, align 1
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %84, label %if.else55.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %sw.bb85
  ]

if.else55.sw.epilog_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  %path_mtu = getelementptr inbounds %struct.smc_link, ptr %52, i32 0, i32 37
  %86 = ptrtoint ptr %path_mtu to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %path_mtu, align 4
  %conv80 = trunc i32 %87 to i8
  %qp_mtu = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 5
  %88 = ptrtoint ptr %qp_mtu to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load81 = load i8, ptr %qp_mtu, align 1
  %bf.value82 = and i8 %conv80, 15
  %bf.clear83 = and i8 %bf.load81, -16
  br label %sw.epilog.sink.split

sw.bb85:                                          ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  %path_mtu86 = getelementptr inbounds %struct.smc_link, ptr %52, i32 0, i32 37
  %89 = ptrtoint ptr %path_mtu86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %path_mtu86, align 4
  %peer_mtu = getelementptr inbounds %struct.smc_link, ptr %52, i32 0, i32 38
  %91 = ptrtoint ptr %peer_mtu to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %peer_mtu, align 8
  %93 = tail call i32 @llvm.umin.i32(i32 %90, i32 %92)
  %conv89 = trunc i32 %93 to i8
  %qp_mtu90 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 5
  %94 = ptrtoint ptr %qp_mtu90 to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load91 = load i8, ptr %qp_mtu90, align 1
  %bf.value92 = and i8 %conv89, 15
  %bf.clear93 = and i8 %bf.load91, -16
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb85, %sw.bb
  %bf.clear93.sink = phi i8 [ %bf.clear93, %sw.bb85 ], [ %bf.value82, %sw.bb ]
  %bf.value92.sink = phi i8 [ %bf.value92, %sw.bb85 ], [ %bf.clear83, %sw.bb ]
  %qp_mtu90.sink = phi ptr [ %qp_mtu90, %sw.bb85 ], [ %qp_mtu, %sw.bb ]
  %bf.set94 = or i8 %bf.value92.sink, %bf.clear93.sink
  %95 = ptrtoint ptr %qp_mtu90.sink to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %bf.set94, ptr %qp_mtu90.sink, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else55.sw.epilog_crit_edge
  %rmbe_size_short95 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 10
  %96 = ptrtoint ptr %rmbe_size_short95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rmbe_size_short95, align 8
  %conv96 = trunc i32 %97 to i8
  %rmbe_size = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 5
  %98 = ptrtoint ptr %rmbe_size to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load97 = load i8, ptr %rmbe_size, align 1
  %bf.shl99 = shl i8 %conv96, 4
  %bf.clear100 = and i8 %bf.load97, 15
  %bf.set101 = or i8 %bf.clear100, %bf.shl99
  store i8 %bf.set101, ptr %rmbe_size, align 1
  %99 = ptrtoint ptr %rmb_desc76 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rmb_desc76, align 4
  %101 = getelementptr inbounds %struct.smc_buf_desc, ptr %100, i32 0, i32 5
  %102 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %link_idx, align 1
  %idxprom104 = zext i8 %103 to i32
  %arrayidx105 = getelementptr [3 x %struct.sg_table], ptr %101, i32 0, i32 %idxprom104
  %104 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx105, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma_address, align 4
  %conv106 = zext i32 %107 to i64
  %rmb_dma_addr = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 7
  %108 = ptrtoint ptr %rmb_dma_addr to i32
  call void @__asan_storeN_noabort(i32 %108, i32 8)
  store i64 %conv106, ptr %rmb_dma_addr, align 1
  %psn = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc_v2, i32 0, i32 1, i32 0, i32 9
  %psn_initial = getelementptr inbounds %struct.smc_link, ptr %52, i32 0, i32 39
  %109 = ptrtoint ptr %psn_initial to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %psn_initial, align 4
  %t.1.extract.trunc.i331 = trunc i32 %110 to i24
  %111 = ptrtoint ptr %psn to i32
  call void @__asan_storeN_noabort(i32 %111, i32 3)
  store i24 %t.1.extract.trunc.i331, ptr %psn, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %version)
  %cmp109 = icmp eq i8 %version, 1
  br i1 %cmp109, label %sw.epilog.if.end153_crit_edge, label %if.else114

sw.epilog.if.end153_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end153

if.else114:                                       ; preds = %sw.epilog
  %tobool115.not = icmp eq ptr %eid, null
  br i1 %tobool115.not, label %if.else114.if.end123_crit_edge, label %land.lhs.true116

if.else114.if.end123_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

land.lhs.true116:                                 ; preds = %if.else114
  %112 = ptrtoint ptr %eid to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %eid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool119.not = icmp eq i8 %113, 0
  br i1 %tobool119.not, label %land.lhs.true116.if.end123_crit_edge, label %if.then120

land.lhs.true116.if.end123_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.then120:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #16
  %eid121 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm_v2, ptr %clc_v2, i32 0, i32 1, i32 0, i32 1
  %114 = call ptr @memcpy(ptr %eid121, ptr %eid, i32 32)
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %land.lhs.true116.if.end123_crit_edge, %if.else114.if.end123_crit_edge
  br i1 %tobool.not, label %if.end123.if.end153_crit_edge, label %if.then125

if.end123.if.end153_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end153

if.then125:                                       ; preds = %if.end123
  %115 = getelementptr inbounds i8, ptr %fce, i32 2
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %115, align 2
  %hostname.i332 = getelementptr inbounds %struct.smc_clc_first_contact_ext, ptr %fce, i32 0, i32 2
  %117 = call ptr @memcpy(ptr %hostname.i332, ptr @smc_hostname, i32 32)
  %lgr126 = getelementptr inbounds %struct.smc_link, ptr %52, i32 0, i32 50
  %118 = ptrtoint ptr %lgr126 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %lgr126, align 4
  %uses_gateway = getelementptr inbounds %struct.smc_link_group, ptr %119, i32 0, i32 21, i32 0, i32 25
  %120 = ptrtoint ptr %uses_gateway to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %uses_gateway, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool127.not = icmp eq i8 %121, 0
  %bf.set133 = select i1 %tobool127.not, i16 -32736, i16 32
  %122 = ptrtoint ptr %fce to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %bf.set133, ptr %fce, align 2
  %123 = call ptr @memset(ptr %gle, i32 0, i32 20)
  %tobool134.not = icmp ne ptr %ini, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %84)
  %cmp139 = icmp eq i8 %84, 3
  %or.cond = select i1 %tobool134.not, i1 %cmp139, i1 false
  br i1 %or.cond, label %if.then141, label %if.then125.if.end153_crit_edge

if.then125.if.end153_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end153

if.then141:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #16
  %gidlist = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 8
  %124 = ptrtoint ptr %gidlist to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %gidlist, align 8
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %1, align 1
  %conv144 = zext i8 %125 to i16
  %mul = shl nuw nsw i16 %conv144, 4
  %add145 = add nuw nsw i16 %mul, 164
  br label %if.end153

if.end153:                                        ; preds = %if.then141, %if.then125.if.end153_crit_edge, %if.end123.if.end153_crit_edge, %sw.epilog.if.end153_crit_edge
  %storemerge = phi i16 [ 68, %sw.epilog.if.end153_crit_edge ], [ 108, %if.end123.if.end153_crit_edge ], [ %add145, %if.then141 ], [ 160, %if.then125.if.end153_crit_edge ]
  %127 = ptrtoint ptr %length65 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 %storemerge, ptr %length65, align 1
  br label %if.end156

if.end156:                                        ; preds = %if.end153, %if.end48
  %storemerge329 = phi i32 [ -489372711, %if.end153 ], [ -489372732, %if.end48 ]
  %128 = ptrtoint ptr %trl to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %storemerge329, ptr %trl, align 4
  %129 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %130 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %clc_v2, ptr %vec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %version)
  %cmp159 = icmp ugt i8 %version, 1
  br i1 %cmp159, label %if.then161, label %if.end156.if.else172_crit_edge

if.end156.if.else172_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else172

if.then161:                                       ; preds = %if.end156
  %131 = ptrtoint ptr %version2 to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load164 = load i8, ptr %version2, align 1
  %bf.clear165 = and i8 %bf.load164, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear165)
  %cmp167 = icmp eq i8 %bf.clear165, 1
  %sub170 = select i1 %cmp167, i32 74, i32 104
  %iov_len = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %132 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %sub170, ptr %iov_len, align 4
  br i1 %tobool.not, label %if.then161.if.end230_crit_edge, label %if.then191

if.then161.if.end230_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end230

if.else172:                                       ; preds = %if.end156.if.else172_crit_edge, %if.end156.thread
  %133 = ptrtoint ptr %version2 to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load175 = load i8, ptr %version2, align 1
  %bf.clear176 = and i8 %bf.load175, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear176)
  %cmp178 = icmp eq i8 %bf.clear176, 1
  %sub181 = select i1 %cmp178, i32 44, i32 64
  %iov_len184 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %134 = ptrtoint ptr %iov_len184 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %sub181, ptr %iov_len184, align 4
  br label %if.end230

if.then191:                                       ; preds = %if.then161
  %arrayidx192 = getelementptr inbounds [5 x %struct.kvec], ptr %vec, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %fce, ptr %arrayidx192, align 4
  %iov_len196 = getelementptr inbounds [5 x %struct.kvec], ptr %vec, i32 0, i32 1, i32 1
  %136 = ptrtoint ptr %iov_len196 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 36, ptr %iov_len196, align 4
  %137 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %lgr, align 4
  %is_smcd198 = getelementptr inbounds %struct.smc_link_group, ptr %138, i32 0, i32 15
  %139 = ptrtoint ptr %is_smcd198 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %is_smcd198, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool199.not = icmp eq i8 %140, 0
  br i1 %tobool199.not, label %if.then200, label %if.then191.if.end230_crit_edge

if.then191.if.end230_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end230

if.then200:                                       ; preds = %if.then191
  %type202 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clc_v2, i32 0, i32 1
  %141 = ptrtoint ptr %type202 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %type202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %142)
  %cmp204 = icmp eq i8 %142, 3
  %arrayidx207 = getelementptr inbounds [5 x %struct.kvec], ptr %vec, i32 0, i32 2
  %143 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %gle, ptr %arrayidx207, align 4
  %iov_len211 = getelementptr inbounds [5 x %struct.kvec], ptr %vec, i32 0, i32 2, i32 1
  br i1 %cmp204, label %if.then206, label %if.else222

if.then206:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #16
  %144 = ptrtoint ptr %iov_len211 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 20, ptr %iov_len211, align 4
  %list = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 8, i32 1
  %arrayidx214 = getelementptr inbounds [5 x %struct.kvec], ptr %vec, i32 0, i32 3
  %145 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %list, ptr %arrayidx214, align 4
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %1, align 1
  %conv217 = zext i8 %147 to i32
  %mul218 = shl nuw nsw i32 %conv217, 4
  %iov_len221 = getelementptr inbounds [5 x %struct.kvec], ptr %vec, i32 0, i32 3, i32 1
  %148 = ptrtoint ptr %iov_len221 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %mul218, ptr %iov_len221, align 4
  br label %if.end230

if.else222:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #16
  %149 = ptrtoint ptr %iov_len211 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 16, ptr %iov_len211, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.else222, %if.then206, %if.then191.if.end230_crit_edge, %if.else172, %if.then161.if.end230_crit_edge
  %i.1 = phi i32 [ 2, %if.then191.if.end230_crit_edge ], [ 4, %if.then206 ], [ 3, %if.else222 ], [ 1, %if.then161.if.end230_crit_edge ], [ 1, %if.else172 ]
  %arrayidx231 = getelementptr [5 x %struct.kvec], ptr %vec, i32 0, i32 %i.1
  %150 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %trl, ptr %arrayidx231, align 4
  %iov_len235 = getelementptr [5 x %struct.kvec], ptr %vec, i32 0, i32 %i.1, i32 1
  %151 = ptrtoint ptr %iov_len235 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 4, ptr %iov_len235, align 4
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %152 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %clcsock, align 8
  %length238 = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %clc_v2, i32 0, i32 2
  %154 = ptrtoint ptr %length238 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %length238, align 1
  %conv239 = zext i16 %155 to i32
  %call240 = call i32 @kernel_sendmsg(ptr noundef %153, ptr noundef nonnull %msg, ptr noundef nonnull %vec, i32 noundef 1, i32 noundef %conv239) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vec) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trl) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %gle) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fce) #14
  ret i32 %call240
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_clc_send_accept(ptr nocapture noundef readonly %new_smc, i1 noundef zeroext %srv_first_contact, i8 noundef zeroext %version, ptr noundef %negotiated_eid) local_unnamed_addr #0 align 64 {
entry:
  %aclc_v2 = alloca %struct.smc_clc_msg_accept_confirm_v2, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %aclc_v2) #14
  %0 = call ptr @memset(ptr %aclc_v2, i32 0, i32 104)
  %type = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %aclc_v2, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %type, align 2
  %conv = zext i1 %srv_first_contact to i32
  %call = call fastcc i32 @smc_clc_send_confirm_accept(ptr noundef %new_smc, ptr noundef nonnull %aclc_v2, i32 noundef %conv, i8 noundef zeroext %version, ptr noundef %negotiated_eid, ptr noundef null)
  %length = getelementptr inbounds %struct.smc_clc_msg_hdr, ptr %aclc_v2, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %length, align 1
  %conv2 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv2)
  %cmp = icmp slt i32 %call, %conv2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp4 = icmp sgt i32 %call, -1
  br i1 %cmp4, label %if.then.if.end.thread_crit_edge, label %cond.false

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %new_smc, i32 0, i32 1
  %4 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clcsock, align 8
  %sk = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 16
  %sk_err = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_err, align 4
  %sub = sub i32 0, %9
  br label %if.end

if.end:                                           ; preds = %cond.false, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %sub, %cond.false ]
  %10 = call i32 @llvm.smin.i32(i32 %len.0, i32 0)
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end, %if.then.if.end.thread_crit_edge
  %11 = phi i32 [ -71, %if.then.if.end.thread_crit_edge ], [ %10, %if.end ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %aclc_v2) #14
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @smc_clc_get_hostname(ptr nocapture noundef writeonly %host) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smc_hostname, ptr %host, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_clc_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @smc_hostname, i32 32, i32 32)
  %1 = tail call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 110
  %5 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uts_ns.i, align 4
  %nodename = getelementptr inbounds %struct.new_utsname, ptr %8, i32 0, i32 1
  %call3 = tail call i32 @strlen(ptr noundef %nodename) #19
  %9 = tail call i32 @llvm.umin.i32(i32 %call3, i32 32)
  %10 = call ptr @memcpy(ptr @smc_hostname, ptr %nodename, i32 %9)
  store volatile ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1, i32 1), align 4
  tail call void @__rwlock_init(ptr noundef nonnull @smc_clc_eid_table, ptr noundef nonnull @.str.1, ptr noundef nonnull @smc_clc_init.__key) #14
  store i8 0, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  store i8 1, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 3), align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_clc_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @smc_clc_eid_table) #14
  %0 = load ptr, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1), align 4
  %cmp.not24.i = icmp eq ptr %0, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp.not24.i, label %entry.smc_clc_ueid_remove.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.smc_clc_ueid_remove.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_clc_ueid_remove.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %lst_ueid.026.i = phi ptr [ %tmp_ueid.028.i, %list_del.exit.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %lst_ueid.026.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp_ueid.028.i = load ptr, ptr %lst_ueid.026.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lst_ueid.026.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %lst_ueid.026.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %lst_ueid.026.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lst_ueid.026.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %8 = ptrtoint ptr %lst_ueid.026.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %lst_ueid.026.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lst_ueid.026.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %10 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  %dec.i = add i8 %10, -1
  store i8 %dec.i, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %lst_ueid.026.i) #14
  %cmp.not.i = icmp eq ptr %tmp_ueid.028.i, getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.end.i, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %list_del.exit.i
  %11 = load i8, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not.i = icmp eq i8 %11, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %for.end.i.smc_clc_ueid_remove.exit_crit_edge

for.end.i.smc_clc_ueid_remove.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_clc_ueid_remove.exit

if.then14.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store i8 1, ptr getelementptr inbounds (%struct.smc_clc_eid_table, ptr @smc_clc_eid_table, i32 0, i32 3), align 1
  br label %smc_clc_ueid_remove.exit

smc_clc_ueid_remove.exit:                         ; preds = %if.then14.i, %for.end.i.smc_clc_ueid_remove.exit_crit_edge, %entry.smc_clc_ueid_remove.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @smc_clc_eid_table) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_clc_prfx_set4_rcu(ptr nocapture noundef readonly %dst, i32 noundef %ipv4, ptr nocapture noundef writeonly %prop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 78
  %2 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.__in_dev_get_rcu.exit_crit_edge

entry.__in_dev_get_rcu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 232, ptr noundef nonnull @.str.4) #14
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %entry.__in_dev_get_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %__in_dev_get_rcu.exit.cleanup_crit_edge, label %if.end

__in_dev_get_rcu.exit.cleanup_crit_edge:          ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %__in_dev_get_rcu.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ifa_list, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @smc_clc_prfx_set4_rcu.__warned, align 1
  br i1 %.b46, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smc_clc_prfx_set4_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 486, ptr noundef nonnull @.str.4) #14
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %tobool13.not50 = icmp eq ptr %5, null
  br i1 %tobool13.not50, label %do.end11.cleanup_crit_edge, label %do.end11.for.body_crit_edge

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  br label %for.body

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %do.end34.for.body_crit_edge, %do.end11.for.body_crit_edge
  %ifa.051 = phi ptr [ %20, %do.end34.for.body_crit_edge ], [ %5, %do.end11.for.body_crit_edge ]
  %ifa_address.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.051, i32 0, i32 5
  %6 = ptrtoint ptr %ifa_address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifa_address.i, align 4
  %xor.i = xor i32 %7, %ipv4
  %ifa_mask.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.051, i32 0, i32 6
  %8 = ptrtoint ptr %ifa_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifa_mask.i, align 4
  %and.i = and i32 %xor.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i47 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i47, label %if.end16, label %for.inc

if.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %ifa_address.i.le = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.051, i32 0, i32 5
  %ifa_mask.i.le = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.051, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i48 = icmp eq i32 %9, 0
  %10 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #14, !range !52
  %11 = trunc i32 %10 to i8
  %12 = sub nuw nsw i8 32, %11
  %conv = select i1 %tobool.not.i48, i8 0, i8 %12
  %prefix_len = getelementptr inbounds %struct.smc_clc_msg_proposal_prefix, ptr %prop, i32 0, i32 1
  %13 = ptrtoint ptr %prefix_len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %prefix_len, align 4
  %14 = ptrtoint ptr %ifa_address.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifa_address.i.le, align 4
  %16 = ptrtoint ptr %ifa_mask.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifa_mask.i.le, align 4
  %and = and i32 %17, %15
  %18 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %prop, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %ifa_next = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.051, i32 0, i32 1
  %19 = ptrtoint ptr %ifa_next to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %ifa_next, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %for.inc.do.end34_crit_edge

for.inc.do.end34_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

land.lhs.true26:                                  ; preds = %for.inc
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.do.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b4445 = load i1, ptr @smc_clc_prfx_set4_rcu.__warned.12, align 1
  br i1 %.b4445, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smc_clc_prfx_set4_rcu.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 486, ptr noundef nonnull @.str.4) #14
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true26.do.end34_crit_edge, %for.inc.do.end34_crit_edge
  %tobool13.not = icmp eq ptr %20, null
  br i1 %tobool13.not, label %do.end34.cleanup_crit_edge, label %do.end34.for.body_crit_edge

do.end34.for.body_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %do.end34.cleanup_crit_edge, %if.end16, %do.end11.cleanup_crit_edge, %__in_dev_get_rcu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -19, %__in_dev_get_rcu.exit.cleanup_crit_edge ], [ -2, %do.end11.cleanup_crit_edge ], [ -2, %do.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/smc/smc_clc.c", i32 255, i32 39}
!2 = !{ptr @smc_clc_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/smc/smc_clc.c", i32 1165, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @smc_hostname, !6, !"smc_hostname", i1 false, i1 false}
!6 = !{!"../net/smc/smc_clc.c", i32 42, i32 11}
!7 = !{ptr @smc_clc_eid_table, !8, !"smc_clc_eid_table", i1 false, i1 false}
!8 = !{!"../net/smc/smc_clc.c", i32 51, i32 33}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/net/netlink.h", i32 991, i32 3}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/net/sock.h", i32 2077, i32 8}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/smc/smc_clc.c", i32 580, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @SMCD_EYECATCHER, !33, !"SMCD_EYECATCHER", i1 false, i1 false}
!33 = !{!"../net/smc/smc_clc.c", i32 40, i32 19}
!34 = !{ptr @SMC_EYECATCHER, !35, !"SMC_EYECATCHER", i1 false, i1 false}
!35 = !{!"../net/smc/smc_clc.c", i32 38, i32 19}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/smc/smc_clc.c", i32 486, i32 2}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"auto-init"}
!51 = !{i64 2149375762}
!52 = !{i32 0, i32 33}
!53 = !{i64 2149376028}
!54 = !{i64 2148298880}
!55 = !{i64 783703, i64 783728, i64 783750, i64 783766, i64 783778, i64 783798, i64 783822, i64 783838, i64 783850}
!56 = !{i64 2148299068}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i8 0, i8 2}
