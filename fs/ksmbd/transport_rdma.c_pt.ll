; ModuleID = '/llk/IR_all_yes/fs/ksmbd/transport_rdma.c_pt.bc'
source_filename = "../fs/ksmbd/transport_rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smb_direct_listener = type { ptr }
%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.128, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.128 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.ksmbd_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.215, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.215 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.206 }
%struct.anon.206 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.180, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.201, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.180 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.201 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.smb_direct_device = type { ptr, %struct.list_head }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.smb_direct_transport = type { %struct.ksmbd_transport, i32, i8, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.atomic_t, %struct.spinlock, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i8 }
%struct.ksmbd_transport = type { ptr, ptr, ptr }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.217 }
%union.anon.217 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.ida = type { %struct.xarray }
%struct.smb_direct_recvmsg = type { ptr, %struct.list_head, i32, %struct.ib_sge, %struct.ib_cqe, i8, [0 x i8] }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_cqe = type { ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ib_recv_wr = type { ptr, %union.anon.205, ptr, i32 }
%union.anon.205 = type { i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.163, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.163 = type { %struct.atomic_t }
%struct.ib_wc = type { %union.anon.177, i32, i32, i32, i32, ptr, %union.anon.178, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.177 = type { i64 }
%union.anon.178 = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.smb_direct_send_ctx = type { %struct.list_head, i32, i8, i32 }
%struct.kvec = type { ptr, i32 }
%struct.smb_direct_sendmsg = type { ptr, %struct.ib_send_wr, %struct.list_head, i32, [8 x %struct.ib_sge], %struct.ib_cqe, [0 x i8] }
%struct.ib_send_wr = type { ptr, %union.anon.203, ptr, i32, i32, i32, %union.anon.204 }
%union.anon.203 = type { i64 }
%union.anon.204 = type { i32 }
%struct.smb_direct_data_transfer = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }
%struct.smb2_hdr = type { i32, i16, i16, i32, i16, i16, i32, i32, i64, %union.anon.220, i64, [16 x i8] }
%union.anon.220 = type { i64 }
%struct.smb_direct_negotiate_resp = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.smb_direct_rdma_rw_msg = type { ptr, %struct.ib_cqe, ptr, %struct.rdma_rw_ctx, %struct.sg_table, [0 x %struct.scatterlist] }
%struct.rdma_rw_ctx = type { i32, i8, %union.anon.222 }
%union.anon.222 = type { %struct.anon.223 }
%struct.anon.223 = type { %struct.ib_sge, %struct.ib_rdma_wr }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.ib_event = type { ptr, %union.anon.168, i32 }
%union.anon.168 = type { ptr }

@smb_direct_listener = internal global { %struct.smb_direct_listener, [28 x i8] } zeroinitializer, align 32
@smb_direct_ib_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.10, ptr @smb_direct_ib_client_add, ptr @smb_direct_ib_client_remove, ptr null, ptr null, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@ksmbd_rdma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ksmbd: smb_direct: failed to ib_register_client\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ksmbd_rdma_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/ksmbd/transport_rdma.c\00", [38 x i8] zeroinitializer }, align 32
@ksmbd_rdma_init._entry_ptr = internal global ptr @ksmbd_rdma_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ksmbd-smb_direct-wq\00", [44 x i8] zeroinitializer }, align 32
@smb_direct_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@smb_direct_port = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ksmbd_rdma_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 2144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ksmbd: smb_direct: Can't listen: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ksmbd_rdma_init._entry_ptr.6 = internal global ptr @ksmbd_rdma_init._entry.4, section ".printk_index", align 4
@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@ksmbd_rdma_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 2149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ksmbd: smb_direct: init RDMA listener. cm_id=%p\0A\00", [45 x i8] zeroinitializer }, align 32
@ksmbd_rdma_init._entry_ptr.9 = internal global ptr @ksmbd_rdma_init._entry.7, section ".printk_index", align 4
@smb_direct_device_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.191, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@smb_direct_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @smb_direct_device_list, ptr @smb_direct_device_list }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ksmbd_smb_direct_ib\00", [44 x i8] zeroinitializer }, align 32
@smb_direct_ib_client_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 2092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016ksmbd: smb_direct: ib device added: name %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smb_direct_ib_client_add\00", [39 x i8] zeroinitializer }, align 32
@smb_direct_ib_client_add._entry_ptr = internal global ptr @smb_direct_ib_client_add._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_net = external dso_local global %struct.net, align 128
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ksmbd\00", [26 x i8] zeroinitializer }, align 32
@smb_direct_listen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 2047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ksmbd: smb_direct: Can't create cm id: %ld\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smb_direct_listen\00", [46 x i8] zeroinitializer }, align 32
@smb_direct_listen._entry_ptr = internal global ptr @smb_direct_listen._entry, section ".printk_index", align 4
@smb_direct_listen._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 2053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ksmbd: smb_direct: Can't bind: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@smb_direct_listen._entry_ptr.18 = internal global ptr @smb_direct_listen._entry.16, section ".printk_index", align 4
@smb_direct_listen._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.15, ptr @.str.2, i32 2061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smb_direct_listen._entry_ptr.20 = internal global ptr @smb_direct_listen._entry.19, section ".printk_index", align 4
@smb_direct_listen_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 2018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ksmbd: smb_direct: Can't create transport: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smb_direct_listen_handler\00", [38 x i8] zeroinitializer }, align 32
@smb_direct_listen_handler._entry_ptr = internal global ptr @smb_direct_listen_handler._entry, section ".printk_index", align 4
@smb_direct_listen_handler._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 2023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016ksmbd: smb_direct: Received connection request. cm_id=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@smb_direct_listen_handler._entry_ptr.25 = internal global ptr @smb_direct_listen_handler._entry.23, section ".printk_index", align 4
@smb_direct_listen_handler._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 2028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013ksmbd: smb_direct: Unexpected listen event. cm_id=%p, event=%s (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@smb_direct_listen_handler._entry_ptr.28 = internal global ptr @smb_direct_listen_handler._entry.26, section ".printk_index", align 4
@smb_direct_handle_connect_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\016ksmbd: smb_direct: Fast Registration Work Requests is not supported. device capabilities=%llx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smb_direct_handle_connect_request\00", [62 x i8] zeroinitializer }, align 32
@smb_direct_handle_connect_request._entry_ptr = internal global ptr @smb_direct_handle_connect_request._entry, section ".printk_index", align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ksmbd:r%u\00", [22 x i8] zeroinitializer }, align 32
@smb_direct_handle_connect_request._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.2, i32 2000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ksmbd: smb_direct: Can't start thread\0A\00", [55 x i8] zeroinitializer }, align 32
@smb_direct_handle_connect_request._entry_ptr.34 = internal global ptr @smb_direct_handle_connect_request._entry.32, section ".printk_index", align 4
@alloc_transport.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&t->wait_status\00", [16 x i8] zeroinitializer }, align 32
@alloc_transport.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&t->reassembly_queue_lock\00", [38 x i8] zeroinitializer }, align 32
@alloc_transport.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&t->wait_reassembly_queue\00", [38 x i8] zeroinitializer }, align 32
@alloc_transport.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&t->wait_send_credits\00", [42 x i8] zeroinitializer }, align 32
@alloc_transport.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&t->wait_rw_avail_ops\00", [42 x i8] zeroinitializer }, align 32
@alloc_transport.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&t->receive_credit_lock\00", [40 x i8] zeroinitializer }, align 32
@alloc_transport.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&t->recvmsg_queue_lock\00", [41 x i8] zeroinitializer }, align 32
@alloc_transport.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&t->empty_recvmsg_queue_lock\00", [35 x i8] zeroinitializer }, align 32
@alloc_transport.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&t->wait_send_payload_pending\00", [34 x i8] zeroinitializer }, align 32
@alloc_transport.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&t->wait_send_pending\00", [42 x i8] zeroinitializer }, align 32
@alloc_transport.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&t->lock_new_recv_credits\00", [38 x i8] zeroinitializer }, align 32
@alloc_transport.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&t->post_recv_credits_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@alloc_transport.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&t->post_recv_credits_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@alloc_transport.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&t->send_immediate_work)\00", [53 x i8] zeroinitializer }, align 32
@alloc_transport.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&t->disconnect_work)\00", [57 x i8] zeroinitializer }, align 32
@ksmbd_smb_direct_transport_ops = internal global { %struct.ksmbd_transport_ops, [36 x i8] } { %struct.ksmbd_transport_ops { ptr @smb_direct_prepare, ptr @smb_direct_disconnect, ptr @smb_direct_shutdown, ptr @smb_direct_read, ptr @smb_direct_writev, ptr @smb_direct_rdma_read, ptr @smb_direct_rdma_write }, [36 x i8] zeroinitializer }, align 32
@smb_direct_post_recv_credits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ksmbd: smb_direct: Can't post recv: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smb_direct_post_recv_credits\00", [35 x i8] zeroinitializer }, align 32
@smb_direct_post_recv_credits._entry_ptr = internal global ptr @smb_direct_post_recv_credits._entry, section ".printk_index", align 4
@smb_direct_post_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.66, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smb_direct_post_recv\00", [43 x i8] zeroinitializer }, align 32
@smb_direct_post_recv._entry_ptr = internal global ptr @smb_direct_post_recv._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@recv_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ksmbd: smb_direct: Recv error. status='%s (%d)' opcode=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recv_done\00", [22 x i8] zeroinitializer }, align 32
@recv_done._entry_ptr = internal global ptr @recv_done._entry, section ".printk_index", align 4
@recv_done._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016ksmbd: smb_direct: Recv completed. status='%s (%d)', opcode=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@recv_done._entry_ptr.73 = internal global ptr @recv_done._entry.71, section ".printk_index", align 4
@smb_direct_post_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ksmbd: smb_direct: failed to map buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smb_direct_post_send_data\00", [38 x i8] zeroinitializer }, align 32
@smb_direct_post_send_data._entry_ptr = internal global ptr @smb_direct_post_send_data._entry, section ".printk_index", align 4
@smb_direct_post_send_data._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ksmbd: smb_direct: buffer not fitted into sges\0A\00", [46 x i8] zeroinitializer }, align 32
@smb_direct_post_send_data._entry_ptr.78 = internal global ptr @smb_direct_post_send_data._entry.76, section ".printk_index", align 4
@smb_direct_post_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ksmbd: smb_direct: failed to post send: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smb_direct_post_send\00", [43 x i8] zeroinitializer }, align 32
@smb_direct_post_send._entry_ptr = internal global ptr @smb_direct_post_send._entry, section ".printk_index", align 4
@smb_direct_create_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\016ksmbd: smb_direct: credits_requested=%d credits_granted=%d data_offset=%d data_length=%d remaining_data_length=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smb_direct_create_header\00", [39 x i8] zeroinitializer }, align 32
@smb_direct_create_header._entry_ptr = internal global ptr @smb_direct_create_header._entry, section ".printk_index", align 4
@send_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016ksmbd: smb_direct: Send completed. status='%s (%d)', opcode=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_done\00", [22 x i8] zeroinitializer }, align 32
@send_done._entry_ptr = internal global ptr @send_done._entry, section ".printk_index", align 4
@send_done._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013ksmbd: smb_direct: Send error. status='%s (%d)', opcode=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@send_done._entry_ptr.87 = internal global ptr @send_done._entry.85, section ".printk_index", align 4
@smb_direct_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016ksmbd: smb_direct: Waiting for SMB_DIRECT negotiate request\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smb_direct_prepare\00", [45 x i8] zeroinitializer }, align 32
@smb_direct_prepare._entry_ptr = internal global ptr @smb_direct_prepare._entry, section ".printk_index", align 4
@smb_direct_check_recvmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"\016ksmbd: smb_direct: CreditGranted: %u, CreditRequested: %u, DataLength: %u, RemainingDataLength: %u, SMB: %x, Command: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smb_direct_check_recvmsg\00", [39 x i8] zeroinitializer }, align 32
@smb_direct_check_recvmsg._entry_ptr = internal global ptr @smb_direct_check_recvmsg._entry, section ".printk_index", align 4
@smb_direct_check_recvmsg._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"\016ksmbd: smb_direct: MinVersion: %u, MaxVersion: %u, CreditRequested: %u, MaxSendSize: %u, MaxRecvSize: %u, MaxFragmentedSize: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@smb_direct_check_recvmsg._entry_ptr.94 = internal global ptr @smb_direct_check_recvmsg._entry.92, section ".printk_index", align 4
@smb_direct_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ksmbd: smb_direct: Disconnecting cm_id=%p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smb_direct_disconnect\00", [42 x i8] zeroinitializer }, align 32
@smb_direct_disconnect._entry_ptr = internal global ptr @smb_direct_disconnect._entry, section ".printk_index", align 4
@smb_direct_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ksmbd: smb_direct: smb-direct shutdown cm_id=%p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smb_direct_shutdown\00", [44 x i8] zeroinitializer }, align 32
@smb_direct_shutdown._entry_ptr = internal global ptr @smb_direct_shutdown._entry, section ".printk_index", align 4
@smb_direct_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ksmbd: smb_direct: disconnected\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smb_direct_read\00", [16 x i8] zeroinitializer }, align 32
@smb_direct_read._entry_ptr = internal global ptr @smb_direct_read._entry, section ".printk_index", align 4
@smb_direct_read._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ksmbd: smb_direct: returning rfc1002 length %d\0A\00", [46 x i8] zeroinitializer }, align 32
@smb_direct_read._entry_ptr.103 = internal global ptr @smb_direct_read._entry.101, section ".printk_index", align 4
@smb_direct_read._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\016ksmbd: smb_direct: returning to thread data_read=%d reassembly_data_length=%d first_entry_offset=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@smb_direct_read._entry_ptr.106 = internal global ptr @smb_direct_read._entry.104, section ".printk_index", align 4
@smb_direct_read._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.100, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016ksmbd: smb_direct: wait_event on more data\0A\00", [50 x i8] zeroinitializer }, align 32
@smb_direct_read._entry_ptr.109 = internal global ptr @smb_direct_read._entry.107, section ".printk_index", align 4
@smb_direct_writev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016ksmbd: smb_direct: Sending smb (RDMA): smb_len=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smb_direct_writev\00", [46 x i8] zeroinitializer }, align 32
@smb_direct_writev._entry_ptr = internal global ptr @smb_direct_writev._entry, section ".printk_index", align 4
@smb_direct_rdma_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ksmbd: smb_direct: failed to get pages\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smb_direct_rdma_xmit\00", [43 x i8] zeroinitializer }, align 32
@smb_direct_rdma_xmit._entry_ptr = internal global ptr @smb_direct_rdma_xmit._entry, section ".printk_index", align 4
@smb_direct_rdma_xmit._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.2, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ksmbd: smb_direct: failed to init rdma_rw_ctx: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@smb_direct_rdma_xmit._entry_ptr.116 = internal global ptr @smb_direct_rdma_xmit._entry.114, section ".printk_index", align 4
@smb_direct_rdma_xmit._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.2, i32 1408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ksmbd: smb_direct: failed to post send wr: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@smb_direct_rdma_xmit._entry_ptr.119 = internal global ptr @smb_direct_rdma_xmit._entry.117, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@read_write_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013ksmbd: smb_direct: read/write error. opcode = %d, status = %s(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read_write_done\00", [16 x i8] zeroinitializer }, align 32
@read_write_done._entry_ptr = internal global ptr @read_write_done._entry, section ".printk_index", align 4
@smb_direct_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 1942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013ksmbd: smb_direct: Can't configure RDMA parameters\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smb_direct_connect\00", [45 x i8] zeroinitializer }, align 32
@smb_direct_connect._entry_ptr = internal global ptr @smb_direct_connect._entry, section ".printk_index", align 4
@smb_direct_connect._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 1948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ksmbd: smb_direct: Can't init RDMA pool: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@smb_direct_connect._entry_ptr.127 = internal global ptr @smb_direct_connect._entry.125, section ".printk_index", align 4
@smb_direct_connect._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.2, i32 1954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ksmbd: smb_direct: Can't accept RDMA client: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@smb_direct_connect._entry_ptr.130 = internal global ptr @smb_direct_connect._entry.128, section ".printk_index", align 4
@smb_direct_connect._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.124, ptr @.str.2, i32 1960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ksmbd: smb_direct: Can't negotiate: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@smb_direct_connect._entry_ptr.133 = internal global ptr @smb_direct_connect._entry.131, section ".printk_index", align 4
@smb_direct_init_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013ksmbd: smb_direct: max_send_size %d is too large\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smb_direct_init_params\00", [41 x i8] zeroinitializer }, align 32
@smb_direct_init_params._entry_ptr = internal global ptr @smb_direct_init_params._entry, section ".printk_index", align 4
@smb_direct_init_params._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 1675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013ksmbd: smb_direct: consider lowering send_credit_target = %d, or max_outstanding_rw_ops = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@smb_direct_init_params._entry_ptr.138 = internal global ptr @smb_direct_init_params._entry.136, section ".printk_index", align 4
@smb_direct_init_params._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.2, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013ksmbd: smb_direct: Possible CQE overrun, device reporting max_cqe %d max_qp_wr %d\0A\00", [43 x i8] zeroinitializer }, align 32
@smb_direct_init_params._entry_ptr.141 = internal global ptr @smb_direct_init_params._entry.139, section ".printk_index", align 4
@smb_direct_init_params._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.2, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013ksmbd: smb_direct: consider lowering receive_credit_max = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@smb_direct_init_params._entry_ptr.144 = internal global ptr @smb_direct_init_params._entry.142, section ".printk_index", align 4
@smb_direct_init_params._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str.2, i32 1686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013ksmbd: smb_direct: Possible CQE overrun, device reporting max_cpe %d max_qp_wr %d\0A\00", [43 x i8] zeroinitializer }, align 32
@smb_direct_init_params._entry_ptr.147 = internal global ptr @smb_direct_init_params._entry.145, section ".printk_index", align 4
@smb_direct_init_params._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.135, ptr @.str.2, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013ksmbd: smb_direct: warning: device max_send_sge = %d too small\0A\00", [62 x i8] zeroinitializer }, align 32
@smb_direct_init_params._entry_ptr.150 = internal global ptr @smb_direct_init_params._entry.148, section ".printk_index", align 4
@smb_direct_init_params._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.135, ptr @.str.2, i32 1697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013ksmbd: smb_direct: warning: device max_recv_sge = %d too small\0A\00", [62 x i8] zeroinitializer }, align 32
@smb_direct_init_params._entry_ptr.153 = internal global ptr @smb_direct_init_params._entry.151, section ".printk_index", align 4
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smb_direct_rqst_pool_%p\00", [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smb_direct_resp_%p\00", [45 x i8] zeroinitializer }, align 32
@smb_direct_create_qpair._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.2, i32 1809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ksmbd: smb_direct: Can't create RDMA PD\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smb_direct_create_qpair\00", [40 x i8] zeroinitializer }, align 32
@smb_direct_create_qpair._entry_ptr = internal global ptr @smb_direct_create_qpair._entry, section ".printk_index", align 4
@smb_direct_create_qpair._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.2, i32 1818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ksmbd: smb_direct: Can't create RDMA send CQ\0A\00", [48 x i8] zeroinitializer }, align 32
@smb_direct_create_qpair._entry_ptr.160 = internal global ptr @smb_direct_create_qpair._entry.158, section ".printk_index", align 4
@smb_direct_create_qpair._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.157, ptr @.str.2, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ksmbd: smb_direct: Can't create RDMA recv CQ\0A\00", [48 x i8] zeroinitializer }, align 32
@smb_direct_create_qpair._entry_ptr.163 = internal global ptr @smb_direct_create_qpair._entry.161, section ".printk_index", align 4
@smb_direct_create_qpair._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.157, ptr @.str.2, i32 1846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ksmbd: smb_direct: Can't create RDMA QP: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@smb_direct_create_qpair._entry_ptr.166 = internal global ptr @smb_direct_create_qpair._entry.164, section ".printk_index", align 4
@smb_direct_create_qpair._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.157, ptr @.str.2, i32 1865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013ksmbd: smb_direct: failed to init mr pool count %d pages %d\0A\00", [33 x i8] zeroinitializer }, align 32
@smb_direct_create_qpair._entry_ptr.169 = internal global ptr @smb_direct_create_qpair._entry.167, section ".printk_index", align 4
@smb_direct_qpair_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 1506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016ksmbd: smb_direct: Received QP event. cm_id=%p, event=%s (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smb_direct_qpair_handler\00", [39 x i8] zeroinitializer }, align 32
@smb_direct_qpair_handler._entry_ptr = internal global ptr @smb_direct_qpair_handler._entry, section ".printk_index", align 4
@smb_direct_cm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.2, i32 1471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016ksmbd: smb_direct: RDMA CM event. cm_id=%p event=%s (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smb_direct_cm_handler\00", [42 x i8] zeroinitializer }, align 32
@smb_direct_cm_handler._entry_ptr = internal global ptr @smb_direct_cm_handler._entry, section ".printk_index", align 4
@smb_direct_cm_handler._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.2, i32 1495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013ksmbd: smb_direct: Unexpected RDMA CM event. cm_id=%p, event=%s (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@smb_direct_cm_handler._entry_ptr.176 = internal global ptr @smb_direct_cm_handler._entry.174, section ".printk_index", align 4
@ib_destroy_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel CQ shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.179 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@smb_direct_prepare_negotiation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.180, ptr @.str.2, i32 1623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smb_direct_prepare_negotiation\00", [33 x i8] zeroinitializer }, align 32
@smb_direct_prepare_negotiation._entry_ptr = internal global ptr @smb_direct_prepare_negotiation._entry, section ".printk_index", align 4
@smb_direct_prepare_negotiation._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.2, i32 1630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ksmbd: smb_direct: Can't accept client\0A\00", [54 x i8] zeroinitializer }, align 32
@smb_direct_prepare_negotiation._entry_ptr.183 = internal global ptr @smb_direct_prepare_negotiation._entry.181, section ".printk_index", align 4
@smb_direct_accept_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.2, i32 1605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ksmbd: smb_direct: error at rdma_accept: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smb_direct_accept_client\00", [39 x i8] zeroinitializer }, align 32
@smb_direct_accept_client._entry_ptr = internal global ptr @smb_direct_accept_client._entry, section ".printk_index", align 4
@free_transport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016ksmbd: smb_direct: wait for all send posted to IB to finish\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"free_transport\00", [17 x i8] zeroinitializer }, align 32
@free_transport._entry_ptr = internal global ptr @free_transport._entry, section ".printk_index", align 4
@free_transport._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ksmbd: smb_direct: drain the reassembly queue\0A\00", [47 x i8] zeroinitializer }, align 32
@free_transport._entry_ptr.190 = internal global ptr @free_transport._entry.188, section ".printk_index", align 4
@.str.191 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smb_direct_device_lock\00", [41 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.194 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 9, i64 10, i64 11]
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"smb_direct_listener\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 97, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [21 x i8] c"smb_direct_ib_client\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2112, i32 25 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2126, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2135, i32 34 }
@___asan_gen_.216 = private unnamed_addr constant [14 x i8] c"smb_direct_wq\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 99, i32 33 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"smb_direct_port\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2144, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2148, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [23 x i8] c"smb_direct_device_lock\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [23 x i8] c"smb_direct_device_list\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 87, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2113, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2092, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2044, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2047, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2053, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2061, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2018, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2022, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2027, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1981, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1995, i32 28 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2000, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 372, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 374, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 378, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 379, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 380, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 382, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 383, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 386, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 389, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 391, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 394, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 396, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 398, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 399, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [31 x i8] c"ksmbd_smb_direct_transport_ops\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2210, i32 35 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 835, i32 5 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 664, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 326, i32 6 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 548, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 557, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1199, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1203, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 921, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1049, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 865, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 870, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1898, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 502, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 513, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1448, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1460, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 686, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 733, i32 5 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 784, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 792, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1251, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1387, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1396, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1408, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 87, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1329, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1942, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1948, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1954, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1960, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1653, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1673, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1676, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1683, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1685, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1691, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1696, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1755, i32 31 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1769, i32 31 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1809, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1818, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1828, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1846, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1864, i32 4 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1505, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1470, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1493, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3936, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3498, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1623, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1630, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1605, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 419, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 435, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.782 = private constant [29 x i8] c"../fs/ksmbd/transport_rdma.c\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 88, i32 8 }
@llvm.compiler.used = appending global [257 x ptr] [ptr @free_transport._entry, ptr @free_transport._entry.188, ptr @free_transport._entry_ptr, ptr @free_transport._entry_ptr.190, ptr @ksmbd_rdma_init._entry, ptr @ksmbd_rdma_init._entry.4, ptr @ksmbd_rdma_init._entry.7, ptr @ksmbd_rdma_init._entry_ptr, ptr @ksmbd_rdma_init._entry_ptr.6, ptr @ksmbd_rdma_init._entry_ptr.9, ptr @read_write_done._entry, ptr @read_write_done._entry_ptr, ptr @recv_done._entry, ptr @recv_done._entry.71, ptr @recv_done._entry_ptr, ptr @recv_done._entry_ptr.73, ptr @send_done._entry, ptr @send_done._entry.85, ptr @send_done._entry_ptr, ptr @send_done._entry_ptr.87, ptr @smb_direct_accept_client._entry, ptr @smb_direct_accept_client._entry_ptr, ptr @smb_direct_check_recvmsg._entry, ptr @smb_direct_check_recvmsg._entry.92, ptr @smb_direct_check_recvmsg._entry_ptr, ptr @smb_direct_check_recvmsg._entry_ptr.94, ptr @smb_direct_cm_handler._entry, ptr @smb_direct_cm_handler._entry.174, ptr @smb_direct_cm_handler._entry_ptr, ptr @smb_direct_cm_handler._entry_ptr.176, ptr @smb_direct_connect._entry, ptr @smb_direct_connect._entry.125, ptr @smb_direct_connect._entry.128, ptr @smb_direct_connect._entry.131, ptr @smb_direct_connect._entry_ptr, ptr @smb_direct_connect._entry_ptr.127, ptr @smb_direct_connect._entry_ptr.130, ptr @smb_direct_connect._entry_ptr.133, ptr @smb_direct_create_header._entry, ptr @smb_direct_create_header._entry_ptr, ptr @smb_direct_create_qpair._entry, ptr @smb_direct_create_qpair._entry.158, ptr @smb_direct_create_qpair._entry.161, ptr @smb_direct_create_qpair._entry.164, ptr @smb_direct_create_qpair._entry.167, ptr @smb_direct_create_qpair._entry_ptr, ptr @smb_direct_create_qpair._entry_ptr.160, ptr @smb_direct_create_qpair._entry_ptr.163, ptr @smb_direct_create_qpair._entry_ptr.166, ptr @smb_direct_create_qpair._entry_ptr.169, ptr @smb_direct_disconnect._entry, ptr @smb_direct_disconnect._entry_ptr, ptr @smb_direct_handle_connect_request._entry, ptr @smb_direct_handle_connect_request._entry.32, ptr @smb_direct_handle_connect_request._entry_ptr, ptr @smb_direct_handle_connect_request._entry_ptr.34, ptr @smb_direct_ib_client_add._entry, ptr @smb_direct_ib_client_add._entry_ptr, ptr @smb_direct_init_params._entry, ptr @smb_direct_init_params._entry.136, ptr @smb_direct_init_params._entry.139, ptr @smb_direct_init_params._entry.142, ptr @smb_direct_init_params._entry.145, ptr @smb_direct_init_params._entry.148, ptr @smb_direct_init_params._entry.151, ptr @smb_direct_init_params._entry_ptr, ptr @smb_direct_init_params._entry_ptr.138, ptr @smb_direct_init_params._entry_ptr.141, ptr @smb_direct_init_params._entry_ptr.144, ptr @smb_direct_init_params._entry_ptr.147, ptr @smb_direct_init_params._entry_ptr.150, ptr @smb_direct_init_params._entry_ptr.153, ptr @smb_direct_listen._entry, ptr @smb_direct_listen._entry.16, ptr @smb_direct_listen._entry.19, ptr @smb_direct_listen._entry_ptr, ptr @smb_direct_listen._entry_ptr.18, ptr @smb_direct_listen._entry_ptr.20, ptr @smb_direct_listen_handler._entry, ptr @smb_direct_listen_handler._entry.23, ptr @smb_direct_listen_handler._entry.26, ptr @smb_direct_listen_handler._entry_ptr, ptr @smb_direct_listen_handler._entry_ptr.25, ptr @smb_direct_listen_handler._entry_ptr.28, ptr @smb_direct_post_recv._entry, ptr @smb_direct_post_recv._entry_ptr, ptr @smb_direct_post_recv_credits._entry, ptr @smb_direct_post_recv_credits._entry_ptr, ptr @smb_direct_post_send._entry, ptr @smb_direct_post_send._entry_ptr, ptr @smb_direct_post_send_data._entry, ptr @smb_direct_post_send_data._entry.76, ptr @smb_direct_post_send_data._entry_ptr, ptr @smb_direct_post_send_data._entry_ptr.78, ptr @smb_direct_prepare._entry, ptr @smb_direct_prepare._entry_ptr, ptr @smb_direct_prepare_negotiation._entry, ptr @smb_direct_prepare_negotiation._entry.181, ptr @smb_direct_prepare_negotiation._entry_ptr, ptr @smb_direct_prepare_negotiation._entry_ptr.183, ptr @smb_direct_qpair_handler._entry, ptr @smb_direct_qpair_handler._entry_ptr, ptr @smb_direct_rdma_xmit._entry, ptr @smb_direct_rdma_xmit._entry.114, ptr @smb_direct_rdma_xmit._entry.117, ptr @smb_direct_rdma_xmit._entry_ptr, ptr @smb_direct_rdma_xmit._entry_ptr.116, ptr @smb_direct_rdma_xmit._entry_ptr.119, ptr @smb_direct_read._entry, ptr @smb_direct_read._entry.101, ptr @smb_direct_read._entry.104, ptr @smb_direct_read._entry.107, ptr @smb_direct_read._entry_ptr, ptr @smb_direct_read._entry_ptr.103, ptr @smb_direct_read._entry_ptr.106, ptr @smb_direct_read._entry_ptr.109, ptr @smb_direct_shutdown._entry, ptr @smb_direct_shutdown._entry_ptr, ptr @smb_direct_writev._entry, ptr @smb_direct_writev._entry_ptr, ptr @smb_direct_listener, ptr @smb_direct_ib_client, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @smb_direct_wq, ptr @smb_direct_port, ptr @.str.5, ptr @.str.8, ptr @smb_direct_device_lock, ptr @smb_direct_device_list, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @alloc_transport.__key, ptr @.str.35, ptr @alloc_transport.__key.36, ptr @.str.37, ptr @alloc_transport.__key.38, ptr @.str.39, ptr @alloc_transport.__key.40, ptr @.str.41, ptr @alloc_transport.__key.42, ptr @.str.43, ptr @alloc_transport.__key.44, ptr @.str.45, ptr @alloc_transport.__key.46, ptr @.str.47, ptr @alloc_transport.__key.48, ptr @.str.49, ptr @alloc_transport.__key.50, ptr @.str.51, ptr @alloc_transport.__key.52, ptr @.str.53, ptr @alloc_transport.__key.54, ptr @.str.55, ptr @alloc_transport.__key.56, ptr @.str.57, ptr @alloc_transport.__key.58, ptr @.str.59, ptr @alloc_transport.__key.60, ptr @.str.61, ptr @alloc_transport.__key.62, ptr @.str.63, ptr @ksmbd_smb_direct_transport_ops, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @init_completion.__key, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.191], section "llvm.metadata"
@0 = internal global [197 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_listener to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_ib_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_rdma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_port to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_rdma_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_rdma_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_device_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_ib_client_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_listen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_listen._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_listen._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_listen_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_listen_handler._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_listen_handler._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_handle_connect_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_handle_connect_request._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_transport.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb_direct_transport_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_post_recv_credits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_post_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_post_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_post_send_data._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_post_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_create_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_done._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_check_recvmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_check_recvmsg._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_read._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_read._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_read._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_writev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_rdma_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_rdma_xmit._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_rdma_xmit._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_write_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_connect._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_connect._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_connect._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_init_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_init_params._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_init_params._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_init_params._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_init_params._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_init_params._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_init_params._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_create_qpair._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_create_qpair._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_create_qpair._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_create_qpair._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_create_qpair._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_qpair_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_cm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_cm_handler._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_prepare_negotiation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_prepare_negotiation._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_direct_accept_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_transport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_transport._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_rdma_init() local_unnamed_addr #0 align 64 {
entry:
  %sin.i = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr @smb_direct_listener, align 4
  %call = tail call i32 @ib_register_client(ptr noundef nonnull @smb_direct_ib_client) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 24, i32 noundef 0) #10
  store ptr %call2, ptr @smb_direct_wq, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %.b = load i1, ptr @smb_direct_port, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin.i) #10
  %0 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 3
  %3 = ptrtoint ptr %sin.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2, ptr %sin.i, align 4
  %conv.i = select i1 %.b, i16 5445, i16 445
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %0, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %2, align 4
  %call.i = tail call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull @smb_direct_listen_handler, ptr noundef nonnull @smb_direct_listener, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.13) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %smb_direct_listen.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end5
  %call5.i = call i32 @rdma_bind_addr(ptr noundef %call.i, ptr noundef nonnull %sin.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call5.i) #13
  br label %smb_direct_listen.exit.thread32

