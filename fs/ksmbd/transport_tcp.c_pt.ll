; ModuleID = '/llk/IR_all_yes/fs/ksmbd/transport_tcp.c_pt.bc'
source_filename = "../fs/ksmbd/transport_tcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.58, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.72, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.72 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ksmbd_server_config = type { i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.smb_sid, i32, [3 x ptr] }
%struct.smb_sid = type { i8, i8, [6 x i8], [15 x i32] }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.ksmbd_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.interface = type { ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.171, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.189, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.171 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.189 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.115, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.116, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.117, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.16, %union.anon.18, %union.anon.19, i16, i8, i8, i32, %union.anon.21, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.111, [0 x i32], %union.anon.112, i16, i16, %union.anon.113, %struct.refcount_struct, [0 x i32], %union.anon.114 }
%union.anon.16 = type { i64 }
%union.anon.18 = type { i32 }
%union.anon.19 = type { i32 }
%union.anon.21 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { %struct.hlist_node }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.115 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.116 = type { ptr }
%union.anon.117 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.tcp_transport = type { %struct.ksmbd_transport, ptr, ptr, i32 }
%struct.ksmbd_transport = type { ptr, ptr, ptr }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.__kernel_sockaddr_storage = type { %union.anon.191 }
%union.anon.191 = type { ptr, [124 x i8] }
%struct.ida = type { %struct.xarray }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.25, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.22, %union.anon.23 }
%union.anon.22 = type { ptr }
%union.anon.23 = type { i64 }
%union.anon.25 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.160, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.138 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.160 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ksmbd_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ksmbd_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@iface_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @iface_list, ptr @iface_list }, [24 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@bind_additional_ifaces = internal global { i1, [31 x i8] } zeroinitializer, align 32
@create_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ksmbd: Can't create socket for ipv6, try ipv4: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"create_socket\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/ksmbd/transport_tcp.c\00", [39 x i8] zeroinitializer }, align 32
@create_socket._entry_ptr = internal global ptr @create_socket._entry, section ".printk_index", align 4
@create_socket._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ksmbd: Can't create socket for ipv4: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@create_socket._entry_ptr.5 = internal global ptr @create_socket._entry.3, section ".printk_index", align 4
@server_conf = external dso_local local_unnamed_addr global %struct.ksmbd_server_config, align 4
@in6addr_any = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@create_socket._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ksmbd: Failed to set SO_BINDTODEVICE: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@create_socket._entry_ptr.8 = internal global ptr @create_socket._entry.6, section ".printk_index", align 4
@create_socket._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ksmbd: Failed to bind socket: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@create_socket._entry_ptr.11 = internal global ptr @create_socket._entry.9, section ".printk_index", align 4
@create_socket._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013ksmbd: Port listen() error: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@create_socket._entry_ptr.14 = internal global ptr @create_socket._entry.12, section ".printk_index", align 4
@create_socket._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ksmbd: Can't start ksmbd main kthread: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@create_socket._entry_ptr.17 = internal global ptr @create_socket._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ksmbd-%s\00", [23 x i8] zeroinitializer }, align 32
@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@ksmbd_kthread_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ksmbd: connect success: accepted new connection\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ksmbd_kthread_fn\00", [47 x i8] zeroinitializer }, align 32
@ksmbd_kthread_fn._entry_ptr = internal global ptr @ksmbd_kthread_fn._entry, section ".printk_index", align 4
@ksmbd_kthread_fn._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016ksmbd: releasing socket\0A\00", [37 x i8] zeroinitializer }, align 32
@ksmbd_kthread_fn._entry_ptr.23 = internal global ptr @ksmbd_kthread_fn._entry.21, section ".printk_index", align 4
@ksmbd_tcp_new_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ksmbd: client ip resolution failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ksmbd_tcp_new_connection\00", [39 x i8] zeroinitializer }, align 32
@ksmbd_tcp_new_connection._entry_ptr = internal global ptr @ksmbd_tcp_new_connection._entry, section ".printk_index", align 4
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ksmbd:%u\00", [23 x i8] zeroinitializer }, align 32
@ksmbd_tcp_new_connection._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ksmbd: cannot start conn thread\0A\00", [61 x i8] zeroinitializer }, align 32
@ksmbd_tcp_new_connection._entry_ptr.29 = internal global ptr @ksmbd_tcp_new_connection._entry.27, section ".printk_index", align 4
@ksmbd_tcp_transport_ops = internal global { %struct.ksmbd_transport_ops, [36 x i8] } { %struct.ksmbd_transport_ops { ptr null, ptr @ksmbd_tcp_disconnect, ptr null, ptr @ksmbd_tcp_read, ptr @ksmbd_tcp_writev, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@tcp_stop_kthread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ksmbd: failed to stop forker thread\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcp_stop_kthread\00", [47 x i8] zeroinitializer }, align 32
@tcp_stop_kthread._entry_ptr = internal global ptr @tcp_stop_kthread._entry, section ".printk_index", align 4
@tcp_destroy_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ksmbd: Failed to shutdown socket: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcp_destroy_socket\00", [45 x i8] zeroinitializer }, align 32
@tcp_destroy_socket._entry_ptr = internal global ptr @tcp_destroy_socket._entry, section ".printk_index", align 4
@alloc_iface.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&iface->sock_release_lock\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967285]
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"ksmbd_netdev_notifier\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 523, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"iface_list\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 27, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"bind_additional_ifaces\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 402, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 406, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 429, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 440, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 449, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 456, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 268, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 242, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 249, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 193, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 198, i32 28 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 203, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"ksmbd_tcp_transport_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 615, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 57, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 543, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 383, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [28 x i8] c"../fs/ksmbd/transport_tcp.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 575, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @create_socket._entry, ptr @create_socket._entry.12, ptr @create_socket._entry.15, ptr @create_socket._entry.3, ptr @create_socket._entry.6, ptr @create_socket._entry.9, ptr @create_socket._entry_ptr, ptr @create_socket._entry_ptr.11, ptr @create_socket._entry_ptr.14, ptr @create_socket._entry_ptr.17, ptr @create_socket._entry_ptr.5, ptr @create_socket._entry_ptr.8, ptr @ksmbd_kthread_fn._entry, ptr @ksmbd_kthread_fn._entry.21, ptr @ksmbd_kthread_fn._entry_ptr, ptr @ksmbd_kthread_fn._entry_ptr.23, ptr @ksmbd_tcp_new_connection._entry, ptr @ksmbd_tcp_new_connection._entry.27, ptr @ksmbd_tcp_new_connection._entry_ptr, ptr @ksmbd_tcp_new_connection._entry_ptr.29, ptr @tcp_destroy_socket._entry, ptr @tcp_destroy_socket._entry_ptr, ptr @tcp_stop_kthread._entry, ptr @tcp_stop_kthread._entry_ptr, ptr @ksmbd_netdev_notifier, ptr @iface_list, ptr @bind_additional_ifaces, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @ksmbd_tcp_transport_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @alloc_iface.__key, ptr @.str.35], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iface_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bind_additional_ifaces to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_socket._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_socket._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_socket._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_socket._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_socket._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_kthread_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_kthread_fn._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_tcp_new_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_tcp_new_connection._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_tcp_transport_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_stop_kthread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_destroy_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_iface.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_tcp_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ksmbd_netdev_notifier) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_tcp_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ksmbd_netdev_notifier) #8
  %0 = load ptr, ptr @iface_list, align 4
  %cmp.not19 = icmp eq ptr %0, @iface_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %iface.0 = getelementptr i8, ptr %.pn.in20, i32 -8
  %1 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %name = getelementptr i8, ptr %.pn.in20, i32 8
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %11) #8
  tail call void @kfree(ptr noundef %iface.0) #8
  %cmp.not = icmp eq ptr %.pn, @iface_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_tcp_set_interfaces(ptr noundef %ifc_list, i32 noundef %ifc_list_sz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifc_list_sz)
  %tobool.not = icmp eq i32 %ifc_list_sz, 0
  br i1 %tobool.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifc_list_sz)
  %cmp1258 = icmp sgt i32 %ifc_list_sz, 0
  br i1 %cmp1258, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then:                                          ; preds = %entry
  tail call void @rtnl_lock() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn61 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not63 = icmp eq ptr %.pn61, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not63, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn64 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn61, %if.then.for.body_crit_edge ]
  %priv_flags = getelementptr i8, ptr %.pn64, i32 72
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags, align 16
  %and = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %netdev.065 = getelementptr i8, ptr %.pn64, i32 -40
  %call = tail call noalias ptr @kstrdup(ptr noundef %netdev.065, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end.cleanup24_crit_edge, label %if.end.i

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 116) #11
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup24