if.end12.i:                                       ; preds = %if.end.i
  store ptr %call.i, ptr @smb_direct_listener, align 4
  %call13.i = call i32 @rdma_listen(ptr noundef %call.i, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %smb_direct_listen.exit.thread, label %do.end18.i

smb_direct_listen.exit.thread:                    ; preds = %if.end12.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %7 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %smb_direct_listen.exit.thread.cleanup_crit_edge, label %do.end20

smb_direct_listen.exit.thread.cleanup_crit_edge:  ; preds = %smb_direct_listen.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call13.i) #13
  br label %smb_direct_listen.exit.thread32

smb_direct_listen.exit.thread32:                  ; preds = %do.end18.i, %do.end9.i
  %ret.0.i = phi i32 [ %call5.i, %do.end9.i ], [ %call13.i, %do.end18.i ]
  store ptr null, ptr @smb_direct_listener, align 4
  call void @rdma_destroy_id(ptr noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #10
  br label %if.then8

smb_direct_listen.exit:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call.i to i32
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #10
  br label %if.then8

if.then8:                                         ; preds = %smb_direct_listen.exit, %smb_direct_listen.exit.thread32
  %retval.0.i35 = phi i32 [ %ret.0.i, %smb_direct_listen.exit.thread32 ], [ %8, %smb_direct_listen.exit ]
  %9 = load ptr, ptr @smb_direct_wq, align 4
  call void @destroy_workqueue(ptr noundef %9) #10
  store ptr null, ptr @smb_direct_wq, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %retval.0.i35) #13
  br label %cleanup

do.end20:                                         ; preds = %smb_direct_listen.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %10 = load ptr, ptr @smb_direct_listener, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %10) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.then8, %smb_direct_listen.exit.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i35, %if.then8 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.end20 ], [ 0, %smb_direct_listen.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_rdma_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @smb_direct_listener, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end:                                           ; preds = %entry
  tail call void @ib_unregister_client(ptr noundef nonnull @smb_direct_ib_client) #10
  %1 = load ptr, ptr @smb_direct_listener, align 4
  tail call void @rdma_destroy_id(ptr noundef %1) #10
  store ptr null, ptr @smb_direct_listener, align 4
  %2 = load ptr, ptr @smb_direct_wq, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %2) #10
  store ptr null, ptr @smb_direct_wq, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ksmbd_rdma_capable_netdev(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @smb_direct_device_lock) #10
  %.pn76 = load ptr, ptr @smb_direct_device_list, align 4
  %cmp.not78 = icmp eq ptr %.pn76, @smb_direct_device_list
  br i1 %cmp.not78, label %entry.out_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.cond1.preheader.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp.not = icmp eq ptr %.pn, @smb_direct_device_list
  br i1 %cmp.not, label %for.cond.loopexit.out_crit_edge, label %for.cond.loopexit.for.cond1.preheader_crit_edge

for.cond.loopexit.for.cond1.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.cond.loopexit.out_crit_edge:                  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond1.preheader:                              ; preds = %for.cond.loopexit.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %.pn79 = phi ptr [ %.pn, %for.cond.loopexit.for.cond1.preheader_crit_edge ], [ %.pn76, %entry.for.cond1.preheader_crit_edge ]
  %smb_dev.080 = getelementptr i8, ptr %.pn79, i32 -4
  %1 = ptrtoint ptr %smb_dev.080 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smb_dev.080, align 4
  %phys_port_cnt73 = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 21
  %3 = ptrtoint ptr %phys_port_cnt73 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_port_cnt73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp274.not = icmp eq i32 %4, 0
  br i1 %cmp274.not, label %for.cond1.preheader.for.cond.loopexit_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %5 = phi ptr [ %36, %for.inc.for.body3_crit_edge ], [ %2, %for.cond1.preheader.for.body3_crit_edge ]
  %i.075 = phi i32 [ %add, %for.inc.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %get_netdev = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 23
  %6 = ptrtoint ptr %get_netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_netdev, align 4
  %add = add nuw i32 %i.075, 1
  %call = tail call ptr %7(ptr noundef %5, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body3.for.inc_crit_edge, label %if.end

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body3
  %cmp6 = icmp eq ptr %call, %netdev
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10
  br i1 %cmp6, label %do.body1.i, label %do.body1.i64

do.body1.i:                                       ; preds = %if.end
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !365) #10
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add13.i = add i32 %20, -1
  store i32 %add13.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !375
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.out.thread_crit_edge, !prof !376

do.body1.i.out.thread_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %out.thread

do.body1.i64:                                     ; preds = %if.end
  %pcpu_refcnt.i56 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %22 = ptrtoint ptr %pcpu_refcnt.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcpu_refcnt.i56, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !365) #10
  %and.i.i57 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i57 to ptr
  %cpu.i58 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i58, align 4
  %arrayidx.i59 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i59, align 4
  %add.i60 = add i32 %30, %24
  %31 = inttoptr i32 %add.i60 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add13.i61 = add i32 %33, -1
  store i32 %add13.i61, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !375
  %and.i.i.i62 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i62)
  %tobool24.not.i63 = icmp eq i32 %and.i.i.i62, 0
  br i1 %tobool24.not.i63, label %if.then28.i65, label %do.body1.i64.dev_put.exit67_crit_edge, !prof !376

do.body1.i64.dev_put.exit67_crit_edge:            ; preds = %do.body1.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit67

if.then28.i65:                                    ; preds = %do.body1.i64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit67

dev_put.exit67:                                   ; preds = %if.then28.i65, %do.body1.i64.dev_put.exit67_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #10, !srcloc !377
  br label %for.inc

out.thread:                                       ; preds = %if.then28.i, %do.body1.i.out.thread_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #10, !srcloc !377
  tail call void @_raw_read_unlock(ptr noundef nonnull @smb_direct_device_lock) #10
  br label %cleanup28

for.inc:                                          ; preds = %dev_put.exit67, %for.body3.for.inc_crit_edge
  %35 = ptrtoint ptr %smb_dev.080 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %smb_dev.080, align 4
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %36, i32 0, i32 21
  %37 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phys_port_cnt, align 8
  %cmp2 = icmp ult i32 %add, %38
  br i1 %cmp2, label %for.inc.for.body3_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

out:                                              ; preds = %for.cond.loopexit.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @smb_direct_device_lock) #10
  %call19 = tail call ptr @ib_device_get_by_netdev(ptr noundef %netdev, i32 noundef 0) #10
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %out.cleanup28_crit_edge, label %if.then21

out.cleanup28_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.then21:                                        ; preds = %out
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %call19, i32 0, i32 22, i32 9
  %39 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %device_cap_flags.i, align 8
  %and.i = and i64 %40, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i68 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i68, label %if.then21.rdma_frwr_is_supported.exit_crit_edge, label %if.end.i

if.then21.rdma_frwr_is_supported.exit_crit_edge:  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_frwr_is_supported.exit

if.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %max_fast_reg_page_list_len.i = getelementptr inbounds %struct.ib_device, ptr %call19, i32 0, i32 22, i32 36
  %41 = ptrtoint ptr %max_fast_reg_page_list_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_fast_reg_page_list_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i = icmp ne i32 %42, 0
  br label %rdma_frwr_is_supported.exit

rdma_frwr_is_supported.exit:                      ; preds = %if.end.i, %if.then21.rdma_frwr_is_supported.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.then21.rdma_frwr_is_supported.exit_crit_edge ], [ %cmp.i, %if.end.i ]
  tail call void @ib_device_put(ptr noundef nonnull %call19) #10
  br label %cleanup28

cleanup28:                                        ; preds = %rdma_frwr_is_supported.exit, %out.cleanup28_crit_edge, %out.thread
  %retval.0 = phi i1 [ %retval.0.i, %rdma_frwr_is_supported.exit ], [ false, %out.cleanup28_crit_edge ], [ true, %out.thread ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_device_get_by_netdev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb_direct_ib_client_add(ptr noundef %ib_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %node_type = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 20
  %0 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %node_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @smb_direct_port, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %get_netdev = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 1, i32 23
  %2 = ptrtoint ptr %get_netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_netdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 22, i32 9
  %4 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %device_cap_flags.i, align 8
  %and.i = and i64 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %rdma_frwr_is_supported.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

rdma_frwr_is_supported.exit:                      ; preds = %lor.lhs.false
  %max_fast_reg_page_list_len.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 22, i32 36
  %6 = ptrtoint ptr %max_fast_reg_page_list_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_fast_reg_page_list_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %rdma_frwr_is_supported.exit.cleanup_crit_edge, label %if.end3

rdma_frwr_is_supported.exit.cleanup_crit_edge:    ; preds = %rdma_frwr_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %rdma_frwr_is_supported.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 12) #14
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ib_dev, ptr %call7.i.i, align 8
  tail call void @_raw_write_lock(ptr noundef nonnull @smb_direct_device_lock) #10
  %list = getelementptr inbounds %struct.smb_direct_device, ptr %call7.i.i, i32 0, i32 1
  %10 = load ptr, ptr @smb_direct_device_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @smb_direct_device_list, ptr noundef %10) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add.exit_crit_edge

if.end7.list_add.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.smb_direct_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @smb_direct_device_list, ptr %prev3.i.i, align 8
  store volatile ptr %list, ptr @smb_direct_device_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end7.list_add.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @smb_direct_device_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %14 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %list_add.exit.cleanup_crit_edge, label %do.end

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 2
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %list_add.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %rdma_frwr_is_supported.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rdma_frwr_is_supported.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %list_add.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smb_direct_ib_client_remove(ptr noundef readnone %ib_dev, ptr nocapture noundef readnone %client_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @smb_direct_device_lock) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in.in = phi ptr [ @smb_direct_device_list, %entry ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, @smb_direct_device_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %smb_dev.0 = getelementptr i8, ptr %.pn.in, i32 -4
  %1 = ptrtoint ptr %smb_dev.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smb_dev.0, align 4
  %cmp7 = icmp eq ptr %2, %ib_dev
  br i1 %cmp7, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %smb_dev.0.le = getelementptr i8, ptr %.pn.in, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %smb_dev.0.le) #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @smb_direct_device_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb_direct_listen_handler(ptr noundef %cm_id, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  %conn_param.i.i.i.i = alloca %struct.rdma_conn_param, align 4
  %port_immutable.i.i.i.i = alloca %struct.ib_port_immutable, align 4
  %ird_ord_hdr.i.i.i.i = alloca [2 x i32], align 4
  %qp_attr.i.i.i = alloca %struct.ib_qp_init_attr, align 4
  %name.i.i.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cond = icmp eq i32 %1, 4
  br i1 %cond, label %sw.bb, label %do.end16

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_id, align 4
  %device_cap_flags.i.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 22, i32 9
  %4 = ptrtoint ptr %device_cap_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %device_cap_flags.i.i, align 8
  %and.i.i = and i64 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.do.body.i_crit_edge, label %rdma_frwr_is_supported.exit.i

sw.bb.do.body.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

rdma_frwr_is_supported.exit.i:                    ; preds = %sw.bb
  %max_fast_reg_page_list_len.i.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 22, i32 36
  %6 = ptrtoint ptr %max_fast_reg_page_list_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_fast_reg_page_list_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, 0
  br i1 %cmp.i.not.i, label %rdma_frwr_is_supported.exit.i.do.body.i_crit_edge, label %if.end8.i

rdma_frwr_is_supported.exit.i.do.body.i_crit_edge: ; preds = %rdma_frwr_is_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %rdma_frwr_is_supported.exit.i.do.body.i_crit_edge, %sw.bb.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %8 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i64 noundef %5) #13
  br label %cleanup

if.end8.i:                                        ; preds = %rdma_frwr_is_supported.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 876) #14
  %tobool.not.i49.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i49.i, label %if.end8.i.cleanup_crit_edge, label %if.end.i50.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i50.i:                                     ; preds = %if.end8.i
  %cm_id1.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cm_id, ptr %cm_id1.i.i, align 8
  %context.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %11 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i.i, ptr %context.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %status.i.i, align 4
  %wait_status.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait_status.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @alloc_transport.__key) #10
  %reassembly_queue_lock.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %reassembly_queue_lock.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @alloc_transport.__key.36, i16 noundef signext 3) #10
  %reassembly_queue.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 15
  %13 = ptrtoint ptr %reassembly_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %reassembly_queue.i.i, ptr %reassembly_queue.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 15, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reassembly_queue.i.i, ptr %prev.i.i.i, align 8
  %reassembly_data_length.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %reassembly_data_length.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %reassembly_data_length.i.i, align 4
  %reassembly_queue_length.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 17
  %16 = ptrtoint ptr %reassembly_queue_length.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %reassembly_queue_length.i.i, align 8
  %wait_reassembly_queue.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %wait_reassembly_queue.i.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @alloc_transport.__key.38) #10
  %wait_send_credits.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 34
  tail call void @__init_waitqueue_head(ptr noundef %wait_send_credits.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @alloc_transport.__key.40) #10
  %wait_rw_avail_ops.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 35
  tail call void @__init_waitqueue_head(ptr noundef %wait_rw_avail_ops.i.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @alloc_transport.__key.42) #10
  %receive_credit_lock.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %receive_credit_lock.i.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @alloc_transport.__key.44, i16 noundef signext 3) #10
  %recvmsg_queue_lock.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %recvmsg_queue_lock.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @alloc_transport.__key.46, i16 noundef signext 3) #10
  %recvmsg_queue.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 26
  %17 = ptrtoint ptr %recvmsg_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %recvmsg_queue.i.i, ptr %recvmsg_queue.i.i, align 4
  %prev.i137.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 26, i32 1
  %18 = ptrtoint ptr %prev.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %recvmsg_queue.i.i, ptr %prev.i137.i.i, align 8
  %empty_recvmsg_queue_lock.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %empty_recvmsg_queue_lock.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @alloc_transport.__key.48, i16 noundef signext 3) #10
  %empty_recvmsg_queue.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 28
  %19 = ptrtoint ptr %empty_recvmsg_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %empty_recvmsg_queue.i.i, ptr %empty_recvmsg_queue.i.i, align 8
  %prev.i138.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 28, i32 1
  %20 = ptrtoint ptr %prev.i138.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %empty_recvmsg_queue.i.i, ptr %prev.i138.i.i, align 4
  %wait_send_payload_pending.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 40
  tail call void @__init_waitqueue_head(ptr noundef %wait_send_payload_pending.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @alloc_transport.__key.50) #10
  %send_payload_pending.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 41
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_payload_pending.i.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %send_payload_pending.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %send_payload_pending.i.i, align 8
  %wait_send_pending.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 42
  tail call void @__init_waitqueue_head(ptr noundef %wait_send_pending.i.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @alloc_transport.__key.52) #10
  %send_pending.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 43
  %call.i.i136.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_pending.i.i, i32 noundef 4) #10
  %22 = ptrtoint ptr %send_pending.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %send_pending.i.i, align 8
  %lock_new_recv_credits.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %lock_new_recv_credits.i.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @alloc_transport.__key.54, i16 noundef signext 3) #10
  %post_recv_credits_work.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 44
  tail call void @__init_work(ptr noundef %post_recv_credits_work.i.i, i32 noundef 0) #10
  %23 = ptrtoint ptr %post_recv_credits_work.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %post_recv_credits_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 44, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @alloc_transport.__key.56, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry45.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 44, i32 0, i32 1
  %24 = ptrtoint ptr %entry45.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry45.i.i, ptr %entry45.i.i, align 8
  %prev.i139.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 44, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i139.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry45.i.i, ptr %prev.i139.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 44, i32 0, i32 2
  %26 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @smb_direct_post_recv_credits, ptr %func.i.i, align 8
  %timer.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 44, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.59, ptr noundef nonnull @alloc_transport.__key.58) #10
  %send_immediate_work.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 45
  tail call void @__init_work(ptr noundef %send_immediate_work.i.i, i32 noundef 0) #10
  %27 = ptrtoint ptr %send_immediate_work.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %send_immediate_work.i.i, align 8
  %lockdep_map62.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 45, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map62.i.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @alloc_transport.__key.60, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry64.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 45, i32 1
  %28 = ptrtoint ptr %entry64.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry64.i.i, ptr %entry64.i.i, align 4
  %prev.i140.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 45, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i140.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry64.i.i, ptr %prev.i140.i.i, align 8
  %func66.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 45, i32 2
  %30 = ptrtoint ptr %func66.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @smb_direct_send_immediate_work, ptr %func66.i.i, align 4
  %disconnect_work.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 46
  tail call void @__init_work(ptr noundef %disconnect_work.i.i, i32 noundef 0) #10
  %31 = ptrtoint ptr %disconnect_work.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %disconnect_work.i.i, align 4
  %lockdep_map75.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 46, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map75.i.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @alloc_transport.__key.62, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry77.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 46, i32 1
  %32 = ptrtoint ptr %entry77.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry77.i.i, ptr %entry77.i.i, align 8
  %prev.i141.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 46, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i141.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry77.i.i, ptr %prev.i141.i.i, align 4
  %func79.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 46, i32 2
  %34 = ptrtoint ptr %func79.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @smb_direct_disconnect_rdma_work, ptr %func79.i.i, align 8
  %call82.i.i = tail call ptr @ksmbd_conn_alloc() #10
  %tobool83.not.i.i = icmp eq ptr %call82.i.i, null
  br i1 %tobool83.not.i.i, label %err.i.i, label %if.end12.i

err.i.i:                                          ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i50.i
  %transport86.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %call82.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %transport86.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i.i, ptr %transport86.i.i, align 8
  %36 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call82.i.i, ptr %call7.i.i.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.ksmbd_transport, ptr %call7.i.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ksmbd_smb_direct_transport_ops, ptr %ops.i.i, align 4
  %38 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cm_id1.i.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %max_send_size.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %max_send_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8192, ptr %max_send_size.i.i.i, align 4
  %max_rdma_rw_size.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 13
  %43 = ptrtoint ptr %max_rdma_rw_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 524224, ptr %max_rdma_rw_size.i.i.i, align 4
  %port_num.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 7
  %44 = ptrtoint ptr %port_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port_num.i.i.i, align 4
  %call14.i.i.i = tail call i32 @rdma_rw_mr_factor(ptr noundef %41, i32 noundef %45, i32 noundef 129) #10
  %mul.i.i.i = shl i32 %call14.i.i.i, 4
  %add17.i.i.i = add i32 %mul.i.i.i, 391
  %max_cqe.i.i.i = getelementptr inbounds %struct.ib_device, ptr %41, i32 0, i32 22, i32 14
  %46 = ptrtoint ptr %max_cqe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_cqe.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i.i.i, i32 %47)
  %cmp18.i.i.i = icmp sgt i32 %add17.i.i.i, %47
  br i1 %cmp18.i.i.i, label %if.end12.i.do.end24.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end12.i.do.end24.i.i.i_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end12.i
  %max_qp_wr.i.i.i = getelementptr inbounds %struct.ib_device, ptr %41, i32 0, i32 22, i32 8
  %48 = ptrtoint ptr %max_qp_wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_qp_wr.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i.i.i, i32 %49)
  %cmp20.i.i.i = icmp sgt i32 %add17.i.i.i, %49
  br i1 %cmp20.i.i.i, label %lor.lhs.false.i.i.i.do.end24.i.i.i_crit_edge, label %if.end36.i.i.i

lor.lhs.false.i.i.i.do.end24.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24.i.i.i

do.end24.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.do.end24.i.i.i_crit_edge, %if.end12.i.do.end24.i.i.i_crit_edge
  %call26.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef 255, i32 noundef 8) #13
  %50 = ptrtoint ptr %max_cqe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_cqe.i.i.i, align 8
  %max_qp_wr34.i.i.i = getelementptr inbounds %struct.ib_device, ptr %41, i32 0, i32 22, i32 8
  %52 = ptrtoint ptr %max_qp_wr34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_qp_wr34.i.i.i, align 8
  %call35.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %51, i32 noundef %53) #13
  br label %do.end.i.i

if.end36.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %47)
  %cmp39.i.i.i = icmp slt i32 %47, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %49)
  %cmp43.i.i.i = icmp slt i32 %49, 255
  %or.cond.i.i.i = select i1 %cmp39.i.i.i, i1 true, i1 %cmp43.i.i.i
  br i1 %or.cond.i.i.i, label %do.end47.i.i.i, label %if.end59.i.i.i

do.end47.i.i.i:                                   ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call49.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, i32 noundef 255) #13
  %54 = ptrtoint ptr %max_cqe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_cqe.i.i.i, align 8
  %56 = ptrtoint ptr %max_qp_wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_qp_wr.i.i.i, align 8
  %call58.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %55, i32 noundef %57) #13
  br label %do.end.i.i

if.end59.i.i.i:                                   ; preds = %if.end36.i.i.i
  %max_send_sge.i.i.i = getelementptr inbounds %struct.ib_device, ptr %41, i32 0, i32 22, i32 10
  %58 = ptrtoint ptr %max_send_sge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_send_sge.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %59)
  %cmp61.i.i.i = icmp slt i32 %59, 8
  br i1 %cmp61.i.i.i, label %do.end65.i.i.i, label %if.end70.i.i.i

do.end65.i.i.i:                                   ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call69.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %59) #13
  br label %do.end.i.i

if.end70.i.i.i:                                   ; preds = %if.end59.i.i.i
  %max_recv_sge.i.i.i = getelementptr inbounds %struct.ib_device, ptr %41, i32 0, i32 22, i32 11
  %60 = ptrtoint ptr %max_recv_sge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_recv_sge.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp72.i.i.i = icmp slt i32 %61, 1
  br i1 %cmp72.i.i.i, label %do.end76.i.i.i, label %if.end.i52.i

do.end76.i.i.i:                                   ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call80.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %61) #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end76.i.i.i, %do.end65.i.i.i, %do.end47.i.i.i, %do.end24.i.i.i
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #13
  br label %smb_direct_handle_connect_request.exit.thread37

if.end.i52.i:                                     ; preds = %if.end70.i.i.i
  %recv_credits.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 21
  %62 = ptrtoint ptr %recv_credits.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %recv_credits.i.i.i, align 8
  %count_avail_recvmsg.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 22
  %63 = ptrtoint ptr %count_avail_recvmsg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %count_avail_recvmsg.i.i.i, align 4
  %recv_credit_max.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 23
  %64 = ptrtoint ptr %recv_credit_max.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 255, ptr %recv_credit_max.i.i.i, align 8
  %recv_credit_target.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 24
  %65 = ptrtoint ptr %recv_credit_target.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 10, ptr %recv_credit_target.i.i.i, align 4
  %new_recv_credits.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 32
  %66 = ptrtoint ptr %new_recv_credits.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %new_recv_credits.i.i.i, align 4
  %send_credit_target.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 29
  %67 = ptrtoint ptr %send_credit_target.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 255, ptr %send_credit_target.i.i.i, align 8
  %send_credits.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 30
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_credits.i.i.i, i32 noundef 4) #10
  %68 = ptrtoint ptr %send_credits.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %send_credits.i.i.i, align 4
  %rw_avail_ops.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 33
  %call.i.i141.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rw_avail_ops.i.i.i, i32 noundef 4) #10
  %69 = ptrtoint ptr %rw_avail_ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 8, ptr %rw_avail_ops.i.i.i, align 8
  %70 = ptrtoint ptr %max_send_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 8192, ptr %max_send_size.i.i.i, align 4
  %max_recv_size.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 10
  %71 = ptrtoint ptr %max_recv_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 8192, ptr %max_recv_size.i.i.i, align 8
  %max_fragmented_recv_size.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 12
  %72 = ptrtoint ptr %max_fragmented_recv_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1048576, ptr %max_fragmented_recv_size.i.i.i, align 8
  %73 = ptrtoint ptr %recv_credit_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %recv_credit_max.i.i.i, align 8
  %75 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cm_id1.i.i, align 8
  %port_num87.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %port_num87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port_num87.i.i.i, align 4
  %call88.i.i.i = tail call i32 @rdma_rw_mr_factor(ptr noundef %41, i32 noundef %78, i32 noundef 129) #10
  %mul89.i.i.i = shl i32 %call88.i.i.i, 3
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %name.i.i.i) #10
  %79 = call ptr @memset(ptr %name.i.i.i, i32 255, i32 80)
  %call.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i.i, i32 noundef 80, ptr noundef nonnull @.str.154, ptr noundef nonnull %call7.i.i.i.i) #10
  %call2.i.i.i = call ptr @kmem_cache_create(ptr noundef nonnull %name.i.i.i, i32 noundef 232, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  %sendmsg_cache.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 37
  %80 = ptrtoint ptr %sendmsg_cache.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call2.i.i.i, ptr %sendmsg_cache.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i52.i.do.end7.i.i_crit_edge, label %if.end.i.i.i

if.end.i52.i.do.end7.i.i_crit_edge:               ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.end.i.i.i:                                     ; preds = %if.end.i52.i
  %81 = ptrtoint ptr %send_credit_target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %send_credit_target.i.i.i, align 8
  %call5.i.i.i = call ptr @mempool_create(i32 noundef %82, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call2.i.i.i) #10
  %sendmsg_mempool.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 36
  %83 = ptrtoint ptr %sendmsg_mempool.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call5.i.i.i, ptr %sendmsg_mempool.i.i.i, align 4
  %tobool7.not.i.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool7.not.i.i.i, label %if.end.i.i.i.err.i.i.i_crit_edge, label %if.end9.i.i.i

if.end.i.i.i.err.i.i.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i.i

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  %call11.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i.i, i32 noundef 80, ptr noundef nonnull @.str.155, ptr noundef nonnull %call7.i.i.i.i) #10
  %84 = ptrtoint ptr %max_recv_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_recv_size.i.i.i, align 8
  %add.i.i.i = add i32 %85, 40
  %call13.i.i.i = call ptr @kmem_cache_create(ptr noundef nonnull %name.i.i.i, i32 noundef %add.i.i.i, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  %recvmsg_cache.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 39
  %86 = ptrtoint ptr %recvmsg_cache.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call13.i.i.i, ptr %recvmsg_cache.i.i.i, align 8
  %tobool15.not.i.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %tobool15.not.i.i.i, label %if.end9.i.i.i.err.i.i.i_crit_edge, label %if.end17.i.i.i

if.end9.i.i.i.err.i.i.i_crit_edge:                ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i.i

if.end17.i.i.i:                                   ; preds = %if.end9.i.i.i
  %87 = ptrtoint ptr %recv_credit_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %recv_credit_max.i.i.i, align 8
  %call19.i.i.i = call ptr @mempool_create(i32 noundef %88, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call13.i.i.i) #10
  %recvmsg_mempool.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 38
  %89 = ptrtoint ptr %recvmsg_mempool.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call19.i.i.i, ptr %recvmsg_mempool.i.i.i, align 4
  %tobool21.not.i.i.i = icmp eq ptr %call19.i.i.i, null
  br i1 %tobool21.not.i.i.i, label %if.end17.i.i.i.err.i.i.i_crit_edge, label %if.end23.i.i.i

if.end17.i.i.i.err.i.i.i_crit_edge:               ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i.i

if.end23.i.i.i:                                   ; preds = %if.end17.i.i.i
  %90 = ptrtoint ptr %recvmsg_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %recvmsg_queue.i.i, ptr %recvmsg_queue.i.i, align 4
  %91 = ptrtoint ptr %prev.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %recvmsg_queue.i.i, ptr %prev.i137.i.i, align 8
  %92 = ptrtoint ptr %recv_credit_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %recv_credit_max.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp60.i.i.i = icmp sgt i32 %93, 0
  br i1 %cmp60.i.i.i, label %if.end23.i.i.i.for.body.i.i.i_crit_edge, label %if.end23.i.i.i.if.end10.i.i_crit_edge

if.end23.i.i.i.if.end10.i.i_crit_edge:            ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.end23.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end23.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %list_add.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end23.i.i.i.for.body.i.i.i_crit_edge
  %i.061.i.i.i = phi i32 [ %inc.i.i.i, %list_add.exit.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end23.i.i.i.for.body.i.i.i_crit_edge ]
  %94 = ptrtoint ptr %recvmsg_mempool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %recvmsg_mempool.i.i.i, align 4
  %call26.i46.i.i = call noalias ptr @mempool_alloc(ptr noundef %95, i32 noundef 3264) #10
  %tobool27.not.i.i.i = icmp eq ptr %call26.i46.i.i, null
  br i1 %tobool27.not.i.i.i, label %for.body.i.i.i.err.i.i.i_crit_edge, label %if.end29.i.i.i

for.body.i.i.i.err.i.i.i_crit_edge:               ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i.i

if.end29.i.i.i:                                   ; preds = %for.body.i.i.i
  %96 = ptrtoint ptr %call26.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i.i.i.i, ptr %call26.i46.i.i, align 8
  %list.i.i.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %call26.i46.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %recvmsg_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %recvmsg_queue.i.i, align 4
  %call.i.i.i47.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i, ptr noundef %recvmsg_queue.i.i, ptr noundef %98) #10
  br i1 %call.i.i.i47.i.i, label %if.end.i.i.i.i.i, label %if.end29.i.i.i.list_add.exit.i.i.i_crit_edge

if.end29.i.i.i.list_add.exit.i.i.i_crit_edge:     ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %list.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %100 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %98, ptr %list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %call26.i46.i.i, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %recvmsg_queue.i.i, ptr %prev3.i.i.i.i.i, align 4
  %102 = ptrtoint ptr %recvmsg_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %list.i.i.i, ptr %recvmsg_queue.i.i, align 4
  br label %list_add.exit.i.i.i

list_add.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.end29.i.i.i.list_add.exit.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.061.i.i.i, 1
  %103 = ptrtoint ptr %recv_credit_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %recv_credit_max.i.i.i, align 8
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %104
  br i1 %cmp.i.i.i, label %list_add.exit.i.i.i.for.body.i.i.i_crit_edge, label %list_add.exit.i.i.i.if.end10.i.i_crit_edge

list_add.exit.i.i.i.if.end10.i.i_crit_edge:       ; preds = %list_add.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

list_add.exit.i.i.i.for.body.i.i.i_crit_edge:     ; preds = %list_add.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

err.i.i.i:                                        ; preds = %for.body.i.i.i.err.i.i.i_crit_edge, %if.end17.i.i.i.err.i.i.i_crit_edge, %if.end9.i.i.i.err.i.i.i_crit_edge, %if.end.i.i.i.err.i.i.i_crit_edge
  call fastcc void @smb_direct_destroy_pools(ptr noundef %call7.i.i.i.i) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %err.i.i.i, %if.end.i52.i.do.end7.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %name.i.i.i) #10
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef -12) #13
  br label %smb_direct_handle_connect_request.exit.thread37

if.end10.i.i:                                     ; preds = %list_add.exit.i.i.i.if.end10.i.i_crit_edge, %if.end23.i.i.i.if.end10.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %93, %if.end23.i.i.i.if.end10.i.i_crit_edge ], [ %104, %list_add.exit.i.i.i.if.end10.i.i_crit_edge ]
  %105 = ptrtoint ptr %count_avail_recvmsg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %.lcssa.i.i.i, ptr %count_avail_recvmsg.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %name.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp_attr.i.i.i) #10
  %106 = call ptr @memset(ptr %qp_attr.i.i.i, i32 255, i32 72)
  %107 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cm_id1.i.i, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %call.i51.i.i = call ptr @__ib_alloc_pd(ptr noundef %110, i32 noundef 0, ptr noundef nonnull @.str.13) #10
  %pd.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 7
  %111 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i51.i.i, ptr %pd.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call.i51.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i, label %if.end.i53.i.i

do.end.i.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #13
  %112 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pd.i.i.i, align 4
  %114 = ptrtoint ptr %113 to i32
  br label %cleanup108.sink.split.i.i.i

if.end.i53.i.i:                                   ; preds = %if.end10.i.i
  %115 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cm_id1.i.i, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %119 = ptrtoint ptr %send_credit_target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %send_credit_target.i.i.i, align 8
  %call.i.i.i53.i = call ptr @__ib_alloc_cq(ptr noundef %118, ptr noundef %call7.i.i.i.i, i32 noundef %120, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.13) #10
  %send_cq.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 5
  %121 = ptrtoint ptr %send_cq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i.i53.i, ptr %send_cq.i.i.i, align 4
  %cmp.i173.i.i.i = icmp ugt ptr %call.i.i.i53.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173.i.i.i, label %do.end15.i.i.i, label %if.end21.i.i.i

do.end15.i.i.i:                                   ; preds = %if.end.i53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #13
  %122 = ptrtoint ptr %send_cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %send_cq.i.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  store ptr null, ptr %send_cq.i.i.i, align 4
  br label %err.i63.i.i

if.end21.i.i.i:                                   ; preds = %if.end.i53.i.i
  %125 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cm_id1.i.i, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %add.i55.i.i = add i32 %mul89.i.i.i, %add17.i.i.i
  %call.i174.i.i.i = call ptr @__ib_alloc_cq(ptr noundef %128, ptr noundef %call7.i.i.i.i, i32 noundef %add.i55.i.i, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.13) #10
  %recv_cq.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 6
  %129 = ptrtoint ptr %recv_cq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i174.i.i.i, ptr %recv_cq.i.i.i, align 8
  %cmp.i175.i.i.i = icmp ugt ptr %call.i174.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175.i.i.i, label %do.end30.i.i.i, label %if.end36.i58.i.i

do.end30.i.i.i:                                   ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call32.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #13
  %130 = ptrtoint ptr %recv_cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %recv_cq.i.i.i, align 8
  %132 = ptrtoint ptr %131 to i32
  store ptr null, ptr %recv_cq.i.i.i, align 8
  br label %err.i63.i.i

if.end36.i58.i.i:                                 ; preds = %if.end21.i.i.i
  %133 = getelementptr inbounds i8, ptr %qp_attr.i.i.i, i32 16
  %134 = call ptr @memset(ptr %133, i32 0, i32 56)
  %135 = ptrtoint ptr %qp_attr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @smb_direct_qpair_handler, ptr %qp_attr.i.i.i, align 4
  %qp_context.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %qp_context.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call7.i.i.i.i, ptr %qp_context.i.i.i, align 4
  %cap37.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 6
  %137 = ptrtoint ptr %cap37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %add17.i.i.i, ptr %cap37.i.i.i, align 4
  %qp_cap.sroa.6.0.cap37.i.sroa_idx.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 6, i32 1
  %138 = ptrtoint ptr %qp_cap.sroa.6.0.cap37.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %74, ptr %qp_cap.sroa.6.0.cap37.i.sroa_idx.i.i, align 4
  %qp_cap.sroa.8.0.cap37.i.sroa_idx.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 6, i32 2
  %139 = ptrtoint ptr %qp_cap.sroa.8.0.cap37.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 8, ptr %qp_cap.sroa.8.0.cap37.i.sroa_idx.i.i, align 4
  %qp_cap.sroa.10.0.cap37.i.sroa_idx.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 6, i32 3
  %140 = ptrtoint ptr %qp_cap.sroa.10.0.cap37.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %qp_cap.sroa.10.0.cap37.i.sroa_idx.i.i, align 4
  %qp_cap.sroa.14.0.cap37.i.sroa_idx.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 6, i32 5
  %141 = ptrtoint ptr %qp_cap.sroa.14.0.cap37.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %mul89.i.i.i, ptr %qp_cap.sroa.14.0.cap37.i.sroa_idx.i.i, align 4
  %sq_sig_type.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 7
  %142 = ptrtoint ptr %sq_sig_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %sq_sig_type.i.i.i, align 4
  %qp_type.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 8
  %143 = ptrtoint ptr %qp_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 2, ptr %qp_type.i.i.i, align 4
  %144 = ptrtoint ptr %send_cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %send_cq.i.i.i, align 4
  %send_cq39.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 2
  %146 = ptrtoint ptr %send_cq39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %send_cq39.i.i.i, align 4
  %recv_cq41.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 3
  %147 = ptrtoint ptr %recv_cq41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i174.i.i.i, ptr %recv_cq41.i.i.i, align 4
  %port_num.i56.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i.i.i, i32 0, i32 10
  %148 = ptrtoint ptr %port_num.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %port_num.i56.i.i, align 4
  %149 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cm_id1.i.i, align 8
  %151 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pd.i.i.i, align 4
  %call44.i.i.i = call i32 @rdma_create_qp(ptr noundef %150, ptr noundef %152, ptr noundef nonnull %qp_attr.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i.i)
  %tobool.not.i57.i.i = icmp eq i32 %call44.i.i.i, 0
  br i1 %tobool.not.i57.i.i, label %if.end51.i.i.i, label %do.end48.i.i.i

do.end48.i.i.i:                                   ; preds = %if.end36.i58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call50.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef %call44.i.i.i) #13
  br label %err.i63.i.i

if.end51.i.i.i:                                   ; preds = %if.end36.i58.i.i
  %153 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cm_id1.i.i, align 8
  %qp.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %qp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %qp.i.i.i, align 4
  %qp53.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 8
  %157 = ptrtoint ptr %qp53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %156, ptr %qp53.i.i.i, align 8
  %event_handler55.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %154, i32 0, i32 3
  %158 = ptrtoint ptr %event_handler55.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @smb_direct_cm_handler, ptr %event_handler55.i.i.i, align 4
  %159 = ptrtoint ptr %max_rdma_rw_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %max_rdma_rw_size.i.i.i, align 4
  %sub.i.i.i = add i32 %160, 4095
  %div172.i.i.i = lshr i32 %sub.i.i.i, 12
  %161 = load ptr, ptr %cm_id1.i.i, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %max_sgl_rd.i.i.i = getelementptr inbounds %struct.ib_device, ptr %163, i32 0, i32 22, i32 51
  %164 = ptrtoint ptr %max_sgl_rd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %max_sgl_rd.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div172.i.i.i, i32 %165)
  %cmp.not.i.i.i = icmp ult i32 %div172.i.i.i, %165
  br i1 %cmp.not.i.i.i, label %if.end51.i.i.i.smb_direct_create_qpair.exit.thread.i.i_crit_edge, label %if.then60.i.i.i

if.end51.i.i.i.smb_direct_create_qpair.exit.thread.i.i_crit_edge: ; preds = %if.end51.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb_direct_create_qpair.exit.thread.i.i

if.then60.i.i.i:                                  ; preds = %if.end51.i.i.i
  %add57.i.i.i = add nuw nsw i32 %div172.i.i.i, 1
  %max_fast_reg_page_list_len.i.i.i = getelementptr inbounds %struct.ib_device, ptr %163, i32 0, i32 22, i32 36
  %166 = ptrtoint ptr %max_fast_reg_page_list_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %max_fast_reg_page_list_len.i.i.i, align 8
  %168 = call i32 @llvm.smin.i32(i32 %add57.i.i.i, i32 %167) #10
  %sub67.i.i.i = add nsw i32 %168, %div172.i.i.i
  %div68.i.i.i = sdiv i32 %sub67.i.i.i, %168
  %call.i.i.i61.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rw_avail_ops.i.i.i, i32 noundef 4) #10
  %169 = ptrtoint ptr %rw_avail_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %rw_avail_ops.i.i.i, align 8
  %mul.i62.i.i = mul i32 %170, %div68.i.i.i
  %171 = ptrtoint ptr %qp53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %qp53.i.i.i, align 8
  %rdma_mrs.i.i.i = getelementptr inbounds %struct.ib_qp, ptr %172, i32 0, i32 6
  %call72.i.i.i = call i32 @ib_mr_pool_init(ptr noundef %172, ptr noundef %rdma_mrs.i.i.i, i32 noundef %mul.i62.i.i, i32 noundef 0, i32 noundef %168, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i.i)
  %tobool73.not.i.i.i = icmp eq i32 %call72.i.i.i, 0
  br i1 %tobool73.not.i.i.i, label %if.then60.i.i.i.smb_direct_create_qpair.exit.thread.i.i_crit_edge, label %cleanup.thread.i.i.i

if.then60.i.i.i.smb_direct_create_qpair.exit.thread.i.i_crit_edge: ; preds = %if.then60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb_direct_create_qpair.exit.thread.i.i

cleanup.thread.i.i.i:                             ; preds = %if.then60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call79.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %mul.i62.i.i, i32 noundef %168) #13
  br label %err.i63.i.i

err.i63.i.i:                                      ; preds = %cleanup.thread.i.i.i, %do.end48.i.i.i, %do.end30.i.i.i, %do.end15.i.i.i
  %ret.0.i.i.i = phi i32 [ %124, %do.end15.i.i.i ], [ %132, %do.end30.i.i.i ], [ %call44.i.i.i, %do.end48.i.i.i ], [ %call72.i.i.i, %cleanup.thread.i.i.i ]
  %qp83.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 8
  %173 = ptrtoint ptr %qp83.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %qp83.i.i.i, align 8
  %tobool84.not.i.i.i = icmp eq ptr %174, null
  br i1 %tobool84.not.i.i.i, label %err.i63.i.i.if.end89.i.i.i_crit_edge, label %if.then85.i.i.i

err.i63.i.i.if.end89.i.i.i_crit_edge:             ; preds = %err.i63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.i.i.i

if.then85.i.i.i:                                  ; preds = %err.i63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i176.i.i.i = call i32 @ib_destroy_qp_user(ptr noundef nonnull %174, ptr noundef null) #10
  %175 = ptrtoint ptr %qp83.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %qp83.i.i.i, align 8
  br label %if.end89.i.i.i

if.end89.i.i.i:                                   ; preds = %if.then85.i.i.i, %err.i63.i.i.if.end89.i.i.i_crit_edge
  %recv_cq90.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 6
  %176 = ptrtoint ptr %recv_cq90.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %recv_cq90.i.i.i, align 8
  %tobool91.not.i.i.i = icmp eq ptr %177, null
  br i1 %tobool91.not.i.i.i, label %if.end89.i.i.i.if.end95.i.i.i_crit_edge, label %if.then92.i.i.i

if.end89.i.i.i.if.end95.i.i.i_crit_edge:          ; preds = %if.end89.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i.i.i

if.then92.i.i.i:                                  ; preds = %if.end89.i.i.i
  %call.i177.i.i.i = call i32 @ib_destroy_cq_user(ptr noundef nonnull %177, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i177.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then92.i.i.i.ib_destroy_cq.exit.i.i.i_crit_edge, label %land.rhs.i.i.i.i

if.then92.i.i.i.ib_destroy_cq.exit.i.i.i_crit_edge: ; preds = %if.then92.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_destroy_cq.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.then92.i.i.i
  %.b38.i.i.i.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i.i.i.i, label %land.rhs.i.i.i.i.ib_destroy_cq.exit.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !378

land.rhs.i.i.i.i.ib_destroy_cq.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_destroy_cq.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.177, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.178) #10
  br label %ib_destroy_cq.exit.i.i.i

ib_destroy_cq.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.ib_destroy_cq.exit.i.i.i_crit_edge, %if.then92.i.i.i.ib_destroy_cq.exit.i.i.i_crit_edge
  %178 = ptrtoint ptr %recv_cq90.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %recv_cq90.i.i.i, align 8
  br label %if.end95.i.i.i

if.end95.i.i.i:                                   ; preds = %ib_destroy_cq.exit.i.i.i, %if.end89.i.i.i.if.end95.i.i.i_crit_edge
  %179 = ptrtoint ptr %send_cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %send_cq.i.i.i, align 4
  %tobool97.not.i.i.i = icmp eq ptr %180, null
  br i1 %tobool97.not.i.i.i, label %if.end95.i.i.i.if.end101.i.i.i_crit_edge, label %if.then98.i.i.i

if.end95.i.i.i.if.end101.i.i.i_crit_edge:         ; preds = %if.end95.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101.i.i.i

if.then98.i.i.i:                                  ; preds = %if.end95.i.i.i
  %call.i178.i.i.i = call i32 @ib_destroy_cq_user(ptr noundef nonnull %180, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178.i.i.i)
  %tobool.not.i179.i.i.i = icmp eq i32 %call.i178.i.i.i, 0
  br i1 %tobool.not.i179.i.i.i, label %if.then98.i.i.i.ib_destroy_cq.exit183.i.i.i_crit_edge, label %land.rhs.i181.i.i.i

if.then98.i.i.i.ib_destroy_cq.exit183.i.i.i_crit_edge: ; preds = %if.then98.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_destroy_cq.exit183.i.i.i

land.rhs.i181.i.i.i:                              ; preds = %if.then98.i.i.i
  %.b38.i180.i.i.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i180.i.i.i, label %land.rhs.i181.i.i.i.ib_destroy_cq.exit183.i.i.i_crit_edge, label %if.then.i182.i.i.i, !prof !378

land.rhs.i181.i.i.i.ib_destroy_cq.exit183.i.i.i_crit_edge: ; preds = %land.rhs.i181.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_destroy_cq.exit183.i.i.i

if.then.i182.i.i.i:                               ; preds = %land.rhs.i181.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.177, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.178) #10
  br label %ib_destroy_cq.exit183.i.i.i

ib_destroy_cq.exit183.i.i.i:                      ; preds = %if.then.i182.i.i.i, %land.rhs.i181.i.i.i.ib_destroy_cq.exit183.i.i.i_crit_edge, %if.then98.i.i.i.ib_destroy_cq.exit183.i.i.i_crit_edge
  %181 = ptrtoint ptr %send_cq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %send_cq.i.i.i, align 4
  br label %if.end101.i.i.i

if.end101.i.i.i:                                  ; preds = %ib_destroy_cq.exit183.i.i.i, %if.end95.i.i.i.if.end101.i.i.i_crit_edge
  %182 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pd.i.i.i, align 4
  %tobool103.not.i.i.i = icmp eq ptr %183, null
  br i1 %tobool103.not.i.i.i, label %if.end101.i.i.i.smb_direct_create_qpair.exit.i.i_crit_edge, label %if.then104.i.i.i

if.end101.i.i.i.smb_direct_create_qpair.exit.i.i_crit_edge: ; preds = %if.end101.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb_direct_create_qpair.exit.i.i

if.then104.i.i.i:                                 ; preds = %if.end101.i.i.i
  %call.i184.i.i.i = call i32 @ib_dealloc_pd_user(ptr noundef nonnull %183, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184.i.i.i)
  %tobool.not.i185.i.i.i = icmp eq i32 %call.i184.i.i.i, 0
  br i1 %tobool.not.i185.i.i.i, label %if.then104.i.i.i.cleanup108.sink.split.i.i.i_crit_edge, label %land.rhs.i187.i.i.i

if.then104.i.i.i.cleanup108.sink.split.i.i.i_crit_edge: ; preds = %if.then104.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup108.sink.split.i.i.i

land.rhs.i187.i.i.i:                              ; preds = %if.then104.i.i.i
  %.b38.i186.i.i.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i186.i.i.i, label %land.rhs.i187.i.i.i.cleanup108.sink.split.i.i.i_crit_edge, label %if.then.i188.i.i.i, !prof !378

land.rhs.i187.i.i.i.cleanup108.sink.split.i.i.i_crit_edge: ; preds = %land.rhs.i187.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup108.sink.split.i.i.i

if.then.i188.i.i.i:                               ; preds = %land.rhs.i187.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.177, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.179) #10
  br label %cleanup108.sink.split.i.i.i

cleanup108.sink.split.i.i.i:                      ; preds = %if.then.i188.i.i.i, %land.rhs.i187.i.i.i.cleanup108.sink.split.i.i.i_crit_edge, %if.then104.i.i.i.cleanup108.sink.split.i.i.i_crit_edge, %do.end.i.i.i
  %retval.0.ph.i.i.i = phi i32 [ %114, %do.end.i.i.i ], [ %ret.0.i.i.i, %if.then104.i.i.i.cleanup108.sink.split.i.i.i_crit_edge ], [ %ret.0.i.i.i, %land.rhs.i187.i.i.i.cleanup108.sink.split.i.i.i_crit_edge ], [ %ret.0.i.i.i, %if.then.i188.i.i.i ]
  %184 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %pd.i.i.i, align 4
  br label %smb_direct_create_qpair.exit.i.i

smb_direct_create_qpair.exit.thread.i.i:          ; preds = %if.then60.i.i.i.smb_direct_create_qpair.exit.thread.i.i_crit_edge, %if.end51.i.i.i.smb_direct_create_qpair.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp_attr.i.i.i) #10
  br label %if.end19.i.i

smb_direct_create_qpair.exit.i.i:                 ; preds = %cleanup108.sink.split.i.i.i, %if.end101.i.i.i.smb_direct_create_qpair.exit.i.i_crit_edge
  %retval.0.i64.i.i = phi i32 [ %ret.0.i.i.i, %if.end101.i.i.i.smb_direct_create_qpair.exit.i.i_crit_edge ], [ %retval.0.ph.i.i.i, %cleanup108.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp_attr.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i64.i.i)
  %tobool12.not.i.i = icmp eq i32 %retval.0.i64.i.i, 0
  br i1 %tobool12.not.i.i, label %smb_direct_create_qpair.exit.i.i.if.end19.i.i_crit_edge, label %do.end16.i.i

smb_direct_create_qpair.exit.i.i.if.end19.i.i_crit_edge: ; preds = %smb_direct_create_qpair.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

do.end16.i.i:                                     ; preds = %smb_direct_create_qpair.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %retval.0.i64.i.i) #13
  br label %smb_direct_handle_connect_request.exit.thread37

if.end19.i.i:                                     ; preds = %smb_direct_create_qpair.exit.i.i.if.end19.i.i_crit_edge, %smb_direct_create_qpair.exit.thread.i.i
  call void @_raw_spin_lock(ptr noundef %recvmsg_queue_lock.i.i) #10
  %185 = ptrtoint ptr %recvmsg_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile ptr, ptr %recvmsg_queue.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %186, %recvmsg_queue.i.i
  br i1 %cmp.i.not.i.i.i.i, label %if.end19.i.i.do.end25.sink.split.i.i_crit_edge, label %if.then.i.i65.i.i

if.end19.i.i.do.end25.sink.split.i.i_crit_edge:   ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25.sink.split.i.i

if.then.i.i65.i.i:                                ; preds = %if.end19.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %186, i32 -4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %186) #10
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.i.i65.i.i.get_free_recvmsg.exit.i.i.i_crit_edge

if.then.i.i65.i.i.get_free_recvmsg.exit.i.i.i_crit_edge: ; preds = %if.then.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_free_recvmsg.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %189 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %186, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %188, ptr %prev1.i.i.i.i.i.i.i, align 4
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %190, ptr %188, align 4
  br label %get_free_recvmsg.exit.i.i.i

get_free_recvmsg.exit.i.i.i:                      ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i65.i.i.get_free_recvmsg.exit.i.i.i_crit_edge
  %193 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr inttoptr (i32 256 to ptr), ptr %186, align 4
  %prev.i.i.i.i.i = getelementptr %struct.list_head, ptr %186, i32 0, i32 1
  %194 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %recvmsg_queue_lock.i.i) #10
  %tobool.not.i66.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i66.i.i, label %get_free_recvmsg.exit.i.i.i.do.end25.i.i_crit_edge, label %if.end.i67.i.i

get_free_recvmsg.exit.i.i.i.do.end25.i.i_crit_edge: ; preds = %get_free_recvmsg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25.i.i

if.end.i67.i.i:                                   ; preds = %get_free_recvmsg.exit.i.i.i
  %type.i.i.i = getelementptr i8, ptr %186, i32 8
  %195 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %type.i.i.i, align 4
  %call1.i.i.i = call fastcc i32 @smb_direct_post_recv(ptr noundef %call7.i.i.i.i, ptr noundef nonnull %add.ptr.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end5.i.i.i, label %do.end.i68.i.i

do.end.i68.i.i:                                   ; preds = %if.end.i67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call1.i.i.i) #13
  br label %out_err.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i67.i.i
  %negotiation_requested.i.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %call7.i.i.i.i, i32 0, i32 47
  %196 = ptrtoint ptr %negotiation_requested.i.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %negotiation_requested.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_param.i.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %port_immutable.i.i.i.i) #10
  %197 = getelementptr inbounds %struct.ib_port_immutable, ptr %port_immutable.i.i.i.i, i32 0, i32 2
  %198 = call ptr @memset(ptr %port_immutable.i.i.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ird_ord_hdr.i.i.i.i) #10
  %199 = ptrtoint ptr %ird_ord_hdr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -1, ptr %ird_ord_hdr.i.i.i.i, align 4, !annotation !379
  %200 = getelementptr inbounds [2 x i32], ptr %ird_ord_hdr.i.i.i.i, i32 0, i32 1
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 -1, ptr %200, align 4, !annotation !379
  %202 = call ptr @memset(ptr %conn_param.i.i.i.i, i32 0, i32 20)
  %203 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cm_id1.i.i, align 8
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %204, align 4
  %max_qp_rd_atom.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %206, i32 0, i32 22, i32 17
  %207 = ptrtoint ptr %max_qp_rd_atom.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %max_qp_rd_atom.i.i.i.i, align 4
  %conv1.i.i.i.i = and i32 %208, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i.i)
  %cmp.i.i69.i.i = icmp eq i32 %conv1.i.i.i.i, 0
  %phi.cast.i.i.i.i = trunc i32 %208 to i8
  %cond.i.i.i.i = select i1 %cmp.i.i69.i.i, i8 %phi.cast.i.i.i.i, i8 8
  %initiator_depth.i.i.i.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i.i.i.i, i32 0, i32 3
  %209 = ptrtoint ptr %initiator_depth.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %cond.i.i.i.i, ptr %initiator_depth.i.i.i.i, align 2
  %210 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %204, align 4
  %get_port_immutable.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %211, i32 0, i32 1, i32 21
  %212 = ptrtoint ptr %get_port_immutable.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %get_port_immutable.i.i.i.i, align 4
  %port_num.i.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %204, i32 0, i32 7
  %214 = ptrtoint ptr %port_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %port_num.i.i.i.i, align 4
  %call.i.i70.i.i = call i32 %213(ptr noundef %211, i32 noundef %215, ptr noundef nonnull %port_immutable.i.i.i.i) #10
  %216 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %197, align 4
  %and.i.i.i.i = and i32 %217, 4194312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i71.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i71.i.i, label %if.end5.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i27.i.i.i

if.end5.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

if.then.i27.i.i.i:                                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %responder_resources.i.i.i.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i.i.i.i, i32 0, i32 2
  %218 = ptrtoint ptr %responder_resources.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %responder_resources.i.i.i.i, align 1
  %conv13.i.i.i.i = zext i8 %219 to i32
  %220 = ptrtoint ptr %ird_ord_hdr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %conv13.i.i.i.i, ptr %ird_ord_hdr.i.i.i.i, align 4
  %221 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 1, ptr %200, align 4
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i27.i.i.i, %if.end5.i.i.i.if.end.i.i.i.i_crit_edge
  %storemerge.i.i.i.i = phi ptr [ %ird_ord_hdr.i.i.i.i, %if.then.i27.i.i.i ], [ null, %if.end5.i.i.i.if.end.i.i.i.i_crit_edge ]
  %.sink.i.i.i.i = phi i8 [ 8, %if.then.i27.i.i.i ], [ 0, %if.end5.i.i.i.if.end.i.i.i.i_crit_edge ]
  %222 = ptrtoint ptr %conn_param.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %storemerge.i.i.i.i, ptr %conn_param.i.i.i.i, align 4
  %223 = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i.i.i.i, i32 0, i32 1
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %.sink.i.i.i.i, ptr %223, align 4
  %retry_count.i.i.i.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i.i.i.i, i32 0, i32 5
  %225 = ptrtoint ptr %retry_count.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 6, ptr %retry_count.i.i.i.i, align 4
  %rnr_retry_count.i.i.i.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i.i.i.i, i32 0, i32 6
  %226 = ptrtoint ptr %rnr_retry_count.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %rnr_retry_count.i.i.i.i, align 1
  %flow_control.i.i.i.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i.i.i.i, i32 0, i32 4
  %227 = ptrtoint ptr %flow_control.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %flow_control.i.i.i.i, align 1
  %228 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cm_id1.i.i, align 8
  %call18.i.i.i.i = call i32 @rdma_accept(ptr noundef %229, ptr noundef nonnull %conn_param.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i.i)
  %tobool19.not.i.i.i.i = icmp eq i32 %call18.i.i.i.i, 0
  br i1 %tobool19.not.i.i.i.i, label %if.end16.i, label %do.end11.i.i.i

do.end11.i.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call22.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef %call18.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ird_ord_hdr.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %port_immutable.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_param.i.i.i.i) #10
  %call13.i72.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182) #13
  br label %out_err.i.i.i

out_err.i.i.i:                                    ; preds = %do.end11.i.i.i, %do.end.i68.i.i
  %ret.0.i73.i.i = phi i32 [ %call1.i.i.i, %do.end.i68.i.i ], [ %call18.i.i.i.i, %do.end11.i.i.i ]
  %230 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cm_id1.i.i, align 8
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %231, align 4
  %sge.i.i.i.i = getelementptr i8, ptr %186, i32 12
  %234 = ptrtoint ptr %sge.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %sge.i.i.i.i, align 8
  %length.i.i.i.i = getelementptr i8, ptr %186, i32 20
  %236 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %length.i.i.i.i, align 8
  %238 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %233, align 8
  %conv.i.i.i.i.i = trunc i64 %235 to i32
  call void @dma_unmap_page_attrs(ptr noundef %239, i32 noundef %conv.i.i.i.i.i, i32 noundef %237, i32 noundef 2, i32 noundef 0) #10
  call void @_raw_spin_lock(ptr noundef %recvmsg_queue_lock.i.i) #10
  %240 = ptrtoint ptr %recvmsg_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %recvmsg_queue.i.i, align 4
  %call.i.i.i31.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %186, ptr noundef %recvmsg_queue.i.i, ptr noundef %241) #10
  br i1 %call.i.i.i31.i.i.i, label %if.end.i.i.i32.i.i.i, label %out_err.i.i.i.do.end25.sink.split.i.i_crit_edge

out_err.i.i.i.do.end25.sink.split.i.i_crit_edge:  ; preds = %out_err.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25.sink.split.i.i

if.end.i.i.i32.i.i.i:                             ; preds = %out_err.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %186, ptr %prev1.i.i.i.i.i.i, align 4
  %243 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %241, ptr %186, align 4
  %244 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %recvmsg_queue.i.i, ptr %prev.i.i.i.i.i, align 4
  %245 = ptrtoint ptr %recvmsg_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store volatile ptr %186, ptr %recvmsg_queue.i.i, align 4
  br label %do.end25.sink.split.i.i

do.end25.sink.split.i.i:                          ; preds = %if.end.i.i.i32.i.i.i, %out_err.i.i.i.do.end25.sink.split.i.i_crit_edge, %if.end19.i.i.do.end25.sink.split.i.i_crit_edge
  %retval.0.i74.ph.ph.i.i = phi i32 [ -12, %if.end19.i.i.do.end25.sink.split.i.i_crit_edge ], [ %ret.0.i73.i.i, %if.end.i.i.i32.i.i.i ], [ %ret.0.i73.i.i, %out_err.i.i.i.do.end25.sink.split.i.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %recvmsg_queue_lock.i.i) #10
  br label %do.end25.i.i

do.end25.i.i:                                     ; preds = %do.end25.sink.split.i.i, %get_free_recvmsg.exit.i.i.i.do.end25.i.i_crit_edge
  %retval.0.i74.ph.i.i = phi i32 [ -12, %get_free_recvmsg.exit.i.i.i.do.end25.i.i_crit_edge ], [ %retval.0.i74.ph.ph.i.i, %do.end25.sink.split.i.i ]
  %call27.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %retval.0.i74.ph.i.i) #13
  br label %smb_direct_handle_connect_request.exit.thread37

if.end16.i:                                       ; preds = %if.end.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ird_ord_hdr.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %port_immutable.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_param.i.i.i.i) #10
  call void @smb_direct_post_recv_credits(ptr noundef %post_recv_credits_work.i.i) #10
  %246 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %call7.i.i.i.i, align 8
  %.b.i = load i1, ptr @smb_direct_port, align 4
  %248 = select i1 %.b.i, i32 5445, i32 445
  %call17.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ksmbd_conn_handler_loop, ptr noundef %247, i32 noundef -1, ptr noundef nonnull @.str.31, i32 noundef %248) #10
  %cmp.i55.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55.i, label %smb_direct_handle_connect_request.exit, label %smb_direct_handle_connect_request.exit.thread32

smb_direct_handle_connect_request.exit.thread32:  ; preds = %if.end16.i
  %call20.i = call i32 @wake_up_process(ptr noundef %call17.i) #10
  %handler.i = getelementptr inbounds %struct.ksmbd_transport, ptr %call7.i.i.i.i, i32 0, i32 2
  %249 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call17.i, ptr %handler.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %250 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %250, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %smb_direct_handle_connect_request.exit.thread32.return_crit_edge, label %do.end8

smb_direct_handle_connect_request.exit.thread32.return_crit_edge: ; preds = %smb_direct_handle_connect_request.exit.thread32
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

smb_direct_handle_connect_request.exit.thread37:  ; preds = %do.end25.i.i, %do.end16.i.i, %do.end7.i.i, %do.end.i.i
  %ret.0.i.ph = phi i32 [ -22, %do.end.i.i ], [ -12, %do.end7.i.i ], [ %retval.0.i64.i.i, %do.end16.i.i ], [ %retval.0.i74.ph.i.i, %do.end25.i.i ]
  call fastcc void @free_transport(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %cleanup

smb_direct_handle_connect_request.exit:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %handler62.i = getelementptr inbounds %struct.ksmbd_transport, ptr %call7.i.i.i.i, i32 0, i32 2
  %251 = ptrtoint ptr %handler62.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %call17.i, ptr %handler62.i, align 8
  %252 = ptrtoint ptr %call17.i to i32
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  call fastcc void @free_transport(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %cleanup

do.end8:                                          ; preds = %smb_direct_handle_connect_request.exit.thread32
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %cm_id) #13
  br label %return

cleanup:                                          ; preds = %smb_direct_handle_connect_request.exit, %smb_direct_handle_connect_request.exit.thread37, %err.i.i, %if.end8.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge
  %retval.0.i30 = phi i32 [ %252, %smb_direct_handle_connect_request.exit ], [ %ret.0.i.ph, %smb_direct_handle_connect_request.exit.thread37 ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -12, %err.i.i ], [ -93, %do.body.i.cleanup_crit_edge ], [ -93, %do.end.i ]
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %retval.0.i30) #13
  br label %return

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call ptr @rdma_event_msg(i32 noundef %1) #15
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %cm_id, ptr noundef %call19, i32 noundef %1) #13
  br label %return

return:                                           ; preds = %do.end16, %cleanup, %do.end8, %smb_direct_handle_connect_request.exit.thread32.return_crit_edge
  %retval.1 = phi i32 [ %retval.0.i30, %cleanup ], [ 0, %do.end16 ], [ 0, %do.end8 ], [ 0, %smb_direct_handle_connect_request.exit.thread32.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_listen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_event_msg(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_conn_handler_loop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_transport(ptr noundef %t) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry35 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wait_send_credits = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wait_send_credits, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186) #13
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 421) #10
  %send_payload_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %send_payload_pending, i32 noundef 4) #10
  %1 = ptrtoint ptr %send_payload_pending to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %send_payload_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.body5.do.body25_crit_edge, label %if.end13

do.body5.do.body25_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25