if.end3.i:                                        ; preds = %if.end.i
  %name.i = getelementptr inbounds %struct.interface, ptr %call7.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %name.i, align 8
  %state.i = getelementptr inbounds %struct.interface, ptr %call7.i.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state.i, align 8
  %entry4.i = getelementptr inbounds %struct.interface, ptr %call7.i.i.i, i32 0, i32 2
  %5 = load ptr, ptr @iface_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry4.i, ptr noundef nonnull @iface_list, ptr noundef %5) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.alloc_iface.exit_crit_edge

if.end3.i.alloc_iface.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_iface.exit

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry4.i, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %entry4.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.interface, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @iface_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %entry4.i, ptr @iface_list, align 4
  br label %alloc_iface.exit

alloc_iface.exit:                                 ; preds = %if.end.i.i.i, %if.end3.i.alloc_iface.exit_crit_edge
  %sock_release_lock.i = getelementptr inbounds %struct.interface, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %sock_release_lock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @alloc_iface.__key) #8
  br label %for.inc

for.inc:                                          ; preds = %alloc_iface.exit, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn64 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn64, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @rtnl_unlock() #8
  store i1 true, ptr @bind_additional_ifaces, align 4
  br label %cleanup24

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %ifc_list.addr.060 = phi ptr [ %add.ptr22, %if.end21.while.body_crit_edge ], [ %ifc_list, %while.cond.preheader.while.body_crit_edge ]
  %ifc_list_sz.addr.059 = phi i32 [ %sub, %if.end21.while.body_crit_edge ], [ %ifc_list_sz, %while.cond.preheader.while.body_crit_edge ]
  %call13 = tail call noalias ptr @kstrdup(ptr noundef %ifc_list.addr.060, i32 noundef 3264) #8
  %tobool.not.i34 = icmp eq ptr %call13, null
  br i1 %tobool.not.i34, label %while.body.cleanup24_crit_edge, label %if.end.i37

while.body.cleanup24_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

if.end.i37:                                       ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 116) #11
  %tobool1.not.i36 = icmp eq ptr %call7.i.i.i35, null
  br i1 %tobool1.not.i36, label %if.then2.i38, label %if.end3.i43

if.then2.i38:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call13) #8
  br label %cleanup24

if.end3.i43:                                      ; preds = %if.end.i37
  %name.i39 = getelementptr inbounds %struct.interface, ptr %call7.i.i.i35, i32 0, i32 3
  %11 = ptrtoint ptr %name.i39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %name.i39, align 8
  %state.i40 = getelementptr inbounds %struct.interface, ptr %call7.i.i.i35, i32 0, i32 5
  %12 = ptrtoint ptr %state.i40 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %state.i40, align 8
  %entry4.i41 = getelementptr inbounds %struct.interface, ptr %call7.i.i.i35, i32 0, i32 2
  %13 = load ptr, ptr @iface_list, align 4
  %call.i.i.i42 = tail call zeroext i1 @__list_add_valid(ptr noundef %entry4.i41, ptr noundef nonnull @iface_list, ptr noundef %13) #8
  br i1 %call.i.i.i42, label %if.end.i.i.i46, label %if.end3.i43.if.end17_crit_edge

if.end3.i43.if.end17_crit_edge:                   ; preds = %if.end3.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end.i.i.i46:                                   ; preds = %if.end3.i43
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry4.i41, ptr %prev1.i.i.i44, align 4
  %15 = ptrtoint ptr %entry4.i41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %entry4.i41, align 8
  %prev3.i.i.i45 = getelementptr inbounds %struct.interface, ptr %call7.i.i.i35, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @iface_list, ptr %prev3.i.i.i45, align 4
  store volatile ptr %entry4.i41, ptr @iface_list, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end.i.i.i46, %if.end3.i43.if.end17_crit_edge
  %sock_release_lock.i47 = getelementptr inbounds %struct.interface, ptr %call7.i.i.i35, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %sock_release_lock.i47, ptr noundef nonnull @.str.35, ptr noundef nonnull @alloc_iface.__key) #8
  %call18 = tail call i32 @strlen(ptr noundef %ifc_list.addr.060) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.while.end_crit_edge, label %if.end21

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end21:                                         ; preds = %if.end17
  %add = add i32 %call18, 1
  %add.ptr22 = getelementptr i8, ptr %ifc_list.addr.060, i32 %add
  %sub = sub i32 %ifc_list_sz.addr.059, %add
  %cmp12 = icmp sgt i32 %sub, 0
  br i1 %cmp12, label %if.end21.while.body_crit_edge, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %if.end17.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  store i1 false, ptr @bind_additional_ifaces, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %while.end, %if.then2.i38, %while.body.cleanup24_crit_edge, %for.end, %if.then2.i, %if.end.cleanup24_crit_edge
  %retval.1 = phi i32 [ 0, %while.end ], [ 0, %for.end ], [ -12, %if.then2.i ], [ -12, %if.then2.i38 ], [ -12, %if.end.cleanup24_crit_edge ], [ -12, %while.body.cleanup24_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksmbd_netdev_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %for.cond37.preheader
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond37.preheader:                             ; preds = %entry
  %.pn98 = load ptr, ptr @iface_list, align 4
  %cmp39.not99 = icmp eq ptr %.pn98, @iface_list
  br i1 %cmp39.not99, label %for.cond37.preheader.sw.epilog_crit_edge, label %for.cond37.preheader.for.body41_crit_edge

for.cond37.preheader.for.body41_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body41

for.cond37.preheader.sw.epilog_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %priv_flags, align 16
  %and = and i64 %4, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %sw.bb.for.cond_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.for.cond_crit_edge:                         ; preds = %sw.bb
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.bb.for.cond_crit_edge
  %.pn86.in = phi ptr [ %.pn86, %for.body.for.cond_crit_edge ], [ @iface_list, %sw.bb.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn86.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn86 = load ptr, ptr %.pn86.in, align 4
  %cmp.not = icmp eq ptr %.pn86, @iface_list
  br i1 %cmp.not, label %land.lhs.true.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %name = getelementptr i8, ptr %.pn86, i32 8
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %1) #12
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then5:                                         ; preds = %for.body
  %state = getelementptr i8, ptr %.pn86, i32 104
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6.not = icmp eq i32 %9, 1
  br i1 %cmp6.not, label %if.end8, label %if.then5.sw.epilog_crit_edge

if.then5.sw.epilog_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end8:                                          ; preds = %if.then5
  %iface.0.le = getelementptr i8, ptr %.pn86, i32 -8
  %call9 = tail call fastcc i32 @create_socket(ptr noundef %iface.0.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.sw.epilog_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true.critedge:                           ; preds = %for.cond
  %.b = load i1, ptr @bind_additional_ifaces, align 4
  br i1 %.b, label %if.then20, label %land.lhs.true.critedge.sw.epilog_crit_edge

land.lhs.true.critedge.sw.epilog_crit_edge:       ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then20:                                        ; preds = %land.lhs.true.critedge
  %call23 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call23, null
  br i1 %tobool.not.i, label %if.then20.cleanup_crit_edge, label %if.end.i

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 116) #11
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call23) #8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %name.i = getelementptr inbounds %struct.interface, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %name.i, align 8
  %state.i = getelementptr inbounds %struct.interface, ptr %call7.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %state.i, align 8
  %entry4.i = getelementptr inbounds %struct.interface, ptr %call7.i.i.i, i32 0, i32 2
  %13 = load ptr, ptr @iface_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry4.i, ptr noundef nonnull @iface_list, ptr noundef %13) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.if.end27_crit_edge

if.end3.i.if.end27_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry4.i, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %entry4.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.interface, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @iface_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %entry4.i, ptr @iface_list, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i.i.i, %if.end3.i.if.end27_crit_edge
  %sock_release_lock.i = getelementptr inbounds %struct.interface, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %sock_release_lock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @alloc_iface.__key) #8
  %call28 = tail call fastcc i32 @create_socket(ptr noundef nonnull %call7.i.i.i)
  br label %sw.epilog