if.end13:                                         ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait_send_payload_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 40
  %call14156 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_payload_pending, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i145157 = call zeroext i1 @__kasan_check_read(ptr noundef %send_payload_pending, i32 noundef 4) #10
  %4 = ptrtoint ptr %send_payload_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %send_payload_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp17158 = icmp eq i32 %5, 0
  br i1 %cmp17158, label %if.end13.for.end_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  br label %cleanup

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  call void @schedule() #10
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_payload_pending, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i145 = call zeroext i1 @__kasan_check_read(ptr noundef %send_payload_pending, i32 noundef 4) #10
  %6 = ptrtoint ptr %send_payload_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %send_payload_pending, align 4
  %cmp17 = icmp eq i32 %7, 0
  br i1 %cmp17, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end13.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_send_payload_pending, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.body25

do.body25:                                        ; preds = %for.end, %do.body5.do.body25_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 423) #10
  %send_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 43
  %call.i.i146 = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %8 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %send_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp32 = icmp eq i32 %9, 0
  br i1 %cmp32, label %do.body25.do.end53_crit_edge, label %if.end34

do.body25.do.end53_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

if.end34:                                         ; preds = %do.body25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry35) #10
  %10 = call ptr @memset(ptr %__wq_entry35, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry35, i32 noundef 0) #10
  %wait_send_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 42
  %call39159 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_pending, ptr noundef nonnull %__wq_entry35, i32 noundef 2) #10
  %call.i.i147160 = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %11 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %send_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp42161 = icmp eq i32 %12, 0
  br i1 %cmp42161, label %if.end34.for.end48_crit_edge, label %if.end34.cleanup45_crit_edge

if.end34.cleanup45_crit_edge:                     ; preds = %if.end34
  br label %cleanup45

if.end34.for.end48_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

cleanup45:                                        ; preds = %cleanup45.cleanup45_crit_edge, %if.end34.cleanup45_crit_edge
  call void @schedule() #10
  %call39 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_pending, ptr noundef nonnull %__wq_entry35, i32 noundef 2) #10
  %call.i.i147 = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %13 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %send_pending, align 4
  %cmp42 = icmp eq i32 %14, 0
  br i1 %cmp42, label %cleanup45.for.end48_crit_edge, label %cleanup45.cleanup45_crit_edge

cleanup45.cleanup45_crit_edge:                    ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

cleanup45.for.end48_crit_edge:                    ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

for.end48:                                        ; preds = %cleanup45.for.end48_crit_edge, %if.end34.for.end48_crit_edge
  call void @finish_wait(ptr noundef %wait_send_pending, ptr noundef nonnull %__wq_entry35) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry35) #10
  br label %do.end53

do.end53:                                         ; preds = %for.end48, %do.body25.do.end53_crit_edge
  %disconnect_work = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 46
  %call54 = call zeroext i1 @cancel_work_sync(ptr noundef %disconnect_work) #10
  %post_recv_credits_work = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 44
  %call55 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %post_recv_credits_work) #10
  %send_immediate_work = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 45
  %call56 = call zeroext i1 @cancel_work_sync(ptr noundef %send_immediate_work) #10
  %qp = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 8
  %15 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qp, align 4
  %tobool57.not = icmp eq ptr %16, null
  br i1 %tobool57.not, label %do.end53.do.body65_crit_edge, label %if.then58

do.end53.do.body65_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

if.then58:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  call void @ib_drain_qp(ptr noundef nonnull %16) #10
  %17 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qp, align 4
  %rdma_mrs = getelementptr inbounds %struct.ib_qp, ptr %18, i32 0, i32 6
  call void @ib_mr_pool_destroy(ptr noundef %18, ptr noundef %rdma_mrs) #10
  %19 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp, align 4
  %call.i = call i32 @ib_destroy_qp_user(ptr noundef %20, ptr noundef null) #10
  br label %do.body65

do.body65:                                        ; preds = %if.then58, %do.end53.do.body65_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %21 = load i32, ptr @ksmbd_debug_types, align 4
  %and66 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.do.end76_crit_edge, label %do.end71

do.body65.do.end76_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

do.end71:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189) #13
  br label %do.end76

do.end76:                                         ; preds = %do.end71, %do.body65.do.end76_crit_edge
  %reassembly_queue_lock = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %reassembly_queue_lock) #10
  %reassembly_queue.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 15
  %22 = ptrtoint ptr %reassembly_queue.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %reassembly_queue.i, align 4
  %cmp.i.not.i163 = icmp eq ptr %23, %reassembly_queue.i
  %add.ptr.i164 = getelementptr i8, ptr %23, i32 -4
  %tobool79.not155165 = icmp eq ptr %add.ptr.i164, null
  %tobool79.not166 = or i1 %cmp.i.not.i163, %tobool79.not155165
  br i1 %tobool79.not166, label %do.end76.if.else_crit_edge, label %if.then80.lr.ph

do.end76.if.else_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then80.lr.ph:                                  ; preds = %do.end76
  %cm_id.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %recvmsg_queue_lock.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 25
  %recvmsg_queue.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 26
  br label %if.then80

if.then80:                                        ; preds = %put_recvmsg.exit.if.then80_crit_edge, %if.then80.lr.ph
  %24 = phi ptr [ %23, %if.then80.lr.ph ], [ %50, %put_recvmsg.exit.if.then80_crit_edge ]
  %call.i.i148 = call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #10
  br i1 %call.i.i148, label %if.end.i.i, label %if.then80.list_del.exit_crit_edge

if.then80.list_del.exit_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then80.list_del.exit_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i = getelementptr %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock(ptr noundef %reassembly_queue_lock) #10
  %33 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cm_id.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %sge.i = getelementptr i8, ptr %24, i32 12
  %37 = ptrtoint ptr %sge.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sge.i, align 8
  %length.i = getelementptr i8, ptr %24, i32 20
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 8
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 8
  %conv.i.i = trunc i64 %38 to i32
  call void @dma_unmap_page_attrs(ptr noundef %42, i32 noundef %conv.i.i, i32 noundef %40, i32 noundef 2, i32 noundef 0) #10
  call void @_raw_spin_lock(ptr noundef %recvmsg_queue_lock.i) #10
  %43 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %recvmsg_queue.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %recvmsg_queue.i, ptr noundef %44) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del.exit.put_recvmsg.exit_crit_edge

list_del.exit.put_recvmsg.exit_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_recvmsg.exit

if.end.i.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i149 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %24, ptr %prev1.i.i.i149, align 4
  %46 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %24, align 4
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %recvmsg_queue.i, ptr %prev.i, align 4
  %48 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %24, ptr %recvmsg_queue.i, align 4
  br label %put_recvmsg.exit

put_recvmsg.exit:                                 ; preds = %if.end.i.i.i, %list_del.exit.put_recvmsg.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %recvmsg_queue_lock.i) #10
  call void @_raw_spin_lock(ptr noundef %reassembly_queue_lock) #10
  %49 = ptrtoint ptr %reassembly_queue.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %reassembly_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %50, %reassembly_queue.i
  %add.ptr.i = getelementptr i8, ptr %50, i32 -4
  %tobool79.not155 = icmp eq ptr %add.ptr.i, null
  %tobool79.not = or i1 %cmp.i.not.i, %tobool79.not155
  br i1 %tobool79.not, label %put_recvmsg.exit.if.else_crit_edge, label %put_recvmsg.exit.if.then80_crit_edge

put_recvmsg.exit.if.then80_crit_edge:             ; preds = %put_recvmsg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

put_recvmsg.exit.if.else_crit_edge:               ; preds = %put_recvmsg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %put_recvmsg.exit.if.else_crit_edge, %do.end76.if.else_crit_edge
  call void @_raw_spin_unlock(ptr noundef %reassembly_queue_lock) #10
  %reassembly_data_length = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 16
  %51 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %reassembly_data_length, align 4
  %send_cq = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 5
  %52 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %send_cq, align 4
  %tobool87.not = icmp eq ptr %53, null
  br i1 %tobool87.not, label %if.else.if.end90_crit_edge, label %if.then88

if.else.if.end90_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then88:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @ib_free_cq(ptr noundef nonnull %53) #10
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.else.if.end90_crit_edge
  %recv_cq = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 6
  %54 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %recv_cq, align 4
  %tobool91.not = icmp eq ptr %55, null
  br i1 %tobool91.not, label %if.end90.if.end94_crit_edge, label %if.then92

if.end90.if.end94_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  call void @ib_free_cq(ptr noundef nonnull %55) #10
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end90.if.end94_crit_edge
  %pd = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 7
  %56 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pd, align 4
  %tobool95.not = icmp eq ptr %57, null
  br i1 %tobool95.not, label %if.end94.if.end98_crit_edge, label %if.then96

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then96:                                        ; preds = %if.end94
  %call.i150 = call i32 @ib_dealloc_pd_user(ptr noundef nonnull %57, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i, label %if.then96.if.end98_crit_edge, label %land.rhs.i

if.then96.if.end98_crit_edge:                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.rhs.i:                                       ; preds = %if.then96
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.if.end98_crit_edge, label %if.then.i, !prof !378

land.rhs.i.if.end98_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.177, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.179) #10
  br label %if.end98

if.end98:                                         ; preds = %if.then.i, %land.rhs.i.if.end98_crit_edge, %if.then96.if.end98_crit_edge, %if.end94.if.end98_crit_edge
  %cm_id = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %58 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cm_id, align 4
  %tobool99.not = icmp eq ptr %59, null
  br i1 %tobool99.not, label %if.end98.if.end102_crit_edge, label %if.then100

if.end98.if.end102_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  call void @rdma_destroy_id(ptr noundef nonnull %59) #10
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.end98.if.end102_crit_edge
  call fastcc void @smb_direct_destroy_pools(ptr noundef %t)
  %60 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %t, align 4
  call void @ksmbd_conn_free(ptr noundef %61) #10
  call void @kfree(ptr noundef %t) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smb_direct_post_recv_credits(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -684
  %receive_credit_lock = getelementptr i8, ptr %work, i32 -456
  tail call void @_raw_spin_lock(ptr noundef %receive_credit_lock) #10
  %recv_credits = getelementptr i8, ptr %work, i32 -412
  %0 = ptrtoint ptr %recv_credits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %recv_credits, align 4
  tail call void @_raw_spin_unlock(ptr noundef %receive_credit_lock) #10
  %recv_credit_target = getelementptr i8, ptr %work, i32 -400
  %2 = ptrtoint ptr %recv_credit_target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %recv_credit_target, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %while.cond.preheader, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

while.cond.preheader:                             ; preds = %entry
  %recvmsg_queue_lock.i = getelementptr i8, ptr %work, i32 -396
  %recvmsg_queue.i = getelementptr i8, ptr %work, i32 -352
  %empty_recvmsg_queue_lock.i = getelementptr i8, ptr %work, i32 -344
  %empty_recvmsg_queue.i = getelementptr i8, ptr %work, i32 -300
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end15, %while.cond.preheader
  %credits.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %inc, %if.end15 ]
  %use_free.0.ph = phi i32 [ 1, %while.cond.preheader ], [ %use_free.0, %if.end15 ]
  br label %while.cond

while.cond:                                       ; preds = %if.then5.while.cond_crit_edge, %while.cond.outer
  %use_free.0 = phi i32 [ 0, %if.then5.while.cond_crit_edge ], [ %use_free.0.ph, %while.cond.outer ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_free.0)
  %tobool.not = icmp eq i32 %use_free.0, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %while.cond
  tail call void @_raw_spin_lock(ptr noundef %recvmsg_queue_lock.i) #10
  %4 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %recvmsg_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %recvmsg_queue.i
  br i1 %cmp.i.not.i, label %if.then2.if.end_crit_edge, label %if.then.i

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then2
  %add.ptr.i = getelementptr i8, ptr %5, i32 -4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.if.end.sink.split_crit_edge

if.then.i.if.end.sink.split_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %if.end.sink.split

if.else:                                          ; preds = %while.cond
  tail call void @_raw_spin_lock(ptr noundef %empty_recvmsg_queue_lock.i) #10
  %12 = ptrtoint ptr %empty_recvmsg_queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %empty_recvmsg_queue.i, align 4
  %cmp.i.not.i51 = icmp eq ptr %13, %empty_recvmsg_queue.i
  br i1 %cmp.i.not.i51, label %if.else.if.end_crit_edge, label %if.then.i54

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i54:                                      ; preds = %if.else
  %add.ptr.i52 = getelementptr i8, ptr %13, i32 -4
  %call.i.i.i53 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #10
  br i1 %call.i.i.i53, label %if.end.i.i.i57, label %if.then.i54.if.end.sink.split_crit_edge

if.then.i54.if.end.sink.split_crit_edge:          ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.end.i.i.i57:                                   ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i55, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i56 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i56, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end.i.i.i57, %if.then.i54.if.end.sink.split_crit_edge, %if.end.i.i.i, %if.then.i.if.end.sink.split_crit_edge
  %.sink74 = phi ptr [ %5, %if.end.i.i.i ], [ %5, %if.then.i.if.end.sink.split_crit_edge ], [ %13, %if.end.i.i.i57 ], [ %13, %if.then.i54.if.end.sink.split_crit_edge ]
  %empty_recvmsg_queue_lock.i.sink.ph = phi ptr [ %recvmsg_queue_lock.i, %if.end.i.i.i ], [ %recvmsg_queue_lock.i, %if.then.i.if.end.sink.split_crit_edge ], [ %empty_recvmsg_queue_lock.i, %if.end.i.i.i57 ], [ %empty_recvmsg_queue_lock.i, %if.then.i54.if.end.sink.split_crit_edge ]
  %recvmsg.0.ph = phi ptr [ %add.ptr.i, %if.end.i.i.i ], [ %add.ptr.i, %if.then.i.if.end.sink.split_crit_edge ], [ %add.ptr.i52, %if.end.i.i.i57 ], [ %add.ptr.i52, %if.then.i54.if.end.sink.split_crit_edge ]
  %20 = ptrtoint ptr %.sink74 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.sink74, align 4
  %prev.i.i58 = getelementptr inbounds %struct.list_head, ptr %.sink74, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i58, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then2.if.end_crit_edge
  %empty_recvmsg_queue_lock.i.sink = phi ptr [ %recvmsg_queue_lock.i, %if.then2.if.end_crit_edge ], [ %empty_recvmsg_queue_lock.i, %if.else.if.end_crit_edge ], [ %empty_recvmsg_queue_lock.i.sink.ph, %if.end.sink.split ]
  %recvmsg.0 = phi ptr [ null, %if.then2.if.end_crit_edge ], [ null, %if.else.if.end_crit_edge ], [ %recvmsg.0.ph, %if.end.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %empty_recvmsg_queue_lock.i.sink) #10
  %tobool4.not = icmp eq ptr %recvmsg.0, null
  br i1 %tobool4.not, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.then5.if.end16_crit_edge, label %if.then5.while.cond_crit_edge

if.then5.while.cond_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end9:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg.0, i32 0, i32 2
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type, align 4
  %first_segment = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg.0, i32 0, i32 5
  %23 = ptrtoint ptr %first_segment to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %first_segment, align 4
  %call10 = tail call fastcc i32 @smb_direct_post_recv(ptr noundef %add.ptr, ptr noundef nonnull %recvmsg.0)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call10) #13
  %cm_id.i = getelementptr i8, ptr %work, i32 -612
  %24 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cm_id.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %sge.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg.0, i32 0, i32 3
  %28 = ptrtoint ptr %sge.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sge.i, align 8
  %length.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg.0, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i, align 8
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %27, align 8
  %conv.i.i = trunc i64 %29 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %conv.i.i, i32 noundef %31, i32 noundef 2, i32 noundef 0) #10
  tail call void @_raw_spin_lock(ptr noundef %recvmsg_queue_lock.i) #10
  %list.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg.0, i32 0, i32 1
  %34 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %recvmsg_queue.i, align 4
  %call.i.i.i63 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %recvmsg_queue.i, ptr noundef %35) #10
  br i1 %call.i.i.i63, label %if.end.i.i.i64, label %do.end.put_recvmsg.exit_crit_edge

do.end.put_recvmsg.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_recvmsg.exit

if.end.i.i.i64:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg.0, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %recvmsg_queue.i, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list.i, ptr %recvmsg_queue.i, align 4
  br label %put_recvmsg.exit

put_recvmsg.exit:                                 ; preds = %if.end.i.i.i64, %do.end.put_recvmsg.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %recvmsg_queue_lock.i) #10
  br label %if.end16

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %credits.0.ph, 1
  br label %while.cond.outer

if.end16:                                         ; preds = %put_recvmsg.exit, %if.then5.if.end16_crit_edge, %entry.if.end16_crit_edge
  %credits.1 = phi i32 [ %credits.0.ph, %put_recvmsg.exit ], [ 0, %entry.if.end16_crit_edge ], [ %credits.0.ph, %if.then5.if.end16_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %receive_credit_lock) #10
  %40 = ptrtoint ptr %recv_credits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %recv_credits, align 4
  %add = add i32 %41, %credits.1
  store i32 %add, ptr %recv_credits, align 4
  %count_avail_recvmsg = getelementptr i8, ptr %work, i32 -408
  %42 = ptrtoint ptr %count_avail_recvmsg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count_avail_recvmsg, align 4
  %sub = sub i32 %43, %credits.1
  store i32 %sub, ptr %count_avail_recvmsg, align 4
  tail call void @_raw_spin_unlock(ptr noundef %receive_credit_lock) #10
  %lock_new_recv_credits = getelementptr i8, ptr %work, i32 -284
  tail call void @_raw_spin_lock(ptr noundef %lock_new_recv_credits) #10
  %new_recv_credits = getelementptr i8, ptr %work, i32 -240
  %44 = ptrtoint ptr %new_recv_credits to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %new_recv_credits, align 4
  %add20 = add i32 %45, %credits.1
  store i32 %add20, ptr %new_recv_credits, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock_new_recv_credits) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %credits.1)
  %tobool22.not = icmp eq i32 %credits.1, 0
  br i1 %tobool22.not, label %if.end16.if.end25_crit_edge, label %if.then23

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %46 = load ptr, ptr @smb_direct_wq, align 4
  %send_immediate_work = getelementptr i8, ptr %work, i32 100
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %send_immediate_work) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end16.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smb_direct_send_immediate_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr i8, ptr %work, i32 -772
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %work, i32 -784
  %call = tail call fastcc i32 @smb_direct_post_send_data(ptr noundef %add.ptr, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smb_direct_disconnect_rdma_work(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr i8, ptr %work, i32 -816
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %status, align 4
  %cm_id = getelementptr i8, ptr %work, i32 -756
  %3 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cm_id, align 4
  %call = tail call i32 @rdma_disconnect(ptr noundef %4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_conn_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb_direct_post_recv(ptr noundef %t, ptr noundef %recvmsg) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %wr = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr) #10
  %0 = call ptr @memset(ptr %wr, i32 255, i32 16)
  %cm_id = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %1 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cm_id, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %packet = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 6
  %max_recv_size = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 10
  %5 = ptrtoint ptr %max_recv_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_recv_size, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %packet) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !378

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %8) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %12, %if.end.i.i.i ], [ %10, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.68, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %8, ptr noundef %packet, i32 noundef %6) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %packet to i32
  %sub.i.i = add i32 %14, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %13, i32 %shr.i.i
  %and.i.i = and i32 %14, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %6, i32 noundef 2, i32 noundef 0) #10
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %sge = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 3
  %15 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv2.i, ptr %sge, align 8
  %16 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cm_id, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %21, i32 noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %ib_dma_map_single.exit.cleanup_crit_edge, label %if.end

ib_dma_map_single.exit.cleanup_crit_edge:         ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ib_dma_map_single.exit
  %22 = ptrtoint ptr %max_recv_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_recv_size, align 4
  %length = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %length, align 8
  %pd = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 7
  %25 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pd, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %lkey = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %lkey, align 4
  %cqe = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 4
  %30 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @recv_done, ptr %cqe, align 8
  %31 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cqe, ptr %31, align 8
  %33 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %wr, align 8
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 2
  %34 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sge, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 3
  %35 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num_sge, align 4
  %qp = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 8
  %36 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #10
  %38 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !379
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %37, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %40, i32 0, i32 1, i32 7
  %41 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %post_recv.i, align 4
  %call.i = call i32 %42(ptr noundef %37, ptr noundef nonnull %wr, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call.i) #13
  %43 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cm_id, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sge, align 8
  %49 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length, align 8
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %46, align 8
  %conv.i = trunc i64 %48 to i32
  call void @dma_unmap_page_attrs(ptr noundef %52, i32 noundef %conv.i, i32 noundef %50, i32 noundef 2, i32 noundef 0) #10
  %status.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 1
  %53 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i = icmp eq i32 %54, 1
  br i1 %cmp.i, label %if.then.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %55 = load ptr, ptr @smb_direct_wq, align 4
  %disconnect_work.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 46
  %call.i.i44 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %disconnect_work.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ib_dma_map_single.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %ib_dma_map_single.exit.cleanup_crit_edge ], [ %call.i, %do.end.cleanup_crit_edge ], [ %call.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.do.end_crit_edge [
    i32 0, label %lor.lhs.false
    i32 5, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %7 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opcode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %8)
  %cmp1.not = icmp eq i32 %8, 128
  br i1 %cmp1.not, label %do.body11, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call ptr @ib_wc_status_msg(i32 noundef %5) #15
  %opcode8 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %9 = ptrtoint ptr %opcode8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opcode8, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %call, i32 noundef %5, i32 noundef %10) #13
  %status.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = load ptr, ptr @smb_direct_wq, align 4
  %disconnect_work.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 46
  %call.i.i149 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %disconnect_work.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %do.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cm_id.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cm_id.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %sge.i = getelementptr i8, ptr %1, i32 -16
  %18 = ptrtoint ptr %sge.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sge.i, align 8
  %length.i = getelementptr i8, ptr %1, i32 -8
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 8
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 8
  %conv.i.i = trunc i64 %19 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %conv.i.i, i32 noundef %21, i32 noundef 2, i32 noundef 0) #10
  %empty_recvmsg_queue_lock.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %empty_recvmsg_queue_lock.i) #10
  %list.i = getelementptr i8, ptr %1, i32 -28
  %empty_recvmsg_queue.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 28
  %prev.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 28, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %25, ptr noundef %empty_recvmsg_queue.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.put_empty_recvmsg.exit_crit_edge

if.end.put_empty_recvmsg.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_empty_recvmsg.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list.i, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %empty_recvmsg_queue.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %1, i32 -24
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list.i, ptr %25, align 4
  br label %put_empty_recvmsg.exit

put_empty_recvmsg.exit:                           ; preds = %if.end.i.i.i, %if.end.put_empty_recvmsg.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %empty_recvmsg_queue_lock.i) #10
  br label %cleanup81

do.body11:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %30 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body11.do.end24_crit_edge, label %do.end15

do.body11.do.end24_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end15:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call ptr @ib_wc_status_msg(i32 noundef 0) #15
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %call18, i32 noundef 0, i32 noundef 128) #13
  br label %do.end24

do.end24:                                         ; preds = %do.end15, %do.body11.do.end24_crit_edge
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %31 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qp, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %sge = getelementptr i8, ptr %1, i32 -16
  %35 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %sge, align 8
  %length = getelementptr i8, ptr %1, i32 -8
  %37 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length, align 8
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 8
  %conv.i = trunc i64 %36 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %40, i32 noundef %conv.i, i32 noundef %38, i32 noundef 2) #10
  %type = getelementptr i8, ptr %1, i32 -20
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %42, label %do.end24.cleanup81_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
  ]

do.end24.cleanup81_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup81

sw.bb:                                            ; preds = %do.end24
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %44 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %byte_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %45)
  %cmp26 = icmp ult i32 %45, 20
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %sw.bb
  %cm_id.i150 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 4
  %46 = ptrtoint ptr %cm_id.i150 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cm_id.i150, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %50 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sge, align 8
  %52 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length, align 8
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %49, align 8
  %conv.i.i153 = trunc i64 %51 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %conv.i.i153, i32 noundef %53, i32 noundef 2, i32 noundef 0) #10
  %empty_recvmsg_queue_lock.i154 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %empty_recvmsg_queue_lock.i154) #10
  %list.i155 = getelementptr i8, ptr %1, i32 -28
  %empty_recvmsg_queue.i156 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 28
  %prev.i.i157 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 28, i32 1
  %56 = ptrtoint ptr %prev.i.i157 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i157, align 4
  %call.i.i.i158 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i155, ptr noundef %57, ptr noundef %empty_recvmsg_queue.i156) #10
  br i1 %call.i.i.i158, label %if.end.i.i.i160, label %if.then27.put_empty_recvmsg.exit161_crit_edge

if.then27.put_empty_recvmsg.exit161_crit_edge:    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_empty_recvmsg.exit161

if.end.i.i.i160:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %prev.i.i157 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %list.i155, ptr %prev.i.i157, align 4
  %59 = ptrtoint ptr %list.i155 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %empty_recvmsg_queue.i156, ptr %list.i155, align 4
  %prev3.i.i.i159 = getelementptr i8, ptr %1, i32 -24
  %60 = ptrtoint ptr %prev3.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i159, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %list.i155, ptr %57, align 4
  br label %put_empty_recvmsg.exit161

put_empty_recvmsg.exit161:                        ; preds = %if.end.i.i.i160, %if.then27.put_empty_recvmsg.exit161_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %empty_recvmsg_queue_lock.i154) #10
  br label %cleanup81

if.end28:                                         ; preds = %sw.bb
  %negotiation_requested = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 47
  %62 = ptrtoint ptr %negotiation_requested to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %negotiation_requested, align 4
  %full_packet_received = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 2
  %63 = ptrtoint ptr %full_packet_received to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %full_packet_received, align 4
  %reassembly_queue_lock.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %reassembly_queue_lock.i) #10
  %list.i162 = getelementptr i8, ptr %1, i32 -28
  %reassembly_queue.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 15
  %prev.i.i163 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 15, i32 1
  %64 = ptrtoint ptr %prev.i.i163 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i163, align 4
  %call.i.i.i164 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i162, ptr noundef %65, ptr noundef %reassembly_queue.i) #10
  br i1 %call.i.i.i164, label %if.end.i.i.i166, label %if.end28.enqueue_reassembly.exit_crit_edge

if.end28.enqueue_reassembly.exit_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %enqueue_reassembly.exit

if.end.i.i.i166:                                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %prev.i.i163 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %list.i162, ptr %prev.i.i163, align 4
  %67 = ptrtoint ptr %list.i162 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %reassembly_queue.i, ptr %list.i162, align 4
  %prev3.i.i.i165 = getelementptr i8, ptr %1, i32 -24
  %68 = ptrtoint ptr %prev3.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i165, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %list.i162, ptr %65, align 4
  br label %enqueue_reassembly.exit

enqueue_reassembly.exit:                          ; preds = %if.end.i.i.i166, %if.end28.enqueue_reassembly.exit_crit_edge
  %reassembly_queue_length.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 17
  %70 = ptrtoint ptr %reassembly_queue_length.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reassembly_queue_length.i, align 4
  %inc.i = add i32 %71, 1
  store i32 %inc.i, ptr %reassembly_queue_length.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !380
  tail call void @_raw_spin_unlock(ptr noundef %reassembly_queue_lock.i) #10
  %wait_status = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_status, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %cleanup81

sw.bb29:                                          ; preds = %do.end24
  %packet = getelementptr i8, ptr %1, i32 5
  %byte_len30 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %72 = ptrtoint ptr %byte_len30 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %byte_len30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %73)
  %cmp31 = icmp ult i32 %73, 20
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.bb29
  %cm_id.i167 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 4
  %74 = ptrtoint ptr %cm_id.i167 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cm_id.i167, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %78 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %sge, align 8
  %80 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %length, align 8
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %77, align 8
  %conv.i.i170 = trunc i64 %79 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %83, i32 noundef %conv.i.i170, i32 noundef %81, i32 noundef 2, i32 noundef 0) #10
  %empty_recvmsg_queue_lock.i171 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %empty_recvmsg_queue_lock.i171) #10
  %list.i172 = getelementptr i8, ptr %1, i32 -28
  %empty_recvmsg_queue.i173 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 28
  %prev.i.i174 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 28, i32 1
  %84 = ptrtoint ptr %prev.i.i174 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i174, align 4
  %call.i.i.i175 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i172, ptr noundef %85, ptr noundef %empty_recvmsg_queue.i173) #10
  br i1 %call.i.i.i175, label %if.end.i.i.i177, label %if.then32.put_empty_recvmsg.exit178_crit_edge

if.then32.put_empty_recvmsg.exit178_crit_edge:    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_empty_recvmsg.exit178

if.end.i.i.i177:                                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %prev.i.i174 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %list.i172, ptr %prev.i.i174, align 4
  %87 = ptrtoint ptr %list.i172 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %empty_recvmsg_queue.i173, ptr %list.i172, align 4
  %prev3.i.i.i176 = getelementptr i8, ptr %1, i32 -24
  %88 = ptrtoint ptr %prev3.i.i.i176 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev3.i.i.i176, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %list.i172, ptr %85, align 4
  br label %put_empty_recvmsg.exit178

put_empty_recvmsg.exit178:                        ; preds = %if.end.i.i.i177, %if.then32.put_empty_recvmsg.exit178_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %empty_recvmsg_queue_lock.i171) #10
  br label %cleanup81

if.end33:                                         ; preds = %sw.bb29
  %data_length34 = getelementptr i8, ptr %1, i32 21
  %90 = ptrtoint ptr %data_length34 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %data_length34, align 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool35.not = icmp eq i32 %91, 0
  br i1 %tobool35.not, label %if.else53, label %if.then36

if.then36:                                        ; preds = %if.end33
  %conv = zext i32 %73 to i64
  %conv38 = zext i32 %92 to i64
  %add = add nuw nsw i64 %conv38, 24
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp39 = icmp ugt i64 %add, %conv
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @put_empty_recvmsg(ptr noundef %3, ptr noundef %add.ptr)
  br label %cleanup81

if.end42:                                         ; preds = %if.then36
  %full_packet_received43 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 2
  %93 = ptrtoint ptr %full_packet_received43 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %full_packet_received43, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool44.not = icmp eq i8 %94, 0
  br i1 %tobool44.not, label %if.end42.if.end46_crit_edge, label %if.then45

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %first_segment = getelementptr i8, ptr %1, i32 4
  %95 = ptrtoint ptr %first_segment to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %first_segment, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42.if.end46_crit_edge
  %remaining_data_length = getelementptr i8, ptr %1, i32 13
  %96 = ptrtoint ptr %remaining_data_length to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %remaining_data_length, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool47.not = icmp eq i32 %97, 0
  %. = zext i1 %tobool47.not to i8
  %98 = ptrtoint ptr %full_packet_received43 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %., ptr %full_packet_received43, align 4
  tail call fastcc void @enqueue_reassembly(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %92)
  %wait_reassembly_queue = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %wait_reassembly_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %receive_credit_lock = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %receive_credit_lock) #10
  %recv_credits = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 21
  %99 = ptrtoint ptr %recv_credits to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %recv_credits, align 4
  %dec = add i32 %100, -1
  store i32 %dec, ptr %recv_credits, align 4
  %count_avail_recvmsg = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 22
  %101 = ptrtoint ptr %count_avail_recvmsg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %count_avail_recvmsg, align 4
  br label %if.end59