for.body41:                                       ; preds = %for.inc56.for.body41_crit_edge, %for.cond37.preheader.for.body41_crit_edge
  %.pn100 = phi ptr [ %.pn, %for.inc56.for.body41_crit_edge ], [ %.pn98, %for.cond37.preheader.for.body41_crit_edge ]
  %name42 = getelementptr i8, ptr %.pn100, i32 8
  %17 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name42, align 4
  %call45 = tail call i32 @strcmp(ptr noundef %18, ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %for.body41.for.inc56_crit_edge

for.body41.for.inc56_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

land.lhs.true47:                                  ; preds = %for.body41
  %state48 = getelementptr i8, ptr %.pn100, i32 104
  %19 = ptrtoint ptr %state48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp49 = icmp eq i32 %20, 2
  br i1 %cmp49, label %if.then50, label %land.lhs.true47.for.inc56_crit_edge

land.lhs.true47.for.inc56_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

if.then50:                                        ; preds = %land.lhs.true47
  %state48.le = getelementptr i8, ptr %.pn100, i32 104
  %iface.1.le = getelementptr i8, ptr %.pn100, i32 -8
  %21 = ptrtoint ptr %iface.1.le to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iface.1.le, align 4
  %tobool.not.i88 = icmp eq ptr %22, null
  br i1 %tobool.not.i88, label %if.then50.tcp_stop_kthread.exit_crit_edge, label %if.end.i90

if.then50.tcp_stop_kthread.exit_crit_edge:        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcp_stop_kthread.exit

if.end.i90:                                       ; preds = %if.then50
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i89 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i89, label %if.end.i90.tcp_stop_kthread.exit_crit_edge, label %do.end.i

if.end.i90.tcp_stop_kthread.exit_crit_edge:       ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcp_stop_kthread.exit

do.end.i:                                         ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  br label %tcp_stop_kthread.exit

tcp_stop_kthread.exit:                            ; preds = %do.end.i, %if.end.i90.tcp_stop_kthread.exit_crit_edge, %if.then50.tcp_stop_kthread.exit_crit_edge
  %23 = ptrtoint ptr %iface.1.le to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %iface.1.le, align 4
  %sock_release_lock = getelementptr i8, ptr %.pn100, i32 12
  tail call void @mutex_lock_nested(ptr noundef %sock_release_lock, i32 noundef 0) #8
  %ksmbd_socket = getelementptr i8, ptr %.pn100, i32 -4
  %24 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ksmbd_socket, align 4
  tail call fastcc void @tcp_destroy_socket(ptr noundef %25)
  %26 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ksmbd_socket, align 4
  tail call void @mutex_unlock(ptr noundef %sock_release_lock) #8
  %27 = ptrtoint ptr %state48.le to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %state48.le, align 4
  br label %sw.epilog

for.inc56:                                        ; preds = %land.lhs.true47.for.inc56_crit_edge, %for.body41.for.inc56_crit_edge
  %28 = ptrtoint ptr %.pn100 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn100, align 4
  %cmp39.not = icmp eq ptr %.pn, @iface_list
  br i1 %cmp39.not, label %for.inc56.sw.epilog_crit_edge, label %for.inc56.for.body41_crit_edge

for.inc56.for.body41_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41

for.inc56.sw.epilog_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc56.sw.epilog_crit_edge, %tcp_stop_kthread.exit, %if.end27, %land.lhs.true.critedge.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge, %if.then5.sw.epilog_crit_edge, %for.cond37.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then2.i, %if.then20.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ], [ 1, %if.then2.i ], [ 1, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_socket(ptr noundef %iface) unnamed_addr #0 align 64 {
entry:
  %sin6 = alloca %struct.sockaddr_in6, align 4
  %sin = alloca %struct.sockaddr_in, align 4
  %ksmbd_socket = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sin6) #8
  %0 = call ptr @memset(ptr %sin6, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin) #8
  %1 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 1
  %2 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 2
  %3 = call ptr @memset(ptr %sin, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ksmbd_socket) #8
  %4 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ksmbd_socket, align 4, !annotation !81
  %call = call i32 @sock_create(i32 noundef 10, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %ksmbd_socket) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #13
  %call2 = call i32 @sock_create(i32 noundef 2, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %ksmbd_socket) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call2) #13
  br label %out_clear

if.end:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %sin to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %sin, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 1
  %9 = ptrtoint ptr %sin6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 10, ptr %sin6, align 4
  %10 = call ptr @memcpy(ptr %7, ptr @in6addr_any, i32 16)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  %.sink82 = phi ptr [ %8, %if.else ], [ %1, %if.end ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 6) to i32))
  %11 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 6), align 4
  %12 = ptrtoint ptr %.sink82 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %.sink82, align 2
  %13 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ksmbd_socket, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk.i, align 16
  call void @tcp_sock_set_nodelay(ptr noundef %16) #8
  %17 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ksmbd_socket, align 4
  %sk.i79 = getelementptr inbounds %struct.socket, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %sk.i79 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk.i79, align 16
  call void @sock_set_reuseaddr(ptr noundef %20) #8
  %21 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ksmbd_socket, align 4
  %name = getelementptr inbounds %struct.interface, ptr %iface, i32 0, i32 3
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  %call12 = call i32 @strlen(ptr noundef %24) #12
  %25 = ptrtoint ptr %24 to i32
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %25, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 -16777216, 1
  %call13 = call i32 @sock_setsockopt(ptr noundef %22, i32 noundef 1, i32 noundef 25, [2 x i32] %.fca.1.insert, i32 noundef %call12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call13)
  %cmp.not = icmp ne i32 %call13, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  %or.cond = and i1 %cmp.not, %cmp14
  br i1 %or.cond, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call13) #13
  br label %out_error

if.end21:                                         ; preds = %if.end10
  %26 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ksmbd_socket, align 4
  br i1 %tobool.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = call i32 @kernel_bind(ptr noundef %27, ptr noundef nonnull %sin, i32 noundef 16) #8
  br label %if.end27

if.else25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call i32 @kernel_bind(ptr noundef %27, ptr noundef nonnull %sin6, i32 noundef 28) #8
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then23
  %ret.0 = phi i32 [ %call24, %if.then23 ], [ %call26, %if.else25 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool28.not = icmp eq i32 %ret.0, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %ret.0) #13
  br label %out_error

if.end35:                                         ; preds = %if.end27
  %28 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ksmbd_socket, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk, align 16
  %sk_rcvtimeo = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 62
  %32 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 700, ptr %sk_rcvtimeo, align 4
  %33 = load ptr, ptr %sk, align 16
  %sk_sndtimeo = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 31
  %34 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 500, ptr %sk_sndtimeo, align 8
  %call37 = call i32 @kernel_listen(ptr noundef %29, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call37) #13
  br label %out_error

if.end45:                                         ; preds = %if.end35
  %35 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ksmbd_socket, align 4
  %ksmbd_socket46 = getelementptr inbounds %struct.interface, ptr %iface, i32 0, i32 1
  %37 = ptrtoint ptr %ksmbd_socket46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %ksmbd_socket46, align 4
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 4
  %call.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ksmbd_kthread_fn, ptr noundef %iface, i32 noundef -1, ptr noundef nonnull @.str.18, ptr noundef %39) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end52, label %ksmbd_tcp_run_kthread.exit.thread

ksmbd_tcp_run_kthread.exit.thread:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @wake_up_process(ptr noundef %call.i) #8
  %40 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %iface, align 4
  %state = getelementptr inbounds %struct.interface, ptr %iface, i32 0, i32 5
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %state, align 4
  br label %cleanup

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call.i to i32
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %42) #13
  br label %out_error

out_error:                                        ; preds = %do.end52, %do.end42, %do.end32, %do.end18
  %ret.1 = phi i32 [ %call13, %do.end18 ], [ %ret.0, %do.end32 ], [ %call37, %do.end42 ], [ %42, %do.end52 ]
  %43 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ksmbd_socket, align 4
  call fastcc void @tcp_destroy_socket(ptr noundef %44)
  br label %out_clear

out_clear:                                        ; preds = %out_error, %do.end7
  %ret.2 = phi i32 [ %call2, %do.end7 ], [ %ret.1, %out_error ]
  %ksmbd_socket56 = getelementptr inbounds %struct.interface, ptr %iface, i32 0, i32 1
  %45 = ptrtoint ptr %ksmbd_socket56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %ksmbd_socket56, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_clear, %ksmbd_tcp_run_kthread.exit.thread
  %retval.0 = phi i32 [ %ret.2, %out_clear ], [ 0, %ksmbd_tcp_run_kthread.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ksmbd_socket) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_destroy_socket(ptr noundef %ksmbd_socket) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ksmbd_socket, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk.i = getelementptr inbounds %struct.socket, ptr %ksmbd_socket, i32 0, i32 4
  %0 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk.i, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %2 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk.i, align 16
  %sk_rcvtimeo3.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 62
  %4 = ptrtoint ptr %sk_rcvtimeo3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2147483647, ptr %sk_rcvtimeo3.i, align 4
  %5 = load ptr, ptr %sk.i, align 16
  tail call void @release_sock(ptr noundef %5) #8
  %6 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk.i, align 16
  tail call void @sock_set_sndtimeo(ptr noundef %7, i64 noundef 0) #8
  %call = tail call i32 @kernel_sock_shutdown(ptr noundef nonnull %ksmbd_socket, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %call) #13
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  tail call void @sock_release(ptr noundef nonnull %ksmbd_socket) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_listen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_reuseaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksmbd_kthread_fn(ptr noundef %p) #0 align 64 {
entry:
  %client_sk = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %client_sk) #8
  %0 = ptrtoint ptr %client_sk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %client_sk, align 4
  %call37 = call zeroext i1 @kthread_should_stop() #8
  br i1 %call37, label %entry.do.body20_crit_edge, label %while.body.lr.ph

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

while.body.lr.ph:                                 ; preds = %entry
  %sock_release_lock = getelementptr inbounds %struct.interface, ptr %p, i32 0, i32 4
  %ksmbd_socket = getelementptr inbounds %struct.interface, ptr %p, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_lock_nested(ptr noundef %sock_release_lock, i32 noundef 0) #8
  %1 = ptrtoint ptr %ksmbd_socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ksmbd_socket, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %sock_release_lock) #8
  br label %do.body20

if.end:                                           ; preds = %while.body
  %call3 = call i32 @kernel_accept(ptr noundef nonnull %2, ptr noundef nonnull %client_sk, i32 noundef 2048) #8
  call void @mutex_unlock(ptr noundef %sock_release_lock) #8
  %3 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call3, label %if.end.while.cond.backedge_crit_edge [
    i32 0, label %do.body
    i32 -11, label %if.then7
  ]

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call i32 @schedule_timeout_interruptible(i32 noundef 10) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end21.i, %if.end12.i, %do.end.i, %if.then3.i.i, %do.end17.while.cond.backedge_crit_edge, %if.then7, %if.end.while.cond.backedge_crit_edge
  %call = call zeroext i1 @kthread_should_stop() #8
  br i1 %call, label %while.cond.backedge.do.body20_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.do.body20_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %4 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.do.end17_crit_edge, label %do.end

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %5 = ptrtoint ptr %client_sk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client_sk, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk, align 16
  %sk_rcvtimeo = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 62
  %9 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 700, ptr %sk_rcvtimeo, align 4
  %10 = load ptr, ptr %sk, align 16
  %sk_sndtimeo = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 31
  %11 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 500, ptr %sk_sndtimeo, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end17.while.cond.backedge_crit_edge, label %if.end.i.i

do.end17.while.cond.backedge_crit_edge:           ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end.i.i:                                       ; preds = %do.end17
  %sock.i.i = getelementptr inbounds %struct.tcp_transport, ptr %call7.i.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %6, ptr %sock.i.i, align 4
  %call1.i.i = call ptr @ksmbd_conn_alloc() #8
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %while.cond.backedge

if.end.i:                                         ; preds = %if.end.i.i
  %transport5.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %call1.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %transport5.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i.i, ptr %transport5.i.i, align 8
  %15 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i.i, ptr %call7.i.i.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.ksmbd_transport, ptr %call7.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ksmbd_tcp_transport_ops, ptr %ops.i.i, align 4
  %peer_addr.i = getelementptr inbounds %struct.ksmbd_conn, ptr %call1.i.i, i32 0, i32 40
  %call1.i = call i32 @kernel_getpeername(ptr noundef %6, ptr noundef %peer_addr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  %17 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sock.i.i, align 4
  %call.i.i = call i32 @kernel_sock_shutdown(ptr noundef %18, i32 noundef 2) #8
  %19 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sock.i.i, align 4
  call void @sock_release(ptr noundef %20) #8
  %21 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sock.i.i, align 4
  %22 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i.i.i, align 8
  call void @ksmbd_conn_free(ptr noundef %23) #8
  %iov.i.i = getelementptr inbounds %struct.tcp_transport, ptr %call7.i.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iov.i.i, align 8
  call void @kfree(ptr noundef %25) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %while.cond.backedge

if.end4.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.i.i.i, align 8
  %28 = ptrtoint ptr %peer_addr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %peer_addr.i, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %29, label %if.end4.i.ksmbd_tcp_get_port.exit.i_crit_edge [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb1.i.i
  ]

if.end4.i.ksmbd_tcp_get_port.exit.i_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksmbd_tcp_get_port.exit.i

sw.bb.i.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %sin_port.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %peer_addr.i, i32 0, i32 1
  br label %return.sink.split.i.i

sw.bb1.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %peer_addr.i, i32 0, i32 1
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %sin6_port.sink.i.i = phi ptr [ %sin6_port.i.i, %sw.bb1.i.i ], [ %sin_port.i.i, %sw.bb.i.i ]
  %31 = ptrtoint ptr %sin6_port.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sin6_port.sink.i.i, align 2
  %phi.cast.i = zext i16 %32 to i32
  br label %ksmbd_tcp_get_port.exit.i

ksmbd_tcp_get_port.exit.i:                        ; preds = %return.sink.split.i.i, %if.end4.i.ksmbd_tcp_get_port.exit.i_crit_edge
  %retval.0.i2.i = phi i32 [ 0, %if.end4.i.ksmbd_tcp_get_port.exit.i_crit_edge ], [ %phi.cast.i, %return.sink.split.i.i ]
  %call8.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ksmbd_conn_handler_loop, ptr noundef %27, i32 noundef -1, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i2.i) #8
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end21.i, label %if.end12.i