if.else53:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @put_empty_recvmsg(ptr noundef %3, ptr noundef %add.ptr)
  %receive_credit_lock54 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %receive_credit_lock54) #10
  %recv_credits55 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 21
  %103 = ptrtoint ptr %recv_credits55 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %recv_credits55, align 4
  %dec56 = add i32 %104, -1
  store i32 %dec56, ptr %recv_credits55, align 4
  %count_avail_recvmsg57 = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 22
  %105 = ptrtoint ptr %count_avail_recvmsg57 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %count_avail_recvmsg57, align 4
  %inc = add i32 %106, 1
  store i32 %inc, ptr %count_avail_recvmsg57, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else53, %if.end46
  %receive_credit_lock54.sink = phi ptr [ %receive_credit_lock54, %if.else53 ], [ %receive_credit_lock, %if.end46 ]
  %avail_recvmsg_count.0 = phi i32 [ %inc, %if.else53 ], [ %102, %if.end46 ]
  %receive_credits.0 = phi i32 [ %dec56, %if.else53 ], [ %dec, %if.end46 ]
  tail call void @_raw_spin_unlock(ptr noundef %receive_credit_lock54.sink) #10
  %107 = ptrtoint ptr %packet to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %packet, align 1
  %109 = tail call i16 @llvm.bswap.i16(i16 %108)
  %conv60 = zext i16 %109 to i32
  %recv_credit_target = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 24
  %110 = ptrtoint ptr %recv_credit_target to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv60, ptr %recv_credit_target, align 4
  %credits_granted = getelementptr i8, ptr %1, i32 7
  %111 = ptrtoint ptr %credits_granted to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %credits_granted, align 1
  %113 = tail call i16 @llvm.bswap.i16(i16 %112)
  %conv61 = zext i16 %113 to i32
  %send_credits = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_credits, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %send_credits, i32 1, i32 3, i32 1) #10
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_credits, ptr %send_credits, i32 %conv61, ptr elementtype(i32) %send_credits) #10, !srcloc !382
  %flags = getelementptr i8, ptr %1, i32 9
  %115 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %flags, align 1
  %117 = and i16 %116, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool64.not = icmp eq i16 %117, 0
  br i1 %tobool64.not, label %if.end59.if.end67_crit_edge, label %if.then65

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %118 = load ptr, ptr @smb_direct_wq, align 4
  %send_immediate_work = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 45
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %118, ptr noundef %send_immediate_work) #10
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end59.if.end67_crit_edge
  %call.i.i148 = tail call zeroext i1 @__kasan_check_read(ptr noundef %send_credits, i32 noundef 4) #10
  %119 = ptrtoint ptr %send_credits to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %send_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp70 = icmp sgt i32 %120, 0
  br i1 %cmp70, label %if.then72, label %if.end67.if.end73_crit_edge

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %wait_send_credits = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wait_send_credits, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end67.if.end73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %receive_credits.0)
  %cmp.i179 = icmp slt i32 %receive_credits.0, 32
  %shr1.i = ashr i32 %receive_credits.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr1.i, i32 %avail_recvmsg_count.0)
  %cmp2.i = icmp sle i32 %shr1.i, %avail_recvmsg_count.0
  %121 = and i1 %cmp.i179, %cmp2.i
  br i1 %121, label %if.then75, label %if.end73.cleanup81_crit_edge

if.end73.cleanup81_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup81

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %122 = load ptr, ptr @smb_direct_wq, align 4
  %post_recv_credits_work = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 44
  %call.i180 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %122, ptr noundef %post_recv_credits_work, i32 noundef 0) #10
  br label %cleanup81

cleanup81:                                        ; preds = %if.then75, %if.end73.cleanup81_crit_edge, %if.then41, %put_empty_recvmsg.exit178, %enqueue_reassembly.exit, %put_empty_recvmsg.exit161, %do.end24.cleanup81_crit_edge, %put_empty_recvmsg.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_wc_status_msg(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_empty_recvmsg(ptr noundef %t, ptr noundef %recvmsg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_id = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %0 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_id, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sge = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 3
  %4 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sge, align 8
  %length = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %conv.i = trunc i64 %5 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %conv.i, i32 noundef %7, i32 noundef 2, i32 noundef 0) #10
  %empty_recvmsg_queue_lock = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %empty_recvmsg_queue_lock) #10
  %list = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 1
  %empty_recvmsg_queue = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 28
  %prev.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 28, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %11, ptr noundef %empty_recvmsg_queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %prev.i, align 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %empty_recvmsg_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %empty_recvmsg_queue_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enqueue_reassembly(ptr noundef %t, ptr noundef %recvmsg, i32 noundef %data_length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reassembly_queue_lock = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %reassembly_queue_lock) #10
  %list = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 1
  %reassembly_queue = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %1, ptr noundef %reassembly_queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reassembly_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %recvmsg, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %reassembly_queue_length = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 17
  %6 = ptrtoint ptr %reassembly_queue_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reassembly_queue_length, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %reassembly_queue_length, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !380
  %reassembly_data_length = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 16
  %8 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reassembly_data_length, align 4
  %add = add i32 %9, %data_length
  store i32 %add, ptr %reassembly_data_length, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reassembly_queue_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb_direct_post_send_data(ptr noundef %t, ptr noundef %send_ctx, ptr nocapture noundef readonly %iov, i32 noundef %niov, i32 noundef %remaining_data_length) unnamed_addr #0 align 64 {
entry:
  %sg = alloca [7 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %sg) #10
  %0 = call ptr @memset(ptr %sg, i32 255, i32 140)
  %tobool.not.i = icmp eq ptr %send_ctx, null
  br i1 %tobool.not.i, label %entry.wait_for_send_credits.exit_crit_edge, label %land.lhs.true.i

entry.wait_for_send_credits.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_send_credits.exit

land.lhs.true.i:                                  ; preds = %entry
  %wr_cnt.i = getelementptr inbounds %struct.smb_direct_send_ctx, ptr %send_ctx, i32 0, i32 1
  %1 = ptrtoint ptr %wr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wr_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %2)
  %cmp.i = icmp sgt i32 %2, 15
  br i1 %cmp.i, label %land.lhs.true.i.if.then.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %send_credits.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %send_credits.i, i32 noundef 4) #10
  %3 = ptrtoint ptr %send_credits.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %send_credits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1.i = icmp slt i32 %4, 2
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.wait_for_send_credits.exit_crit_edge

lor.lhs.false.i.wait_for_send_credits.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_send_credits.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %call2.i = tail call fastcc i32 @smb_direct_flush_send_list(ptr noundef %t, ptr noundef nonnull %send_ctx, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.wait_for_send_credits.exit_crit_edge, label %if.then.i.cleanup51_crit_edge

if.then.i.cleanup51_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.then.i.wait_for_send_credits.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_send_credits.exit

wait_for_send_credits.exit:                       ; preds = %if.then.i.wait_for_send_credits.exit_crit_edge, %lor.lhs.false.i.wait_for_send_credits.exit_crit_edge, %entry.wait_for_send_credits.exit_crit_edge
  %wait_send_credits.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 34
  %send_credits6.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 30
  %call7.i = tail call fastcc i32 @wait_for_credits(ptr noundef %t, ptr noundef %wait_send_credits.i, ptr noundef %send_credits6.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %wait_for_send_credits.exit.cleanup51_crit_edge

wait_for_send_credits.exit.cleanup51_crit_edge:   ; preds = %wait_for_send_credits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

for.cond.preheader:                               ; preds = %wait_for_send_credits.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %niov)
  %cmp113 = icmp sgt i32 %niov, 0
  br i1 %cmp113, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0115 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %data_length.0114 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %iov_len = getelementptr %struct.kvec, ptr %iov, i32 %i.0115, i32 1
  %5 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iov_len, align 4
  %add = add i32 %6, %data_length.0114
  %inc = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc, %niov
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %data_length.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %sendmsg_mempool.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 36
  %7 = ptrtoint ptr %sendmsg_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sendmsg_mempool.i.i, align 4
  %call.i.i90 = tail call noalias ptr @mempool_alloc(ptr noundef %8, i32 noundef 3264) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i90, null
  br i1 %tobool.not.i.i, label %for.end.smb_direct_create_header.exit_crit_edge, label %smb_direct_alloc_sendmsg.exit.i

for.end.smb_direct_create_header.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb_direct_create_header.exit

smb_direct_alloc_sendmsg.exit.i:                  ; preds = %for.end
  %9 = ptrtoint ptr %call.i.i90 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %t, ptr %call.i.i90, align 8
  %list.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 2
  %10 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %num_sge.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 3
  %12 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %num_sge.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i.i90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %smb_direct_alloc_sendmsg.exit.i.smb_direct_create_header.exit_crit_edge, label %if.end.i

smb_direct_alloc_sendmsg.exit.i.smb_direct_create_header.exit_crit_edge: ; preds = %smb_direct_alloc_sendmsg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb_direct_create_header.exit

if.end.i:                                         ; preds = %smb_direct_alloc_sendmsg.exit.i
  %packet3.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 6
  %send_credit_target.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 29
  %13 = ptrtoint ptr %send_credit_target.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %send_credit_target.i, align 4
  %conv.i = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #10
  %16 = ptrtoint ptr %packet3.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %packet3.i, align 1
  %lock_new_recv_credits.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %lock_new_recv_credits.i.i) #10
  %new_recv_credits.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 32
  %17 = ptrtoint ptr %new_recv_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %new_recv_credits.i.i, align 4
  store i32 0, ptr %new_recv_credits.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock_new_recv_credits.i.i) #10
  %conv5.i = trunc i32 %18 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv5.i) #10
  %credits_granted.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %credits_granted.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %credits_granted.i, align 1
  %flags.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 0, ptr %flags.i, align 1
  %reserved.i = getelementptr inbounds %struct.smb_direct_data_transfer, ptr %packet3.i, i32 0, i32 3
  %22 = ptrtoint ptr %reserved.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 0, ptr %reserved.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_length.0.lcssa)
  %tobool.not.i92 = icmp eq i32 %data_length.0.lcssa, 0
  %spec.select.i = select i1 %tobool.not.i92, i32 0, i32 402653184
  %23 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 1, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %spec.select.i, ptr %23, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %data_length.0.lcssa) #10
  %data_length.i = getelementptr inbounds %struct.smb_direct_data_transfer, ptr %packet3.i, i32 0, i32 6
  %26 = ptrtoint ptr %data_length.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %data_length.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %remaining_data_length) #10
  %remaining_data_length9.i = getelementptr inbounds %struct.smb_direct_data_transfer, ptr %packet3.i, i32 0, i32 4
  %28 = ptrtoint ptr %remaining_data_length9.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %remaining_data_length9.i, align 1
  %padding.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 1, i32 1, i32 1
  %29 = ptrtoint ptr %padding.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %padding.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %30 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end.i.do.end23.i_crit_edge, label %do.end.i

if.end.i.do.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %packet3.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %packet3.i, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #10
  %conv14.i = zext i16 %33 to i32
  %conv16.i = and i32 %18, 65535
  %34 = lshr exact i32 %spec.select.i, 24
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %conv14.i, i32 noundef %conv16.i, i32 noundef %34, i32 noundef %data_length.0.lcssa, i32 noundef %remaining_data_length) #13
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end.i, %if.end.i.do.end23.i_crit_edge
  %spec.store.select.i = select i1 %tobool.not.i92, i32 20, i32 24
  %cm_id.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %35 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cm_id.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %call.i.i.i93 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %packet3.i) #10
  br i1 %call.i.i.i93, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %do.end23.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge, label %if.then.i.i.i, !prof !378

land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dma_map_single.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %40) #10
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %44, %if.end.i.i.i.i ], [ %42, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.68, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #10
  br label %ib_dma_map_single.exit.i

if.end39.i.i.i:                                   ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %40, ptr noundef %packet3.i, i32 noundef %spec.store.select.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %45 = load ptr, ptr @mem_map, align 4
  %46 = ptrtoint ptr %packet3.i to i32
  %sub.i.i.i = add i32 %46, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %45, i32 %shr.i.i.i
  %and.i.i.i = and i32 %46, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %40, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %spec.store.select.i, i32 noundef 1, i32 noundef 0) #10
  br label %ib_dma_map_single.exit.i

ib_dma_map_single.exit.i:                         ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge ]
  %conv2.i.i = zext i32 %retval.0.i.i.i to i64
  %sge.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 4
  %47 = ptrtoint ptr %sge.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv2.i.i, ptr %sge.i, align 8
  %48 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cm_id.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %53, i32 noundef %retval.0.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %smb_direct_create_header.exit.thread, label %smb_direct_create_header.exit.thread123

smb_direct_create_header.exit.thread:             ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @smb_direct_free_sendmsg(ptr noundef %t, ptr noundef nonnull %call.i.i90) #10
  br label %if.then3

smb_direct_create_header.exit.thread123:          ; preds = %ib_dma_map_single.exit.i
  %54 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %num_sge.i.i, align 8
  %length.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 4, i32 0, i32 1
  %55 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.store.select.i, ptr %length.i, align 8
  %pd.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 7
  %56 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pd.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %lkey.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 4, i32 0, i32 2
  %60 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %lkey.i, align 4
  br i1 %cmp113, label %for.body7.lr.ph, label %smb_direct_create_header.exit.thread123.for.end45_crit_edge

smb_direct_create_header.exit.thread123.for.end45_crit_edge: ; preds = %smb_direct_create_header.exit.thread123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end45

smb_direct_create_header.exit:                    ; preds = %smb_direct_alloc_sendmsg.exit.i.smb_direct_create_header.exit_crit_edge, %for.end.smb_direct_create_header.exit_crit_edge
  %retval.0.i81.i = phi ptr [ %call.i.i90, %smb_direct_alloc_sendmsg.exit.i.smb_direct_create_header.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end.smb_direct_create_header.exit_crit_edge ]
  %61 = ptrtoint ptr %retval.0.i81.i to i32
  br label %if.then3

for.body7.lr.ph:                                  ; preds = %smb_direct_create_header.exit.thread123
  %cm_id = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %num_sge = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 3
  %pd = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 7
  br label %for.body7

if.then3:                                         ; preds = %smb_direct_create_header.exit, %smb_direct_create_header.exit.thread
  %retval.0.i94107 = phi i32 [ -12, %smb_direct_create_header.exit.thread ], [ %61, %smb_direct_create_header.exit ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_credits6.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %send_credits6.i, i32 1, i32 3, i32 1) #10
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_credits6.i, ptr %send_credits6.i, i32 1, ptr elementtype(i32) %send_credits6.i) #10, !srcloc !382
  br label %cleanup51

for.body7:                                        ; preds = %for.inc43.for.body7_crit_edge, %for.body7.lr.ph
  %i.1119 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc44, %for.inc43.for.body7_crit_edge ]
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 7) #10
  %63 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cm_id, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %arrayidx8 = getelementptr %struct.kvec, ptr %iov, i32 %i.1119
  %67 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx8, align 4
  %iov_len10 = getelementptr %struct.kvec, ptr %iov, i32 %i.1119, i32 1
  %69 = ptrtoint ptr %iov_len10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iov_len10, align 4
  %call.i = call fastcc i32 @get_sg_list(ptr noundef %68, i32 noundef %70, ptr noundef nonnull %sg, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i95 = icmp slt i32 %call.i, 1
  br i1 %cmp.i95, label %for.body7.do.end_crit_edge, label %get_mapped_sg_list.exit

for.body7.do.end_crit_edge:                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

get_mapped_sg_list.exit:                          ; preds = %for.body7
  %71 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %66, align 8
  %call2.i.i.i = call i32 @dma_map_sg_attrs(ptr noundef %72, ptr noundef nonnull %sg, i32 noundef %call.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i.i)
  %cmp13 = icmp slt i32 %call2.i.i.i, 1
  br i1 %cmp13, label %get_mapped_sg_list.exit.do.end_crit_edge, label %if.else

get_mapped_sg_list.exit.do.end_crit_edge:         ; preds = %get_mapped_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %get_mapped_sg_list.exit.do.end_crit_edge, %for.body7.do.end_crit_edge
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #13
  br label %err

if.else:                                          ; preds = %get_mapped_sg_list.exit
  %73 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_sge, align 8
  %add16 = add i32 %74, %call2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add16)
  %cmp17 = icmp sgt i32 %add16, 8
  br i1 %cmp17, label %do.end21, label %for.body31.preheader

for.body31.preheader:                             ; preds = %if.else
  %75 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pd, align 4
  br label %for.body31

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #13
  %77 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cm_id, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %82, ptr noundef nonnull %sg, i32 noundef %call2.i.i.i, i32 noundef 1, i32 noundef 0) #10
  br label %err

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.preheader
  %j.0117 = phi i32 [ %inc40, %for.body31.for.body31_crit_edge ], [ 0, %for.body31.preheader ]
  %83 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_sge, align 8
  %arrayidx34 = getelementptr %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 4, i32 %84
  %dma_address = getelementptr [7 x %struct.scatterlist], ptr %sg, i32 0, i32 %j.0117, i32 3
  %85 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %86 to i64
  %87 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv, ptr %arrayidx34, align 8
  %dma_length = getelementptr [7 x %struct.scatterlist], ptr %sg, i32 0, i32 %j.0117, i32 4
  %88 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_length, align 4
  %length = getelementptr %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 4, i32 %84, i32 1
  %90 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %length, align 8
  %91 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %76, align 4
  %lkey = getelementptr %struct.smb_direct_sendmsg, ptr %call.i.i90, i32 0, i32 4, i32 %84, i32 2
  %93 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %lkey, align 4
  %94 = load i32, ptr %num_sge, align 8
  %inc38 = add i32 %94, 1
  store i32 %inc38, ptr %num_sge, align 8
  %inc40 = add nuw nsw i32 %j.0117, 1
  %exitcond121.not = icmp eq i32 %inc40, %call2.i.i.i
  br i1 %exitcond121.not, label %for.inc43, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31

for.inc43:                                        ; preds = %for.body31
  %inc44 = add nuw nsw i32 %i.1119, 1
  %exitcond122.not = icmp eq i32 %inc44, %niov
  br i1 %exitcond122.not, label %for.inc43.for.end45_crit_edge, label %for.inc43.for.body7_crit_edge

for.inc43.for.body7_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.inc43.for.end45_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end45

for.end45:                                        ; preds = %for.inc43.for.end45_crit_edge, %smb_direct_create_header.exit.thread123.for.end45_crit_edge
  %call46 = call fastcc i32 @post_sendmsg(ptr noundef %t, ptr noundef %send_ctx, ptr noundef nonnull %call.i.i90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.end45.cleanup51_crit_edge, label %for.end45.err_crit_edge

for.end45.err_crit_edge:                          ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

for.end45.cleanup51_crit_edge:                    ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

err:                                              ; preds = %for.end45.err_crit_edge, %do.end21, %do.end
  %ret.2 = phi i32 [ %call46, %for.end45.err_crit_edge ], [ -7, %do.end21 ], [ -12, %do.end ]
  call fastcc void @smb_direct_free_sendmsg(ptr noundef %t, ptr noundef nonnull %call.i.i90)
  %call.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef %send_credits6.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %send_credits6.i, i32 1, i32 3, i32 1) #10
  %95 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_credits6.i, ptr %send_credits6.i, i32 1, ptr elementtype(i32) %send_credits6.i) #10, !srcloc !382
  br label %cleanup51

cleanup51:                                        ; preds = %err, %for.end45.cleanup51_crit_edge, %if.then3, %wait_for_send_credits.exit.cleanup51_crit_edge, %if.then.i.cleanup51_crit_edge
  %retval.0 = phi i32 [ %retval.0.i94107, %if.then3 ], [ %ret.2, %err ], [ %call7.i, %wait_for_send_credits.exit.cleanup51_crit_edge ], [ 0, %for.end45.cleanup51_crit_edge ], [ %call2.i, %if.then.i.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %sg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @post_sendmsg(ptr noundef %t, ptr noundef %send_ctx, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_sge = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_sge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp53 = icmp sgt i32 %1, 0
  br i1 %cmp53, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cm_id = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_id, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 4, i32 %i.054
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %length = getelementptr %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 4, i32 %i.054, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %conv.i = trunc i64 %7 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %11, i32 noundef %conv.i, i32 noundef %9, i32 noundef 1) #10
  %inc = add nuw nsw i32 %i.054, 1
  %12 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sge, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %13, %for.body.for.end_crit_edge ]
  %cqe = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 5
  %14 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @send_done, ptr %cqe, align 8
  %wr = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 1
  %opcode = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %opcode, align 8
  %sge3 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 4
  %sg_list = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sge3, ptr %sg_list, align 8
  %num_sge8 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %num_sge8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.lcssa, ptr %num_sge8, align 4
  %18 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %wr, align 8
  %tobool.not = icmp eq ptr %send_ctx, null
  %19 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 1, i32 1
  br i1 %tobool.not, label %if.end20, label %if.then

if.then:                                          ; preds = %for.end
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %19, align 8
  %send_flags = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %send_flags, align 4
  %22 = ptrtoint ptr %send_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %send_ctx, align 4
  %cmp.i.not = icmp eq ptr %23, %send_ctx
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev = getelementptr inbounds %struct.list_head, ptr %send_ctx, i32 0, i32 1
  %24 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev, align 4
  %wr16 = getelementptr i8, ptr %25, i32 -40
  %26 = ptrtoint ptr %wr16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %wr, ptr %wr16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge
  %list = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.list_head, ptr %send_ctx, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef nonnull %send_ctx) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %send_ctx, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %wr_cnt = getelementptr inbounds %struct.smb_direct_send_ctx, ptr %send_ctx, i32 0, i32 1
  %33 = ptrtoint ptr %wr_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wr_cnt, align 4
  %inc19 = add i32 %34, 1
  store i32 %inc19, ptr %wr_cnt, align 4
  br label %cleanup

if.end20:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cqe, ptr %19, align 8
  %send_flags24 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %send_flags24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %send_flags24, align 4
  %call26 = tail call fastcc i32 @smb_direct_post_send(ptr noundef %t, ptr noundef %wr)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %list_add_tail.exit
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ %call26, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smb_direct_free_sendmsg(ptr nocapture noundef readonly %t, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_sge = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_sge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %cm_id = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_id, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sge = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 4
  %6 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sge, align 8
  %length = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %conv.i = trunc i64 %7 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %conv.i, i32 noundef %9, i32 noundef 1, i32 noundef 0) #10
  %12 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp425 = icmp sgt i32 %13, 1
  br i1 %cmp425, label %if.then.for.body_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.then.for.body_crit_edge ]
  %14 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cm_id, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %arrayidx8 = getelementptr %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 4, i32 %i.026
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx8, align 8
  %length12 = getelementptr %struct.smb_direct_sendmsg, ptr %msg, i32 0, i32 4, i32 %i.026, i32 1
  %20 = ptrtoint ptr %length12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length12, align 8
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 8
  %conv.i24 = trunc i64 %19 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %conv.i24, i32 noundef %21, i32 noundef 1, i32 noundef 0) #10
  %inc = add nuw nsw i32 %i.026, 1
  %24 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_sge, align 8
  %cmp4 = icmp slt i32 %inc, %25
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %sendmsg_mempool = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 36
  %26 = ptrtoint ptr %sendmsg_mempool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sendmsg_mempool, align 4
  tail call void @mempool_free(ptr noundef %msg, ptr noundef %27) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb_direct_flush_send_list(ptr noundef %t, ptr noundef %send_ctx, i1 noundef zeroext %is_last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %send_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %send_ctx, align 4
  %cmp.i.not = icmp eq ptr %1, %send_ctx
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, ptr %send_ctx, i32 0, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %send_flags = getelementptr i8, ptr %3, i32 -12
  %4 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %send_flags, align 4
  %cqe = getelementptr i8, ptr %3, i32 144
  %5 = getelementptr i8, ptr %3, i32 -32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cqe, ptr %5, align 8
  br i1 %is_last, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %need_invalidate_rkey = getelementptr inbounds %struct.smb_direct_send_ctx, ptr %send_ctx, i32 0, i32 2
  %7 = ptrtoint ptr %need_invalidate_rkey to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %need_invalidate_rkey, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end12_crit_edge, label %if.then9

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %opcode = getelementptr i8, ptr %3, i32 -16
  %9 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9, ptr %opcode, align 8
  %remote_key = getelementptr inbounds %struct.smb_direct_send_ctx, ptr %send_ctx, i32 0, i32 3
  %10 = ptrtoint ptr %remote_key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %remote_key, align 4
  %ex = getelementptr i8, ptr %3, i32 -8
  %12 = ptrtoint ptr %ex to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ex, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %wr13 = getelementptr i8, ptr %1, i32 -40
  %call14 = tail call fastcc i32 @smb_direct_post_send(ptr noundef %t, ptr noundef %wr13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %send_ctx to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %send_ctx, ptr %send_ctx, align 4
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %send_ctx, ptr %prev, align 4
  %wr_cnt.i = getelementptr inbounds %struct.smb_direct_send_ctx, ptr %send_ctx, i32 0, i32 1
  %15 = ptrtoint ptr %wr_cnt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wr_cnt.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %wr_cnt = getelementptr inbounds %struct.smb_direct_send_ctx, ptr %send_ctx, i32 0, i32 1
  %16 = ptrtoint ptr %wr_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wr_cnt, align 4
  %send_credits = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_credits, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %send_credits, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_credits, ptr %send_credits, i32 %17, ptr elementtype(i32) %send_credits) #10, !srcloc !382
  %wait_send_credits = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wait_send_credits, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %19 = ptrtoint ptr %send_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %send_ctx, align 4
  %cmp.not64 = icmp eq ptr %20, %send_ctx
  br i1 %cmp.not64, label %if.else.cleanup_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %.pn.in65 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %20, %if.else.for.body_crit_edge ]
  %first.0 = getelementptr i8, ptr %.pn.in65, i32 -48
  %21 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn.in65, align 8
  tail call fastcc void @smb_direct_free_sendmsg(ptr noundef %t, ptr noundef %first.0)
  %cmp.not = icmp eq ptr %.pn, %send_ctx
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then16 ], [ %call14, %if.else.cleanup_crit_edge ], [ %call14, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_credits(ptr nocapture noundef readonly %t, ptr noundef %waitq, ptr noundef %credits) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.else.do.body_crit_edge, %entry
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %credits, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !383
  call void @llvm.prefetch.p0(ptr %credits, i32 1, i32 3, i32 1) #10
  %0 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %credits, ptr %credits, i32 1, ptr elementtype(i32) %credits) #10, !srcloc !384
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, -1
  br i1 %cmp, label %do.body.cleanup31_crit_edge, label %if.end

do.body.cleanup31_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

if.end:                                           ; preds = %do.body
  %call.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef %credits, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %credits, i32 1, i32 3, i32 1) #10
  %1 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %credits, ptr %credits, i32 1, ptr elementtype(i32) %credits) #10, !srcloc !382
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 997) #10
  %call.i.i43 = call zeroext i1 @__kasan_check_read(ptr noundef %credits, i32 noundef 4) #10
  %2 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp sgt i32 %3, 0
  br i1 %cmp6, label %if.end.if.end20_crit_edge, label %lor.lhs.false

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp7.not = icmp eq i32 %5, 1
  br i1 %cmp7.not, label %if.then8, label %lor.lhs.false.cleanup31_crit_edge

lor.lhs.false.cleanup31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

if.then8:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call1053 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call.i.i4454 = call zeroext i1 @__kasan_check_read(ptr noundef %credits, i32 noundef 4) #10
  %7 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1255 = icmp sgt i32 %8, 0
  br i1 %cmp1255, label %if.then8.for.end_crit_edge, label %if.then8.lor.lhs.false13_crit_edge

if.then8.lor.lhs.false13_crit_edge:               ; preds = %if.then8
  br label %lor.lhs.false13

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

lor.lhs.false13:                                  ; preds = %cleanup.lor.lhs.false13_crit_edge, %if.then8.lor.lhs.false13_crit_edge
  %call1056 = phi i32 [ %call10, %cleanup.lor.lhs.false13_crit_edge ], [ %call1053, %if.then8.lor.lhs.false13_crit_edge ]
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp15.not = icmp eq i32 %10, 1
  br i1 %cmp15.not, label %if.end17, label %lor.lhs.false13.for.end_crit_edge

lor.lhs.false13.for.end_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end17:                                         ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1056)
  %tobool.not = icmp eq i32 %call1056, 0
  br i1 %tobool.not, label %cleanup, label %if.end17.__out_crit_edge

if.end17.__out_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end17
  call void @schedule() #10
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call.i.i44 = call zeroext i1 @__kasan_check_read(ptr noundef %credits, i32 noundef 4) #10
  %11 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %credits, align 4
  %cmp12 = icmp sgt i32 %12, 0
  br i1 %cmp12, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false13_crit_edge

cleanup.lor.lhs.false13_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false13

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false13.for.end_crit_edge, %if.then8.for.end_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end17.__out_crit_edge
  %__ret9.147 = phi i32 [ 0, %for.end ], [ %call1056, %if.end17.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end20

if.end20:                                         ; preds = %__out, %if.end.if.end20_crit_edge
  %__ret.0.ph = phi i32 [ %__ret9.147, %__out ], [ 0, %if.end.if.end20_crit_edge ]
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp23.not = icmp eq i32 %.pr, 1
  br i1 %cmp23.not, label %if.else, label %if.end20.cleanup31_crit_edge

if.end20.cleanup31_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

if.else:                                          ; preds = %if.end20
  %cmp25 = icmp slt i32 %__ret.0.ph, 0
  br i1 %cmp25, label %if.else.cleanup31_crit_edge, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else.cleanup31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

cleanup31:                                        ; preds = %if.else.cleanup31_crit_edge, %if.end20.cleanup31_crit_edge, %lor.lhs.false.cleanup31_crit_edge, %do.body.cleanup31_crit_edge
  %retval.0 = phi i32 [ 0, %do.body.cleanup31_crit_edge ], [ -107, %if.end20.cleanup31_crit_edge ], [ %__ret.0.ph, %if.else.cleanup31_crit_edge ], [ -107, %lor.lhs.false.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb_direct_post_send(ptr noundef %t, ptr noundef %wr) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 3
  %0 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %send_payload_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_payload_pending, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %send_payload_pending, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_payload_pending, ptr %send_payload_pending, i32 1, ptr elementtype(i32) %send_payload_pending) #10, !srcloc !382
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %send_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 43
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_pending, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %send_pending, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_pending, ptr %send_pending, i32 1, ptr elementtype(i32) %send_pending) #10, !srcloc !382
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %qp = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 8
  %4 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #10
  %6 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !379
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %10(ptr noundef %5, ptr noundef %wr, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %do.end

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end:                                           ; preds = %if.end
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %call.i) #13
  %11 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp4 = icmp sgt i32 %12, 1
  br i1 %cmp4, label %if.then5, label %if.else10

if.then5:                                         ; preds = %do.end
  %send_payload_pending6 = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 41
  %call.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef %send_payload_pending6, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !383
  call void @llvm.prefetch.p0(ptr %send_payload_pending6, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_payload_pending6, ptr %send_payload_pending6, i32 1, ptr elementtype(i32) %send_payload_pending6) #10, !srcloc !384
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then8, label %if.then5.if.end15_crit_edge

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %wait_send_payload_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 40
  br label %if.end15.sink.split

if.else10:                                        ; preds = %do.end
  %send_pending11 = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 43
  %call.i.i30 = call zeroext i1 @__kasan_check_write(ptr noundef %send_pending11, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !383
  call void @llvm.prefetch.p0(ptr %send_pending11, i32 1, i32 3, i32 1) #10
  %14 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_pending11, ptr %send_pending11, i32 1, ptr elementtype(i32) %send_pending11) #10, !srcloc !384
  %asmresult.i.i.i.i.i31 = extractvalue { i32, i32 } %14, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i31)
  %cmp.i.i32 = icmp eq i32 %asmresult.i.i.i.i.i31, 0
  br i1 %cmp.i.i32, label %if.then13, label %if.else10.if.end15_crit_edge

if.else10.if.end15_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %wait_send_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 42
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then13, %if.then8
  %wait_send_pending.sink = phi ptr [ %wait_send_pending, %if.then13 ], [ %wait_send_payload_pending, %if.then8 ]
  call void @__wake_up(ptr noundef %wait_send_pending.sink, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else10.if.end15_crit_edge, %if.then5.if.end15_crit_edge
  %status.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 1
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  br i1 %cmp.i, label %if.then.i, label %if.end15.if.end16_crit_edge

if.end15.if.end16_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %17 = load ptr, ptr @smb_direct_wq, align 4
  %disconnect_work.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 46
  %call.i.i33 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %disconnect_work.i) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then.i, %if.end15.if.end16_crit_edge, %if.end.if.end16_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_sg_list(ptr noundef %buf, i32 noundef %size, ptr noundef %sg_list, i32 noundef %nentries) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #10
  %0 = ptrtoint ptr %buf to i32
  %add.i = add i32 %size, 4095
  %sub.i = add i32 %add.i, %0
  %div5.i = lshr i32 %sub.i, 12
  %div26.i = lshr i32 %0, 12
  %sub3.i = sub nsw i32 %div5.i, %div26.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3.i, i32 %nentries)
  %cmp = icmp sgt i32 %sub3.i, %nentries
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp235 = icmp sgt i32 %size, 0
  br i1 %cmp235, label %while.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  %and = and i32 %0, 4095
  %idx.neg = sub nsw i32 0, %and
  %add.ptr = getelementptr i8, ptr %buf, i32 %idx.neg
  br label %while.body