if.end12.i:                                       ; preds = %ksmbd_tcp_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 @wake_up_process(ptr noundef %call8.i) #8
  %handler.i = getelementptr inbounds %struct.ksmbd_transport, ptr %call7.i.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i, ptr %handler.i, align 8
  br label %while.cond.backedge

do.end21.i:                                       ; preds = %ksmbd_tcp_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %handler9.i = getelementptr inbounds %struct.ksmbd_transport, ptr %call7.i.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %handler9.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i, ptr %handler9.i, align 8
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  %35 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sock.i.i, align 4
  %call.i5.i = call i32 @kernel_sock_shutdown(ptr noundef %36, i32 noundef 2) #8
  %37 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sock.i.i, align 4
  call void @sock_release(ptr noundef %38) #8
  %39 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %sock.i.i, align 4
  %40 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i.i.i, align 8
  call void @ksmbd_conn_free(ptr noundef %41) #8
  %iov.i6.i = getelementptr inbounds %struct.tcp_transport, ptr %call7.i.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %iov.i6.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iov.i6.i, align 8
  call void @kfree(ptr noundef %43) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %while.cond.backedge

do.body20:                                        ; preds = %while.cond.backedge.do.body20_crit_edge, %if.then, %entry.do.body20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %44 = load i32, ptr @ksmbd_debug_types, align 4
  %and21 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end31_crit_edge, label %do.end26

do.body20.do.end31_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.body20.do.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %client_sk) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getpeername(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_conn_handler_loop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_conn_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksmbd_tcp_disconnect(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sock.i = getelementptr inbounds %struct.tcp_transport, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock.i, align 4
  %call.i = tail call i32 @kernel_sock_shutdown(ptr noundef %1, i32 noundef 2) #8
  %2 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock.i, align 4
  tail call void @sock_release(ptr noundef %3) #8
  %4 = ptrtoint ptr %sock.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sock.i, align 4
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  tail call void @ksmbd_conn_free(ptr noundef %6) #8
  %iov.i = getelementptr inbounds %struct.tcp_transport, ptr %t, i32 0, i32 2
  %7 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iov.i, align 4
  tail call void @kfree(ptr noundef %8) #8
  tail call void @kfree(ptr noundef %t) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksmbd_tcp_read(ptr nocapture noundef %t, ptr noundef %buf, i32 noundef %to_read) #0 align 64 {
entry:
  %ksmbd_msg.i = alloca %struct.msghdr, align 8
  %iov = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #8
  %0 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %1 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %iov, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %to_read, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ksmbd_msg.i) #8
  %3 = call ptr @memset(ptr %ksmbd_msg.i, i32 255, i32 56)
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t, align 4
  %iov.i.i = getelementptr inbounds %struct.tcp_transport, ptr %t, i32 0, i32 2
  %6 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iov.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %nr_iov.i.i = getelementptr inbounds %struct.tcp_transport, ptr %t, i32 0, i32 3
  %8 = ptrtoint ptr %nr_iov.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_iov.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 8) #11
  %tobool2.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.ksmbd_tcp_readv.exit_crit_edge, label %if.then3.i.i

if.end.i.i.ksmbd_tcp_readv.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksmbd_tcp_readv.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iov.i.i, align 4
  tail call void @kfree(ptr noundef %12) #8
  %13 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i.i, ptr %iov.i.i, align 4
  %nr_iov6.i.i = getelementptr inbounds %struct.tcp_transport, ptr %t, i32 0, i32 3
  %14 = ptrtoint ptr %nr_iov6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %nr_iov6.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i.i, %land.lhs.true.i.i.if.end.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ %call7.i.i.i.i, %if.then3.i.i ], [ %7, %land.lhs.true.i.i.if.end.i_crit_edge ]
  %15 = getelementptr inbounds %struct.msghdr, ptr %ksmbd_msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 8
  %msg_controllen.i = getelementptr inbounds %struct.msghdr, ptr %ksmbd_msg.i, i32 0, i32 5
  %17 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %msg_controllen.i, align 8
  %status.i = getelementptr inbounds %struct.ksmbd_conn, ptr %5, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_read)
  %tobool2.not7.i = icmp eq i32 %to_read, 0
  br i1 %tobool2.not7.i, label %if.end.i.ksmbd_tcp_readv.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.ksmbd_tcp_readv.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksmbd_tcp_readv.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %iov_len5.i.i = getelementptr inbounds %struct.kvec, ptr %retval.0.i.ph.i, i32 0, i32 1
  %sock.i = getelementptr inbounds %struct.tcp_transport, ptr %t, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %total_read.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %to_read.addr.08.i = phi i32 [ %to_read, %for.body.lr.ph.i ], [ %sub.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %if.then.i.i, label %for.body.i.if.end.i2.i_crit_edge

for.body.i.if.end.i2.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i2.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_check_no_locks_held() #8
  br label %if.end.i2.i

if.end.i2.i:                                      ; preds = %if.then.i.i, %for.body.i.if.end.i2.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 57) #8
  %24 = call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i.i, align 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %28 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i2.i.try_to_freeze.exit.i_crit_edge, label %freezing.exit.i.i.i, !prof !82

if.end.i2.i.try_to_freeze.exit.i_crit_edge:       ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_freeze.exit.i

freezing.exit.i.i.i:                              ; preds = %if.end.i2.i
  %call4.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %27) #8
  br i1 %call4.i.i.i.i, label %if.end.i.i.i, label %freezing.exit.i.i.i.try_to_freeze.exit.i_crit_edge, !prof !83

freezing.exit.i.i.i.try_to_freeze.exit.i_crit_edge: ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_freeze.exit.i

if.end.i.i.i:                                     ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #8
  br label %try_to_freeze.exit.i

try_to_freeze.exit.i:                             ; preds = %if.end.i.i.i, %freezing.exit.i.i.i.try_to_freeze.exit.i_crit_edge, %if.end.i2.i.try_to_freeze.exit.i_crit_edge
  %call4.i = call zeroext i1 @ksmbd_conn_alive(ptr noundef %5) #8
  br i1 %call4.i, label %try_to_freeze.exit.i.while.cond.i.i_crit_edge, label %try_to_freeze.exit.i.ksmbd_tcp_readv.exit_crit_edge

try_to_freeze.exit.i.ksmbd_tcp_readv.exit_crit_edge: ; preds = %try_to_freeze.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksmbd_tcp_readv.exit

try_to_freeze.exit.i.while.cond.i.i_crit_edge:    ; preds = %try_to_freeze.exit.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %try_to_freeze.exit.i.while.cond.i.i_crit_edge
  %nr_segs.addr.0.i.i = phi i32 [ %nr_segs.addr.1.i.i, %while.body.i.i ], [ 1, %try_to_freeze.exit.i.while.cond.i.i_crit_edge ]
  %bytes.addr.0.i.i = phi i32 [ %sub.i.i, %while.body.i.i ], [ %total_read.09.i, %try_to_freeze.exit.i.while.cond.i.i_crit_edge ]
  %base.0.i.i = phi i32 [ %base.1.i.i, %while.body.i.i ], [ 0, %try_to_freeze.exit.i.while.cond.i.i_crit_edge ]
  %iov.addr.0.i.i = phi ptr [ %iov.addr.1.i.i, %while.body.i.i ], [ %iov, %try_to_freeze.exit.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.0.i.i)
  %tobool.not.i3.i = icmp eq i32 %bytes.addr.0.i.i, 0
  br i1 %tobool.not.i3.i, label %lor.rhs.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

lor.rhs.i.i:                                      ; preds = %while.cond.i.i
  %iov_len.i.i = getelementptr inbounds %struct.kvec, ptr %iov.addr.0.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool1.not.i.i, label %lor.rhs.i.i.while.body.i.i_crit_edge, label %kvec_array_init.exit.i

lor.rhs.i.i.while.body.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %lor.rhs.i.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  %iov_len2.i.i = getelementptr inbounds %struct.kvec, ptr %iov.addr.0.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iov_len2.i.i, align 4
  %33 = call i32 @llvm.umin.i32(i32 %bytes.addr.0.i.i, i32 %32) #8
  %sub.i.i = sub i32 %bytes.addr.0.i.i, %33
  %add.i.i = add i32 %33, %base.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.i.i)
  %cmp4.i.i = icmp eq i32 %32, %add.i.i
  %dec.i.i = sext i1 %cmp4.i.i to i32
  %nr_segs.addr.1.i.i = add i32 %nr_segs.addr.0.i.i, %dec.i.i
  %base.1.i.i = select i1 %cmp4.i.i, i32 0, i32 %add.i.i
  %iov.addr.1.idx.i.i = zext i1 %cmp4.i.i to i32
  %iov.addr.1.i.i = getelementptr %struct.kvec, ptr %iov.addr.0.i.i, i32 %iov.addr.1.idx.i.i
  br label %while.cond.i.i

kvec_array_init.exit.i:                           ; preds = %lor.rhs.i.i
  %mul.i.i = shl i32 %nr_segs.addr.0.i.i, 3
  %34 = call ptr @memcpy(ptr %retval.0.i.ph.i, ptr %iov.addr.0.i.i, i32 %mul.i.i)
  %35 = ptrtoint ptr %retval.0.i.ph.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %retval.0.i.ph.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %base.0.i.i
  store ptr %add.ptr.i.i, ptr %retval.0.i.ph.i, align 4
  %37 = ptrtoint ptr %iov_len5.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iov_len5.i.i, align 4
  %sub6.i.i = sub i32 %38, %base.0.i.i
  store i32 %sub6.i.i, ptr %iov_len5.i.i, align 4
  %39 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sock.i, align 4
  %call8.i = call i32 @kernel_recvmsg(ptr noundef %40, ptr noundef nonnull %ksmbd_msg.i, ptr noundef nonnull %retval.0.i.ph.i, i32 noundef %nr_segs.addr.0.i.i, i32 noundef %to_read.addr.08.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call8.i)
  %cmp.i = icmp eq i32 %call8.i, -4
  br i1 %cmp.i, label %kvec_array_init.exit.i.ksmbd_tcp_readv.exit_crit_edge, label %if.else.i

kvec_array_init.exit.i.ksmbd_tcp_readv.exit_crit_edge: ; preds = %kvec_array_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksmbd_tcp_readv.exit

if.else.i:                                        ; preds = %kvec_array_init.exit.i
  %41 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp10.i = icmp eq i32 %42, 3
  br i1 %cmp10.i, label %if.else.i.ksmbd_tcp_readv.exit_crit_edge, label %if.else12.i

if.else.i.ksmbd_tcp_readv.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksmbd_tcp_readv.exit

if.else12.i:                                      ; preds = %if.else.i
  %43 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call8.i, label %if.else16.i [
    i32 -512, label %if.else12.i.if.then15.i_crit_edge
    i32 -11, label %if.else12.i.if.then15.i_crit_edge2
  ]