while.body:                                       ; preds = %sg_set_page.exit.while.body_crit_edge, %while.body.preheader
  %i.041 = phi i32 [ %inc, %sg_set_page.exit.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %offset.040 = phi i32 [ 0, %sg_set_page.exit.while.body_crit_edge ], [ %and, %while.body.preheader ]
  %buf.addr.038 = phi ptr [ %add.ptr12, %sg_set_page.exit.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %sg_list.addr.037 = phi ptr [ %call11, %sg_set_page.exit.while.body_crit_edge ], [ %sg_list, %while.body.preheader ]
  %size.addr.036 = phi i32 [ %sub13, %sg_set_page.exit.while.body_crit_edge ], [ %size, %while.body.preheader ]
  %sub = sub nuw nsw i32 4096, %offset.040
  %1 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %size.addr.036)
  br i1 %call, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call ptr @vmalloc_to_page(ptr noundef %buf.addr.038) #10
  br label %if.end7

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @__kmap_to_page(ptr noundef %buf.addr.038) #10
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %page.0 = phi ptr [ %call5, %if.then4 ], [ %call.i, %if.else ]
  %tobool8.not = icmp eq ptr %sg_list.addr.037, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %2 = ptrtoint ptr %sg_list.addr.037 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_list.addr.037, align 4
  %4 = ptrtoint ptr %page.0 to i32
  %and2.i.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !378

do.body5.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !386
  unreachable

do.body11.i.i:                                    ; preds = %if.end10
  %and.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !378

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !387
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %3, 3
  %or.i.i = or i32 %and.i.i, %4
  %5 = ptrtoint ptr %sg_list.addr.037 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i, ptr %sg_list.addr.037, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg_list.addr.037, i32 0, i32 1
  %6 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %offset.040, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg_list.addr.037, i32 0, i32 2
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %length.i, align 4
  %call11 = tail call ptr @sg_next(ptr noundef nonnull %sg_list.addr.037) #10
  %add.ptr12 = getelementptr i8, ptr %buf.addr.038, i32 4096
  %sub13 = sub nsw i32 %size.addr.036, %1
  %inc = add i32 %i.041, 1
  %cmp2 = icmp sgt i32 %sub13, 0
  br i1 %cmp2, label %sg_set_page.exit.while.body_crit_edge, label %sg_set_page.exit.cleanup_crit_edge

sg_set_page.exit.cleanup_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sg_set_page.exit.while.body_crit_edge:            ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %sg_set_page.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %inc, %sg_set_page.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -192
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %4 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 8
  %call = tail call ptr @ib_wc_status_msg(i32 noundef %6) #15
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %7 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opcode, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %call, i32 noundef %6, i32 noundef %8) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %status7 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %9 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %lor.lhs.false, label %do.end6.do.end13_crit_edge

do.end6.do.end13_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

lor.lhs.false:                                    ; preds = %do.end6
  %opcode8 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %11 = ptrtoint ptr %opcode8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opcode8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.not = icmp eq i32 %12, 0
  br i1 %cmp9.not, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.do.end13_crit_edge

lor.lhs.false.do.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end13:                                         ; preds = %lor.lhs.false.do.end13_crit_edge, %do.end6.do.end13_crit_edge
  %call16 = tail call ptr @ib_wc_status_msg(i32 noundef %10) #15
  %opcode18 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %13 = ptrtoint ptr %opcode18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opcode18, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %call16, i32 noundef %10, i32 noundef %14) #13
  %status.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  br i1 %cmp.i, label %if.then.i, label %do.end13.if.end20_crit_edge

do.end13.if.end20_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then.i:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  %17 = load ptr, ptr @smb_direct_wq, align 4
  %disconnect_work.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 46
  %call.i.i65 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %disconnect_work.i) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then.i, %do.end13.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge
  %num_sge = getelementptr i8, ptr %1, i32 -136
  %18 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_sge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp21 = icmp sgt i32 %19, 1
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end20
  %send_payload_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_payload_pending, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %send_payload_pending, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_payload_pending, ptr %send_payload_pending, i32 1, ptr elementtype(i32) %send_payload_pending) #10, !srcloc !384
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then24, label %if.then22.if.end29_crit_edge

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %wait_send_payload_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 40
  br label %if.end29.sink.split

if.else:                                          ; preds = %if.end20
  %send_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 43
  %call.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_pending, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %send_pending, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_pending, ptr %send_pending, i32 1, ptr elementtype(i32) %send_pending) #10, !srcloc !384
  %asmresult.i.i.i.i.i63 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i63)
  %cmp.i.i64 = icmp eq i32 %asmresult.i.i.i.i.i63, 0
  br i1 %cmp.i.i64, label %if.then27, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %wait_send_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 42
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.then27, %if.then24
  %wait_send_pending.sink = phi ptr [ %wait_send_pending, %if.then27 ], [ %wait_send_payload_pending, %if.then24 ]
  tail call void @__wake_up(ptr noundef %wait_send_pending.sink, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else.if.end29_crit_edge, %if.then22.if.end29_crit_edge
  %list = getelementptr i8, ptr %1, i32 -144
  %prev30 = getelementptr i8, ptr %1, i32 -140
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list, align 8
  %24 = ptrtoint ptr %prev30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %prev.066 = load ptr, ptr %prev30, align 4
  %cmp32.not67 = icmp eq ptr %prev.066, %23
  br i1 %cmp32.not67, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end29.for.body_crit_edge
  %prev.069 = phi ptr [ %prev.0, %for.body.for.body_crit_edge ], [ %prev.066, %if.end29.for.body_crit_edge ]
  %pos.068 = phi ptr [ %prev.069, %for.body.for.body_crit_edge ], [ %list, %if.end29.for.body_crit_edge ]
  %add.ptr35 = getelementptr i8, ptr %pos.068, i32 -48
  tail call fastcc void @smb_direct_free_sendmsg(ptr noundef %3, ptr noundef %add.ptr35)
  %prev36 = getelementptr inbounds %struct.list_head, ptr %prev.069, i32 0, i32 1
  %25 = ptrtoint ptr %prev36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %prev.0 = load ptr, ptr %prev36, align 4
  %cmp32.not = icmp eq ptr %prev.0, %23
  br i1 %cmp32.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end29.for.end_crit_edge
  %pos.0.lcssa = phi ptr [ %list, %if.end29.for.end_crit_edge ], [ %prev.069, %for.body.for.end_crit_edge ]
  %add.ptr39 = getelementptr i8, ptr %pos.0.lcssa, i32 -48
  tail call fastcc void @smb_direct_free_sendmsg(ptr noundef %3, ptr noundef %add.ptr39)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb_direct_prepare(ptr noundef %t) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1902) #10
  %negotiation_requested = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 47
  %1 = ptrtoint ptr %negotiation_requested to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %negotiation_requested, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool11.not = icmp eq i8 %2, 0
  br i1 %tobool11.not, label %lor.rhs, label %do.end4.lor.lhs.false_crit_edge

do.end4.lor.lhs.false_crit_edge:                  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.rhs:                                          ; preds = %do.end4
  %status = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 1
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %lor.rhs.lor.lhs.false_crit_edge, label %if.then22

lor.rhs.lor.lhs.false_crit_edge:                  ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.then22:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait_status = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 3
  %call24187 = call i32 @prepare_to_wait_event(ptr noundef %wait_status, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %6 = ptrtoint ptr %negotiation_requested to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %negotiation_requested, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool27.not188 = icmp eq i8 %7, 0
  br i1 %tobool27.not188, label %if.then22.lor.end31_crit_edge, label %if.then22.for.end_crit_edge

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then22.lor.end31_crit_edge:                    ; preds = %if.then22
  br label %lor.end31

lor.end31.thread:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool36.not156 = icmp eq i32 %call52, 0
  %spec.select206 = select i1 %tobool36.not156, i32 1, i32 %call52
  br label %for.end

lor.end31:                                        ; preds = %cleanup.lor.end31_crit_edge, %if.then22.lor.end31_crit_edge
  %call24190 = phi i32 [ %call24, %cleanup.lor.end31_crit_edge ], [ %call24187, %if.then22.lor.end31_crit_edge ]
  %__ret23.0189 = phi i32 [ %call52, %cleanup.lor.end31_crit_edge ], [ 12000, %if.then22.lor.end31_crit_edge ]
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp30 = icmp eq i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.0189)
  %tobool36.not.le = icmp eq i32 %__ret23.0189, 0
  br i1 %cmp30, label %for.end.loopexit.split.loop.exit182, label %10

10:                                               ; preds = %lor.end31
  br i1 %tobool36.not.le, label %.for.end_crit_edge, label %if.end48

.for.end_crit_edge:                               ; preds = %10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end48:                                         ; preds = %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24190)
  %tobool49.not = icmp eq i32 %call24190, 0
  br i1 %tobool49.not, label %cleanup, label %if.end48.if.end55_crit_edge

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

cleanup:                                          ; preds = %if.end48
  %call52 = call i32 @schedule_timeout(i32 noundef %__ret23.0189) #10
  %call24 = call i32 @prepare_to_wait_event(ptr noundef %wait_status, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %11 = ptrtoint ptr %negotiation_requested to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %negotiation_requested, align 4, !range !381
  %tobool27.not = icmp eq i8 %12, 0
  br i1 %tobool27.not, label %cleanup.lor.end31_crit_edge, label %lor.end31.thread

cleanup.lor.end31_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end31

for.end.loopexit.split.loop.exit182:              ; preds = %lor.end31
  call void @__sanitizer_cov_trace_pc() #12
  %spec.store.select92.le = select i1 %tobool36.not.le, i32 1, i32 %__ret23.0189
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit182, %.for.end_crit_edge, %lor.end31.thread, %if.then22.for.end_crit_edge
  %__ret23.2.ph = phi i32 [ %spec.store.select92.le, %for.end.loopexit.split.loop.exit182 ], [ 12000, %if.then22.for.end_crit_edge ], [ %spec.select206, %lor.end31.thread ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait_status, ptr noundef nonnull %__wq_entry) #10
  br label %if.end55

if.end55:                                         ; preds = %for.end, %if.end48.if.end55_crit_edge
  %__ret23.2162 = phi i32 [ %__ret23.2.ph, %for.end ], [ %call24190, %if.end48.if.end55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret23.2162)
  %cmp57 = icmp slt i32 %__ret23.2162, 1
  br i1 %cmp57, label %if.end55.if.then60_crit_edge, label %if.end55.lor.lhs.false_crit_edge

if.end55.lor.lhs.false_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end55.if.then60_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60

lor.lhs.false:                                    ; preds = %if.end55.lor.lhs.false_crit_edge, %lor.rhs.lor.lhs.false_crit_edge, %do.end4.lor.lhs.false_crit_edge
  %__ret.1169 = phi i32 [ %__ret23.2162, %if.end55.lor.lhs.false_crit_edge ], [ 12000, %lor.rhs.lor.lhs.false_crit_edge ], [ 12000, %do.end4.lor.lhs.false_crit_edge ]
  %status58 = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 1
  %13 = ptrtoint ptr %status58 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp59 = icmp eq i32 %14, 3
  br i1 %cmp59, label %lor.lhs.false.if.then60_crit_edge, label %if.end62

lor.lhs.false.if.then60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60

if.then60:                                        ; preds = %lor.lhs.false.if.then60_crit_edge, %if.end55.if.then60_crit_edge
  %__ret.1170 = phi i32 [ %__ret.1169, %lor.lhs.false.if.then60_crit_edge ], [ %__ret23.2162, %if.end55.if.then60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1170)
  %cmp61 = icmp slt i32 %__ret.1170, 0
  %spec.select = select i1 %cmp61, i32 %__ret.1170, i32 -110
  br label %cleanup88

if.end62:                                         ; preds = %lor.lhs.false
  %reassembly_queue.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 15
  %15 = ptrtoint ptr %reassembly_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %reassembly_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %reassembly_queue.i
  %add.ptr.i = getelementptr i8, ptr %16, i32 -4
  %tobool64.not174 = icmp eq ptr %add.ptr.i, null
  %tobool64.not = or i1 %cmp.i.not.i, %tobool64.not174
  br i1 %tobool64.not, label %if.end62.cleanup88_crit_edge, label %if.end66

if.end62.cleanup88_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

if.end66:                                         ; preds = %if.end62
  %type.i = getelementptr i8, ptr %16, i32 8
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %18, label %if.end66.if.end70_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb8.i
  ]

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

sw.bb.i:                                          ; preds = %if.end66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %20 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.end70_crit_edge, label %do.end.i

sw.bb.i.if.end70_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %packet.i = getelementptr i8, ptr %16, i32 33
  %data_offset.i = getelementptr i8, ptr %16, i32 45
  %21 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %data_offset.i, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22) #10
  %add.ptr.i139 = getelementptr i8, ptr %packet.i, i32 %23
  %credits_granted.i = getelementptr i8, ptr %16, i32 35
  %24 = ptrtoint ptr %credits_granted.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %credits_granted.i, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25) #10
  %conv.i = zext i16 %26 to i32
  %27 = ptrtoint ptr %packet.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %packet.i, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28) #10
  %conv4.i = zext i16 %29 to i32
  %data_length.i = getelementptr i8, ptr %16, i32 49
  %30 = ptrtoint ptr %data_length.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %data_length.i, align 1
  %remaining_data_length.i = getelementptr i8, ptr %16, i32 41
  %32 = ptrtoint ptr %remaining_data_length.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %remaining_data_length.i, align 1
  %34 = ptrtoint ptr %add.ptr.i139 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %add.ptr.i139, align 1
  %Command.i = getelementptr inbounds %struct.smb2_hdr, ptr %add.ptr.i139, i32 0, i32 4
  %36 = ptrtoint ptr %Command.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %Command.i, align 1
  %conv5.i = zext i16 %37 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %conv5.i) #13
  br label %if.end70

sw.bb8.i:                                         ; preds = %if.end66
  %packet10.i = getelementptr i8, ptr %16, i32 33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %38 = load i32, ptr @ksmbd_debug_types, align 4
  %and13.i = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %sw.bb8.i.do.end27.i_crit_edge, label %do.end18.i

sw.bb8.i.do.end27.i_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27.i

do.end18.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %packet10.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %packet10.i, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40) #10
  %conv20.i = zext i16 %41 to i32
  %max_version.i = getelementptr i8, ptr %16, i32 35
  %42 = ptrtoint ptr %max_version.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %max_version.i, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43) #10
  %conv21.i = zext i16 %44 to i32
  %credits_requested22.i = getelementptr i8, ptr %16, i32 39
  %45 = ptrtoint ptr %credits_requested22.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %credits_requested22.i, align 1
  %47 = call i16 @llvm.bswap.i16(i16 %46) #10
  %conv23.i = zext i16 %47 to i32
  %preferred_send_size.i = getelementptr i8, ptr %16, i32 41
  %48 = ptrtoint ptr %preferred_send_size.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %preferred_send_size.i, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49) #10
  %max_receive_size.i = getelementptr i8, ptr %16, i32 45
  %51 = ptrtoint ptr %max_receive_size.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %max_receive_size.i, align 1
  %53 = call i32 @llvm.bswap.i32(i32 %52) #10
  %max_fragmented_size.i = getelementptr i8, ptr %16, i32 49
  %54 = ptrtoint ptr %max_fragmented_size.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %max_fragmented_size.i, align 1
  %56 = call i32 @llvm.bswap.i32(i32 %55) #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %conv20.i, i32 noundef %conv21.i, i32 noundef %conv23.i, i32 noundef %50, i32 noundef %53, i32 noundef %56) #13
  br label %do.end27.i

do.end27.i:                                       ; preds = %do.end18.i, %sw.bb8.i.do.end27.i_crit_edge
  %57 = ptrtoint ptr %packet10.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %packet10.i, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %59)
  %cmp.i = icmp ugt i16 %59, 256
  br i1 %cmp.i, label %do.end27.i.if.end70_crit_edge, label %lor.lhs.false.i

do.end27.i.if.end70_crit_edge:                    ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

lor.lhs.false.i:                                  ; preds = %do.end27.i
  %max_version31.i = getelementptr i8, ptr %16, i32 35
  %60 = ptrtoint ptr %max_version31.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %max_version31.i, align 1
  %.mask.i = and i16 %61, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp33.i = icmp eq i16 %.mask.i, 0
  br i1 %cmp33.i, label %lor.lhs.false.i.if.end70_crit_edge, label %if.end36.i

lor.lhs.false.i.if.end70_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.end36.i:                                       ; preds = %lor.lhs.false.i
  %credits_requested37.i = getelementptr i8, ptr %16, i32 39
  %62 = ptrtoint ptr %credits_requested37.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %credits_requested37.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp39.i = icmp eq i16 %63, 0
  br i1 %cmp39.i, label %if.end36.i.out_crit_edge, label %lor.lhs.false41.i

if.end36.i.out_crit_edge:                         ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false41.i:                                ; preds = %if.end36.i
  %max_receive_size42.i = getelementptr i8, ptr %16, i32 45
  %64 = ptrtoint ptr %max_receive_size42.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %max_receive_size42.i, align 1
  %66 = call i32 @llvm.bswap.i32(i32 %65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %66)
  %cmp43.i = icmp ult i32 %66, 129
  br i1 %cmp43.i, label %lor.lhs.false41.i.out_crit_edge, label %cleanup.i

lor.lhs.false41.i.out_crit_edge:                  ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cleanup.i:                                        ; preds = %lor.lhs.false41.i
  %max_fragmented_size46.i = getelementptr i8, ptr %16, i32 49
  %67 = ptrtoint ptr %max_fragmented_size46.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %max_fragmented_size46.i, align 1
  %69 = call i32 @llvm.bswap.i32(i32 %68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %69)
  %cmp47.i = icmp ugt i32 %69, 131072
  br i1 %cmp47.i, label %cleanup.i.if.end70_crit_edge, label %cleanup.i.out_crit_edge

cleanup.i.out_crit_edge:                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cleanup.i.if.end70_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.end70:                                         ; preds = %cleanup.i.if.end70_crit_edge, %lor.lhs.false.i.if.end70_crit_edge, %do.end27.i.if.end70_crit_edge, %do.end.i, %sw.bb.i.if.end70_crit_edge, %if.end66.if.end70_crit_edge
  %tobool.not.i141 = phi i1 [ true, %sw.bb.i.if.end70_crit_edge ], [ true, %do.end.i ], [ true, %cleanup.i.if.end70_crit_edge ], [ false, %if.end66.if.end70_crit_edge ], [ false, %do.end27.i.if.end70_crit_edge ], [ false, %lor.lhs.false.i.if.end70_crit_edge ]
  %max_recv_size = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 10
  %70 = ptrtoint ptr %max_recv_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_recv_size, align 4
  %preferred_send_size = getelementptr i8, ptr %16, i32 41
  %72 = ptrtoint ptr %preferred_send_size to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %preferred_send_size, align 1
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  %75 = call i32 @llvm.smin.i32(i32 %71, i32 %74)
  %76 = ptrtoint ptr %max_recv_size to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %max_recv_size, align 4
  %max_send_size = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 9
  %77 = ptrtoint ptr %max_send_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_send_size, align 4
  %max_receive_size = getelementptr i8, ptr %16, i32 45
  %79 = ptrtoint ptr %max_receive_size to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %max_receive_size, align 1
  %81 = call i32 @llvm.bswap.i32(i32 %80)
  %82 = call i32 @llvm.smin.i32(i32 %78, i32 %81)
  %83 = ptrtoint ptr %max_send_size to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %max_send_size, align 4
  %max_fragmented_size = getelementptr i8, ptr %16, i32 49
  %84 = ptrtoint ptr %max_fragmented_size to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %max_fragmented_size, align 1
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %max_fragmented_send_size = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 11
  %87 = ptrtoint ptr %max_fragmented_send_size to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %max_fragmented_send_size, align 4
  %recv_credit_max = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 23
  %88 = ptrtoint ptr %recv_credit_max to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %recv_credit_max, align 4
  %mul = mul i32 %89, %75
  %div = sdiv i32 %mul, 2
  %max_fragmented_recv_size = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 12
  %90 = ptrtoint ptr %max_fragmented_recv_size to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %div, ptr %max_fragmented_recv_size, align 4
  %sendmsg_mempool.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 36
  %91 = ptrtoint ptr %sendmsg_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sendmsg_mempool.i.i, align 4
  %call.i.i = call noalias ptr @mempool_alloc(ptr noundef %92, i32 noundef 3264) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end70.out_crit_edge, label %smb_direct_alloc_sendmsg.exit.i

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

smb_direct_alloc_sendmsg.exit.i:                  ; preds = %if.end70
  %93 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %t, ptr %call.i.i, align 8
  %list.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %num_sge.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %num_sge.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %smb_direct_alloc_sendmsg.exit.i.out_crit_edge, label %if.end.i

smb_direct_alloc_sendmsg.exit.i.out_crit_edge:    ; preds = %smb_direct_alloc_sendmsg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %smb_direct_alloc_sendmsg.exit.i
  %packet.i140 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 6
  br i1 %tobool.not.i141, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 1
  %98 = call ptr @memset(ptr %97, i32 0, i32 28)
  %99 = ptrtoint ptr %packet.i140 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 1, ptr %packet.i140, align 1
  %max_version.i142 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 6, i32 2
  %100 = ptrtoint ptr %max_version.i142 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 1, ptr %max_version.i142, align 1
  %status.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 1, i32 1
  %101 = ptrtoint ptr %status.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 -1157627712, ptr %status.i, align 1
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %status3.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 1, i32 1
  %102 = ptrtoint ptr %status3.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 0, ptr %status3.i, align 1
  %103 = ptrtoint ptr %packet.i140 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 1, ptr %packet.i140, align 1
  %max_version5.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 6, i32 2
  %104 = ptrtoint ptr %max_version5.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 1, ptr %max_version5.i, align 1
  %negotiated_version.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 1
  %105 = ptrtoint ptr %negotiated_version.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 1, ptr %negotiated_version.i, align 1
  %reserved.i = getelementptr inbounds %struct.smb_direct_negotiate_resp, ptr %packet.i140, i32 0, i32 3
  %106 = ptrtoint ptr %reserved.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 0, ptr %reserved.i, align 1
  %send_credit_target.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 29
  %107 = ptrtoint ptr %send_credit_target.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %send_credit_target.i, align 4
  %conv.i143 = trunc i32 %108 to i16
  %109 = call i16 @llvm.bswap.i16(i16 %conv.i143) #10
  %credits_requested.i = getelementptr inbounds %struct.smb_direct_negotiate_resp, ptr %packet.i140, i32 0, i32 4
  %110 = ptrtoint ptr %credits_requested.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %109, ptr %credits_requested.i, align 1
  %lock_new_recv_credits.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 31
  call void @_raw_spin_lock(ptr noundef %lock_new_recv_credits.i.i) #10
  %new_recv_credits.i.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 32
  %111 = ptrtoint ptr %new_recv_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %new_recv_credits.i.i, align 4
  store i32 0, ptr %new_recv_credits.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock_new_recv_credits.i.i) #10
  %conv7.i = trunc i32 %112 to i16
  %113 = call i16 @llvm.bswap.i16(i16 %conv7.i) #10
  %credits_granted.i144 = getelementptr inbounds %struct.smb_direct_negotiate_resp, ptr %packet.i140, i32 0, i32 5
  %114 = ptrtoint ptr %credits_granted.i144 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %113, ptr %credits_granted.i144, align 1
  %max_rdma_rw_size.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 13
  %115 = ptrtoint ptr %max_rdma_rw_size.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_rdma_rw_size.i, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %116) #10
  %max_readwrite_size.i = getelementptr inbounds %struct.smb_direct_negotiate_resp, ptr %packet.i140, i32 0, i32 7
  %118 = ptrtoint ptr %max_readwrite_size.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 %117, ptr %max_readwrite_size.i, align 1
  %119 = ptrtoint ptr %max_send_size to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max_send_size, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120) #10
  %preferred_send_size.i145 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 1, i32 1, i32 1
  %122 = ptrtoint ptr %preferred_send_size.i145 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 %121, ptr %preferred_send_size.i145, align 1
  %123 = ptrtoint ptr %max_recv_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_recv_size, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124) #10
  %max_receive_size.i146 = getelementptr inbounds %struct.smb_direct_negotiate_resp, ptr %packet.i140, i32 0, i32 9
  %126 = ptrtoint ptr %max_receive_size.i146 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %125, ptr %max_receive_size.i146, align 1
  %127 = ptrtoint ptr %max_fragmented_recv_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max_fragmented_recv_size, align 4
  %129 = call i32 @llvm.bswap.i32(i32 %128) #10
  %max_fragmented_size.i147 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 1, i32 1, i32 2
  %130 = ptrtoint ptr %max_fragmented_size.i147 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 %129, ptr %max_fragmented_size.i147, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then2.i
  %cm_id.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %131 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cm_id.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 8
  %call.i.i92.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %packet.i140) #10
  br i1 %call.i.i92.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end8.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge, label %if.then.i.i.i, !prof !378

land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dma_map_single.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %136) #10
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %136, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %140, %if.end.i.i.i.i ], [ %138, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.68, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #10
  br label %ib_dma_map_single.exit.i

if.end39.i.i.i:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @debug_dma_map_single(ptr noundef %136, ptr noundef %packet.i140, i32 noundef 32) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %141 = load ptr, ptr @mem_map, align 4
  %142 = ptrtoint ptr %packet.i140 to i32
  %sub.i.i.i = add i32 %142, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %141, i32 %shr.i.i.i
  %and.i.i.i = and i32 %142, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %136, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 32, i32 noundef 1, i32 noundef 0) #10
  br label %ib_dma_map_single.exit.i

ib_dma_map_single.exit.i:                         ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge ]
  %conv2.i.i = zext i32 %retval.0.i.i.i to i64
  %sge.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 4
  %143 = ptrtoint ptr %sge.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %conv2.i.i, ptr %sge.i, align 8
  %144 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cm_id.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 8
  call void @debug_dma_mapping_error(ptr noundef %149, i32 noundef %retval.0.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.then17.i, label %for.body.lr.ph.i.i

if.then17.i:                                      ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @smb_direct_free_sendmsg(ptr noundef %t, ptr noundef nonnull %call.i.i) #10
  br label %out

for.body.lr.ph.i.i:                               ; preds = %ib_dma_map_single.exit.i
  %150 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %num_sge.i.i, align 8
  %length.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %151 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 32, ptr %length.i, align 8
  %pd.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 7
  %152 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pd.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  %lkey.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 4, i32 0, i32 2
  %156 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %lkey.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.054.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %157 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cm_id.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %arrayidx.i.i = getelementptr %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 4, i32 %i.054.i.i
  %161 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %arrayidx.i.i, align 8
  %length.i.i = getelementptr %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 4, i32 %i.054.i.i, i32 1
  %163 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %length.i.i, align 8
  %165 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %160, align 8
  %conv.i.i.i = trunc i64 %162 to i32
  call void @dma_sync_single_for_device(ptr noundef %166, i32 noundef %conv.i.i.i, i32 noundef %164, i32 noundef 1) #10
  %inc.i.i = add nuw nsw i32 %i.054.i.i, 1
  %167 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_sge.i.i, align 8
  %cmp.i94.i = icmp slt i32 %inc.i.i, %168
  br i1 %cmp.i94.i, label %for.body.i.i.for.body.i.i_crit_edge, label %post_sendmsg.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

post_sendmsg.exit.i:                              ; preds = %for.body.i.i
  %cqe.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 5
  %169 = ptrtoint ptr %cqe.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @send_done, ptr %cqe.i.i, align 8
  %wr.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 1
  %opcode.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 1, i32 4
  %170 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 2, ptr %opcode.i.i, align 8
  %sg_list.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 1, i32 2
  %171 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %sge.i, ptr %sg_list.i.i, align 8
  %num_sge8.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 1, i32 3
  %172 = ptrtoint ptr %num_sge8.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %168, ptr %num_sge8.i.i, align 4
  %173 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %wr.i.i, align 8
  %174 = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 1, i32 1
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %cqe.i.i, ptr %174, align 8
  %send_flags24.i.i = getelementptr inbounds %struct.smb_direct_sendmsg, ptr %call.i.i, i32 0, i32 1, i32 5
  %176 = ptrtoint ptr %send_flags24.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 2, ptr %send_flags24.i.i, align 4
  %call26.i.i = call fastcc i32 @smb_direct_post_send(ptr noundef %t, ptr noundef %wr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool24.not.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool24.not.i, label %do.body27.i, label %if.then25.i

if.then25.i:                                      ; preds = %post_sendmsg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @smb_direct_free_sendmsg(ptr noundef %t, ptr noundef %call.i.i) #10
  br label %out

do.body27.i:                                      ; preds = %post_sendmsg.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1571) #10
  %send_pending.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 43
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending.i, i32 noundef 4) #10
  %177 = ptrtoint ptr %send_pending.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %send_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp.i148 = icmp eq i32 %178, 0
  br i1 %cmp.i148, label %do.body27.i.out_crit_edge, label %if.end34.i

do.body27.i.out_crit_edge:                        ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end34.i:                                       ; preds = %do.body27.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %179 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %wait_send_pending.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 42
  %call35102.i = call i32 @prepare_to_wait_event(ptr noundef %wait_send_pending.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %call.i.i91103.i = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending.i, i32 noundef 4) #10
  %180 = ptrtoint ptr %send_pending.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %send_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp38104.i = icmp eq i32 %181, 0
  br i1 %cmp38104.i, label %if.end34.i.for.end.i_crit_edge, label %if.end34.i.cleanup.i149_crit_edge

if.end34.i.cleanup.i149_crit_edge:                ; preds = %if.end34.i
  br label %cleanup.i149

if.end34.i.for.end.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

cleanup.i149:                                     ; preds = %cleanup.i149.cleanup.i149_crit_edge, %if.end34.i.cleanup.i149_crit_edge
  call void @schedule() #10
  %call35.i = call i32 @prepare_to_wait_event(ptr noundef %wait_send_pending.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %call.i.i91.i = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending.i, i32 noundef 4) #10
  %182 = ptrtoint ptr %send_pending.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %send_pending.i, align 4
  %cmp38.i = icmp eq i32 %183, 0
  br i1 %cmp38.i, label %cleanup.i149.for.end.i_crit_edge, label %cleanup.i149.cleanup.i149_crit_edge

cleanup.i149.cleanup.i149_crit_edge:              ; preds = %cleanup.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i149

cleanup.i149.for.end.i_crit_edge:                 ; preds = %cleanup.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i149.for.end.i_crit_edge, %if.end34.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wait_send_pending.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %out

out:                                              ; preds = %for.end.i, %do.body27.i.out_crit_edge, %if.then25.i, %if.then17.i, %smb_direct_alloc_sendmsg.exit.i.out_crit_edge, %if.end70.out_crit_edge, %cleanup.i.out_crit_edge, %lor.lhs.false41.i.out_crit_edge, %if.end36.i.out_crit_edge
  %ret.0 = phi i32 [ -103, %if.end36.i.out_crit_edge ], [ -103, %lor.lhs.false41.i.out_crit_edge ], [ -103, %cleanup.i.out_crit_edge ], [ -12, %if.then17.i ], [ %call26.i.i, %if.then25.i ], [ -12, %smb_direct_alloc_sendmsg.exit.i.out_crit_edge ], [ 0, %do.body27.i.out_crit_edge ], [ 0, %for.end.i ], [ -12, %if.end70.out_crit_edge ]
  %reassembly_queue_lock = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %reassembly_queue_lock) #10
  %reassembly_queue_length = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 17
  %184 = ptrtoint ptr %reassembly_queue_length to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %reassembly_queue_length, align 4
  %dec = add i32 %185, -1
  store i32 %dec, ptr %reassembly_queue_length, align 4
  %call.i.i150 = call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #10
  br i1 %call.i.i150, label %if.end.i.i, label %out.list_del.exit_crit_edge