if.else12.i.if.then15.i_crit_edge2:               ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

if.else12.i.if.then15.i_crit_edge:                ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.else12.i.if.then15.i_crit_edge, %if.else12.i.if.then15.i_crit_edge2
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  br label %for.inc.i

if.else16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i)
  %cmp17.i = icmp slt i32 %call8.i, 1
  br i1 %cmp17.i, label %if.else16.i.ksmbd_tcp_readv.exit_crit_edge, label %if.else16.i.for.inc.i_crit_edge

if.else16.i.for.inc.i_crit_edge:                  ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else16.i.ksmbd_tcp_readv.exit_crit_edge:       ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksmbd_tcp_readv.exit

for.inc.i:                                        ; preds = %if.else16.i.for.inc.i_crit_edge, %if.then15.i
  %length.0.i = phi i32 [ 0, %if.then15.i ], [ %call8.i, %if.else16.i.for.inc.i_crit_edge ]
  %add.i = add i32 %length.0.i, %total_read.09.i
  %sub.i = sub i32 %to_read.addr.08.i, %length.0.i
  %tobool2.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool2.not.i, label %for.inc.i.ksmbd_tcp_readv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ksmbd_tcp_readv.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksmbd_tcp_readv.exit

ksmbd_tcp_readv.exit:                             ; preds = %for.inc.i.ksmbd_tcp_readv.exit_crit_edge, %if.else16.i.ksmbd_tcp_readv.exit_crit_edge, %if.else.i.ksmbd_tcp_readv.exit_crit_edge, %kvec_array_init.exit.i.ksmbd_tcp_readv.exit_crit_edge, %try_to_freeze.exit.i.ksmbd_tcp_readv.exit_crit_edge, %if.end.i.ksmbd_tcp_readv.exit_crit_edge, %if.end.i.i.ksmbd_tcp_readv.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.end.i.i.ksmbd_tcp_readv.exit_crit_edge ], [ 0, %if.end.i.ksmbd_tcp_readv.exit_crit_edge ], [ %add.i, %for.inc.i.ksmbd_tcp_readv.exit_crit_edge ], [ -108, %try_to_freeze.exit.i.ksmbd_tcp_readv.exit_crit_edge ], [ -108, %kvec_array_init.exit.i.ksmbd_tcp_readv.exit_crit_edge ], [ -11, %if.else.i.ksmbd_tcp_readv.exit_crit_edge ], [ -11, %if.else16.i.ksmbd_tcp_readv.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ksmbd_msg.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksmbd_tcp_writev(ptr nocapture noundef readonly %t, ptr noundef %iov, i32 noundef %nvecs, i32 noundef %size, i1 noundef zeroext %need_invalidate, i32 noundef %remote_key) #0 align 64 {
entry:
  %smb_msg = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %smb_msg) #8
  %0 = call ptr @memset(ptr %smb_msg, i32 0, i32 56)
  %1 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.22, %union.anon.23 }, %union.anon.25, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %smb_msg, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16384, ptr %1, align 4
  %sock = getelementptr inbounds %struct.tcp_transport, ptr %t, i32 0, i32 1
  %3 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sock, align 4
  %call = call i32 @kernel_sendmsg(ptr noundef %4, ptr noundef nonnull %smb_msg, ptr noundef %iov, i32 noundef %nvecs, i32 noundef %size) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %smb_msg) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ksmbd_conn_alive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_conn_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_sndtimeo(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = distinct !{null, !1, !"bind_additional_ifaces", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/transport_tcp.c", i32 29, i32 12}
!2 = !{ptr @ksmbd_netdev_notifier, !3, !"ksmbd_netdev_notifier", i1 false, i1 false}
!3 = !{!"../fs/ksmbd/transport_tcp.c", i32 523, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ksmbd/transport_tcp.c", i32 402, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @create_socket._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @create_socket._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/transport_tcp.c", i32 406, i32 4}
!12 = !{ptr @create_socket._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @create_socket._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/transport_tcp.c", i32 429, i32 3}
!16 = !{ptr @create_socket._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @create_socket._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ksmbd/transport_tcp.c", i32 440, i32 3}
!20 = !{ptr @create_socket._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @create_socket._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ksmbd/transport_tcp.c", i32 449, i32 3}
!24 = !{ptr @create_socket._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @create_socket._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ksmbd/transport_tcp.c", i32 456, i32 3}
!28 = !{ptr @create_socket._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @create_socket._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ksmbd/transport_tcp.c", i32 268, i32 12}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ksmbd/transport_tcp.c", i32 242, i32 3}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ksmbd_kthread_fn._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ksmbd_kthread_fn._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ksmbd/transport_tcp.c", i32 249, i32 2}
!39 = !{ptr @ksmbd_kthread_fn._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ksmbd_kthread_fn._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ksmbd/transport_tcp.c", i32 193, i32 3}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ksmbd_tcp_new_connection._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ksmbd_tcp_new_connection._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ksmbd/transport_tcp.c", i32 198, i32 28}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ksmbd/transport_tcp.c", i32 203, i32 3}
!50 = !{ptr @ksmbd_tcp_new_connection._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ksmbd_tcp_new_connection._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ksmbd_tcp_transport_ops, !53, !"ksmbd_tcp_transport_ops", i1 false, i1 false}
!53 = !{!"../fs/ksmbd/transport_tcp.c", i32 615, i32 35}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ksmbd/transport_tcp.c", i32 543, i32 3}
!58 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tcp_stop_kthread._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @tcp_stop_kthread._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ksmbd/transport_tcp.c", i32 383, i32 3}
!63 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @tcp_destroy_socket._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @tcp_destroy_socket._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @iface_list, !67, !"iface_list", i1 false, i1 false}
!67 = !{!"../fs/ksmbd/transport_tcp.c", i32 27, i32 8}
!68 = !{ptr @alloc_iface.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../fs/ksmbd/transport_tcp.c", i32 575, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{!"branch_weights", i32 1, i32 2000}