out.list_del.exit_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %186 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %prev.i.i, align 4
  %188 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %187, ptr %prev1.i.i.i, align 4
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %189, ptr %187, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %out.list_del.exit_crit_edge
  %192 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i = getelementptr %struct.list_head, ptr %16, i32 0, i32 1
  %193 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %reassembly_queue_lock) #10
  %cm_id.i151 = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %194 = ptrtoint ptr %cm_id.i151 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cm_id.i151, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %sge.i152 = getelementptr i8, ptr %16, i32 12
  %198 = ptrtoint ptr %sge.i152 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %sge.i152, align 8
  %length.i153 = getelementptr i8, ptr %16, i32 20
  %200 = ptrtoint ptr %length.i153 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %length.i153, align 8
  %202 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %197, align 8
  %conv.i.i = trunc i64 %199 to i32
  call void @dma_unmap_page_attrs(ptr noundef %203, i32 noundef %conv.i.i, i32 noundef %201, i32 noundef 2, i32 noundef 0) #10
  %recvmsg_queue_lock.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 25
  call void @_raw_spin_lock(ptr noundef %recvmsg_queue_lock.i) #10
  %recvmsg_queue.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 26
  %204 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %recvmsg_queue.i, align 4
  %call.i.i.i154 = call zeroext i1 @__list_add_valid(ptr noundef %16, ptr noundef %recvmsg_queue.i, ptr noundef %205) #10
  br i1 %call.i.i.i154, label %if.end.i.i.i, label %list_del.exit.put_recvmsg.exit_crit_edge

list_del.exit.put_recvmsg.exit_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_recvmsg.exit

if.end.i.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i155 = getelementptr inbounds %struct.list_head, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %prev1.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %16, ptr %prev1.i.i.i155, align 4
  %207 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %205, ptr %16, align 4
  %208 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %recvmsg_queue.i, ptr %prev.i, align 4
  %209 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile ptr %16, ptr %recvmsg_queue.i, align 4
  br label %put_recvmsg.exit

put_recvmsg.exit:                                 ; preds = %if.end.i.i.i, %list_del.exit.put_recvmsg.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %recvmsg_queue_lock.i) #10
  br label %cleanup88

cleanup88:                                        ; preds = %put_recvmsg.exit, %if.end62.cleanup88_crit_edge, %if.then60
  %retval.0 = phi i32 [ %spec.select, %if.then60 ], [ %ret.0, %put_recvmsg.exit ], [ -103, %if.end62.cleanup88_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smb_direct_disconnect(ptr noundef %t) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cm_id = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %1 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cm_id, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %2) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %status.i = getelementptr %struct.smb_direct_transport, ptr %t, i32 0, i32 1
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %if.then.i, label %do.end4.smb_direct_disconnect_rdma_work.exit_crit_edge

do.end4.smb_direct_disconnect_rdma_work.exit_crit_edge: ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb_direct_disconnect_rdma_work.exit

if.then.i:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %status.i, align 4
  %cm_id.i = getelementptr %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %6 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cm_id.i, align 4
  %call.i = tail call i32 @rdma_disconnect(ptr noundef %7) #10
  br label %smb_direct_disconnect_rdma_work.exit

smb_direct_disconnect_rdma_work.exit:             ; preds = %if.then.i, %do.end4.smb_direct_disconnect_rdma_work.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1452) #10
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %smb_direct_disconnect_rdma_work.exit.if.end23_crit_edge, label %if.then11

smb_direct_disconnect_rdma_work.exit.if.end23_crit_edge: ; preds = %smb_direct_disconnect_rdma_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then11:                                        ; preds = %smb_direct_disconnect_rdma_work.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait_status = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 3
  %call1338 = call i32 @prepare_to_wait_event(ptr noundef %wait_status, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp1539 = icmp eq i32 %12, 3
  br i1 %cmp1539, label %if.then11.for.end_crit_edge, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  br label %if.end17

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end17:                                         ; preds = %cleanup.if.end17_crit_edge, %if.then11.if.end17_crit_edge
  %call1340 = phi i32 [ %call13, %cleanup.if.end17_crit_edge ], [ %call1338, %if.then11.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1340)
  %tobool18.not = icmp eq i32 %call1340, 0
  br i1 %tobool18.not, label %cleanup, label %if.end17.__out_crit_edge

if.end17.__out_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end17
  call void @schedule() #10
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %wait_status, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status.i, align 4
  %cmp15 = icmp eq i32 %14, 3
  br i1 %cmp15, label %cleanup.for.end_crit_edge, label %cleanup.if.end17_crit_edge

cleanup.if.end17_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then11.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_status, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end17.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end23

if.end23:                                         ; preds = %__out, %smb_direct_disconnect_rdma_work.exit.if.end23_crit_edge
  call fastcc void @free_transport(ptr noundef %t)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smb_direct_shutdown(ptr nocapture noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cm_id = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %1 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cm_id, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %2) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %status.i = getelementptr %struct.smb_direct_transport, ptr %t, i32 0, i32 1
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %if.then.i, label %do.end4.smb_direct_disconnect_rdma_work.exit_crit_edge

do.end4.smb_direct_disconnect_rdma_work.exit_crit_edge: ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb_direct_disconnect_rdma_work.exit

if.then.i:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %status.i, align 4
  %cm_id.i = getelementptr %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %6 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cm_id.i, align 4
  %call.i = tail call i32 @rdma_disconnect(ptr noundef %7) #10
  br label %smb_direct_disconnect_rdma_work.exit

smb_direct_disconnect_rdma_work.exit:             ; preds = %if.then.i, %do.end4.smb_direct_disconnect_rdma_work.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb_direct_read(ptr noundef %t, ptr nocapture noundef writeonly %buf, i32 noundef %size) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 1
  %reassembly_data_length = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 16
  %wait_reassembly_queue = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 19
  br label %again

again:                                            ; preds = %if.end119.again_crit_edge, %entry
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #13
  br label %cleanup124

if.end:                                           ; preds = %again
  %2 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reassembly_data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp2.not = icmp ult i32 %3, %size
  br i1 %cmp2.not, label %do.body80, label %if.then3

if.then3:                                         ; preds = %if.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !388
  %reassembly_queue_length = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 17
  %first_entry_offset = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 18
  %4 = ptrtoint ptr %first_entry_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_entry_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp10225.not = icmp eq i32 %size, 0
  br i1 %cmp10225.not, label %if.then3.while.end_crit_edge, label %while.body.lr.ph

if.then3.while.end_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then3
  %6 = ptrtoint ptr %reassembly_queue_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reassembly_queue_length, align 4
  %reassembly_queue.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp16 = icmp eq i32 %size, 4
  %reassembly_queue_lock = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 14
  %cm_id.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 4
  %recvmsg_queue_lock.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 25
  %recvmsg_queue.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %while.body.lr.ph
  %to_read.0230 = phi i32 [ %size, %while.body.lr.ph ], [ %sub46, %if.end45.while.body_crit_edge ]
  %data_read.0229 = phi i32 [ 0, %while.body.lr.ph ], [ %add47, %if.end45.while.body_crit_edge ]
  %queue_removed.0228 = phi i32 [ 0, %while.body.lr.ph ], [ %queue_removed.1, %if.end45.while.body_crit_edge ]
  %queue_length.0227 = phi i32 [ %7, %while.body.lr.ph ], [ %queue_length.1, %if.end45.while.body_crit_edge ]
  %offset.0226 = phi i32 [ %5, %while.body.lr.ph ], [ %offset.1, %if.end45.while.body_crit_edge ]
  %8 = ptrtoint ptr %reassembly_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %reassembly_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %reassembly_queue.i
  %add.ptr.i = getelementptr i8, ptr %9, i32 -4
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  %packet.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 6
  %data_length13 = getelementptr inbounds %struct.smb_direct_data_transfer, ptr %packet.i, i32 0, i32 6
  %10 = ptrtoint ptr %data_length13 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %data_length13, align 1
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %first_segment = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 5
  %13 = ptrtoint ptr %first_segment to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %first_segment, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp ne i8 %14, 0
  %or.cond = and i1 %cmp16, %tobool.not
  br i1 %or.cond, label %if.then17, label %if.end30

if.then17:                                        ; preds = %while.body
  %first_segment.le = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 5
  %remaining_data_length14 = getelementptr inbounds %struct.smb_direct_data_transfer, ptr %packet.i, i32 0, i32 4
  %15 = ptrtoint ptr %remaining_data_length14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %remaining_data_length14, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %add = add i32 %17, %12
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %buf, align 4
  %19 = ptrtoint ptr %first_segment.le to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %first_segment.le, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %20 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.then17.cleanup124_crit_edge, label %do.end24

if.then17.cleanup124_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124

do.end24:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %add) #13
  br label %cleanup124

if.end30:                                         ; preds = %while.body
  %data_offset15 = getelementptr inbounds %struct.smb_direct_data_transfer, ptr %packet.i, i32 0, i32 5
  %21 = ptrtoint ptr %data_offset15 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %data_offset15, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %sub = sub i32 %12, %offset.0226
  %24 = call i32 @llvm.smin.i32(i32 %sub, i32 %to_read.0230)
  %add.ptr = getelementptr i8, ptr %buf, i32 %data_read.0229
  %add.ptr33 = getelementptr i8, ptr %packet.i, i32 %23
  %add.ptr34 = getelementptr i8, ptr %add.ptr33, i32 %offset.0226
  %25 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr34, i32 %24)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %to_read.0230)
  %cmp36.not = icmp sgt i32 %sub, %to_read.0230
  br i1 %cmp36.not, label %if.else43, label %if.then37

if.then37:                                        ; preds = %if.end30
  %dec = add i32 %queue_length.0227, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool38.not = icmp eq i32 %dec, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.then37
  %list = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then39.list_del.exit_crit_edge

if.then39.list_del.exit_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then39.list_del.exit_crit_edge
  %32 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end42

if.else:                                          ; preds = %if.then37
  call void @_raw_spin_lock_irq(ptr noundef %reassembly_queue_lock) #10
  %list40 = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 1
  %call.i.i201 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list40) #10
  br i1 %call.i.i201, label %if.end.i.i204, label %if.else.list_del.exit206_crit_edge

if.else.list_del.exit206_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit206

if.end.i.i204:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i202 = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i.i202 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i202, align 4
  %36 = ptrtoint ptr %list40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %list40, align 4
  %prev1.i.i.i203 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i203 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i203, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit206

list_del.exit206:                                 ; preds = %if.end.i.i204, %if.else.list_del.exit206_crit_edge
  %40 = ptrtoint ptr %list40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %list40, align 4
  %prev.i205 = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i205 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i205, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %reassembly_queue_lock) #10
  br label %if.end42

if.end42:                                         ; preds = %list_del.exit206, %list_del.exit
  %inc = add i32 %queue_removed.0228, 1
  %42 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cm_id.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %sge.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 3
  %46 = ptrtoint ptr %sge.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %sge.i, align 8
  %length.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length.i, align 8
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 8
  %conv.i.i = trunc i64 %47 to i32
  call void @dma_unmap_page_attrs(ptr noundef %51, i32 noundef %conv.i.i, i32 noundef %49, i32 noundef 2, i32 noundef 0) #10
  call void @_raw_spin_lock(ptr noundef %recvmsg_queue_lock.i) #10
  %list.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 1
  %52 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %recvmsg_queue.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %recvmsg_queue.i, ptr noundef %53) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end42.put_recvmsg.exit_crit_edge

if.end42.put_recvmsg.exit_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_recvmsg.exit

if.end.i.i.i:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i207 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i207 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %list.i, ptr %prev1.i.i.i207, align 4
  %55 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.smb_direct_recvmsg, ptr %spec.select.i, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %recvmsg_queue.i, ptr %prev3.i.i.i, align 4
  %57 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %list.i, ptr %recvmsg_queue.i, align 4
  br label %put_recvmsg.exit

put_recvmsg.exit:                                 ; preds = %if.end.i.i.i, %if.end42.put_recvmsg.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %recvmsg_queue_lock.i) #10
  br label %if.end45

if.else43:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %add44 = add i32 %24, %offset.0226
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %put_recvmsg.exit
  %offset.1 = phi i32 [ 0, %put_recvmsg.exit ], [ %add44, %if.else43 ]
  %queue_length.1 = phi i32 [ %dec, %put_recvmsg.exit ], [ %queue_length.0227, %if.else43 ]
  %queue_removed.1 = phi i32 [ %inc, %put_recvmsg.exit ], [ %queue_removed.0228, %if.else43 ]
  %sub46 = sub i32 %to_read.0230, %24
  %add47 = add i32 %24, %data_read.0229
  %cmp10 = icmp ult i32 %add47, %size
  br i1 %cmp10, label %if.end45.while.body_crit_edge, label %if.end45.while.end_crit_edge

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end45.while.end_crit_edge, %if.then3.while.end_crit_edge
  %offset.0.lcssa = phi i32 [ %5, %if.then3.while.end_crit_edge ], [ %offset.1, %if.end45.while.end_crit_edge ]
  %queue_removed.0.lcssa = phi i32 [ 0, %if.then3.while.end_crit_edge ], [ %queue_removed.1, %if.end45.while.end_crit_edge ]
  %data_read.0.lcssa = phi i32 [ 0, %if.then3.while.end_crit_edge ], [ %add47, %if.end45.while.end_crit_edge ]
  %reassembly_queue_lock48 = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %reassembly_queue_lock48) #10
  %58 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reassembly_data_length, align 4
  %sub50 = sub i32 %59, %data_read.0.lcssa
  store i32 %sub50, ptr %reassembly_data_length, align 4
  %60 = ptrtoint ptr %reassembly_queue_length to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reassembly_queue_length, align 4
  %sub52 = sub i32 %61, %queue_removed.0.lcssa
  store i32 %sub52, ptr %reassembly_queue_length, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %reassembly_queue_lock48) #10
  %receive_credit_lock = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %receive_credit_lock) #10
  %count_avail_recvmsg = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 22
  %62 = ptrtoint ptr %count_avail_recvmsg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count_avail_recvmsg, align 4
  %add54 = add i32 %63, %queue_removed.0.lcssa
  store i32 %add54, ptr %count_avail_recvmsg, align 4
  %recv_credits = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 21
  %64 = ptrtoint ptr %recv_credits to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %recv_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %65)
  %cmp.i = icmp slt i32 %65, 32
  %shr1.i = ashr i32 %65, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr1.i, i32 %add54)
  %cmp2.i = icmp sle i32 %shr1.i, %add54
  %66 = and i1 %cmp.i, %cmp2.i
  call void @_raw_spin_unlock(ptr noundef %receive_credit_lock) #10
  br i1 %66, label %if.then57, label %while.end.if.end62_crit_edge

while.end.if.end62_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then57:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %67 = load ptr, ptr @smb_direct_wq, align 4
  %post_recv_credits_work = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 44
  %call.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %post_recv_credits_work, i32 noundef 0) #10
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %while.end.if.end62_crit_edge
  %68 = ptrtoint ptr %first_entry_offset to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %offset.0.lcssa, ptr %first_entry_offset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %69 = load i32, ptr @ksmbd_debug_types, align 4
  %and65 = and i32 %69, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end62.cleanup124_crit_edge, label %do.end70

if.end62.cleanup124_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reassembly_data_length, align 4
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %data_read.0.lcssa, i32 noundef %71, i32 noundef %offset.0.lcssa) #13
  br label %cleanup124

do.body80:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %72 = load i32, ptr @ksmbd_debug_types, align 4
  %and81 = and i32 %72, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.do.end91_crit_edge, label %do.end86

do.body80.do.end91_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

do.end86:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #13
  br label %do.end91

do.end91:                                         ; preds = %do.end86, %do.body80.do.end91_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 795) #10
  %73 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %reassembly_data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %size)
  %cmp99.not = icmp ult i32 %74, %size
  br i1 %cmp99.not, label %lor.lhs.false, label %do.end91.if.end119_crit_edge

do.end91.if.end119_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

lor.lhs.false:                                    ; preds = %do.end91
  %75 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp101.not = icmp eq i32 %76, 1
  br i1 %cmp101.not, label %if.then102, label %lor.lhs.false.if.end119_crit_edge

lor.lhs.false.if.end119_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then102:                                       ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %77 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call104221 = call i32 @prepare_to_wait_event(ptr noundef %wait_reassembly_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %78 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reassembly_data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %size)
  %cmp106.not222 = icmp ult i32 %79, %size
  br i1 %cmp106.not222, label %if.then102.lor.lhs.false107_crit_edge, label %if.then102.for.end_crit_edge

if.then102.for.end_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then102.lor.lhs.false107_crit_edge:            ; preds = %if.then102
  br label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %cleanup115.lor.lhs.false107_crit_edge, %if.then102.lor.lhs.false107_crit_edge
  %call104223 = phi i32 [ %call104, %cleanup115.lor.lhs.false107_crit_edge ], [ %call104221, %if.then102.lor.lhs.false107_crit_edge ]
  %80 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp109.not = icmp eq i32 %81, 1
  br i1 %cmp109.not, label %if.end111, label %lor.lhs.false107.for.end_crit_edge

lor.lhs.false107.for.end_crit_edge:               ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end111:                                        ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104223)
  %tobool112.not = icmp eq i32 %call104223, 0
  br i1 %tobool112.not, label %cleanup115, label %if.end111.__out_crit_edge

if.end111.__out_crit_edge:                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup115:                                       ; preds = %if.end111
  call void @schedule() #10
  %call104 = call i32 @prepare_to_wait_event(ptr noundef %wait_reassembly_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %82 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %reassembly_data_length, align 4
  %cmp106.not = icmp ult i32 %83, %size
  br i1 %cmp106.not, label %cleanup115.lor.lhs.false107_crit_edge, label %cleanup115.for.end_crit_edge

cleanup115.for.end_crit_edge:                     ; preds = %cleanup115
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup115.lor.lhs.false107_crit_edge:            ; preds = %cleanup115
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false107

for.end:                                          ; preds = %cleanup115.for.end_crit_edge, %lor.lhs.false107.for.end_crit_edge, %if.then102.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_reassembly_queue, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end111.__out_crit_edge
  %__ret103.1210 = phi i32 [ 0, %for.end ], [ %call104223, %if.end111.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end119

if.end119:                                        ; preds = %__out, %lor.lhs.false.if.end119_crit_edge, %do.end91.if.end119_crit_edge
  %__ret.0 = phi i32 [ 0, %do.end91.if.end119_crit_edge ], [ 0, %lor.lhs.false.if.end119_crit_edge ], [ %__ret103.1210, %__out ]
  %tobool121.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool121.not, label %if.end119.again_crit_edge, label %if.end119.cleanup124_crit_edge

if.end119.cleanup124_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124

if.end119.again_crit_edge:                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %again

cleanup124:                                       ; preds = %if.end119.cleanup124_crit_edge, %do.end70, %if.end62.cleanup124_crit_edge, %do.end24, %if.then17.cleanup124_crit_edge, %do.end
  %retval.1 = phi i32 [ -107, %do.end ], [ %data_read.0.lcssa, %do.end70 ], [ %data_read.0.lcssa, %if.end62.cleanup124_crit_edge ], [ 4, %do.end24 ], [ 4, %if.then17.cleanup124_crit_edge ], [ -4, %if.end119.cleanup124_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb_direct_writev(ptr noundef %t, ptr nocapture noundef %iov, i32 noundef %niovs, i32 noundef %buflen, i1 noundef zeroext %need_invalidate, i32 noundef %remote_key) #0 align 64 {
entry:
  %vec = alloca %struct.kvec, align 4
  %send_ctx = alloca %struct.smb_direct_send_ctx, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_send_size = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 9
  %0 = ptrtoint ptr %max_send_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_send_size, align 4
  %sub = add i32 %1, -24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec) #10
  %2 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %send_ctx) #10
  %3 = getelementptr inbounds i8, ptr %send_ctx, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %status = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup90_crit_edge

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

if.end:                                           ; preds = %entry
  %sub1 = add i32 %buflen, -4
  %7 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iov, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4
  store ptr %add.ptr, ptr %iov, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %9 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iov_len, align 4
  %sub3 = add i32 %10, -4
  store i32 %sub3, ptr %iov_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %11 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end9_crit_edge, label %do.end

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %sub1) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.end.do.end9_crit_edge
  %frombool.i = zext i1 %need_invalidate to i8
  %12 = ptrtoint ptr %send_ctx to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %send_ctx, ptr %send_ctx, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %send_ctx, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %send_ctx, ptr %prev.i.i, align 4
  %wr_cnt.i = getelementptr inbounds %struct.smb_direct_send_ctx, ptr %send_ctx, i32 0, i32 1
  %14 = ptrtoint ptr %wr_cnt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wr_cnt.i, align 4
  %need_invalidate_rkey1.i = getelementptr inbounds %struct.smb_direct_send_ctx, ptr %send_ctx, i32 0, i32 2
  %15 = ptrtoint ptr %need_invalidate_rkey1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %need_invalidate_rkey1.i, align 4
  %remote_key3.i = getelementptr inbounds %struct.smb_direct_send_ctx, ptr %send_ctx, i32 0, i32 3
  %16 = ptrtoint ptr %remote_key3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %remote_key, ptr %remote_key3.i, align 4
  %add27 = add i32 %1, -25
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %do.end9
  %i.0.ph = phi i32 [ 0, %do.end9 ], [ %i.0.ph.be, %while.cond.outer.backedge ]
  %remaining_data_length.0.ph = phi i32 [ %sub1, %do.end9 ], [ %remaining_data_length.0.ph.be, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %if.else50.while.cond_crit_edge, %while.cond.outer
  %i.0 = phi i32 [ %inc51, %if.else50.while.cond_crit_edge ], [ %i.0.ph, %while.cond.outer ]
  %buflen.addr.0 = phi i32 [ %add, %if.else50.while.cond_crit_edge ], [ 0, %while.cond.outer ]
  %iov_len12 = getelementptr %struct.kvec, ptr %iov, i32 %i.0, i32 1
  %17 = ptrtoint ptr %iov_len12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iov_len12, align 4
  %add = add i32 %18, %buflen.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp13 = icmp sgt i32 %add, %sub
  br i1 %cmp13, label %if.then14, label %if.else50

if.then14:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %i.0.ph)
  %cmp15 = icmp sgt i32 %i.0, %i.0.ph
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then14
  %sub20 = sub i32 %remaining_data_length.0.ph, %buflen.addr.0
  %arrayidx21 = getelementptr %struct.kvec, ptr %iov, i32 %i.0.ph
  %sub22 = sub i32 %i.0, %i.0.ph
  %call23 = call fastcc i32 @smb_direct_post_send_data(ptr noundef %t, ptr noundef nonnull %send_ctx, ptr noundef %arrayidx21, i32 noundef %sub22, i32 noundef %sub20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then16.while.cond.outer.backedge_crit_edge, label %if.then16.done_crit_edge

if.then16.done_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then16.while.cond.outer.backedge_crit_edge:    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %for.end.while.cond.outer.backedge_crit_edge, %if.then16.while.cond.outer.backedge_crit_edge
  %i.0.ph.be = phi i32 [ %inc45, %for.end.while.cond.outer.backedge_crit_edge ], [ %i.0, %if.then16.while.cond.outer.backedge_crit_edge ]
  %remaining_data_length.0.ph.be = phi i32 [ %remaining_data_length.1.lcssa, %for.end.while.cond.outer.backedge_crit_edge ], [ %sub20, %if.then16.while.cond.outer.backedge_crit_edge ]
  br label %while.cond.outer

if.else:                                          ; preds = %if.then14
  %sub28 = add i32 %add27, %add
  %div = sdiv i32 %sub28, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp29170 = icmp sgt i32 %div, 0
  br i1 %cmp29170, label %for.body.lr.ph, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %arrayidx30 = getelementptr %struct.kvec, ptr %iov, i32 %i.0.ph
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %j.0171, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %remaining_data_length.1172 = phi i32 [ %remaining_data_length.0.ph, %for.body.lr.ph ], [ %sub40, %for.cond.for.body_crit_edge ]
  %j.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx30, align 4
  %mul = mul i32 %j.0171, %sub
  %add.ptr32 = getelementptr i8, ptr %20, i32 %mul
  %21 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr32, ptr %vec, align 4
  %sub35 = sub i32 %add, %mul
  %22 = call i32 @llvm.smin.i32(i32 %sub, i32 %sub35)
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %2, align 4
  %sub40 = sub i32 %remaining_data_length.1172, %22
  %call41 = call fastcc i32 @smb_direct_post_send_data(ptr noundef %t, ptr noundef nonnull %send_ctx, ptr noundef nonnull %vec, i32 noundef 1, i32 noundef %sub40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.cond, label %for.body.done_crit_edge

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.else.for.end_crit_edge
  %remaining_data_length.1.lcssa = phi i32 [ %remaining_data_length.0.ph, %if.else.for.end_crit_edge ], [ %sub40, %for.cond.for.end_crit_edge ]
  %inc45 = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc45, i32 %niovs)
  %cmp46 = icmp eq i32 %inc45, %niovs
  br i1 %cmp46, label %for.end.done_crit_edge, label %for.end.while.cond.outer.backedge_crit_edge

for.end.while.cond.outer.backedge_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.else50:                                        ; preds = %while.cond
  %inc51 = add i32 %i.0, 1
  %cmp52 = icmp eq i32 %inc51, %niovs
  br i1 %cmp52, label %if.then53, label %if.else50.while.cond_crit_edge

if.else50.while.cond_crit_edge:                   ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then53:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  %sub54 = sub i32 %remaining_data_length.0.ph, %add
  %arrayidx55 = getelementptr %struct.kvec, ptr %iov, i32 %i.0.ph
  %sub56 = sub i32 %niovs, %i.0.ph
  %call57 = call fastcc i32 @smb_direct_post_send_data(ptr noundef %t, ptr noundef nonnull %send_ctx, ptr noundef %arrayidx55, i32 noundef %sub56, i32 noundef %sub54)
  br label %done

done:                                             ; preds = %if.then53, %for.end.done_crit_edge, %for.body.done_crit_edge, %if.then16.done_crit_edge
  %call63 = call fastcc i32 @smb_direct_flush_send_list(ptr noundef %t, ptr noundef nonnull %send_ctx, i1 noundef zeroext true)
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1317) #10
  %send_payload_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 41
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %send_payload_pending, i32 noundef 4) #10
  %24 = ptrtoint ptr %send_payload_pending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %send_payload_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp72 = icmp eq i32 %25, 0
  br i1 %cmp72, label %done.cleanup90_crit_edge, label %if.end74

done.cleanup90_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

if.end74:                                         ; preds = %done
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %26 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait_send_payload_pending = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 40
  %call76173 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_payload_pending, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i156174 = call zeroext i1 @__kasan_check_read(ptr noundef %send_payload_pending, i32 noundef 4) #10
  %27 = ptrtoint ptr %send_payload_pending to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %send_payload_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp79175 = icmp eq i32 %28, 0
  br i1 %cmp79175, label %if.end74.for.end85_crit_edge, label %if.end74.cleanup82_crit_edge

if.end74.cleanup82_crit_edge:                     ; preds = %if.end74
  br label %cleanup82

if.end74.for.end85_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end85

cleanup82:                                        ; preds = %cleanup82.cleanup82_crit_edge, %if.end74.cleanup82_crit_edge
  call void @schedule() #10
  %call76 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_payload_pending, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i156 = call zeroext i1 @__kasan_check_read(ptr noundef %send_payload_pending, i32 noundef 4) #10
  %29 = ptrtoint ptr %send_payload_pending to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %send_payload_pending, align 4
  %cmp79 = icmp eq i32 %30, 0
  br i1 %cmp79, label %cleanup82.for.end85_crit_edge, label %cleanup82.cleanup82_crit_edge

cleanup82.cleanup82_crit_edge:                    ; preds = %cleanup82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup82

cleanup82.for.end85_crit_edge:                    ; preds = %cleanup82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end85

for.end85:                                        ; preds = %cleanup82.for.end85_crit_edge, %if.end74.for.end85_crit_edge
  call void @finish_wait(ptr noundef %wait_send_payload_pending, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup90

cleanup90:                                        ; preds = %for.end85, %done.cleanup90_crit_edge, %entry.cleanup90_crit_edge
  %retval.0 = phi i32 [ -107, %entry.cleanup90_crit_edge ], [ %call63, %done.cleanup90_crit_edge ], [ %call63, %for.end85 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %send_ctx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb_direct_rdma_read(ptr noundef %t, ptr noundef %buf, i32 noundef %buflen, i32 noundef %remote_key, i64 noundef %remote_offset, i32 noundef %remote_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @smb_direct_rdma_xmit(ptr noundef %t, ptr noundef %buf, i32 noundef %buflen, i32 noundef %remote_key, i64 noundef %remote_offset, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb_direct_rdma_write(ptr noundef %t, ptr noundef %buf, i32 noundef %buflen, i32 noundef %remote_key, i64 noundef %remote_offset, i32 noundef %remote_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @smb_direct_rdma_xmit(ptr noundef %t, ptr noundef %buf, i32 noundef %buflen, i32 noundef %remote_key, i64 noundef %remote_offset, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb_direct_rdma_xmit(ptr noundef %t, ptr noundef %buf, i32 noundef %buf_len, i32 noundef %remote_key, i64 noundef %remote_offset, i1 noundef zeroext %is_read) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #10
  %0 = getelementptr inbounds i8, ptr %completion, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @init_completion.__key) #10
  %wait_rw_avail_ops = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 35
  %rw_avail_ops = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 33
  %call = call fastcc i32 @wait_for_credits(ptr noundef %t, ptr noundef %wait_rw_avail_ops, ptr noundef %rw_avail_ops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 2668) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %rw_avail_ops, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %rw_avail_ops, i32 1, i32 3, i32 1) #10
  %4 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_avail_ops, ptr %rw_avail_ops, i32 1, ptr elementtype(i32) %rw_avail_ops) #10, !srcloc !382
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sg_list = getelementptr inbounds %struct.smb_direct_rdma_rw_msg, ptr %call7.i, i32 0, i32 5
  %sgt = getelementptr inbounds %struct.smb_direct_rdma_rw_msg, ptr %call7.i, i32 0, i32 4
  %5 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sg_list, ptr %sgt, align 8
  %6 = ptrtoint ptr %buf to i32
  %add.i = add i32 %buf_len, 4095
  %sub.i = add i32 %add.i, %6
  %div5.i = lshr i32 %sub.i, 12
  %div26.i = lshr i32 %6, 12
  %sub3.i = sub nsw i32 %div5.i, %div26.i
  %call8 = call i32 @sg_alloc_table_chained(ptr noundef %sgt, i32 noundef %sub3.i, ptr noundef %sg_list, i32 noundef 128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i1 = call zeroext i1 @__kasan_check_write(ptr noundef %rw_avail_ops, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %rw_avail_ops, i32 1, i32 3, i32 1) #10
  %7 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_avail_ops, ptr %rw_avail_ops, i32 1, ptr elementtype(i32) %rw_avail_ops) #10, !srcloc !382
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 8
  %orig_nents = getelementptr inbounds %struct.smb_direct_rdma_rw_msg, ptr %call7.i, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig_nents, align 8
  %call16 = call fastcc i32 @get_sg_list(ptr noundef %buf, i32 noundef %buf_len, ptr noundef %9, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #13
  br label %err

if.end21:                                         ; preds = %if.end12
  %rw_ctx = getelementptr inbounds %struct.smb_direct_rdma_rw_msg, ptr %call7.i, i32 0, i32 3
  %qp = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 8
  %12 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp, align 4
  %port = getelementptr inbounds %struct.ib_qp, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %cond = select i1 %is_read, i32 2, i32 1
  %call27 = call i32 @rdma_rw_ctx_init(ptr noundef %rw_ctx, ptr noundef %13, i32 noundef %15, ptr noundef %sg_list, i32 noundef %sub3.i, i32 noundef 0, i64 noundef %remote_offset, i32 noundef %remote_key, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %call27) #13
  br label %err

if.end35:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %t, ptr %call7.i, align 8
  %cond38 = select i1 %is_read, ptr @read_done, ptr @write_done
  %cqe = getelementptr inbounds %struct.smb_direct_rdma_rw_msg, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond38, ptr %cqe, align 4
  %completion39 = getelementptr inbounds %struct.smb_direct_rdma_rw_msg, ptr %call7.i, i32 0, i32 2
  %18 = ptrtoint ptr %completion39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %completion, ptr %completion39, align 8
  %19 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp, align 4
  %port43 = getelementptr inbounds %struct.ib_qp, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %port43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port43, align 4
  %call45 = call ptr @rdma_rw_ctx_wrs(ptr noundef %rw_ctx, ptr noundef %20, i32 noundef %22, ptr noundef %cqe, ptr noundef null) #10
  %23 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #10
  %25 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !379
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %24, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %27, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %29(ptr noundef %24, ptr noundef %call45, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool48.not = icmp eq i32 %call.i, 0
  br i1 %tobool48.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %call.i) #13
  %phi.cmp = icmp eq ptr %call45, null
  br label %err

if.end55:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  call void @wait_for_completion(ptr noundef nonnull %completion) #10
  br label %cleanup

err:                                              ; preds = %do.end52, %do.end32, %do.end
  %first_wr.0 = phi i1 [ true, %do.end ], [ true, %do.end32 ], [ %phi.cmp, %do.end52 ]
  %ret.0 = phi i32 [ %call16, %do.end ], [ %call27, %do.end32 ], [ %call.i, %do.end52 ]
  %call.i.i2 = call zeroext i1 @__kasan_check_write(ptr noundef %rw_avail_ops, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %rw_avail_ops, i32 1, i32 3, i32 1) #10
  %30 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_avail_ops, ptr %rw_avail_ops, i32 1, ptr elementtype(i32) %rw_avail_ops) #10, !srcloc !382
  br i1 %first_wr.0, label %err.if.end68_crit_edge, label %if.then58

err.if.end68_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then58:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  %rw_ctx59 = getelementptr inbounds %struct.smb_direct_rdma_rw_msg, ptr %call7.i, i32 0, i32 3
  %qp60 = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 8
  %31 = ptrtoint ptr %qp60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qp60, align 4
  %port62 = getelementptr inbounds %struct.ib_qp, ptr %32, i32 0, i32 25
  %33 = ptrtoint ptr %port62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port62, align 4
  %nents = getelementptr inbounds %struct.smb_direct_rdma_rw_msg, ptr %call7.i, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nents, align 4
  %cond67 = select i1 %is_read, i32 2, i32 1
  call void @rdma_rw_ctx_destroy(ptr noundef %rw_ctx59, ptr noundef %32, i32 noundef %34, ptr noundef %sg_list, i32 noundef %36, i32 noundef %cond67) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then58, %err.if.end68_crit_edge
  call void @sg_free_table_chained(ptr noundef %sgt, i32 noundef 128) #10
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end55, %if.then10, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then10 ], [ %ret.0, %if.end68 ], [ 0, %if.end55 ], [ -12, %if.then2 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_chained(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_ctx_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @read_write_done(ptr noundef %wc, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @read_write_done(ptr noundef %wc, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_rw_ctx_wrs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_rw_ctx_destroy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table_chained(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_write_done(ptr nocapture noundef readonly %wc, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %6 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opcode, align 4
  %call = tail call ptr @ib_wc_status_msg(i32 noundef %5) #15
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %7, ptr noundef %call, i32 noundef %5) #13
  %status.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = load ptr, ptr @smb_direct_wq, align 4
  %disconnect_work.i = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 46
  %call.i.i1 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %disconnect_work.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %do.end.if.end_crit_edge, %entry.if.end_crit_edge
  %rw_avail_ops = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rw_avail_ops, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !389
  tail call void @llvm.prefetch.p0(ptr %rw_avail_ops, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_avail_ops, ptr %rw_avail_ops, i32 1, ptr elementtype(i32) %rw_avail_ops) #10, !srcloc !390
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp7 = icmp sgt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp7, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wait_rw_avail_ops = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 35
  tail call void @__wake_up(ptr noundef %wait_rw_avail_ops, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %rw_ctx = getelementptr i8, ptr %1, i32 12
  %qp = getelementptr inbounds %struct.smb_direct_transport, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp, align 4
  %port = getelementptr inbounds %struct.ib_qp, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %sg_list = getelementptr i8, ptr %1, i32 104
  %sgt = getelementptr i8, ptr %1, i32 92
  %nents = getelementptr i8, ptr %1, i32 96
  %16 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nents, align 4
  tail call void @rdma_rw_ctx_destroy(ptr noundef %rw_ctx, ptr noundef %13, i32 noundef %15, ptr noundef %sg_list, i32 noundef %17, i32 noundef %dir) #10
  tail call void @sg_free_table_chained(ptr noundef %sgt, i32 noundef 128) #10
  %completion = getelementptr i8, ptr %1, i32 4
  %18 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %completion, align 8
  tail call void @complete(ptr noundef %19) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_mr_factor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smb_direct_destroy_pools(ptr noundef %t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %recvmsg_queue_lock.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 25
  %recvmsg_queue.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 26
  %recvmsg_mempool = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %recvmsg_queue_lock.i) #10
  %0 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %recvmsg_queue.i, align 4
  %cmp.i.not.i40 = icmp eq ptr %1, %recvmsg_queue.i
  br i1 %cmp.i.not.i40, label %entry.get_free_recvmsg.exit.thread_crit_edge, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  br label %if.then.i

entry.get_free_recvmsg.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_free_recvmsg.exit.thread

get_free_recvmsg.exit.thread:                     ; preds = %while.body.get_free_recvmsg.exit.thread_crit_edge, %entry.get_free_recvmsg.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %recvmsg_queue_lock.i) #10
  br label %while.cond1.preheader

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %2 = phi ptr [ %16, %while.body.if.then.i_crit_edge ], [ %1, %entry.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.get_free_recvmsg.exit_crit_edge

if.then.i.get_free_recvmsg.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_free_recvmsg.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %get_free_recvmsg.exit

get_free_recvmsg.exit:                            ; preds = %if.end.i.i.i, %if.then.i.get_free_recvmsg.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %recvmsg_queue_lock.i) #10
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %get_free_recvmsg.exit.while.cond1.preheader_crit_edge, label %while.body

get_free_recvmsg.exit.while.cond1.preheader_crit_edge: ; preds = %get_free_recvmsg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %get_free_recvmsg.exit.while.cond1.preheader_crit_edge, %get_free_recvmsg.exit.thread
  %empty_recvmsg_queue_lock.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %empty_recvmsg_queue_lock.i) #10
  %empty_recvmsg_queue.i = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 28
  %11 = ptrtoint ptr %empty_recvmsg_queue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %empty_recvmsg_queue.i, align 4
  %cmp.i.not.i2437 = icmp eq ptr %12, %empty_recvmsg_queue.i
  br i1 %cmp.i.not.i2437, label %while.cond1.preheader.get_empty_recvmsg.exit.thread_crit_edge, label %while.cond1.preheader.if.then.i27_crit_edge

while.cond1.preheader.if.then.i27_crit_edge:      ; preds = %while.cond1.preheader
  br label %if.then.i27

while.cond1.preheader.get_empty_recvmsg.exit.thread_crit_edge: ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_empty_recvmsg.exit.thread

while.body:                                       ; preds = %get_free_recvmsg.exit
  %13 = ptrtoint ptr %recvmsg_mempool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %recvmsg_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %add.ptr.i, ptr noundef %14) #10
  tail call void @_raw_spin_lock(ptr noundef %recvmsg_queue_lock.i) #10
  %15 = ptrtoint ptr %recvmsg_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %recvmsg_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %recvmsg_queue.i
  br i1 %cmp.i.not.i, label %while.body.get_free_recvmsg.exit.thread_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

while.body.get_free_recvmsg.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_free_recvmsg.exit.thread

get_empty_recvmsg.exit.thread:                    ; preds = %while.body4.get_empty_recvmsg.exit.thread_crit_edge, %while.cond1.preheader.get_empty_recvmsg.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %empty_recvmsg_queue_lock.i) #10
  br label %while.end6

if.then.i27:                                      ; preds = %while.body4.if.then.i27_crit_edge, %while.cond1.preheader.if.then.i27_crit_edge
  %17 = phi ptr [ %29, %while.body4.if.then.i27_crit_edge ], [ %12, %while.cond1.preheader.if.then.i27_crit_edge ]
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 -4
  %call.i.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #10
  br i1 %call.i.i.i26, label %if.end.i.i.i30, label %if.then.i27.get_empty_recvmsg.exit_crit_edge

if.then.i27.get_empty_recvmsg.exit_crit_edge:     ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_empty_recvmsg.exit

if.end.i.i.i30:                                   ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i28, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i29, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %get_empty_recvmsg.exit

get_empty_recvmsg.exit:                           ; preds = %if.end.i.i.i30, %if.then.i27.get_empty_recvmsg.exit_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i.i31 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i31, align 4
  tail call void @_raw_spin_unlock(ptr noundef %empty_recvmsg_queue_lock.i) #10
  %tobool3.not = icmp eq ptr %add.ptr.i25, null
  br i1 %tobool3.not, label %get_empty_recvmsg.exit.while.end6_crit_edge, label %while.body4

get_empty_recvmsg.exit.while.end6_crit_edge:      ; preds = %get_empty_recvmsg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end6

while.body4:                                      ; preds = %get_empty_recvmsg.exit
  %26 = ptrtoint ptr %recvmsg_mempool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %recvmsg_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %add.ptr.i25, ptr noundef %27) #10
  tail call void @_raw_spin_lock(ptr noundef %empty_recvmsg_queue_lock.i) #10
  %28 = ptrtoint ptr %empty_recvmsg_queue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %empty_recvmsg_queue.i, align 4
  %cmp.i.not.i24 = icmp eq ptr %29, %empty_recvmsg_queue.i
  br i1 %cmp.i.not.i24, label %while.body4.get_empty_recvmsg.exit.thread_crit_edge, label %while.body4.if.then.i27_crit_edge

while.body4.if.then.i27_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i27

while.body4.get_empty_recvmsg.exit.thread_crit_edge: ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_empty_recvmsg.exit.thread

while.end6:                                       ; preds = %get_empty_recvmsg.exit.while.end6_crit_edge, %get_empty_recvmsg.exit.thread
  %30 = ptrtoint ptr %recvmsg_mempool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %recvmsg_mempool, align 4
  tail call void @mempool_destroy(ptr noundef %31) #10
  %32 = ptrtoint ptr %recvmsg_mempool to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %recvmsg_mempool, align 4
  %recvmsg_cache = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 39
  %33 = ptrtoint ptr %recvmsg_cache to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %recvmsg_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %34) #10
  %35 = ptrtoint ptr %recvmsg_cache to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %recvmsg_cache, align 4
  %sendmsg_mempool = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 36
  %36 = ptrtoint ptr %sendmsg_mempool to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sendmsg_mempool, align 4
  tail call void @mempool_destroy(ptr noundef %37) #10
  %38 = ptrtoint ptr %sendmsg_mempool to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %sendmsg_mempool, align 4
  %sendmsg_cache = getelementptr inbounds %struct.smb_direct_transport, ptr %t, i32 0, i32 37
  %39 = ptrtoint ptr %sendmsg_cache to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sendmsg_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %40) #10
  %41 = ptrtoint ptr %sendmsg_cache to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %sendmsg_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smb_direct_qpair_handler(ptr nocapture noundef readonly %event, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cm_id = getelementptr inbounds %struct.smb_direct_transport, ptr %context, i32 0, i32 4
  %1 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cm_id, align 4
  %event2 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %3 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event2, align 4
  %call = tail call ptr @ib_event_msg(i32 noundef %4) #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef %2, ptr noundef %call, i32 noundef %4) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %event7 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %5 = ptrtoint ptr %event7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %sw.bb, label %do.end6.sw.epilog_crit_edge

do.end6.sw.epilog_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end6
  %status.i = getelementptr inbounds %struct.smb_direct_transport, ptr %context, i32 0, i32 1
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %9 = load ptr, ptr @smb_direct_wq, align 4
  %disconnect_work.i = getelementptr inbounds %struct.smb_direct_transport, ptr %context, i32 0, i32 46
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %disconnect_work.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb.sw.epilog_crit_edge, %do.end6.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb_direct_cm_handler(ptr noundef %cm_id, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %2 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event, align 8
  %call = tail call ptr @rdma_event_msg(i32 noundef %4) #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %cm_id, ptr noundef %call, i32 noundef %4) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %6, label %do.end16 [
    i32 9, label %sw.bb
    i32 11, label %do.end6.sw.bb8_crit_edge
    i32 10, label %do.end6.sw.bb8_crit_edge35
    i32 6, label %sw.bb11
  ]

do.end6.sw.bb8_crit_edge35:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

do.end6.sw.bb8_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

sw.bb:                                            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.smb_direct_transport, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %status, align 4
  %wait_status = getelementptr inbounds %struct.smb_direct_transport, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_status, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end6.sw.bb8_crit_edge, %do.end6.sw.bb8_crit_edge35
  %status9 = getelementptr inbounds %struct.smb_direct_transport, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %status9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %status9, align 4
  %wait_status10 = getelementptr inbounds %struct.smb_direct_transport, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_status10, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %wait_reassembly_queue = getelementptr inbounds %struct.smb_direct_transport, ptr %1, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %wait_reassembly_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %wait_send_credits = getelementptr inbounds %struct.smb_direct_transport, ptr %1, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wait_send_credits, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  %status12 = getelementptr inbounds %struct.smb_direct_transport, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %status12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %status12, align 4
  %wait_status13 = getelementptr inbounds %struct.smb_direct_transport, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_status13, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %sw.epilog

do.end16:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call ptr @rdma_event_msg(i32 noundef %6) #15
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %cm_id, ptr noundef %call19, i32 noundef %6) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %sw.bb11, %sw.bb8, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_mr_pool_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_cq(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_event_msg(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_cq_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_accept(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_drain_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_mr_pool_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_cq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_conn_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 197)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 197)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !229, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !349, !351, !352, !353, !354, !356, !357, !358, !360, !362, !363}
!llvm.named.register.sp = !{!365}
!llvm.module.flags = !{!366, !367, !368, !369, !370, !371, !372, !373}
!llvm.ident = !{!374}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/transport_rdma.c", i32 2126, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ksmbd_rdma_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ksmbd_rdma_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/transport_rdma.c", i32 2135, i32 34}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ksmbd/transport_rdma.c", i32 2144, i32 3}
!10 = !{ptr @ksmbd_rdma_init._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ksmbd_rdma_init._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ksmbd/transport_rdma.c", i32 2148, i32 2}
!14 = !{ptr @ksmbd_rdma_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ksmbd_rdma_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @smb_direct_listener, !17, !"smb_direct_listener", i1 false, i1 false}
!17 = !{!"../fs/ksmbd/transport_rdma.c", i32 97, i32 3}
!18 = !{ptr @smb_direct_wq, !19, !"smb_direct_wq", i1 false, i1 false}
!19 = !{!"../fs/ksmbd/transport_rdma.c", i32 99, i32 33}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ksmbd/transport_rdma.c", i32 2113, i32 10}
!22 = !{ptr @smb_direct_ib_client, !23, !"smb_direct_ib_client", i1 false, i1 false}
!23 = !{!"../fs/ksmbd/transport_rdma.c", i32 2112, i32 25}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ksmbd/transport_rdma.c", i32 2092, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @smb_direct_ib_client_add._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @smb_direct_ib_client_add._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ksmbd/transport_rdma.c", i32 2044, i32 10}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ksmbd/transport_rdma.c", i32 2047, i32 3}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @smb_direct_listen._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @smb_direct_listen._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ksmbd/transport_rdma.c", i32 2053, i32 3}
!38 = !{ptr @smb_direct_listen._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @smb_direct_listen._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @smb_direct_listen._entry.19, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../fs/ksmbd/transport_rdma.c", i32 2061, i32 3}
!42 = !{ptr @smb_direct_listen._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ksmbd/transport_rdma.c", i32 2018, i32 4}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @smb_direct_listen_handler._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @smb_direct_listen_handler._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ksmbd/transport_rdma.c", i32 2022, i32 3}
!50 = !{ptr @smb_direct_listen_handler._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @smb_direct_listen_handler._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ksmbd/transport_rdma.c", i32 2027, i32 3}
!54 = !{ptr @smb_direct_listen_handler._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @smb_direct_listen_handler._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ksmbd/transport_rdma.c", i32 1981, i32 3}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @smb_direct_handle_connect_request._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @smb_direct_handle_connect_request._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ksmbd/transport_rdma.c", i32 1995, i32 28}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ksmbd/transport_rdma.c", i32 2000, i32 3}
!65 = !{ptr @smb_direct_handle_connect_request._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @smb_direct_handle_connect_request._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @alloc_transport.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../fs/ksmbd/transport_rdma.c", i32 372, i32 2}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @alloc_transport.__key.36, !71, !"__key", i1 false, i1 false}
!71 = !{!"../fs/ksmbd/transport_rdma.c", i32 374, i32 2}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @alloc_transport.__key.38, !74, !"__key", i1 false, i1 false}
!74 = !{!"../fs/ksmbd/transport_rdma.c", i32 378, i32 2}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @alloc_transport.__key.40, !77, !"__key", i1 false, i1 false}
!77 = !{!"../fs/ksmbd/transport_rdma.c", i32 379, i32 2}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @alloc_transport.__key.42, !80, !"__key", i1 false, i1 false}
!80 = !{!"../fs/ksmbd/transport_rdma.c", i32 380, i32 2}
!81 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @alloc_transport.__key.44, !83, !"__key", i1 false, i1 false}
!83 = !{!"../fs/ksmbd/transport_rdma.c", i32 382, i32 2}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @alloc_transport.__key.46, !86, !"__key", i1 false, i1 false}
!86 = !{!"../fs/ksmbd/transport_rdma.c", i32 383, i32 2}
!87 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @alloc_transport.__key.48, !89, !"__key", i1 false, i1 false}
!89 = !{!"../fs/ksmbd/transport_rdma.c", i32 386, i32 2}
!90 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @alloc_transport.__key.50, !92, !"__key", i1 false, i1 false}
!92 = !{!"../fs/ksmbd/transport_rdma.c", i32 389, i32 2}
!93 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @alloc_transport.__key.52, !95, !"__key", i1 false, i1 false}
!95 = !{!"../fs/ksmbd/transport_rdma.c", i32 391, i32 2}
!96 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @alloc_transport.__key.54, !98, !"__key", i1 false, i1 false}
!98 = !{!"../fs/ksmbd/transport_rdma.c", i32 394, i32 2}
!99 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @alloc_transport.__key.56, !101, !"__key", i1 false, i1 false}
!101 = !{!"../fs/ksmbd/transport_rdma.c", i32 396, i32 2}
!102 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @alloc_transport.__key.58, !101, !"__key", i1 false, i1 false}
!104 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @alloc_transport.__key.60, !106, !"__key", i1 false, i1 false}
!106 = !{!"../fs/ksmbd/transport_rdma.c", i32 398, i32 2}
!107 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @alloc_transport.__key.62, !109, !"__key", i1 false, i1 false}
!109 = !{!"../fs/ksmbd/transport_rdma.c", i32 399, i32 2}
!110 = !{ptr @.str.63, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ksmbd/transport_rdma.c", i32 835, i32 5}
!113 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @smb_direct_post_recv_credits._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @smb_direct_post_recv_credits._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ksmbd/transport_rdma.c", i32 664, i32 3}
!118 = !{ptr @smb_direct_post_recv._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @smb_direct_post_recv._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!122 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ksmbd/transport_rdma.c", i32 548, i32 4}
!126 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @recv_done._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @recv_done._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ksmbd/transport_rdma.c", i32 557, i32 2}
!131 = !{ptr @recv_done._entry.71, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @recv_done._entry_ptr.73, !130, !"_entry_ptr", i1 false, i1 false}
!133 = distinct !{null, !134, !"smb_direct_receive_credit_max", i1 false, i1 false}
!134 = !{!"../fs/ksmbd/transport_rdma.c", i32 69, i32 12}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ksmbd/transport_rdma.c", i32 1199, i32 4}
!137 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @smb_direct_post_send_data._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @smb_direct_post_send_data._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ksmbd/transport_rdma.c", i32 1203, i32 4}
!142 = !{ptr @smb_direct_post_send_data._entry.76, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @smb_direct_post_send_data._entry_ptr.78, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ksmbd/transport_rdma.c", i32 921, i32 3}
!146 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @smb_direct_post_send._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @smb_direct_post_send._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ksmbd/transport_rdma.c", i32 1049, i32 2}
!151 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @smb_direct_create_header._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @smb_direct_create_header._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ksmbd/transport_rdma.c", i32 865, i32 2}
!156 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @send_done._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @send_done._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ksmbd/transport_rdma.c", i32 870, i32 3}
!161 = !{ptr @send_done._entry.85, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @send_done._entry_ptr.87, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @ksmbd_smb_direct_transport_ops, !164, !"ksmbd_smb_direct_transport_ops", i1 false, i1 false}
!164 = !{!"../fs/ksmbd/transport_rdma.c", i32 2210, i32 35}
!165 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ksmbd/transport_rdma.c", i32 1898, i32 2}
!167 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @smb_direct_prepare._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @smb_direct_prepare._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ksmbd/transport_rdma.c", i32 502, i32 3}
!172 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @smb_direct_check_recvmsg._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @smb_direct_check_recvmsg._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ksmbd/transport_rdma.c", i32 513, i32 3}
!177 = !{ptr @smb_direct_check_recvmsg._entry.92, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @smb_direct_check_recvmsg._entry_ptr.94, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.95, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/ksmbd/transport_rdma.c", i32 1448, i32 2}
!181 = !{ptr @.str.96, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @smb_direct_disconnect._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @smb_direct_disconnect._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ksmbd/transport_rdma.c", i32 1460, i32 2}
!186 = !{ptr @.str.98, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @smb_direct_shutdown._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @smb_direct_shutdown._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.99, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/ksmbd/transport_rdma.c", i32 686, i32 3}
!191 = !{ptr @.str.100, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @smb_direct_read._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @smb_direct_read._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.102, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/ksmbd/transport_rdma.c", i32 733, i32 5}
!196 = !{ptr @smb_direct_read._entry.101, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @smb_direct_read._entry_ptr.103, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.105, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ksmbd/transport_rdma.c", i32 784, i32 3}
!200 = !{ptr @smb_direct_read._entry.104, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @smb_direct_read._entry_ptr.106, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.108, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/ksmbd/transport_rdma.c", i32 792, i32 2}
!204 = !{ptr @smb_direct_read._entry.107, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @smb_direct_read._entry_ptr.109, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.110, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/ksmbd/transport_rdma.c", i32 1251, i32 2}
!208 = !{ptr @.str.111, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @smb_direct_writev._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @smb_direct_writev._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.112, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ksmbd/transport_rdma.c", i32 1387, i32 3}
!213 = !{ptr @.str.113, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @smb_direct_rdma_xmit._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @smb_direct_rdma_xmit._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.115, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/ksmbd/transport_rdma.c", i32 1396, i32 3}
!218 = !{ptr @smb_direct_rdma_xmit._entry.114, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @smb_direct_rdma_xmit._entry_ptr.116, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.118, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/ksmbd/transport_rdma.c", i32 1408, i32 3}
!222 = !{ptr @smb_direct_rdma_xmit._entry.117, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @smb_direct_rdma_xmit._entry_ptr.119, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @init_completion.__key, !225, !"__key", i1 false, i1 false}
!225 = !{!"../include/linux/completion.h", i32 87, i32 2}
!226 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.121, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ksmbd/transport_rdma.c", i32 1329, i32 3}
!229 = !{ptr @.str.122, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @read_write_done._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @read_write_done._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.123, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/ksmbd/transport_rdma.c", i32 1942, i32 3}
!234 = !{ptr @.str.124, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @smb_direct_connect._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @smb_direct_connect._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.126, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ksmbd/transport_rdma.c", i32 1948, i32 3}
!239 = !{ptr @smb_direct_connect._entry.125, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @smb_direct_connect._entry_ptr.127, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.129, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/ksmbd/transport_rdma.c", i32 1954, i32 3}
!243 = !{ptr @smb_direct_connect._entry.128, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @smb_direct_connect._entry_ptr.130, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.132, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/ksmbd/transport_rdma.c", i32 1960, i32 3}
!247 = !{ptr @smb_direct_connect._entry.131, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @smb_direct_connect._entry_ptr.133, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.134, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/ksmbd/transport_rdma.c", i32 1653, i32 3}
!251 = !{ptr @.str.135, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @smb_direct_init_params._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @smb_direct_init_params._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.137, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/ksmbd/transport_rdma.c", i32 1673, i32 3}
!256 = !{ptr @smb_direct_init_params._entry.136, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @smb_direct_init_params._entry_ptr.138, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.140, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/ksmbd/transport_rdma.c", i32 1676, i32 3}
!260 = !{ptr @smb_direct_init_params._entry.139, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @smb_direct_init_params._entry_ptr.141, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.143, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../fs/ksmbd/transport_rdma.c", i32 1683, i32 3}
!264 = !{ptr @smb_direct_init_params._entry.142, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @smb_direct_init_params._entry_ptr.144, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.146, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/ksmbd/transport_rdma.c", i32 1685, i32 3}
!268 = !{ptr @smb_direct_init_params._entry.145, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @smb_direct_init_params._entry_ptr.147, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.149, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/ksmbd/transport_rdma.c", i32 1691, i32 3}
!272 = !{ptr @smb_direct_init_params._entry.148, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @smb_direct_init_params._entry_ptr.150, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.152, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/ksmbd/transport_rdma.c", i32 1696, i32 3}
!276 = !{ptr @smb_direct_init_params._entry.151, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @smb_direct_init_params._entry_ptr.153, !275, !"_entry_ptr", i1 false, i1 false}
!278 = distinct !{null, !279, !"smb_direct_max_send_size", i1 false, i1 false}
!279 = !{!"../fs/ksmbd/transport_rdma.c", i32 75, i32 12}
!280 = distinct !{null, !281, !"smb_direct_max_read_write_size", i1 false, i1 false}
!281 = !{!"../fs/ksmbd/transport_rdma.c", i32 83, i32 12}
!282 = distinct !{null, !283, !"smb_direct_max_outstanding_rw_ops", i1 false, i1 false}
!283 = !{!"../fs/ksmbd/transport_rdma.c", i32 85, i32 12}
!284 = distinct !{null, !285, !"smb_direct_send_credit_target", i1 false, i1 false}
!285 = !{!"../fs/ksmbd/transport_rdma.c", i32 72, i32 12}
!286 = distinct !{null, !287, !"smb_direct_max_receive_size", i1 false, i1 false}
!287 = !{!"../fs/ksmbd/transport_rdma.c", i32 81, i32 12}
!288 = distinct !{null, !289, !"smb_direct_max_fragmented_recv_size", i1 false, i1 false}
!289 = !{!"../fs/ksmbd/transport_rdma.c", i32 78, i32 12}
!290 = !{ptr @.str.154, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/ksmbd/transport_rdma.c", i32 1755, i32 31}
!292 = !{ptr @.str.155, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/ksmbd/transport_rdma.c", i32 1769, i32 31}
!294 = !{ptr @.str.156, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/ksmbd/transport_rdma.c", i32 1809, i32 3}
!296 = !{ptr @.str.157, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @smb_direct_create_qpair._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @smb_direct_create_qpair._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.159, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/ksmbd/transport_rdma.c", i32 1818, i32 3}
!301 = !{ptr @smb_direct_create_qpair._entry.158, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @smb_direct_create_qpair._entry_ptr.160, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.162, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/ksmbd/transport_rdma.c", i32 1828, i32 3}
!305 = !{ptr @smb_direct_create_qpair._entry.161, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @smb_direct_create_qpair._entry_ptr.163, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.165, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/ksmbd/transport_rdma.c", i32 1846, i32 3}
!309 = !{ptr @smb_direct_create_qpair._entry.164, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @smb_direct_create_qpair._entry_ptr.166, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.168, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../fs/ksmbd/transport_rdma.c", i32 1864, i32 4}
!313 = !{ptr @smb_direct_create_qpair._entry.167, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @smb_direct_create_qpair._entry_ptr.169, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.170, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/ksmbd/transport_rdma.c", i32 1505, i32 2}
!317 = !{ptr @.str.171, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @smb_direct_qpair_handler._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @smb_direct_qpair_handler._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.172, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../fs/ksmbd/transport_rdma.c", i32 1470, i32 2}
!322 = !{ptr @.str.173, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @smb_direct_cm_handler._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @smb_direct_cm_handler._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.175, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/ksmbd/transport_rdma.c", i32 1493, i32 3}
!327 = !{ptr @smb_direct_cm_handler._entry.174, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @smb_direct_cm_handler._entry_ptr.176, !326, !"_entry_ptr", i1 false, i1 false}
!329 = distinct !{null, !330, !"__already_done", i1 false, i1 false}
!330 = !{!"../include/rdma/ib_verbs.h", i32 3936, i32 2}
!331 = !{ptr @.str.177, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.178, !330, !"<string literal>", i1 false, i1 false}
!333 = distinct !{null, !334, !"__already_done", i1 false, i1 false}
!334 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!335 = !{ptr @.str.179, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @.str.180, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/ksmbd/transport_rdma.c", i32 1623, i32 3}
!338 = !{ptr @smb_direct_prepare_negotiation._entry, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @smb_direct_prepare_negotiation._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.182, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../fs/ksmbd/transport_rdma.c", i32 1630, i32 3}
!342 = !{ptr @smb_direct_prepare_negotiation._entry.181, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @smb_direct_prepare_negotiation._entry_ptr.183, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.184, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../fs/ksmbd/transport_rdma.c", i32 1605, i32 3}
!346 = !{ptr @.str.185, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @smb_direct_accept_client._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @smb_direct_accept_client._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.186, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../fs/ksmbd/transport_rdma.c", i32 419, i32 2}
!351 = !{ptr @.str.187, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @free_transport._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @free_transport._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.189, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/ksmbd/transport_rdma.c", i32 435, i32 2}
!356 = !{ptr @free_transport._entry.188, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @free_transport._entry_ptr.190, !355, !"_entry_ptr", i1 false, i1 false}
!358 = distinct !{null, !359, !"smb_direct_port", i1 false, i1 false}
!359 = !{!"../fs/ksmbd/transport_rdma.c", i32 66, i32 12}
!360 = !{ptr @.str.191, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../fs/ksmbd/transport_rdma.c", i32 88, i32 8}
!362 = !{ptr @smb_direct_device_lock, !361, !"smb_direct_device_lock", i1 false, i1 false}
!363 = !{ptr @smb_direct_device_list, !364, !"smb_direct_device_list", i1 false, i1 false}
!364 = !{!"../fs/ksmbd/transport_rdma.c", i32 87, i32 8}
!365 = !{!"sp"}
!366 = !{i32 1, !"wchar_size", i32 2}
!367 = !{i32 1, !"min_enum_size", i32 4}
!368 = !{i32 8, !"branch-target-enforcement", i32 0}
!369 = !{i32 8, !"sign-return-address", i32 0}
!370 = !{i32 8, !"sign-return-address-all", i32 0}
!371 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!372 = !{i32 7, !"uwtable", i32 1}
!373 = !{i32 7, !"frame-pointer", i32 2}
!374 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!375 = !{i64 892523}
!376 = !{!"branch_weights", i32 1, i32 2000}
!377 = !{i64 892808}
!378 = !{!"branch_weights", i32 2000, i32 1}
!379 = !{!"auto-init"}
!380 = !{i64 2159543385}
!381 = !{i8 0, i8 2}
!382 = !{i64 2148495533, i64 2148495559, i64 2148495588, i64 2148495622, i64 2148495653, i64 2148495676}
!383 = !{i64 2148583985}
!384 = !{i64 2148498718, i64 2148498750, i64 2148498779, i64 2148498813, i64 2148498844, i64 2148498867}
!385 = !{i64 2148584214}
!386 = !{i64 2153765916, i64 2153766408, i64 2153765953, i64 2153766009, i64 2153766043, i64 2153766067, i64 2153766108, i64 2153766129, i64 2153766157, i64 2153766191}
!387 = !{i64 2153767526, i64 2153768018, i64 2153767563, i64 2153767619, i64 2153767653, i64 2153767677, i64 2153767718, i64 2153767739, i64 2153767767, i64 2153767801}
!388 = !{i64 2159580450}
!389 = !{i64 2148580944}
!390 = !{i64 2148496253, i64 2148496285, i64 2148496314, i64 2148496348, i64 2148496379, i64 2148496402}
!391 = !{i64 2148581173}
