; ModuleID = '/llk/IR_all_yes/net/bluetooth/rfcomm/core.c_pt.bc'
source_filename = "../net/bluetooth/rfcomm/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hci_cb = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.116 }
%union.anon.116 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rfcomm_dlc = type { %struct.list_head, ptr, %struct.sk_buff_head, %struct.timer_list, %struct.mutex, i32, i32, %struct.refcount_struct, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.rfcomm_session = type { %struct.list_head, ptr, %struct.timer_list, i32, i32, i32, i32, i32, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.l2cap_pinfo = type { %struct.bt_sock, ptr, ptr }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rfcomm_hdr = type { i8, i8, i8 }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.rfcomm_cmd = type { i8, i8, i8, i8 }
%struct.sockaddr_l2 = type { i16, i16, %struct.bdaddr_t, i16, i8 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rfcomm_mcc = type { i8, i8 }
%struct.rfcomm_rls = type { i8, i8 }
%struct.rfcomm_rpn = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.rfcomm_msc = type { i8, i8 }
%struct.rfcomm_pn = type { i8, i8, i8, i8, i16, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.119, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.120, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.121, ptr, %struct.address_space, %struct.list_head, %union.anon.124, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.119 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.120 = type { %struct.callback_head }
%union.anon.121 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.124 = type { ptr }

@rfcomm_dlc_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&d->timer)\00", [20 x i8] zeroinitializer }, align 32
@rfcomm_dlc_alloc.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&d->lock\00", [23 x i8] zeroinitializer }, align 32
@rfcomm_dlc_alloc.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rfcomm\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_dlc_alloc\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/bluetooth/rfcomm/core.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%p\0A\00", [28 x i8] zeroinitializer }, align 32
@rfcomm_dlc_free.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.5, ptr @.str.6, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_dlc_free\00", [16 x i8] zeroinitializer }, align 32
@rfcomm_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rfcomm_mutex, i64 52), ptr getelementptr (i8, ptr @rfcomm_mutex, i64 52) }, ptr @rfcomm_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@rfcomm_dlc_close.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str.9, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_dlc_close\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dlc %p state %ld dlci %d err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@session_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @session_list, ptr @session_list }, [24 x i8] zeroinitializer }, align 32
@rfcomm_dlc_send_noerror.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str.11, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rfcomm_dlc_send_noerror\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlc %p mtu %d len %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__rfcomm_dlc_throttle.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.13, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__rfcomm_dlc_throttle\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlc %p state %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@__rfcomm_dlc_unthrottle.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.13, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__rfcomm_dlc_unthrottle\00", [40 x i8] zeroinitializer }, align 32
@rfcomm_dlc_set_modem_status.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rfcomm_dlc_set_modem_status\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dlc %p state %ld v24_sig 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@rfcomm_dlc_get_modem_status.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str.16, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rfcomm_dlc_get_modem_status\00", [36 x i8] zeroinitializer }, align 32
@rfcomm_send_rpn.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 -5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_send_rpn\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"%p cr %d dlci %d bit_r 0x%x data_b 0x%x stop_b 0x%x parity 0x%x flwc_s 0x%x xon_c 0x%x xoff_c 0x%x p_mask 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@rfcomm_dlc_accept.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 1, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfcomm_dlc_accept\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dlc %p\0A\00", [24 x i8] zeroinitializer }, align 32
@rfcomm_dlc_debugfs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rfcomm_cb = internal global { %struct.hci_cb, [32 x i8] } { %struct.hci_cb { %struct.list_head zeroinitializer, ptr @.str.71, ptr null, ptr null, ptr @rfcomm_security_cfm, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rfcomm_thread = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_rfcomm__551_2265_rfcomm_init6 = internal global ptr @rfcomm_init, section ".initcall6.init", align 4
@__exitcall_rfcomm_exit = internal global ptr @rfcomm_exit, section ".exitcall.exit", align 4
@__param_str_disable_cfc = internal constant [19 x i8] c"rfcomm.disable_cfc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_cfc = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_cfc = internal constant %struct.kernel_param { ptr @__param_str_disable_cfc, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.116 { ptr @disable_cfc } }, section "__param", align 4
@__UNIQUE_ID_disable_cfctype552 = internal constant [33 x i8] c"rfcomm.parmtype=disable_cfc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_cfc553 = internal constant [58 x i8] c"rfcomm.parm=disable_cfc:Disable credit based flow control\00", section ".modinfo", align 1
@__param_str_channel_mtu = internal constant [19 x i8] c"rfcomm.channel_mtu\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@channel_mtu = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_channel_mtu = internal constant %struct.kernel_param { ptr @__param_str_channel_mtu, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.116 { ptr @channel_mtu } }, section "__param", align 4
@__UNIQUE_ID_channel_mtutype554 = internal constant [32 x i8] c"rfcomm.parmtype=channel_mtu:int\00", section ".modinfo", align 1
@__UNIQUE_ID_channel_mtu555 = internal constant [59 x i8] c"rfcomm.parm=channel_mtu:Default MTU for the RFCOMM channel\00", section ".modinfo", align 1
@__param_str_l2cap_ertm = internal constant [18 x i8] c"rfcomm.l2cap_ertm\00", align 1
@l2cap_ertm = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_l2cap_ertm = internal constant %struct.kernel_param { ptr @__param_str_l2cap_ertm, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.116 { ptr @l2cap_ertm } }, section "__param", align 4
@__UNIQUE_ID_l2cap_ertmtype556 = internal constant [32 x i8] c"rfcomm.parmtype=l2cap_ertm:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_l2cap_ertm557 = internal constant [58 x i8] c"rfcomm.parm=l2cap_ertm:Use L2CAP ERTM mode for connection\00", section ".modinfo", align 1
@__UNIQUE_ID_author558 = internal constant [52 x i8] c"rfcomm.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description559 = internal constant [45 x i8] c"rfcomm.description=Bluetooth RFCOMM ver 1.11\00", section ".modinfo", align 1
@__UNIQUE_ID_version560 = internal constant [20 x i8] c"rfcomm.version=1.11\00", section ".modinfo", align 1
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.11\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.3, ptr @.str.23 }, section "__modver", align 4
@__UNIQUE_ID_file561 = internal constant [40 x i8] c"rfcomm.file=net/bluetooth/rfcomm/rfcomm\00", section ".modinfo", align 1
@__UNIQUE_ID_license562 = internal constant [19 x i8] c"rfcomm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias563 = internal constant [24 x i8] c"rfcomm.alias=bt-proto-3\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rfcomm_dlc_timeout.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.24, ptr @.str.5, ptr @.str.13, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rfcomm_dlc_timeout\00", [45 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rfcomm_dlc_clear_state.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.5, ptr @.str.6, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rfcomm_dlc_clear_state\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rfcomm_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rfcomm_mutex\00", [19 x i8] zeroinitializer }, align 32
@__rfcomm_dlc_open.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__rfcomm_dlc_open\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dlc %p state %ld %pMR -> %pMR channel %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rfcomm_session_create.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rfcomm_session_create\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%pMR -> %pMR\0A\00", [18 x i8] zeroinitializer }, align 32
@rfcomm_l2sock_create.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rfcomm_l2sock_create\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@rfcomm_l2data_ready.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.35, ptr @.str.5, ptr @.str.6, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_l2data_ready\00", [44 x i8] zeroinitializer }, align 32
@rfcomm_l2state_change.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.36, ptr @.str.5, ptr @.str.37, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rfcomm_l2state_change\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%p state %d\0A\00", [19 x i8] zeroinitializer }, align 32
@rfcomm_session_add.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.38, ptr @.str.5, ptr @.str.39, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rfcomm_session_add\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"session %p sock %p\0A\00", [44 x i8] zeroinitializer }, align 32
@rfcomm_session_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&s->timer)\00", [20 x i8] zeroinitializer }, align 32
@rfcomm_session_timeout.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.41, ptr @.str.5, ptr @.str.42, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rfcomm_session_timeout\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"session %p state %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@rfcomm_session_del.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.43, ptr @.str.5, ptr @.str.42, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rfcomm_session_del\00", [45 x i8] zeroinitializer }, align 32
@rfcomm_session_clear_timer.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.5, ptr @.str.42, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rfcomm_session_clear_timer\00", [37 x i8] zeroinitializer }, align 32
@rfcomm_dlc_link.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_dlc_link\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlc %p session %p\0A\00", [45 x i8] zeroinitializer }, align 32
@rfcomm_send_pn.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfcomm_send_pn\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%p cr %d dlci %d mtu %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rfcomm_dlc_set_timer.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.49, ptr @.str.5, ptr @.str.50, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rfcomm_dlc_set_timer\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dlc %p state %ld timeout %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__rfcomm_dlc_close.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.51, ptr @.str.5, ptr @.str.52, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__rfcomm_dlc_close\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"dlc %p state %ld dlci %d err %d session %p\0A\00", [52 x i8] zeroinitializer }, align 32
@rfcomm_send_disc.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.53, ptr @.str.5, ptr @.str.54, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_send_disc\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%p dlci %d\0A\00", [20 x i8] zeroinitializer }, align 32
@rfcomm_crc_table = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\91\E3r\07\96\E4u\0E\9F\ED|\09\98\EA{\1C\8D\FFn\1B\8A\F8i\12\83\F1`\15\84\F6g8\A9\DBJ?\AE\DCM6\A7\D5D1\A0\D2C$\B5\C7V#\B2\C0Q*\BB\C9X-\BC\CE_p\E1\93\02w\E6\94\05~\EF\9D\0Cy\E8\9A\0Bl\FD\8F\1Ek\FA\88\19b\F3\81\10e\F4\86\17H\D9\AB:O\DE\AC=F\D7\A54A\D0\A23T\C5\B7&S\C2\B0!Z\CB\B9(]\CC\BE/\E0q\03\92\E7v\04\95\EE\7F\0D\9C\E9x\0A\9B\FCm\1F\8E\FBj\18\89\F2c\11\80\F5d\16\87\D8I;\AA\DFN<\AD\D6G5\A4\D1@2\A3\C4U'\B6\C3R \B1\CA[)\B8\CD\\.\BF\90\01s\E2\97\06t\E5\9E\0F}\EC\99\08z\EB\8C\1Do\FE\8B\1Ah\F9\82\13a\F0\85\14f\F7\A89K\DA\AF>L\DD\A67E\D4\A10B\D3\B4%W\C6\B3\22P\C1\BA+Y\C8\BD,^\CF", [64 x i8] zeroinitializer }, align 32
@rfcomm_send_cmd.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.55, ptr @.str.5, ptr @.str.56, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_send_cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%p cmd %u\0A\00", [21 x i8] zeroinitializer }, align 32
@rfcomm_queue_disc.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.57, ptr @.str.5, ptr @.str.58, i8 0, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfcomm_queue_disc\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlc %p dlci %d\0A\00", [16 x i8] zeroinitializer }, align 32
@rfcomm_dlc_unlink.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfcomm_dlc_unlink\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dlc %p refcnt %d session %p\0A\00", [35 x i8] zeroinitializer }, align 32
@rfcomm_session_set_timer.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.61, ptr @.str.5, ptr @.str.62, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rfcomm_session_set_timer\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"session %p state %ld timeout %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@rfcomm_dlc_send_frag.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.63, ptr @.str.5, ptr @.str.11, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rfcomm_dlc_send_frag\00", [43 x i8] zeroinitializer }, align 32
@rfcomm_wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.64, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @rfcomm_wq, i64 44), ptr getelementptr (i8, ptr @rfcomm_wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfcomm_wq.lock\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_send_frame.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.65, ptr @.str.5, ptr @.str.66, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfcomm_send_frame\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"session %p len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@rfcomm_send_ua.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.67, ptr @.str.5, ptr @.str.54, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfcomm_send_ua\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_dlc_clear_timer.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.68, ptr @.str.5, ptr @.str.13, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rfcomm_dlc_clear_timer\00", [41 x i8] zeroinitializer }, align 32
@rfcomm_send_msc.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.69, ptr @.str.5, ptr @.str.70, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_send_msc\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p cr %d v24 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RFCOMM\00", [25 x i8] zeroinitializer }, align 32
@rfcomm_security_cfm.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.72, ptr @.str.5, ptr @.str.73, i8 2, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_security_cfm\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"conn %p status 0x%02x encrypt 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"krfcommd\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RFCOMM ver %s\0A\00", [17 x i8] zeroinitializer }, align 32
@bt_debugfs = external dso_local local_unnamed_addr global ptr, align 4
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rfcomm_dlc\00", [21 x i8] zeroinitializer }, align 32
@rfcomm_dlc_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rfcomm_dlc_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rfcomm_run.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.77, ptr @.str.5, ptr @.str.34, i8 2, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rfcomm_run\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Create socket failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bind failed %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Listen failed %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rfcomm_accept_connection.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.81, ptr @.str.5, ptr @.str.82, i8 1, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rfcomm_accept_connection\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"session %p\0A\00", [20 x i8] zeroinitializer }, align 32
@rfcomm_check_connection.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.83, ptr @.str.5, ptr @.str.84, i8 1, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rfcomm_check_connection\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%p state %ld\0A\00", [18 x i8] zeroinitializer }, align 32
@rfcomm_send_sabm.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.85, ptr @.str.5, ptr @.str.54, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_send_sabm\00", [47 x i8] zeroinitializer }, align 32
@rfcomm_session_close.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.86, ptr @.str.5, ptr @.str.87, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rfcomm_session_close\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"session %p state %ld err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rfcomm_process_rx.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.88, ptr @.str.5, ptr @.str.89, i8 1, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfcomm_process_rx\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"session %p state %ld qlen %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad checksum in packet\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown packet type 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@rfcomm_recv_sabm.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.92, ptr @.str.5, ptr @.str.93, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_recv_sabm\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"session %p state %ld dlci %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rfcomm_process_connect.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.94, ptr @.str.5, ptr @.str.42, i8 1, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rfcomm_process_connect\00", [41 x i8] zeroinitializer }, align 32
@rfcomm_send_dm.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.95, ptr @.str.5, ptr @.str.54, i8 0, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfcomm_send_dm\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_recv_disc.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.96, ptr @.str.5, ptr @.str.93, i8 1, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_recv_disc\00", [47 x i8] zeroinitializer }, align 32
@rfcomm_recv_ua.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.97, ptr @.str.5, ptr @.str.93, i8 1, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfcomm_recv_ua\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_recv_dm.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.98, ptr @.str.5, ptr @.str.93, i8 1, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfcomm_recv_dm\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_recv_data.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.99, ptr @.str.5, ptr @.str.100, i8 1, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_recv_data\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"session %p state %ld dlci %d pf %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rfcomm_recv_mcc.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.101, ptr @.str.5, ptr @.str.102, i8 1, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_recv_mcc\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%p type 0x%x cr %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown control type 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@rfcomm_recv_pn.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.104, ptr @.str.5, ptr @.str.93, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfcomm_recv_pn\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_apply_pn.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.105, ptr @.str.5, ptr @.str.106, i8 1, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_apply_pn\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dlc %p state %ld dlci %d mtu %d fc 0x%x credits %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rfcomm_recv_rpn.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.107, ptr @.str.5, ptr @.str.108, i8 1, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_recv_rpn\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"dlci %d cr %d len 0x%x bitr 0x%x line 0x%x flow 0x%x xonc 0x%x xoffc 0x%x pm 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@rfcomm_recv_rpn.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.107, ptr @.str.5, ptr @.str.109, i8 1, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RPN bit rate mismatch 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@rfcomm_recv_rpn.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.107, ptr @.str.5, ptr @.str.110, i8 1, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RPN data bits mismatch 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@rfcomm_recv_rpn.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.107, ptr @.str.5, ptr @.str.111, i8 1, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RPN stop bits mismatch 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@rfcomm_recv_rpn.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.107, ptr @.str.5, ptr @.str.112, i8 1, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RPN parity mismatch 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@rfcomm_recv_rpn.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.107, ptr @.str.5, ptr @.str.113, i8 1, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RPN flow ctrl mismatch 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@rfcomm_recv_rpn.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.107, ptr @.str.5, ptr @.str.114, i8 1, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RPN XON char mismatch 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@rfcomm_recv_rpn.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.107, ptr @.str.5, ptr @.str.115, i8 1, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RPN XOFF char mismatch 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@rfcomm_recv_rls.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.116, ptr @.str.5, ptr @.str.117, i8 1, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_recv_rls\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dlci %d cr %d status 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@rfcomm_send_rls.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.118, ptr @.str.5, ptr @.str.119, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_send_rls\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%p cr %d status 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@rfcomm_recv_msc.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.120, ptr @.str.5, ptr @.str.121, i8 1, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_recv_msc\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dlci %d cr %d v24 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@rfcomm_send_fcoff.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.122, ptr @.str.5, ptr @.str.123, i8 1, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfcomm_send_fcoff\00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%p cr %d\0A\00", [22 x i8] zeroinitializer }, align 32
@rfcomm_send_fcon.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.124, ptr @.str.5, ptr @.str.123, i8 1, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_send_fcon\00", [47 x i8] zeroinitializer }, align 32
@rfcomm_send_test.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.125, ptr @.str.5, ptr @.str.123, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_send_test\00", [47 x i8] zeroinitializer }, align 32
@rfcomm_send_nsc.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.126, ptr @.str.5, ptr @.str.127, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_send_nsc\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%p cr %d type %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rfcomm_process_dlcs.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.128, ptr @.str.5, ptr @.str.42, i8 1, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_process_dlcs\00", [44 x i8] zeroinitializer }, align 32
@rfcomm_process_tx.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.129, ptr @.str.5, ptr @.str.130, i8 1, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfcomm_process_tx\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"dlc %p state %ld cfc %d rx_credits %d tx_credits %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rfcomm_send_credits.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.131, ptr @.str.5, ptr @.str.132, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_send_credits\00", [44 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%p addr %d credits %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rfcomm_kill_listener.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.133, ptr @.str.5, ptr @.str.34, i8 2, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rfcomm_kill_listener\00", [43 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%pMR %pMR %ld %d %d %d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 9]
@__sancov_gen_cov_switch_values.135 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 7]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 9]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.142 = internal global [7 x i64] [i64 5, i64 8, i64 15, i64 47, i64 67, i64 99, i64 239]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.145 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 4, i64 5, i64 7, i64 8, i64 9, i64 13]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 8, i64 224, i64 240]
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 306, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 309, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 314, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 321, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"rfcomm_mutex\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 505, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [13 x i8] c"session_list\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 51, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 612, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 624, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 635, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 651, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 669, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1002, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1321, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"rfcomm_dlc_debugfs\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2206, i32 23 }
@___asan_gen_.225 = private unnamed_addr constant [10 x i8] c"rfcomm_cb\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2177, i32 22 }
@___asan_gen_.228 = private unnamed_addr constant [14 x i8] c"rfcomm_thread\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 44, i32 28 }
@___asan_gen_.231 = private unnamed_addr constant [12 x i8] c"disable_cfc\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 40, i32 13 }
@___asan_gen_.234 = private unnamed_addr constant [12 x i8] c"channel_mtu\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 42, i32 12 }
@___asan_gen_.237 = private unnamed_addr constant [11 x i8] c"l2cap_ertm\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 41, i32 13 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2279, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 261, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1984, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 286, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 46, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 373, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 769, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 197, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 189, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 183, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 684, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 686, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 236, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 712, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 251, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 329, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 957, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 270, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 453, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 879, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"rfcomm_crc_table\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 112, i32 22 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 842, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 894, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 341, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 244, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 556, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [10 x i8] c"rfcomm_wq\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 102, i32 8 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 833, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 865, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 278, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1064, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2178, i32 11 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2138, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2215, i32 18 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2229, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2234, i32 43 }
@___asan_gen_.417 = private unnamed_addr constant [24 x i8] c"rfcomm_dlc_debugfs_fops\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2204, i32 1 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2112, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2056, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2068, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2082, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1965, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1991, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 851, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 747, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1935, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1754, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1793, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1362, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1806, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 915, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1286, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1202, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1256, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1705, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1650, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1694, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1434, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1403, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1494, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1519, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1528, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1537, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1546, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1555, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1564, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1573, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1591, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1037, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1611, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1090, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1112, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1138, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 931, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1876, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1829, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1165, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2103, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.592 = private constant [31 x i8] c"../net/bluetooth/rfcomm/core.c\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2192, i32 18 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @__UNIQUE_ID_alias563, ptr @__UNIQUE_ID_author558, ptr @__UNIQUE_ID_channel_mtu555, ptr @__UNIQUE_ID_channel_mtutype554, ptr @__UNIQUE_ID_description559, ptr @__UNIQUE_ID_disable_cfc553, ptr @__UNIQUE_ID_disable_cfctype552, ptr @__UNIQUE_ID_file561, ptr @__UNIQUE_ID_l2cap_ertm557, ptr @__UNIQUE_ID_l2cap_ertmtype556, ptr @__UNIQUE_ID_license562, ptr @__UNIQUE_ID_version560, ptr @__exitcall_rfcomm_exit, ptr @__initcall__kmod_rfcomm__551_2265_rfcomm_init6, ptr @__modver_attr, ptr @__param_channel_mtu, ptr @__param_disable_cfc, ptr @__param_l2cap_ertm, ptr @rfcomm_exit, ptr @rfcomm_dlc_alloc.__key, ptr @.str, ptr @rfcomm_dlc_alloc.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rfcomm_mutex, ptr @.str.8, ptr @.str.9, ptr @session_list, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rfcomm_dlc_debugfs, ptr @rfcomm_cb, ptr @rfcomm_thread, ptr @disable_cfc, ptr @channel_mtu, ptr @l2cap_ertm, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @skb_queue_head_init.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @rfcomm_session_add.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @rfcomm_crc_table, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @rfcomm_wq, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @rfcomm_dlc_debugfs_fops, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], section "llvm.metadata"
@0 = internal global [149 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_dlc_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_dlc_alloc.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @session_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_dlc_debugfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_cb to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_thread to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_cfc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_mtu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2cap_ertm to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_session_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_crc_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_dlc_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rfcomm_dlc_alloc(i32 noundef %prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %prio, 256
  %and.i.i.i = and i32 %prio, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !361

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %prio, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %prio, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 9
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 268) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %do.body

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %kzalloc.exit
  %timer = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @rfcomm_dlc_timeout, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @rfcomm_dlc_alloc.__key) #10
  %tx_queue = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %2 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx_queue, ptr %tx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tx_queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i.i, align 4
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @rfcomm_dlc_alloc.__key.1) #10
  %refcnt = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %refcnt, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_clear_state.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_alloc, %if.then.i)) #10
          to label %rfcomm_dlc_clear_state.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_clear_state.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.6, ptr noundef nonnull %call7.i.i) #10
  br label %rfcomm_dlc_clear_state.exit

rfcomm_dlc_clear_state.exit:                      ; preds = %if.then.i, %do.body
  %state.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %state.i, align 8
  %flags.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags.i, align 4
  %mscex.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %mscex.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mscex.i, align 1
  %sec_level.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %sec_level.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %sec_level.i, align 1
  %mtu.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 18
  %10 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 127, ptr %mtu.i, align 4
  %v24_sig.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %v24_sig.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -116, ptr %v24_sig.i, align 1
  %cfc.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %cfc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cfc.i, align 8
  %rx_credits.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %call7.i.i, i32 0, i32 20
  %13 = ptrtoint ptr %rx_credits.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %rx_credits.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_alloc.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_alloc, %if.then9)) #10
          to label %cleanup [label %if.then9], !srcloc !362

if.then9:                                         ; preds = %rfcomm_dlc_clear_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_alloc.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.6, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %rfcomm_dlc_clear_state.exit, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_dlc_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_timeout.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_timeout, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr i8, ptr %t, i32 140
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_timeout.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.13, ptr noundef %add.ptr, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr i8, ptr %t, i32 144
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  %refcnt.i = getelementptr i8, ptr %t, i32 148
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !361

if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_dlc_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %rfcomm_dlc_put.exit

if.then.i:                                        ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !365
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_free.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_timeout, %if.then.i.i)) #10
          to label %rfcomm_dlc_free.exit.i [label %if.then.i.i], !srcloc !362

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_free.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.6, ptr noundef %add.ptr) #10
  br label %rfcomm_dlc_free.exit.i

rfcomm_dlc_free.exit.i:                           ; preds = %if.then.i.i, %if.then.i
  %tx_queue.i.i = getelementptr i8, ptr %t, i32 -56
  tail call void @skb_queue_purge(ptr noundef %tx_queue.i.i) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  br label %rfcomm_dlc_put.exit

rfcomm_dlc_put.exit:                              ; preds = %rfcomm_dlc_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rfcomm_dlc_free(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_free.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_free, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_free.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.6, ptr noundef %d) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_queue = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %tx_queue) #10
  tail call void @kfree(ptr noundef %d) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfcomm_dlc_open(ptr noundef %d, ptr noundef %src, ptr noundef %dst, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_mutex, i32 noundef 0) #10
  %call = tail call fastcc i32 @__rfcomm_dlc_open(ptr noundef %d, ptr noundef %src, ptr noundef %dst, i8 noundef zeroext %channel)
  tail call void @mutex_unlock(ptr noundef nonnull @rfcomm_mutex) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rfcomm_dlc_open(ptr noundef %d, ptr noundef %src, ptr noundef %dst, i8 noundef zeroext %channel) unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.bdaddr_t, align 1
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rfcomm_dlc_open.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rfcomm_dlc_open, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %conv = zext i8 %channel to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rfcomm_dlc_open.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.30, ptr noundef %d, i32 noundef %2, ptr noundef %src, ptr noundef %dst, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = add i8 %channel, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %3)
  %4 = icmp ult i8 %3, 30
  br i1 %4, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %state7 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %5 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state7, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end6.cleanup_crit_edge [
    i32 2, label %if.end6.if.end13_crit_edge
    i32 9, label %if.end6.if.end13_crit_edge116
  ]

if.end6.if.end13_crit_edge116:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end6.if.end13_crit_edge, %if.end6.if.end13_crit_edge116
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral.i)
  %8 = load ptr, ptr @session_list, align 4
  %cmp.not34.i = icmp eq ptr %8, @session_list
  br i1 %cmp.not34.i, label %if.end13.rfcomm_session_get.exit.thread_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.rfcomm_session_get.exit.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_session_get.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %s.035.i = phi ptr [ %n.036.i, %for.inc.i.for.body.i_crit_edge ], [ %8, %if.end13.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %s.035.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %n.036.i = load ptr, ptr %s.035.i, align 4
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s.035.i, i32 0, i32 1
  %10 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk.i, align 16
  %chan5.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %chan5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan5.i, align 8
  %16 = call ptr @memset(ptr %.compoundliteral.i, i32 0, i32 6)
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %src, ptr noundef nonnull dereferenceable(6) %.compoundliteral.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %for.body.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %src10.i = getelementptr inbounds %struct.l2cap_chan, ptr %15, i32 0, i32 8
  %bcmp31.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src10.i, ptr noundef dereferenceable(6) %src, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp31.i)
  %tobool12.not.i = icmp eq i32 %bcmp31.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge
  %dst13.i = getelementptr inbounds %struct.l2cap_chan, ptr %15, i32 0, i32 6
  %bcmp32.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst13.i, ptr noundef dereferenceable(6) %dst, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp32.i)
  %tobool15.not.i = icmp eq i32 %bcmp32.i, 0
  br i1 %tobool15.not.i, label %rfcomm_session_get.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %n.036.i, @session_list
  br i1 %cmp.not.i, label %for.inc.i.rfcomm_session_get.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.rfcomm_session_get.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_session_get.exit.thread

rfcomm_session_get.exit.thread:                   ; preds = %for.inc.i.rfcomm_session_get.exit.thread_crit_edge, %if.end13.rfcomm_session_get.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  br label %if.then16

rfcomm_session_get.exit:                          ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  %tobool15.not = icmp eq ptr %s.035.i, null
  br i1 %tobool15.not, label %rfcomm_session_get.exit.if.then16_crit_edge, label %rfcomm_session_get.exit.if.end21_crit_edge

rfcomm_session_get.exit.if.end21_crit_edge:       ; preds = %rfcomm_session_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

rfcomm_session_get.exit.if.then16_crit_edge:      ; preds = %rfcomm_session_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %rfcomm_session_get.exit.if.then16_crit_edge, %rfcomm_session_get.exit.thread
  %sec_level = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 15
  %17 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sec_level, align 1
  %call17 = call fastcc ptr @rfcomm_session_create(ptr noundef %src, ptr noundef %dst, i8 noundef zeroext %18, ptr noundef nonnull %err)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.then16.if.end21_crit_edge

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %rfcomm_session_get.exit.if.end21_crit_edge
  %s.0 = phi ptr [ %s.035.i, %rfcomm_session_get.exit.if.end21_crit_edge ], [ %call17, %if.then16.if.end21_crit_edge ]
  %21 = shl i8 %channel, 1
  %22 = and i8 %21, 62
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s.0, i32 0, i32 5
  %23 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool23.not = icmp eq i32 %24, 0
  %cond = zext i1 %tobool23.not to i8
  %or = or i8 %22, %cond
  %dlcs.i = getelementptr inbounds %struct.rfcomm_session, ptr %s.0, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i95.for.cond.i_crit_edge, %if.end21
  %d.0.in.i = phi ptr [ %dlcs.i, %if.end21 ], [ %d.0.i, %for.body.i95.for.cond.i_crit_edge ]
  %25 = ptrtoint ptr %d.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %d.0.i = load ptr, ptr %d.0.in.i, align 4
  %cmp.not.i94 = icmp eq ptr %d.0.i, %dlcs.i
  br i1 %cmp.not.i94, label %for.cond.i.if.end28_crit_edge, label %for.body.i95

for.cond.i.if.end28_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

for.body.i95:                                     ; preds = %for.cond.i
  %dlci2.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 8
  %26 = ptrtoint ptr %dlci2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dlci2.i, align 4
  %cmp4.i = icmp eq i8 %27, %or
  br i1 %cmp4.i, label %rfcomm_dlc_get.exit, label %for.body.i95.for.cond.i_crit_edge

for.body.i95.for.cond.i_crit_edge:                ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

rfcomm_dlc_get.exit:                              ; preds = %for.body.i95
  %tobool26.not = icmp eq ptr %d.0.i, null
  br i1 %tobool26.not, label %rfcomm_dlc_get.exit.if.end28_crit_edge, label %rfcomm_dlc_get.exit.cleanup_crit_edge

rfcomm_dlc_get.exit.cleanup_crit_edge:            ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

rfcomm_dlc_get.exit.if.end28_crit_edge:           ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %rfcomm_dlc_get.exit.if.end28_crit_edge, %for.cond.i.if.end28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_clear_state.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rfcomm_dlc_open, %if.then.i)) #10
          to label %rfcomm_dlc_clear_state.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_clear_state.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.6, ptr noundef %d) #10
  br label %rfcomm_dlc_clear_state.exit

rfcomm_dlc_clear_state.exit:                      ; preds = %if.then.i, %if.end28
  %28 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %state7, align 4
  %flags.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %flags.i, align 4
  %mscex.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 13
  %30 = ptrtoint ptr %mscex.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %mscex.i, align 1
  %sec_level.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 15
  %31 = ptrtoint ptr %sec_level.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %sec_level.i, align 1
  %mtu.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 18
  %32 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 127, ptr %mtu.i, align 4
  %v24_sig.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 11
  %33 = ptrtoint ptr %v24_sig.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -116, ptr %v24_sig.i, align 1
  %cfc.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 19
  %34 = ptrtoint ptr %cfc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cfc.i, align 4
  %rx_credits.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 20
  %35 = ptrtoint ptr %rx_credits.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 7, ptr %rx_credits.i, align 4
  %dlci29 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %36 = ptrtoint ptr %dlci29 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %or, ptr %dlci29, align 4
  %37 = shl nuw i8 %or, 2
  %38 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %39 to i8
  %40 = shl i8 %.tr, 1
  %41 = or i8 %37, %40
  %conv37 = or i8 %41, 1
  %addr = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 9
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv37, ptr %addr, align 1
  %priority = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 10
  %43 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 7, ptr %priority, align 2
  store i32 7, ptr %state7, align 4
  tail call fastcc void @rfcomm_dlc_link(ptr noundef %s.0, ptr noundef %d)
  %out = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 14
  %44 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %out, align 2
  %mtu = getelementptr inbounds %struct.rfcomm_session, ptr %s.0, i32 0, i32 7
  %45 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mtu, align 4
  %47 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %mtu.i, align 4
  %cfc = getelementptr inbounds %struct.rfcomm_session, ptr %s.0, i32 0, i32 6
  %48 = ptrtoint ptr %cfc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cfc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp40 = icmp eq i32 %49, -1
  %spec.select = select i1 %cmp40, i32 0, i32 %49
  %50 = ptrtoint ptr %cfc.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.select, ptr %cfc.i, align 4
  %state45 = getelementptr inbounds %struct.rfcomm_session, ptr %s.0, i32 0, i32 3
  %51 = ptrtoint ptr %state45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp46 = icmp eq i32 %52, 1
  br i1 %cmp46, label %if.then48, label %rfcomm_dlc_clear_state.exit.if.end54_crit_edge

rfcomm_dlc_clear_state.exit.if.end54_crit_edge:   ; preds = %rfcomm_dlc_clear_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then48:                                        ; preds = %rfcomm_dlc_clear_state.exit
  %session.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %53 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %session.i, align 4
  %sock.i97 = getelementptr inbounds %struct.rfcomm_session, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %sock.i97 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sock.i97, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sk1.i, align 16
  %chan.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chan.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %sec_level.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sec_level.i, align 1
  %switch.tableidx = add i8 %64, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %65 = icmp ult i8 %switch.tableidx, 3
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 328964, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %auth_type.0.i = select i1 %65, i8 %switch.masked, i8 0
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %62, align 4
  %call.i = tail call i32 @hci_conn_security(ptr noundef %67, i8 noundef zeroext %64, i8 noundef zeroext %auth_type.0.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool50.not = icmp eq i32 %call.i, 0
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_send_pn(ptr noundef %s.0, i32 noundef 1, ptr noundef %d)
  br label %if.end54

if.else:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #10
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then51, %rfcomm_dlc_clear_state.exit.if.end54_crit_edge
  tail call fastcc void @rfcomm_dlc_set_timer(ptr noundef %d, i32 noundef 3000)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %rfcomm_dlc_get.exit.cleanup_crit_edge, %if.then19, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ %20, %if.then19 ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -16, %rfcomm_dlc_get.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfcomm_dlc_close(ptr noundef %d, i32 noundef %err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_close.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_close, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %dlci = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %2 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dlci, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_close.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.9, ptr noundef %d, i32 noundef %1, i32 noundef %conv, i32 noundef %err) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_mutex, i32 noundef 0) #10
  %session = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end.no_session_crit_edge, label %do.end.for.cond_crit_edge

do.end.for.cond_crit_edge:                        ; preds = %do.end
  br label %for.cond

do.end.no_session_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_session

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end.for.cond_crit_edge
  %s_list.0.in = phi ptr [ %s_list.0, %for.body.for.cond_crit_edge ], [ @session_list, %do.end.for.cond_crit_edge ]
  %6 = ptrtoint ptr %s_list.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %s_list.0 = load ptr, ptr %s_list.0.in, align 4
  %cmp.not = icmp eq ptr %s_list.0, @session_list
  br i1 %cmp.not, label %for.cond.no_session_crit_edge, label %for.body

for.cond.no_session_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_session

for.body:                                         ; preds = %for.cond
  %cmp10 = icmp eq ptr %s_list.0, %5
  br i1 %cmp10, label %if.then12, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then12:                                        ; preds = %for.body
  %dlcs = getelementptr inbounds %struct.rfcomm_session, ptr %5, i32 0, i32 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.body23.for.cond16_crit_edge, %if.then12
  %d_list.0.in = phi ptr [ %dlcs, %if.then12 ], [ %d_list.0, %for.body23.for.cond16_crit_edge ]
  %7 = ptrtoint ptr %d_list.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %d_list.0 = load ptr, ptr %d_list.0.in, align 4
  %cmp19.not = icmp eq ptr %d_list.0, %dlcs
  br i1 %cmp19.not, label %for.cond16.no_session_crit_edge, label %for.body23

for.cond16.no_session_crit_edge:                  ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_session

for.body23:                                       ; preds = %for.cond16
  %cmp24 = icmp eq ptr %d_list.0, %d
  br i1 %cmp24, label %if.then26, label %for.body23.for.cond16_crit_edge

for.body23.for.cond16_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond16

if.then26:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__rfcomm_dlc_close(ptr noundef %d, i32 noundef %err)
  br label %no_session

no_session:                                       ; preds = %if.then26, %for.cond16.no_session_crit_edge, %for.cond.no_session_crit_edge, %do.end.no_session_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rfcomm_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rfcomm_dlc_close(ptr noundef %d, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %session = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rfcomm_dlc_close.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rfcomm_dlc_close, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !362

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %dlci = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %4 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dlci, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rfcomm_dlc_close.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.52, ptr noundef %d, i32 noundef %3, i32 noundef %conv, i32 noundef %err, ptr noundef nonnull %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %state6 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %6 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state6, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %7, label %do.end.sw.epilog_crit_edge [
    i32 5, label %do.end.sw.bb_crit_edge
    i32 7, label %do.end.sw.bb_crit_edge11
    i32 2, label %do.end.sw.bb_crit_edge12
    i32 6, label %do.end.sw.bb_crit_edge13
  ]

do.end.sw.bb_crit_edge13:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge12:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge11:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge11, %do.end.sw.bb_crit_edge12, %do.end.sw.bb_crit_edge13
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %sw.epilogthread-pre-split, label %if.then9

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #10
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %cleanup

sw.epilogthread-pre-split:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %state6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %do.end.sw.epilog_crit_edge
  %10 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %7, %do.end.sw.epilog_crit_edge ]
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %10, label %sw.epilog.sw.default_crit_edge [
    i32 5, label %sw.epilog.sw.bb13_crit_edge
    i32 1, label %sw.epilog.sw.bb13_crit_edge14
    i32 7, label %sw.bb14
  ]

sw.epilog.sw.bb13_crit_edge14:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

sw.epilog.sw.bb13_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

sw.epilog.sw.default_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb13:                                          ; preds = %sw.epilog.sw.bb13_crit_edge, %sw.epilog.sw.bb13_crit_edge14
  %12 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %session, align 4
  %14 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %state6, align 4
  %tx_queue.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2
  %15 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %tx_queue.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  %dlci.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %17 = ptrtoint ptr %dlci.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dlci.i, align 4
  tail call fastcc void @rfcomm_send_disc(ptr noundef %13, i8 noundef zeroext %18) #10
  br label %__rfcomm_dlc_disconn.exit

if.else.i:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_queue_disc(ptr noundef %d) #10
  br label %__rfcomm_dlc_disconn.exit

__rfcomm_dlc_disconn.exit:                        ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 4000, %if.else.i ], [ 2000, %if.then.i ]
  tail call fastcc void @rfcomm_dlc_set_timer(ptr noundef %d, i32 noundef %.sink.i) #10
  br label %cleanup

sw.bb14:                                          ; preds = %sw.epilog
  %state15 = getelementptr inbounds %struct.rfcomm_session, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp.not = icmp eq i32 %20, 3
  br i1 %cmp.not, label %sw.bb14.sw.default_crit_edge, label %if.then17

sw.bb14.sw.default_crit_edge:                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.then17:                                        ; preds = %sw.bb14
  %21 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %session, align 4
  %23 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %state6, align 4
  %tx_queue.i3 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2
  %24 = ptrtoint ptr %tx_queue.i3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_queue.i3, align 4
  %cmp.i.not.i4 = icmp eq ptr %25, %tx_queue.i3
  br i1 %cmp.i.not.i4, label %if.then.i6, label %if.else.i7

if.then.i6:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %dlci.i5 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %26 = ptrtoint ptr %dlci.i5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dlci.i5, align 4
  tail call fastcc void @rfcomm_send_disc(ptr noundef %22, i8 noundef zeroext %27) #10
  br label %__rfcomm_dlc_disconn.exit9

if.else.i7:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_queue_disc(ptr noundef %d) #10
  br label %__rfcomm_dlc_disconn.exit9

__rfcomm_dlc_disconn.exit9:                       ; preds = %if.else.i7, %if.then.i6
  %.sink.i8 = phi i32 [ 4000, %if.else.i7 ], [ 2000, %if.then.i6 ]
  tail call fastcc void @rfcomm_dlc_set_timer(ptr noundef %d, i32 noundef %.sink.i8) #10
  br label %cleanup

sw.default:                                       ; preds = %sw.bb14.sw.default_crit_edge, %sw.epilog.sw.default_crit_edge
  tail call fastcc void @rfcomm_dlc_clear_timer(ptr noundef %d)
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %28 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 9, ptr %state6, align 4
  %state_change = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 24
  %29 = ptrtoint ptr %state_change to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state_change, align 4
  tail call void %30(ptr noundef %d, i32 noundef %err) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %tx_queue = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %tx_queue) #10
  tail call fastcc void @rfcomm_dlc_unlink(ptr noundef %d)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %__rfcomm_dlc_disconn.exit9, %__rfcomm_dlc_disconn.exit, %if.then9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rfcomm_dlc_exists(ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %channel, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %0)
  %1 = icmp ult i8 %0, 30
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral.i)
  %2 = load ptr, ptr @session_list, align 4
  %cmp.not34.i = icmp eq ptr %2, @session_list
  br i1 %cmp.not34.i, label %if.end.rfcomm_session_get.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.rfcomm_session_get.exit.thread_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_session_get.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %s.035.i = phi ptr [ %n.036.i, %for.inc.i.for.body.i_crit_edge ], [ %2, %if.end.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %s.035.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.036.i = load ptr, ptr %s.035.i, align 4
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s.035.i, i32 0, i32 1
  %4 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk.i, align 16
  %chan5.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %chan5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan5.i, align 8
  %10 = call ptr @memset(ptr %.compoundliteral.i, i32 0, i32 6)
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %src, ptr noundef nonnull dereferenceable(6) %.compoundliteral.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %for.body.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %src10.i = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 8
  %bcmp31.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src10.i, ptr noundef dereferenceable(6) %src, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp31.i)
  %tobool12.not.i = icmp eq i32 %bcmp31.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge
  %dst13.i = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 6
  %bcmp32.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst13.i, ptr noundef dereferenceable(6) %dst, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp32.i)
  %tobool15.not.i = icmp eq i32 %bcmp32.i, 0
  br i1 %tobool15.not.i, label %rfcomm_session_get.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %n.036.i, @session_list
  br i1 %cmp.not.i, label %for.inc.i.rfcomm_session_get.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.rfcomm_session_get.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_session_get.exit.thread

rfcomm_session_get.exit.thread:                   ; preds = %for.inc.i.rfcomm_session_get.exit.thread_crit_edge, %if.end.rfcomm_session_get.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  br label %if.end8

rfcomm_session_get.exit:                          ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  %tobool3.not = icmp eq ptr %s.035.i, null
  br i1 %tobool3.not, label %rfcomm_session_get.exit.if.end8_crit_edge, label %if.then4

rfcomm_session_get.exit.if.end8_crit_edge:        ; preds = %rfcomm_session_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %rfcomm_session_get.exit
  %11 = shl i8 %channel, 1
  %12 = and i8 %11, 62
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s.035.i, i32 0, i32 5
  %13 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  %cond = zext i1 %tobool5.not to i8
  %or = or i8 %12, %cond
  %dlcs.i = getelementptr inbounds %struct.rfcomm_session, ptr %s.035.i, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i15.for.cond.i_crit_edge, %if.then4
  %d.0.in.i = phi ptr [ %dlcs.i, %if.then4 ], [ %d.0.i, %for.body.i15.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %d.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %d.0.i = load ptr, ptr %d.0.in.i, align 4
  %cmp.not.i14 = icmp eq ptr %d.0.i, %dlcs.i
  br i1 %cmp.not.i14, label %for.cond.i.if.end8_crit_edge, label %for.body.i15

for.cond.i.if.end8_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.body.i15:                                     ; preds = %for.cond.i
  %dlci2.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 8
  %16 = ptrtoint ptr %dlci2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dlci2.i, align 4
  %cmp4.i = icmp eq i8 %17, %or
  br i1 %cmp4.i, label %for.body.i15.if.end8_crit_edge, label %for.body.i15.for.cond.i_crit_edge

for.body.i15.for.cond.i_crit_edge:                ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i15.if.end8_crit_edge:                   ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %for.body.i15.if.end8_crit_edge, %for.cond.i.if.end8_crit_edge, %rfcomm_session_get.exit.if.end8_crit_edge, %rfcomm_session_get.exit.thread
  %dlc.0 = phi ptr [ null, %rfcomm_session_get.exit.if.end8_crit_edge ], [ null, %rfcomm_session_get.exit.thread ], [ null, %for.cond.i.if.end8_crit_edge ], [ %d.0.i, %for.body.i15.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @rfcomm_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %dlc.0, %if.end8 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfcomm_dlc_send(ptr noundef %d, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup30_crit_edge

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

if.end:                                           ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frag_list, align 8
  store ptr null, ptr %frag_list, align 8
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call9 = tail call fastcc i32 @rfcomm_dlc_send_frag(ptr noundef %d, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  %tobool.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp10, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end.unlock_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.cond:                                         ; preds = %for.body
  %add = add i32 %call16, %len.056
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %for.cond.unlock_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.unlock_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %len.056 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ %call9, %if.end.for.body_crit_edge ]
  %frag.055 = phi ptr [ %7, %for.cond.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %frag.055 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %frag.055, align 8
  %call16 = tail call fastcc i32 @rfcomm_dlc_send_frag(ptr noundef %d, ptr noundef nonnull %frag.055)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %frag.055, i32 noundef 0) #10
  br label %unlock

unlock:                                           ; preds = %cleanup.thread, %for.cond.unlock_crit_edge, %if.end.unlock_crit_edge
  %len.2 = phi i32 [ %call9, %if.end.unlock_crit_edge ], [ %len.056, %cleanup.thread ], [ %add, %for.cond.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.2)
  %cmp23 = icmp sgt i32 %len.2, 0
  br i1 %cmp23, label %land.lhs.true, label %unlock.cleanup30_crit_edge

unlock.cleanup30_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

land.lhs.true:                                    ; preds = %unlock
  %flags25 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  %8 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags25, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool27.not = icmp eq i32 %10, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true.cleanup30_crit_edge

land.lhs.true.cleanup30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %cleanup30

cleanup30:                                        ; preds = %if.then28, %land.lhs.true.cleanup30_crit_edge, %unlock.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.0 = phi i32 [ -107, %entry.cleanup30_crit_edge ], [ %len.2, %if.then28 ], [ %len.2, %land.lhs.true.cleanup30_crit_edge ], [ %len.2, %unlock.cleanup30_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rfcomm_dlc_send_frag(ptr noundef %d, ptr noundef %frag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %frag, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_send_frag.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_send_frag, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mtu = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 18
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_send_frag.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.11, ptr noundef %d, i32 noundef %3, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mtu4 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 18
  %4 = ptrtoint ptr %mtu4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp ugt i32 %1, %5
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %addr = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 9
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr, align 1
  %8 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %9)
  %cmp.i = icmp sgt i32 %9, 127
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @skb_push(ptr noundef %frag, i32 noundef 4) #10
  %len2.i = getelementptr inbounds %struct.rfcomm_hdr, ptr %call.i, i32 0, i32 2
  %.tr19.i = trunc i32 %9 to i16
  %conv.i = shl i16 %.tr19.i, 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #10
  %11 = ptrtoint ptr %len2.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %len2.i, align 1
  br label %rfcomm_make_uih.exit

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call ptr @skb_push(ptr noundef %frag, i32 noundef 3) #10
  %.tr.i = trunc i32 %9 to i8
  %12 = shl i8 %.tr.i, 1
  %conv5.i = or i8 %12, 1
  %len6.i = getelementptr inbounds %struct.rfcomm_hdr, ptr %call3.i, i32 0, i32 2
  %13 = ptrtoint ptr %len6.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv5.i, ptr %len6.i, align 1
  br label %rfcomm_make_uih.exit

rfcomm_make_uih.exit:                             ; preds = %if.else.i, %if.then.i
  %hdr.0.i = phi ptr [ %call.i, %if.then.i ], [ %call3.i, %if.else.i ]
  %14 = ptrtoint ptr %hdr.0.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %7, ptr %hdr.0.i, align 1
  %ctrl.i = getelementptr %struct.rfcomm_hdr, ptr %hdr.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -17, ptr %ctrl.i, align 1
  %call8.i = tail call ptr @skb_put(ptr noundef %frag, i32 noundef 1) #10
  %16 = ptrtoint ptr %hdr.0.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hdr.0.i, align 1
  %18 = xor i8 %17, -1
  %xor.i.i = zext i8 %18 to i32
  %arrayidx1.i.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i.i
  %19 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i.i, align 1
  %21 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl.i, align 1
  %xor510.i.i = xor i8 %22, %20
  %xor5.i.i = zext i8 %xor510.i.i to i32
  %arrayidx6.i.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i.i
  %23 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx6.i.i, align 1
  %25 = xor i8 %24, -1
  %26 = ptrtoint ptr %call8.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %call8.i, align 1
  %tx_queue = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %tx_queue, ptr %frag, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.49, ptr %frag, i32 0, i32 1
  %30 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %prev10.i.i.i, align 4
  store volatile ptr %frag, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %frag, ptr %28, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %rfcomm_make_uih.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %rfcomm_make_uih.exit ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rfcomm_dlc_send_noerror(ptr noundef %d, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_send_noerror.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_send_noerror, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mtu = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 18
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_send_noerror.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.11, ptr noundef %d, i32 noundef %3, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %addr = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 9
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 1
  %6 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %7)
  %cmp.i = icmp sgt i32 %7, 127
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #10
  %len2.i = getelementptr inbounds %struct.rfcomm_hdr, ptr %call.i, i32 0, i32 2
  %.tr19.i = trunc i32 %7 to i16
  %conv.i = shl i16 %.tr19.i, 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #10
  %9 = ptrtoint ptr %len2.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %len2.i, align 1
  br label %rfcomm_make_uih.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #10
  %.tr.i = trunc i32 %7 to i8
  %10 = shl i8 %.tr.i, 1
  %conv5.i = or i8 %10, 1
  %len6.i = getelementptr inbounds %struct.rfcomm_hdr, ptr %call3.i, i32 0, i32 2
  %11 = ptrtoint ptr %len6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5.i, ptr %len6.i, align 1
  br label %rfcomm_make_uih.exit

rfcomm_make_uih.exit:                             ; preds = %if.else.i, %if.then.i
  %hdr.0.i = phi ptr [ %call.i, %if.then.i ], [ %call3.i, %if.else.i ]
  %12 = ptrtoint ptr %hdr.0.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %5, ptr %hdr.0.i, align 1
  %ctrl.i = getelementptr %struct.rfcomm_hdr, ptr %hdr.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -17, ptr %ctrl.i, align 1
  %call8.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #10
  %14 = ptrtoint ptr %hdr.0.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdr.0.i, align 1
  %16 = xor i8 %15, -1
  %xor.i.i = zext i8 %16 to i32
  %arrayidx1.i.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i.i
  %17 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i.i, align 1
  %19 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctrl.i, align 1
  %xor510.i.i = xor i8 %20, %18
  %xor5.i.i = zext i8 %xor510.i.i to i32
  %arrayidx6.i.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i.i
  %21 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx6.i.i, align 1
  %23 = xor i8 %22, -1
  %24 = ptrtoint ptr %call8.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %call8.i, align 1
  %tx_queue = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef %skb) #10
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp eq i32 %26, 1
  br i1 %cmp, label %land.lhs.true, label %rfcomm_make_uih.exit.if.end7_crit_edge

rfcomm_make_uih.exit.if.end7_crit_edge:           ; preds = %rfcomm_make_uih.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %rfcomm_make_uih.exit
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not = icmp eq i32 %29, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %rfcomm_make_uih.exit.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rfcomm_dlc_throttle(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rfcomm_dlc_throttle.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rfcomm_dlc_throttle, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rfcomm_dlc_throttle.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.13, ptr noundef %d, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cfc = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 19
  %2 = ptrtoint ptr %cfc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %v24_sig = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 11
  %4 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %v24_sig, align 1
  %6 = or i8 %5, 2
  store i8 %6, ptr %v24_sig, align 1
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rfcomm_dlc_unthrottle(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rfcomm_dlc_unthrottle.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rfcomm_dlc_unthrottle, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rfcomm_dlc_unthrottle.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.13, ptr noundef %d, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cfc = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 19
  %2 = ptrtoint ptr %cfc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %v24_sig = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 11
  %4 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %v24_sig, align 1
  %6 = and i8 %5, -3
  store i8 %6, ptr %v24_sig, align 1
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfcomm_dlc_set_modem_status(ptr noundef %d, i8 noundef zeroext %v24_sig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_set_modem_status.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_set_modem_status, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = zext i8 %v24_sig to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_set_modem_status.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.16, ptr noundef %d, i32 noundef %1, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i8 %v24_sig, -3
  %5 = trunc i32 %3 to i8
  %6 = shl i8 %5, 1
  %7 = and i8 %6, 2
  %v24_sig.addr.0 = or i8 %7, %4
  %v24_sig11 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 11
  %8 = ptrtoint ptr %v24_sig11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %v24_sig.addr.0, ptr %v24_sig11, align 1
  %call13 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %do.end.if.end16_crit_edge

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.end.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfcomm_dlc_get_modem_status(ptr noundef %d, ptr nocapture noundef writeonly %v24_sig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_get_modem_status.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_get_modem_status, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %v24_sig3 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 11
  %2 = ptrtoint ptr %v24_sig3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %v24_sig3, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_get_modem_status.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.16, ptr noundef %d, i32 noundef %1, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %v24_sig4 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 11
  %4 = ptrtoint ptr %v24_sig4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %v24_sig4, align 1
  %6 = ptrtoint ptr %v24_sig to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %v24_sig, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rfcomm_session_getaddr(ptr nocapture noundef readonly %s, ptr noundef writeonly %src, ptr noundef writeonly %dst) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sock = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %chan1 = getelementptr inbounds %struct.l2cap_pinfo, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan1, align 8
  %tobool.not = icmp eq ptr %src, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %src2 = getelementptr inbounds %struct.l2cap_chan, ptr %5, i32 0, i32 8
  %6 = call ptr @memcpy(ptr %src, ptr %src2, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool3.not = icmp eq ptr %dst, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dst5 = getelementptr inbounds %struct.l2cap_chan, ptr %5, i32 0, i32 6
  %7 = call ptr @memcpy(ptr %dst, ptr %dst5, i32 6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfcomm_send_rpn(ptr noundef %s, i32 noundef %cr, i8 noundef zeroext %dlci, i8 noundef zeroext %bit_rate, i8 noundef zeroext %data_bits, i8 noundef zeroext %stop_bits, i8 noundef zeroext %parity, i8 noundef zeroext %flow_ctrl_settings, i8 noundef zeroext %xon_char, i8 noundef zeroext %xoff_char, i16 noundef zeroext %param_mask) local_unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 13
  %12 = getelementptr inbounds i8, ptr %buf, i32 14
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 -1, ptr %12, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_rpn.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_rpn, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %dlci to i32
  %conv3 = zext i8 %bit_rate to i32
  %conv4 = zext i8 %data_bits to i32
  %conv5 = zext i8 %stop_bits to i32
  %conv6 = zext i8 %parity to i32
  %conv7 = zext i8 %flow_ctrl_settings to i32
  %conv8 = zext i8 %xon_char to i32
  %conv9 = zext i8 %xoff_char to i32
  %conv10 = zext i16 %param_mask to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_rpn.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.19, ptr noundef %s, i32 noundef %cr, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %14 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %15 to i8
  %16 = shl i8 %.tr, 1
  %conv12 = or i8 %16, 1
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12, ptr %buf, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -17, ptr %0, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 21, ptr %1, align 1
  %cr.tr = trunc i32 %cr to i8
  %20 = shl i8 %cr.tr, 1
  %conv17 = or i8 %20, -111
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv17, ptr %2, align 1
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 17, ptr %3, align 1
  %23 = shl i8 %dlci, 2
  %24 = or i8 %23, 3
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %4, align 1
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bit_rate, ptr %5, align 1
  %27 = and i8 %data_bits, 3
  %28 = shl i8 %stop_bits, 2
  %29 = and i8 %28, 4
  %or3275 = or i8 %29, %27
  %30 = shl i8 %parity, 3
  %31 = and i8 %30, 56
  %or3676 = or i8 %or3275, %31
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or3676, ptr %6, align 1
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %flow_ctrl_settings, ptr %7, align 1
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %xon_char, ptr %8, align 1
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %xoff_char, ptr %9, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %param_mask)
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %10, align 1
  %38 = xor i8 %16, -2
  %xor.i = zext i8 %38 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %39 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx1.i, align 1
  %xor510.i = xor i8 %40, -17
  %xor5.i = zext i8 %xor510.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %41 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx6.i, align 1
  %43 = xor i8 %42, -1
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #10
  %45 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %46 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf, ptr %iv.i, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 14, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_rpn, %if.then.i)) #10
          to label %rfcomm_send_frame.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 14) #10
  br label %rfcomm_send_frame.exit

rfcomm_send_frame.exit:                           ; preds = %if.then.i, %do.end
  %48 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %49 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sock.i, align 4
  %call3.i = call i32 @kernel_sendmsg(ptr noundef %50, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 14) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  ret i32 %call3.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rfcomm_dlc_accept(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %session = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  %sock = getelementptr inbounds %struct.rfcomm_session, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk1, align 16
  %chan = getelementptr inbounds %struct.l2cap_pinfo, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_accept.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_accept, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_accept.__UNIQUE_ID_ddebug522, ptr noundef nonnull @.str.21, ptr noundef %d) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %session, align 4
  %dlci = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %12 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dlci, align 4
  tail call fastcc void @rfcomm_send_ua(ptr noundef %11, i8 noundef zeroext %13)
  tail call fastcc void @rfcomm_dlc_clear_timer(ptr noundef %d)
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %state, align 4
  %state_change = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 24
  %15 = ptrtoint ptr %state_change to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state_change, align 4
  tail call void %16(ptr noundef %d, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %role_switch = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 16
  %17 = ptrtoint ptr %role_switch to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %role_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not = icmp eq i8 %18, 0
  br i1 %tobool8.not, label %do.end.if.end11_crit_edge, label %if.then9

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %9, align 4
  %call10 = tail call i32 @hci_conn_switch_role(ptr noundef %20, i8 noundef zeroext 0) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end.if.end11_crit_edge
  %21 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %session, align 4
  %23 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dlci, align 4
  %v24_sig = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 11
  %25 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %v24_sig, align 1
  tail call fastcc void @rfcomm_send_msc(ptr noundef %22, i32 noundef 1, i8 noundef zeroext %24, i8 noundef zeroext %26)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_ua(ptr noundef %s, i8 noundef zeroext %dlci) unnamed_addr #0 align 64 {
entry:
  %iv.i.i = alloca %struct.kvec, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  %cmd = alloca %struct.rfcomm_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_ua.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_ua, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %dlci to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_ua.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.54, ptr noundef %s, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = shl i8 %dlci, 2
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %4 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  %shl7 = select i1 %tobool4.not, i8 2, i8 0
  %or = or i8 %shl7, %3
  %or8 = or i8 %or, 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or8, ptr %cmd, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 115, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %1, align 1
  %9 = xor i8 %or, -2
  %xor.i = zext i8 %9 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %xor516.i = xor i8 %11, 115
  %xor5.i = zext i8 %xor516.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6.i, align 1
  %xor1017.i = xor i8 %13, 1
  %xor10.i = zext i8 %xor1017.i to i32
  %arrayidx11.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor10.i
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11.i, align 1
  %16 = xor i8 %15, -1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_cmd.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_ua, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %0, align 1
  %conv.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_cmd.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.56, ptr noundef %s, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i) #10
  %20 = getelementptr inbounds %struct.kvec, ptr %iv.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd, ptr %iv.i.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_ua, %if.then.i.i)) #10
          to label %rfcomm_send_cmd.exit [label %if.then.i.i], !srcloc !362

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 4) #10
  br label %rfcomm_send_cmd.exit

rfcomm_send_cmd.exit:                             ; preds = %if.then.i.i, %do.end.i
  %23 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %sock.i.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %24 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sock.i.i, align 4
  %call3.i.i = call i32 @kernel_sendmsg(ptr noundef %25, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %iv.i.i, i32 noundef 1, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_dlc_clear_timer(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_clear_timer.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_clear_timer, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_clear_timer.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.13, ptr noundef %d, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timer = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 3
  %call3 = tail call i32 @del_timer(ptr noundef %timer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end6_crit_edge, label %if.then5

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %do.end
  %refcnt.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i.i, !prof !361

if.end5.i.i.i.i.if.end6_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %if.end6

if.then.i:                                        ; preds = %if.then5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !365
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_free.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_clear_timer, %if.then.i.i)) #10
          to label %rfcomm_dlc_free.exit.i [label %if.then.i.i], !srcloc !362

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_free.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.6, ptr noundef %d) #10
  br label %rfcomm_dlc_free.exit.i

rfcomm_dlc_free.exit.i:                           ; preds = %if.then.i.i, %if.then.i
  %tx_queue.i.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %tx_queue.i.i) #10
  tail call void @kfree(ptr noundef %d) #10
  br label %if.end6

if.end6:                                          ; preds = %rfcomm_dlc_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end6_crit_edge, %do.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_switch_role(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_msc(ptr noundef %s, i32 noundef %cr, i8 noundef zeroext %dlci, i8 noundef zeroext %v24_sig) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds i8, ptr %buf, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 -1, ptr %7, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_msc.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_msc, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %v24_sig to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_msc.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.70, ptr noundef %s, i32 noundef %cr, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %9 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %10 to i8
  %11 = shl i8 %.tr, 1
  %conv4 = or i8 %11, 1
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4, ptr %buf, align 1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -17, ptr %0, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 9, ptr %1, align 1
  %cr.tr = trunc i32 %cr to i8
  %15 = shl i8 %cr.tr, 1
  %conv9 = or i8 %15, -31
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9, ptr %2, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 5, ptr %3, align 1
  %18 = shl i8 %dlci, 2
  %19 = or i8 %18, 3
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %4, align 1
  %21 = or i8 %v24_sig, 1
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %5, align 1
  %23 = xor i8 %11, -2
  %xor.i = zext i8 %23 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx1.i, align 1
  %xor510.i = xor i8 %25, -17
  %xor5.i = zext i8 %xor510.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx6.i, align 1
  %28 = xor i8 %27, -1
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #10
  %30 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %31 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf, ptr %iv.i, align 4
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_msc, %if.then.i)) #10
          to label %rfcomm_send_frame.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 8) #10
  br label %rfcomm_send_frame.exit

rfcomm_send_frame.exit:                           ; preds = %if.then.i, %do.end
  %33 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %34 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sock.i, align 4
  %call3.i = call i32 @kernel_sendmsg(ptr noundef %35, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 8) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @rfcomm_dlc_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %0) #10
  %call = tail call i32 @hci_unregister_cb(ptr noundef nonnull @rfcomm_cb) #10
  %1 = load ptr, ptr @rfcomm_thread, align 4
  %call1 = tail call i32 @kthread_stop(ptr noundef %1) #10
  tail call void @rfcomm_cleanup_ttys() #10
  tail call void @rfcomm_cleanup_sockets() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_unregister_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfcomm_cleanup_ttys() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfcomm_cleanup_sockets() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hci_register_cb(ptr noundef nonnull @rfcomm_cb) #10
  %call1 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rfcomm_run, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.74) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call1, ptr @rfcomm_thread, align 4
  %0 = ptrtoint ptr %call1 to i32
  br label %unregister

if.end7:                                          ; preds = %entry
  %call3 = tail call i32 @wake_up_process(ptr noundef %call1) #10
  store ptr %call1, ptr @rfcomm_thread, align 4
  %call8 = tail call i32 @rfcomm_init_ttys() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.stop_crit_edge, label %if.end10

if.end7.stop_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop

if.end10:                                         ; preds = %if.end7
  %call11 = tail call i32 @rfcomm_init_sockets() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end10
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.23) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bt_debugfs to i32))
  %1 = load ptr, ptr @bt_debugfs, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i27 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i27
  br i1 %spec.select.i, label %if.end14.cleanup21_crit_edge, label %if.end17

if.end14.cleanup21_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

if.end17:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.76, i16 noundef zeroext 292, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @rfcomm_dlc_debugfs_fops) #10
  store ptr %call18, ptr @rfcomm_dlc_debugfs, align 4
  br label %cleanup21

cleanup:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rfcomm_cleanup_ttys() #10
  br label %stop

stop:                                             ; preds = %cleanup, %if.end7.stop_crit_edge
  %err.0 = phi i32 [ %call8, %if.end7.stop_crit_edge ], [ %call11, %cleanup ]
  %2 = load ptr, ptr @rfcomm_thread, align 4
  %call19 = tail call i32 @kthread_stop(ptr noundef %2) #10
  br label %unregister

unregister:                                       ; preds = %stop, %if.then5
  %err.1 = phi i32 [ %0, %if.then5 ], [ %err.0, %stop ]
  %call20 = tail call i32 @hci_unregister_cb(ptr noundef nonnull @rfcomm_cb) #10
  br label %cleanup21

cleanup21:                                        ; preds = %unregister, %if.end17, %if.end14.cleanup21_crit_edge
  %retval.0 = phi i32 [ %err.1, %unregister ], [ 0, %if.end17 ], [ 0, %if.end14.cleanup21_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rfcomm_session_create(ptr noundef %src, ptr noundef %dst, i8 noundef zeroext %sec_level, ptr nocapture noundef writeonly %err) unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.sockaddr_l2, align 2
  %sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %addr) #10
  %0 = getelementptr inbounds i8, ptr %addr, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #10
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !366
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_session_create.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_session_create, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_session_create.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.32, ptr noundef %src, ptr noundef %dst) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_l2sock_create.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_session_create, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_l2sock_create.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.34) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %call3.i = call i32 @sock_create_kern(ptr noundef nonnull @init_net, i32 noundef 31, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %sock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %rfcomm_l2sock_create.exit.thread, label %rfcomm_l2sock_create.exit

rfcomm_l2sock_create.exit.thread:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sock, align 4
  %sk6.i = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %sk6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk6.i, align 16
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 77
  %7 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rfcomm_l2data_ready, ptr %sk_data_ready.i, align 8
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 76
  %8 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rfcomm_l2state_change, ptr %sk_state_change.i, align 4
  %9 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %err, align 4
  br label %if.end5

rfcomm_l2sock_create.exit:                        ; preds = %do.end.i
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %rfcomm_l2sock_create.exit.cleanup_crit_edge, label %rfcomm_l2sock_create.exit.if.end5_crit_edge

rfcomm_l2sock_create.exit.if.end5_crit_edge:      ; preds = %rfcomm_l2sock_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

rfcomm_l2sock_create.exit.cleanup_crit_edge:      ; preds = %rfcomm_l2sock_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %rfcomm_l2sock_create.exit.if.end5_crit_edge, %rfcomm_l2sock_create.exit.thread
  %l2_bdaddr = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %l2_bdaddr, ptr %src, i32 6)
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 31, ptr %addr, align 2
  %l2_psm = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 1
  %13 = ptrtoint ptr %l2_psm to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %l2_psm, align 2
  %l2_cid = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 3
  %14 = ptrtoint ptr %l2_cid to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %l2_cid, align 2
  %l2_bdaddr_type = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 4
  %15 = ptrtoint ptr %l2_bdaddr_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %l2_bdaddr_type, align 2
  %16 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sock, align 4
  %call6 = call i32 @kernel_bind(ptr noundef %17, ptr noundef nonnull %addr, i32 noundef 14) #10
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call6, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.failed_crit_edge, label %if.end9

if.end5.failed_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end9:                                          ; preds = %if.end5
  %19 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sock, align 4
  %sk10 = getelementptr inbounds %struct.socket, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %sk10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk10, align 16
  call void @lock_sock_nested(ptr noundef %22, i32 noundef 0) #10
  %chan = getelementptr inbounds %struct.l2cap_pinfo, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan, align 8
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %imtu to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %imtu, align 4
  %26 = load ptr, ptr %chan, align 8
  %sec_level12 = getelementptr inbounds %struct.l2cap_chan, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %sec_level12 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %sec_level, ptr %sec_level12, align 1
  %28 = load i8, ptr @l2cap_ertm, align 1, !range !367
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool13.not = icmp eq i8 %28, 0
  br i1 %tobool13.not, label %if.end9.if.end16_crit_edge, label %if.then14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan, align 8
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %mode, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  call void @release_sock(ptr noundef %22) #10
  %32 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sock, align 4
  %call17 = call fastcc ptr @rfcomm_session_add(ptr noundef %33, i32 noundef 3)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -12, ptr %err, align 4
  br label %failed

if.end20:                                         ; preds = %if.end16
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %call17, i32 0, i32 5
  %35 = ptrtoint ptr %initiator to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %initiator, align 4
  %36 = call ptr @memcpy(ptr %l2_bdaddr, ptr %dst, i32 6)
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 31, ptr %addr, align 2
  %38 = ptrtoint ptr %l2_psm to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 768, ptr %l2_psm, align 2
  %39 = ptrtoint ptr %l2_cid to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %l2_cid, align 2
  %40 = ptrtoint ptr %l2_bdaddr_type to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %l2_bdaddr_type, align 2
  %41 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sock, align 4
  %call26 = call i32 @kernel_connect(ptr noundef %42, ptr noundef nonnull %addr, i32 noundef 14, i32 noundef 2048) #10
  %43 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call26, ptr %err, align 4
  %44 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call26, label %if.end30 [
    i32 0, label %if.end20.cleanup_crit_edge
    i32 -115, label %if.end20.cleanup_crit_edge53
  ]

if.end20.cleanup_crit_edge53:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @rfcomm_session_del(ptr noundef nonnull %call17)
  br label %cleanup

failed:                                           ; preds = %if.then19, %if.end5.failed_crit_edge
  %45 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sock, align 4
  call void @sock_release(ptr noundef %46) #10
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end30, %if.end20.cleanup_crit_edge, %if.end20.cleanup_crit_edge53, %rfcomm_l2sock_create.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %failed ], [ null, %if.end30 ], [ null, %rfcomm_l2sock_create.exit.cleanup_crit_edge ], [ %call17, %if.end20.cleanup_crit_edge ], [ %call17, %if.end20.cleanup_crit_edge53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #10
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %addr) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_dlc_link(ptr noundef %s, ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_link.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_link, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_link.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.46, ptr noundef %d, ptr noundef %s) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_session_clear_timer.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_link, %if.then.i)) #10
          to label %rfcomm_session_clear_timer.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_session_clear_timer.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.42, ptr noundef %s, i32 noundef %1) #10
  br label %rfcomm_session_clear_timer.exit

rfcomm_session_clear_timer.exit:                  ; preds = %if.then.i, %do.end
  %timer.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 2
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #10
  %refcnt.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !368
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %rfcomm_session_clear_timer.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !369

rfcomm_session_clear_timer.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %rfcomm_session_clear_timer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %rfcomm_session_clear_timer.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.rfcomm_dlc_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !361

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.rfcomm_dlc_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_dlc_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %rfcomm_session_clear_timer.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %rfcomm_session_clear_timer.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %rfcomm_dlc_hold.exit

rfcomm_dlc_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.rfcomm_dlc_hold.exit_crit_edge
  %dlcs = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  %4 = ptrtoint ptr %dlcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dlcs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %d, ptr noundef %dlcs, ptr noundef %5) #10
  br i1 %call.i.i, label %if.end.i.i, label %rfcomm_dlc_hold.exit.list_add.exit_crit_edge

rfcomm_dlc_hold.exit.list_add.exit_crit_edge:     ; preds = %rfcomm_dlc_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %rfcomm_dlc_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %d, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %d, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %d, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dlcs, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %dlcs to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %d, ptr %dlcs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %rfcomm_dlc_hold.exit.list_add.exit_crit_edge
  %session = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %10 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %s, ptr %session, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_pn(ptr noundef %s, i32 noundef %cr, ptr nocapture noundef readonly %d) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 11
  %10 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 12
  %11 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 13
  %12 = getelementptr inbounds i8, ptr %buf, i32 13
  %13 = call ptr @memset(ptr %12, i32 255, i32 3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_pn.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_pn, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dlci = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %14 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dlci, align 4
  %conv = zext i8 %15 to i32
  %mtu = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 18
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_pn.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.48, ptr noundef %s, i32 noundef %cr, i32 noundef %conv, i32 noundef %17) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %18 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %19 to i8
  %20 = shl i8 %.tr, 1
  %conv4 = or i8 %20, 1
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv4, ptr %buf, align 1
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -17, ptr %0, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 21, ptr %1, align 1
  %cr.tr = trunc i32 %cr to i8
  %24 = shl i8 %cr.tr, 1
  %conv9 = or i8 %24, -127
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv9, ptr %2, align 1
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 17, ptr %3, align 1
  %dlci12 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %27 = ptrtoint ptr %dlci12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dlci12, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %4, align 1
  %priority = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 10
  %30 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %priority, align 2
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %6, align 1
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %7, align 1
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %9, align 1
  %cfc = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 6
  %35 = ptrtoint ptr %cfc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cfc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool15.not = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cr)
  %tobool17.not = icmp eq i32 %cr, 0
  %conv18 = select i1 %tobool17.not, i8 -32, i8 -16
  %conv18.sink = select i1 %tobool15.not, i8 0, i8 %conv18
  %.sink = select i1 %tobool15.not, i8 0, i8 7
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv18.sink, ptr %5, align 1
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.sink, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cr)
  %tobool22.not = icmp eq i32 %cr, 0
  br i1 %tobool22.not, label %do.end.if.else27_crit_edge, label %land.lhs.true

do.end.if.else27_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else27

land.lhs.true:                                    ; preds = %do.end
  %39 = load i32, ptr @channel_mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp = icmp sgt i32 %39, -1
  br i1 %cmp, label %land.lhs.true.if.end31_crit_edge, label %land.lhs.true.if.else27_crit_edge

land.lhs.true.if.else27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else27

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.else27:                                        ; preds = %land.lhs.true.if.else27_crit_edge, %do.end.if.else27_crit_edge
  %mtu28 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 18
  %40 = ptrtoint ptr %mtu28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mtu28, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %land.lhs.true.if.end31_crit_edge
  %.sink2 = phi i32 [ %41, %if.else27 ], [ %39, %land.lhs.true.if.end31_crit_edge ]
  %conv29 = trunc i32 %.sink2 to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv29)
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %8, align 1
  %44 = xor i8 %20, -2
  %xor.i = zext i8 %44 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %45 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx1.i, align 1
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %0, align 1
  %xor510.i = xor i8 %48, %46
  %xor5.i = zext i8 %xor510.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %49 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx6.i, align 1
  %51 = xor i8 %50, -1
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #10
  %53 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %54 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf, ptr %iv.i, align 4
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 14, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_pn, %if.then.i)) #10
          to label %rfcomm_send_frame.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 14) #10
  br label %rfcomm_send_frame.exit

rfcomm_send_frame.exit:                           ; preds = %if.then.i, %if.end31
  %56 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %57 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sock.i, align 4
  %call3.i = call i32 @kernel_sendmsg(ptr noundef %58, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 14) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_dlc_set_timer(ptr noundef %d, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_set_timer.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_set_timer, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_set_timer.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.50, ptr noundef %d, i32 noundef %1, i32 noundef %timeout) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timer = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, %timeout
  %call3 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %do.end
  %refcnt.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !368
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then5.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !369

if.then5.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end6_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !361

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end6_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then5.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then5.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end6

if.end6:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end6_crit_edge, %do.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rfcomm_session_add(ptr noundef %sock, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_session_add.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_session_add, %if.then5)) #10
          to label %do.body7 [label %if.then5], !srcloc !362

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_session_add.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.39, ptr noundef nonnull %call7.i.i, ptr noundef %sock) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.body
  %timer = getelementptr inbounds %struct.rfcomm_session, ptr %call7.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @rfcomm_session_timeout, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @rfcomm_session_add.__key) #10
  %dlcs = getelementptr inbounds %struct.rfcomm_session, ptr %call7.i.i, i32 0, i32 8
  %1 = ptrtoint ptr %dlcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %dlcs, ptr %dlcs, align 8
  %prev.i = getelementptr inbounds %struct.rfcomm_session, ptr %call7.i.i, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dlcs, ptr %prev.i, align 4
  %state10 = getelementptr inbounds %struct.rfcomm_session, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %state, ptr %state10, align 4
  %sock11 = getelementptr inbounds %struct.rfcomm_session, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %sock11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sock, ptr %sock11, align 8
  %mtu = getelementptr inbounds %struct.rfcomm_session, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 127, ptr %mtu, align 4
  %6 = load i8, ptr @disable_cfc, align 1, !range !367
  %sext = add nsw i8 %6, -1
  %cond = sext i8 %sext to i32
  %cfc = getelementptr inbounds %struct.rfcomm_session, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %cfc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %cfc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %state)
  %cmp.not = icmp eq i32 %state, 4
  br i1 %cmp.not, label %do.body7.if.end17_crit_edge, label %if.then13

do.body7.if.end17_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %do.body7
  %call14 = tail call zeroext i1 @try_module_get(ptr noundef null) #10
  br i1 %call14, label %if.then13.if.end17_crit_edge, label %if.then15

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end17:                                         ; preds = %if.then13.if.end17_crit_edge, %do.body7.if.end17_crit_edge
  %8 = load ptr, ptr @session_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @session_list, ptr noundef %8) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @session_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @session_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end17.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then15 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end17.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_session_del(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_session_del.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_session_del, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_session_del.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.42, ptr noundef %s, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %s, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %s, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_session_clear_timer.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_session_del, %if.then.i)) #10
          to label %rfcomm_session_clear_timer.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_session_clear_timer.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.42, ptr noundef %s, i32 noundef %13) #10
  br label %rfcomm_session_clear_timer.exit

rfcomm_session_clear_timer.exit:                  ; preds = %if.then.i, %list_del.exit
  %timer.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 2
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #10
  %sock = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %14 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sock, align 4
  tail call void @sock_release(ptr noundef %15) #10
  tail call void @kfree(ptr noundef %s) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %rfcomm_session_clear_timer.exit.if.end6_crit_edge, label %if.then5

rfcomm_session_clear_timer.exit.if.end6_crit_edge: ; preds = %rfcomm_session_clear_timer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %rfcomm_session_clear_timer.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @module_put(ptr noundef null) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %rfcomm_session_clear_timer.exit.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_l2data_ready(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_l2data_ready.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_l2data_ready, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_l2data_ready.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.6, ptr noundef %sk) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_l2state_change(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_l2state_change.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_l2state_change, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_l2state_change.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.37, ptr noundef %sk, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_session_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_session_timeout.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_session_timeout, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %t, i32 -12
  %state = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_session_timeout.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.42, ptr noundef %add.ptr, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr i8, ptr %t, i32 52
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_security(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_dlc_unlink(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %session = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_unlink.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_unlink, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #10
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_unlink.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.60, ptr noundef %d, i32 noundef %3, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %d) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %d, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %d, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %session, align 4
  %refcnt.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !361

if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_dlc_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %rfcomm_dlc_put.exit

if.then.i:                                        ; preds = %list_del.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !365
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dlc_free.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_unlink, %if.then.i.i)) #10
          to label %rfcomm_dlc_free.exit.i [label %if.then.i.i], !srcloc !362

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dlc_free.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.6, ptr noundef %d) #10
  br label %rfcomm_dlc_free.exit.i

rfcomm_dlc_free.exit.i:                           ; preds = %if.then.i.i, %if.then.i
  %tx_queue.i.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %tx_queue.i.i) #10
  tail call void @kfree(ptr noundef %d) #10
  br label %rfcomm_dlc_put.exit

rfcomm_dlc_put.exit:                              ; preds = %rfcomm_dlc_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge
  %dlcs = getelementptr inbounds %struct.rfcomm_session, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %dlcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %dlcs, align 4
  %cmp.i.not = icmp eq ptr %15, %dlcs
  br i1 %cmp.i.not, label %if.then7, label %rfcomm_dlc_put.exit.if.end8_crit_edge

rfcomm_dlc_put.exit.if.end8_crit_edge:            ; preds = %rfcomm_dlc_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %rfcomm_dlc_put.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_session_set_timer.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dlc_unlink, %if.then.i16)) #10
          to label %rfcomm_session_set_timer.exit [label %if.then.i16], !srcloc !362

if.then.i16:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.rfcomm_session, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_session_set_timer.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.62, ptr noundef %1, i32 noundef %17, i32 noundef 200) #10
  br label %rfcomm_session_set_timer.exit

rfcomm_session_set_timer.exit:                    ; preds = %if.then.i16, %if.then7
  %timer.i = getelementptr inbounds %struct.rfcomm_session, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %18, 200
  %call3.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %if.end8

if.end8:                                          ; preds = %rfcomm_session_set_timer.exit, %rfcomm_dlc_put.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_disc(ptr noundef %s, i8 noundef zeroext %dlci) unnamed_addr #0 align 64 {
entry:
  %iv.i.i = alloca %struct.kvec, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  %cmd = alloca %struct.rfcomm_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_disc.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_disc, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %dlci to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_disc.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.54, ptr noundef %s, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = shl i8 %dlci, 2
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %4 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %5 to i8
  %6 = shl i8 %.tr, 1
  %7 = or i8 %6, %3
  %conv6 = or i8 %7, 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6, ptr %cmd, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 83, ptr %0, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %1, align 1
  %11 = xor i8 %7, -2
  %xor.i = zext i8 %11 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i, align 1
  %xor516.i = xor i8 %13, 83
  %xor5.i = zext i8 %xor516.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i, align 1
  %xor1017.i = xor i8 %15, 1
  %xor10.i = zext i8 %xor1017.i to i32
  %arrayidx11.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor10.i
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  %18 = xor i8 %17, -1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_cmd.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_disc, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %0, align 1
  %conv.i = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_cmd.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.56, ptr noundef %s, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i) #10
  %22 = getelementptr inbounds %struct.kvec, ptr %iv.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmd, ptr %iv.i.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_disc, %if.then.i.i)) #10
          to label %rfcomm_send_cmd.exit [label %if.then.i.i], !srcloc !362

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 4) #10
  br label %rfcomm_send_cmd.exit

rfcomm_send_cmd.exit:                             ; preds = %if.then.i.i, %do.end.i
  %25 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %sock.i.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %26 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sock.i.i, align 4
  %call3.i.i = call i32 @kernel_sendmsg(ptr noundef %27, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %iv.i.i, i32 noundef 1, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_queue_disc(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_queue_disc.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_queue_disc, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dlci = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dlci, align 4
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_queue_disc.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.58, ptr noundef %d, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 4, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !361

do.body3.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !370
  unreachable

__skb_put.exit:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %7, 4
  store i32 %add.i, ptr %len9.i, align 4
  %addr = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 9
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %5, align 1
  %ctrl = getelementptr %struct.rfcomm_cmd, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 83, ptr %ctrl, align 1
  %len = getelementptr %struct.rfcomm_cmd, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %len, align 1
  %13 = xor i8 %9, -1
  %xor.i = zext i8 %13 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.i, align 1
  %xor516.i = xor i8 %15, 83
  %xor5.i = zext i8 %xor516.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6.i, align 1
  %xor1017.i = xor i8 %17, 1
  %xor10.i = zext i8 %xor1017.i to i32
  %arrayidx11.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor10.i
  %18 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx11.i, align 1
  %20 = xor i8 %19, -1
  %fcs = getelementptr inbounds %struct.rfcomm_cmd, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %fcs to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %fcs, align 1
  %tx_queue = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef nonnull %call.i) #10
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %__skb_put.exit, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_security_cfm(ptr noundef %conn, i8 noundef zeroext %status, i8 noundef zeroext %encrypt) #0 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_security_cfm.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_security_cfm, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %status to i32
  %conv3 = zext i8 %encrypt to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_security_cfm.__UNIQUE_ID_ddebug550, ptr noundef nonnull @.str.73, ptr noundef %conn, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %bdaddr = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 7
  %dst = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral.i)
  %2 = load ptr, ptr @session_list, align 4
  %cmp.not34.i = icmp eq ptr %2, @session_list
  br i1 %cmp.not34.i, label %do.end.rfcomm_session_get.exit.thread_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.rfcomm_session_get.exit.thread_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_session_get.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %s.035.i = phi ptr [ %n.036.i, %for.inc.i.for.body.i_crit_edge ], [ %2, %do.end.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %s.035.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.036.i = load ptr, ptr %s.035.i, align 4
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s.035.i, i32 0, i32 1
  %4 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk.i, align 16
  %chan5.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %chan5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan5.i, align 8
  %10 = call ptr @memset(ptr %.compoundliteral.i, i32 0, i32 6)
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr, ptr noundef nonnull dereferenceable(6) %.compoundliteral.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %for.body.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %src10.i = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 8
  %bcmp31.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src10.i, ptr noundef dereferenceable(6) %bdaddr, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp31.i)
  %tobool12.not.i = icmp eq i32 %bcmp31.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge
  %dst13.i = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 6
  %bcmp32.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst13.i, ptr noundef dereferenceable(6) %dst, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp32.i)
  %tobool15.not.i = icmp eq i32 %bcmp32.i, 0
  br i1 %tobool15.not.i, label %rfcomm_session_get.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %n.036.i, @session_list
  br i1 %cmp.not.i, label %for.inc.i.rfcomm_session_get.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.rfcomm_session_get.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_session_get.exit.thread

rfcomm_session_get.exit.thread:                   ; preds = %for.inc.i.rfcomm_session_get.exit.thread_crit_edge, %do.end.rfcomm_session_get.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  br label %cleanup

rfcomm_session_get.exit:                          ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  %tobool5.not = icmp eq ptr %s.035.i, null
  br i1 %tobool5.not, label %rfcomm_session_get.exit.cleanup_crit_edge, label %if.end7

rfcomm_session_get.exit.cleanup_crit_edge:        ; preds = %rfcomm_session_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %rfcomm_session_get.exit
  %dlcs = getelementptr inbounds %struct.rfcomm_session, ptr %s.035.i, i32 0, i32 8
  %11 = ptrtoint ptr %dlcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dlcs, align 4
  %cmp.not120 = icmp eq ptr %12, %dlcs
  br i1 %cmp.not120, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool22.not = icmp ne i8 %status, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %encrypt)
  %cmp24 = icmp eq i8 %encrypt, 0
  %or.cond = or i1 %tobool22.not, %cmp24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool32.not = icmp eq i8 %status, 0
  %13 = or i8 %encrypt, %status
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %14 = icmp eq i8 %13, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %d.0121 = phi ptr [ %12, %for.body.lr.ph ], [ %n.0123, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %d.0121 to i32
  call void @__asan_load4_noabort(i32 %15)
  %n.0123 = load ptr, ptr %d.0121, align 4
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0121, i32 0, i32 6
  %call18 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end29, label %if.then20

if.then20:                                        ; preds = %for.body
  tail call fastcc void @rfcomm_dlc_clear_timer(ptr noundef %d.0121)
  br i1 %or.cond, label %if.then26, label %if.end56.thread

if.then26:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #10
  br label %for.inc

if.end29:                                         ; preds = %for.body
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0121, i32 0, i32 5
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp30 = icmp eq i32 %17, 1
  %18 = and i1 %14, %cmp30
  br i1 %18, label %if.then37, label %if.end29.if.end56_crit_edge

if.end29.if.end56_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then37:                                        ; preds = %if.end29
  %sec_level = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0121, i32 0, i32 15
  %19 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sec_level, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %20, label %if.then37.if.end56_crit_edge [
    i8 2, label %if.then41
    i8 3, label %if.then37.if.then52_crit_edge
    i8 4, label %if.then37.if.then52_crit_edge134
  ]

if.then37.if.then52_crit_edge134:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.then37.if.then52_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.then37.if.end56_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #10
  tail call fastcc void @rfcomm_dlc_set_timer(ptr noundef %d.0121, i32 noundef 2500)
  br label %for.inc

if.then52:                                        ; preds = %if.then37.if.then52_crit_edge, %if.then37.if.then52_crit_edge134
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #10
  br label %for.inc

if.end56:                                         ; preds = %if.then37.if.end56_crit_edge, %if.end29.if.end56_crit_edge
  %call58 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end56.for.inc_crit_edge, label %if.end61

if.end56.for.inc_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end56.thread:                                  ; preds = %if.then20
  %call58126 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58126)
  %tobool59.not127 = icmp eq i32 %call58126, 0
  br i1 %tobool59.not127, label %if.end56.thread.for.inc_crit_edge, label %if.end56.thread.land.lhs.true63_crit_edge

if.end56.thread.land.lhs.true63_crit_edge:        ; preds = %if.end56.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true63

if.end56.thread.for.inc_crit_edge:                ; preds = %if.end56.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end61:                                         ; preds = %if.end56
  br i1 %tobool32.not, label %if.end61.land.lhs.true63_crit_edge, label %if.end61.if.else69_crit_edge

if.end61.if.else69_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else69

if.end61.land.lhs.true63_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.end61.land.lhs.true63_crit_edge, %if.end56.thread.land.lhs.true63_crit_edge
  %sec_level64 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0121, i32 0, i32 15
  %22 = ptrtoint ptr %sec_level64 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sec_level64, align 1
  %call65 = tail call i32 @hci_conn_check_secure(ptr noundef %conn, i8 noundef zeroext %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true63.if.else69_crit_edge, label %if.then67

land.lhs.true63.if.else69_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else69

if.then67:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #10
  br label %for.inc

if.else69:                                        ; preds = %land.lhs.true63.if.else69_crit_edge, %if.end61.if.else69_crit_edge
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else69, %if.then67, %if.end56.thread.for.inc_crit_edge, %if.end56.for.inc_crit_edge, %if.then52, %if.then41, %if.then26
  %cmp.not = icmp eq ptr %n.0123, %dlcs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  tail call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %rfcomm_session_get.exit.cleanup_crit_edge, %rfcomm_session_get.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_check_secure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_run(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !351) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_run.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_run, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_run.__UNIQUE_ID_ddebug549, ptr noundef nonnull @.str.34) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  call void @set_user_nice(ptr noundef %14, i32 noundef -10) #10
  %15 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  call fastcc void @rfcomm_add_listener(ptr noundef nonnull %.compoundliteral)
  call void @add_wait_queue(ptr noundef nonnull @rfcomm_wq, ptr noundef nonnull %wait) #10
  %call1419 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call1419, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  call fastcc void @rfcomm_process_sessions()
  %call17 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef 2147483647) #10
  %call14 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call14, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  call void @remove_wait_queue(ptr noundef nonnull @rfcomm_wq, ptr noundef nonnull %wait) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_kill_listener.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_run, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_kill_listener.__UNIQUE_ID_ddebug548, ptr noundef nonnull @.str.34) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %while.end
  %16 = load ptr, ptr @session_list, align 4
  %cmp.not20.i = icmp eq ptr %16, @session_list
  br i1 %cmp.not20.i, label %do.end.i.rfcomm_kill_listener.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.rfcomm_kill_listener.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_kill_listener.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %s.021.i = phi ptr [ %n.0.i, %for.body.i.for.body.i_crit_edge ], [ %16, %do.end.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %s.021.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %n.0.i = load ptr, ptr %s.021.i, align 4
  call fastcc void @rfcomm_session_del(ptr noundef %s.021.i) #10
  %cmp.not.i = icmp eq ptr %n.0.i, @session_list
  br i1 %cmp.not.i, label %for.body.i.rfcomm_kill_listener.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.rfcomm_kill_listener.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rfcomm_kill_listener.exit

rfcomm_kill_listener.exit:                        ; preds = %for.body.i.rfcomm_kill_listener.exit_crit_edge, %do.end.i.rfcomm_kill_listener.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_init_ttys() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_init_sockets() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_add_listener(ptr nocapture noundef readonly %ba) unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.sockaddr_l2, align 2
  %sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %addr) #10
  %0 = getelementptr inbounds i8, ptr %addr, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #10
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !366
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_l2sock_create.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_add_listener, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_l2sock_create.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.34) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %call3.i = call i32 @sock_create_kern(ptr noundef nonnull @init_net, i32 noundef 31, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %sock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %rfcomm_l2sock_create.exit.thread, label %rfcomm_l2sock_create.exit

rfcomm_l2sock_create.exit.thread:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sock, align 4
  %sk6.i = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %sk6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk6.i, align 16
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 77
  %7 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rfcomm_l2data_ready, ptr %sk_data_ready.i, align 8
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 76
  %8 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rfcomm_l2state_change, ptr %sk_state_change.i, align 4
  br label %if.end

rfcomm_l2sock_create.exit:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %if.then, label %rfcomm_l2sock_create.exit.if.end_crit_edge

rfcomm_l2sock_create.exit.if.end_crit_edge:       ; preds = %rfcomm_l2sock_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %rfcomm_l2sock_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.78, i32 noundef %call3.i) #10
  br label %cleanup

if.end:                                           ; preds = %rfcomm_l2sock_create.exit.if.end_crit_edge, %rfcomm_l2sock_create.exit.thread
  %l2_bdaddr = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %l2_bdaddr, ptr %ba, i32 6)
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 31, ptr %addr, align 2
  %l2_psm = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 1
  %11 = ptrtoint ptr %l2_psm to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 768, ptr %l2_psm, align 2
  %l2_cid = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 3
  %12 = ptrtoint ptr %l2_cid to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %l2_cid, align 2
  %l2_bdaddr_type = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 4
  %13 = ptrtoint ptr %l2_bdaddr_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %l2_bdaddr_type, align 2
  %14 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sock, align 4
  %call1 = call i32 @kernel_bind(ptr noundef %15, ptr noundef nonnull %addr, i32 noundef 14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.79, i32 noundef %call1) #10
  br label %failed

if.end4:                                          ; preds = %if.end
  %16 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sock, align 4
  %sk5 = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk5, align 16
  call void @lock_sock_nested(ptr noundef %19, i32 noundef 0) #10
  %chan = getelementptr inbounds %struct.l2cap_pinfo, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan, align 8
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %imtu to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %imtu, align 4
  call void @release_sock(ptr noundef %19) #10
  %23 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sock, align 4
  %call6 = call i32 @kernel_listen(ptr noundef %24, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.80, i32 noundef %call6) #10
  br label %failed

if.end8:                                          ; preds = %if.end4
  %25 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sock, align 4
  %call9 = call fastcc ptr @rfcomm_session_add(ptr noundef %26, i32 noundef 4)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.failed_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.failed_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

failed:                                           ; preds = %if.end8.failed_crit_edge, %if.then7, %if.then3
  %27 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sock, align 4
  call void @sock_release(ptr noundef %28) #10
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end8.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #10
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %addr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_process_sessions() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_mutex, i32 noundef 0) #10
  %0 = load ptr, ptr @session_list, align 4
  %cmp.not32 = icmp eq ptr %0, @session_list
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %s.033 = phi ptr [ %n.034, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %s.033 to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.034 = load ptr, ptr %s.033, align 4
  %flags = getelementptr inbounds %struct.rfcomm_session, ptr %s.033, i32 0, i32 4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %state6 = getelementptr inbounds %struct.rfcomm_session, ptr %s.033, i32 0, i32 3
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %state6, align 4
  tail call fastcc void @rfcomm_send_disc(ptr noundef %s.033, i8 noundef zeroext 0)
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state6, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %4, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_accept_connection(ptr noundef %s.033)
  br label %for.inc

sw.bb7:                                           ; preds = %if.end
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s.033, i32 0, i32 1
  %6 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock.i, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk1.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_check_connection.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_process_sessions, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_check_connection.__UNIQUE_ID_ddebug545, ptr noundef nonnull @.str.84, ptr noundef %s.033, i32 noundef %11) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb7
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state.i, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %13, label %do.end.i.sw.epilog_crit_edge [
    i8 1, label %sw.bb.i
    i8 9, label %sw.epilog.thread
  ]

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %state6, align 4
  %chan.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan.i, align 8
  %omtu.i = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %omtu.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %omtu.i, align 2
  %imtu.i = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 14
  %20 = ptrtoint ptr %imtu.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %imtu.i, align 4
  %22 = tail call i16 @llvm.umin.i16(i16 %19, i16 %21) #10
  %cond.i = zext i16 %22 to i32
  %sub.i = add nsw i32 %cond.i, -5
  %mtu.i = getelementptr inbounds %struct.rfcomm_session, ptr %s.033, i32 0, i32 7
  %23 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i, ptr %mtu.i, align 4
  tail call fastcc void @rfcomm_send_sabm(ptr noundef %s.033, i8 noundef zeroext 0) #10
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 51
  %24 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_err.i, align 4
  tail call fastcc void @rfcomm_session_close(ptr noundef %s.033, i32 noundef %25) #10
  br label %for.inc

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call fastcc ptr @rfcomm_process_rx(ptr noundef %s.033)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.i, %do.end.i.sw.epilog_crit_edge
  %s.1 = phi ptr [ %call9, %sw.default ], [ %s.033, %do.end.i.sw.epilog_crit_edge ], [ %s.033, %sw.bb.i ]
  %tobool10.not = icmp eq ptr %s.1, null
  br i1 %tobool10.not, label %sw.epilog.for.inc_crit_edge, label %if.then11

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_process_dlcs(ptr noundef nonnull %s.1)
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %sw.epilog.for.inc_crit_edge, %sw.epilog.thread, %sw.bb, %if.then
  %cmp.not = icmp eq ptr %n.034, @session_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rfcomm_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_listen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_accept_connection(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  %nsock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sock1 = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %sock1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsock) #10
  %2 = ptrtoint ptr %nsock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nsock, align 4, !annotation !366
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 16
  %accept_q = getelementptr inbounds %struct.bt_sock, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %accept_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %accept_q, align 4
  %cmp.i.not = icmp eq ptr %6, %accept_q
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_accept_connection.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_accept_connection, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !362

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_accept_connection.__UNIQUE_ID_ddebug542, ptr noundef nonnull @.str.82, ptr noundef %s) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %call8 = call i32 @kernel_accept(ptr noundef %1, ptr noundef nonnull %nsock, i32 noundef 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %7 = ptrtoint ptr %nsock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsock, align 4
  %sk11 = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %sk11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk11, align 16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 77
  %11 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rfcomm_l2data_ready, ptr %sk_data_ready, align 8
  %12 = load ptr, ptr %sk11, align 16
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 76
  %13 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rfcomm_l2state_change, ptr %sk_state_change, align 4
  %call13 = call fastcc ptr @rfcomm_session_add(ptr noundef %8, i32 noundef 2)
  %tobool14.not = icmp eq ptr %call13, null
  %14 = ptrtoint ptr %nsock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nsock, align 4
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %sk16 = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %sk16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk16, align 16
  %chan = getelementptr inbounds %struct.l2cap_pinfo, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 8
  %omtu = getelementptr inbounds %struct.l2cap_chan, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %omtu to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %omtu, align 2
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %19, i32 0, i32 14
  %22 = ptrtoint ptr %imtu to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %imtu, align 4
  %24 = call i16 @llvm.umin.i16(i16 %21, i16 %23)
  %cond = zext i16 %24 to i32
  %sub = add nsw i32 %cond, -5
  %mtu = getelementptr inbounds %struct.rfcomm_session, ptr %call13, i32 0, i32 7
  %25 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %mtu, align 4
  call void @__wake_up(ptr noundef nonnull @rfcomm_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @sock_release(ptr noundef %15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then15, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rfcomm_process_rx(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sock1 = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %sock1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock1, align 4
  %sk2 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk2, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_process_rx.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_process_rx, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %qlen.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_process_rx.__UNIQUE_ID_ddebug541, ptr noundef nonnull @.str.89, ptr noundef %s, i32 noundef %5, i32 noundef %7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_receive_queue6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8
  %call742 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue6) #10
  %tobool8.not43 = icmp eq ptr %call742, null
  br i1 %tobool8.not43, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %do.end.while.body_crit_edge
  %call745 = phi ptr [ %call7, %if.end16.while.body_crit_edge ], [ %call742, %do.end.while.body_crit_edge ]
  %s.addr.044 = phi ptr [ %s.addr.1, %if.end16.while.body_crit_edge ], [ %s, %do.end.while.body_crit_edge ]
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call745, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef nonnull %call745) #10
  %10 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %destructor.i, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %call745, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %11, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %while.body
  %13 = getelementptr inbounds %struct.sk_buff, ptr %call745, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !361

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !371
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call745, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %skb_orphan.exit.if.then11_crit_edge, label %cond.true.i

skb_orphan.exit.if.then11_crit_edge:              ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

cond.true.i:                                      ; preds = %skb_orphan.exit
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %call745, i32 noundef %17) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else, label %cond.true.i.if.then11_crit_edge

cond.true.i.if.then11_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %cond.true.i.if.then11_crit_edge, %skb_orphan.exit.if.then11_crit_edge
  %call12 = tail call fastcc ptr @rfcomm_recv_frame(ptr noundef %s.addr.044, ptr noundef nonnull %call745)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then11.if.end21_crit_edge, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.else:                                          ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call745, i32 noundef 0) #10
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11.if.end16_crit_edge
  %s.addr.1 = phi ptr [ %s.addr.044, %if.else ], [ %call12, %if.then11.if.end16_crit_edge ]
  %call7 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue6) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %do.end.while.end_crit_edge
  %s.addr.0.lcssa = phi ptr [ %s, %do.end.while.end_crit_edge ], [ %s.addr.1, %if.end16.while.end_crit_edge ]
  %tobool17.not = icmp eq ptr %s.addr.0.lcssa, null
  br i1 %tobool17.not, label %while.end.if.end21_crit_edge, label %land.lhs.true

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %while.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %19)
  %cmp = icmp eq i8 %19, 9
  br i1 %cmp, label %if.then19, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %sk_err = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %20 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sk_err, align 4
  tail call fastcc void @rfcomm_session_close(ptr noundef nonnull %s.addr.0.lcssa, i32 noundef %21)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true.if.end21_crit_edge, %while.end.if.end21_crit_edge, %if.then11.if.end21_crit_edge
  %s.addr.3 = phi ptr [ null, %if.then19 ], [ %s.addr.0.lcssa, %land.lhs.true.if.end21_crit_edge ], [ null, %while.end.if.end21_crit_edge ], [ null, %if.then11.if.end21_crit_edge ]
  ret ptr %s.addr.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_process_dlcs(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_process_dlcs.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_process_dlcs, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_process_dlcs.__UNIQUE_ID_ddebug540, ptr noundef nonnull @.str.42, ptr noundef %s, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dlcs = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  %2 = ptrtoint ptr %dlcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlcs, align 4
  %cmp.not122 = icmp eq ptr %3, %dlcs
  br i1 %cmp.not122, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %flags58 = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %d.0123 = phi ptr [ %3, %for.body.lr.ph ], [ %n.0124, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %d.0123 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0124 = load ptr, ptr %d.0123, align 4
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__rfcomm_dlc_close(ptr noundef %d.0123, i32 noundef 110)
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not = icmp eq i32 %10, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__rfcomm_dlc_close(ptr noundef %d.0123, i32 noundef 111)
  br label %for.inc

if.end22:                                         ; preds = %if.end16
  %call24 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else38, label %if.then26

if.then26:                                        ; preds = %if.end22
  tail call fastcc void @rfcomm_dlc_clear_timer(ptr noundef %d.0123)
  %out = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 14
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %out, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool27.not = icmp eq i8 %12, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_send_pn(ptr noundef %s, i32 noundef 1, ptr noundef %d.0123)
  tail call fastcc void @rfcomm_dlc_set_timer(ptr noundef %d.0123, i32 noundef 3000)
  br label %for.inc

if.else:                                          ; preds = %if.then26
  %defer_setup = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 17
  %13 = ptrtoint ptr %defer_setup to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %defer_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool30.not = icmp eq i32 %14, 0
  br i1 %tobool30.not, label %if.else35, label %if.then31

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #10
  tail call fastcc void @rfcomm_dlc_set_timer(ptr noundef %d.0123, i32 noundef 2500)
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %state33 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 5
  %15 = ptrtoint ptr %state33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %state33, align 4
  %state_change = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 24
  %16 = ptrtoint ptr %state_change to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state_change, align 4
  tail call void %17(ptr noundef %d.0123, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %for.inc

if.else35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rfcomm_dlc_accept(ptr noundef %d.0123)
  br label %for.inc

if.else38:                                        ; preds = %if.end22
  %call40 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end52, label %if.then42

if.then42:                                        ; preds = %if.else38
  tail call fastcc void @rfcomm_dlc_clear_timer(ptr noundef %d.0123)
  %out43 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 14
  %18 = ptrtoint ptr %out43 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %out43, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool44.not = icmp eq i8 %19, 0
  br i1 %tobool44.not, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %dlci = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 8
  %20 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dlci, align 4
  tail call fastcc void @rfcomm_send_dm(ptr noundef %s, i8 noundef zeroext %21)
  br label %if.end49

if.else47:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %state48 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 5
  %22 = ptrtoint ptr %state48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 9, ptr %state48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then45
  tail call fastcc void @__rfcomm_dlc_close(ptr noundef %d.0123, i32 noundef 111)
  br label %for.inc

if.end52:                                         ; preds = %if.else38
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool55.not = icmp eq i32 %25, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.for.inc_crit_edge

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end57:                                         ; preds = %if.end52
  %26 = ptrtoint ptr %flags58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags58, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool60.not = icmp eq i32 %28, 0
  br i1 %tobool60.not, label %if.end62, label %if.end57.for.inc_crit_edge

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end62:                                         ; preds = %if.end57
  %state63 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 5
  %29 = ptrtoint ptr %state63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state63, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %30, label %if.end62.for.inc_crit_edge [
    i32 1, label %if.end62.land.lhs.true_crit_edge
    i32 8, label %if.end62.land.lhs.true_crit_edge125
  ]

if.end62.land.lhs.true_crit_edge125:              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end62.land.lhs.true_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end62.for.inc_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end62.land.lhs.true_crit_edge, %if.end62.land.lhs.true_crit_edge125
  %mscex = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0123, i32 0, i32 13
  %32 = ptrtoint ptr %mscex to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mscex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp67 = icmp eq i8 %33, 3
  br i1 %cmp67, label %if.then69, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_process_tx(ptr noundef %d.0123)
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %land.lhs.true.for.inc_crit_edge, %if.end62.for.inc_crit_edge, %if.end57.for.inc_crit_edge, %if.end52.for.inc_crit_edge, %if.end49, %if.else35, %if.then31, %if.then28, %if.then20, %if.then14
  %cmp.not = icmp eq ptr %n.0124, %dlcs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_sabm(ptr noundef %s, i8 noundef zeroext %dlci) unnamed_addr #0 align 64 {
entry:
  %iv.i.i = alloca %struct.kvec, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  %cmd = alloca %struct.rfcomm_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_sabm.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_sabm, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %dlci to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_sabm.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.54, ptr noundef %s, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = shl i8 %dlci, 2
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %4 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %5 to i8
  %6 = shl i8 %.tr, 1
  %7 = or i8 %6, %3
  %conv6 = or i8 %7, 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6, ptr %cmd, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 63, ptr %0, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %1, align 1
  %11 = xor i8 %7, -2
  %xor.i = zext i8 %11 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i, align 1
  %xor516.i = xor i8 %13, 63
  %xor5.i = zext i8 %xor516.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i, align 1
  %xor1017.i = xor i8 %15, 1
  %xor10.i = zext i8 %xor1017.i to i32
  %arrayidx11.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor10.i
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  %18 = xor i8 %17, -1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_cmd.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_sabm, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %0, align 1
  %conv.i = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_cmd.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.56, ptr noundef %s, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i) #10
  %22 = getelementptr inbounds %struct.kvec, ptr %iv.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmd, ptr %iv.i.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_sabm, %if.then.i.i)) #10
          to label %rfcomm_send_cmd.exit [label %if.then.i.i], !srcloc !362

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 4) #10
  br label %rfcomm_send_cmd.exit

rfcomm_send_cmd.exit:                             ; preds = %if.then.i.i, %do.end.i
  %25 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %sock.i.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %26 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sock.i.i, align 4
  %call3.i.i = call i32 @kernel_sendmsg(ptr noundef %27, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %iv.i.i, i32 noundef 1, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_session_close(ptr noundef %s, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 9, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_session_close.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_session_close, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_session_close.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.87, ptr noundef %s, i32 noundef %2, i32 noundef %err) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dlcs = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  %3 = ptrtoint ptr %dlcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dlcs, align 4
  %cmp.not2 = icmp eq ptr %4, %dlcs
  br i1 %cmp.not2, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %d.03 = phi ptr [ %n.0, %for.body.for.body_crit_edge ], [ %4, %do.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %d.03 to i32
  call void @__asan_load4_noabort(i32 %5)
  %n.0 = load ptr, ptr %d.03, align 4
  %state13 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.03, i32 0, i32 5
  %6 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9, ptr %state13, align 4
  tail call fastcc void @__rfcomm_dlc_close(ptr noundef %d.03, i32 noundef %err)
  %cmp.not = icmp eq ptr %n.0, %dlcs
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_session_clear_timer.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_session_close, %if.then.i)) #10
          to label %rfcomm_session_clear_timer.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_session_clear_timer.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.42, ptr noundef %s, i32 noundef %8) #10
  br label %rfcomm_session_clear_timer.exit

rfcomm_session_clear_timer.exit:                  ; preds = %if.then.i, %for.end
  %timer.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 2
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #10
  tail call fastcc void @rfcomm_session_del(ptr noundef %s)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rfcomm_recv_frame(ptr noundef %s, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = lshr i8 %3, 2
  %ctrl = getelementptr %struct.rfcomm_hdr, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrl, align 1
  %7 = and i8 %6, -17
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %len, align 4
  %tail = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail, align 8
  %incdec.ptr = getelementptr i8, ptr %11, i32 -1
  store ptr %incdec.ptr, ptr %tail, align 8
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr, align 1
  %conv6 = zext i8 %7 to i32
  %14 = load i8, ptr %1, align 1
  %15 = xor i8 %14, -1
  %xor.i = zext i8 %15 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.i, align 1
  %18 = load i8, ptr %ctrl, align 1
  %xor523.i = xor i8 %18, %17
  %xor5.i = zext i8 %xor523.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %7)
  %cmp.not.i = icmp eq i8 %7, -17
  br i1 %cmp.not.i, label %if.end.__check_fcs.exit_crit_edge, label %if.then.i

if.end.__check_fcs.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__check_fcs.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9.i = getelementptr i8, ptr %1, i32 2
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx9.i, align 1
  %xor1125.i = xor i8 %22, %20
  %xor11.i = zext i8 %xor1125.i to i32
  %arrayidx12.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor11.i
  %23 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx12.i, align 1
  br label %__check_fcs.exit

__check_fcs.exit:                                 ; preds = %if.then.i, %if.end.__check_fcs.exit_crit_edge
  %f.0.i = phi i8 [ %24, %if.then.i ], [ %20, %if.end.__check_fcs.exit_crit_edge ]
  %xor1524.i = xor i8 %f.0.i, %13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor1524.i)
  %cmp18.i.not = icmp eq i8 %xor1524.i, -1
  br i1 %cmp18.i.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %__check_fcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.90) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end10:                                         ; preds = %__check_fcs.exit
  %len11 = getelementptr inbounds %struct.rfcomm_hdr, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %len11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %len11, align 1
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool14.not = icmp eq i8 %27, 0
  %. = select i1 %tobool14.not, i32 4, i32 3
  %call17 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %.) #10
  %28 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %7, label %sw.default [
    i8 47, label %sw.bb
    i8 67, label %sw.bb27
    i8 99, label %sw.bb35
    i8 15, label %sw.bb43
    i8 -17, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.end10
  %29 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ctrl, align 1
  %31 = and i8 %30, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool23.not = icmp eq i8 %31, 0
  br i1 %tobool23.not, label %sw.bb.sw.epilog_crit_edge, label %if.then24

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then24:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_recv_sabm(ptr noundef nonnull %s, i8 noundef zeroext %4)
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end10
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctrl, align 1
  %34 = and i8 %33, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool31.not = icmp eq i8 %34, 0
  br i1 %tobool31.not, label %sw.bb27.sw.epilog_crit_edge, label %if.then32

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call fastcc ptr @rfcomm_recv_disc(ptr noundef nonnull %s, i8 noundef zeroext %4)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end10
  %35 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ctrl, align 1
  %37 = and i8 %36, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool39.not = icmp eq i8 %37, 0
  br i1 %tobool39.not, label %sw.bb35.sw.epilog_crit_edge, label %if.then40

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then40:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call fastcc ptr @rfcomm_recv_ua(ptr noundef nonnull %s, i8 noundef zeroext %4)
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_dm.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_frame, %if.then.i94)) #10
          to label %do.end.i [label %if.then.i94], !srcloc !362

if.then.i94:                                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i, align 4
  %conv.i = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_dm.__UNIQUE_ID_ddebug520, ptr noundef nonnull @.str.93, ptr noundef nonnull %s, i32 noundef %39, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i94, %sw.bb43
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %tobool3.not.i = icmp ult i8 %3, 4
  br i1 %tobool3.not.i, label %if.else18.i, label %if.then4.i

if.then4.i:                                       ; preds = %do.end.i
  %dlcs.i.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then4.i
  %d.0.in.i.i = phi ptr [ %dlcs.i.i, %if.then4.i ], [ %d.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %40 = ptrtoint ptr %d.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %d.0.i.i = load ptr, ptr %d.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %d.0.i.i, %dlcs.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.sw.epilog_crit_edge, label %for.body.i.i

for.cond.i.i.sw.epilog_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dlci2.i.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %dlci2.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dlci2.i.i, align 4
  %cmp4.i.i = icmp eq i8 %42, %4
  br i1 %cmp4.i.i, label %rfcomm_dlc_get.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

rfcomm_dlc_get.exit.i:                            ; preds = %for.body.i.i
  %tobool6.not.i = icmp eq ptr %d.0.i.i, null
  br i1 %tobool6.not.i, label %rfcomm_dlc_get.exit.i.sw.epilog_crit_edge, label %if.then7.i

rfcomm_dlc_get.exit.i.sw.epilog_crit_edge:        ; preds = %rfcomm_dlc_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then7.i:                                       ; preds = %rfcomm_dlc_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %state8.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %state8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state8.i, align 4
  %45 = add i32 %44, -5
  %switch.and.i = and i32 %45, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %46 = select i1 %switch.selectcmp.i, i32 111, i32 104
  %47 = ptrtoint ptr %state8.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 9, ptr %state8.i, align 4
  tail call fastcc void @__rfcomm_dlc_close(ptr noundef nonnull %d.0.i.i, i32 noundef %46) #10
  br label %sw.epilog

if.else18.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %state19.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %48 = ptrtoint ptr %state19.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %49)
  %cmp20.i = icmp eq i32 %49, 5
  %..i = select i1 %cmp20.i, i32 111, i32 104
  tail call fastcc void @rfcomm_session_close(ptr noundef nonnull %s, i32 noundef %..i) #10
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %tobool46.not = icmp ult i8 %3, 4
  br i1 %tobool46.not, label %if.end54, label %if.then47

if.then47:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ctrl, align 1
  %52 = lshr i8 %51, 4
  %.lobit = and i8 %52, 1
  %53 = zext i8 %.lobit to i32
  tail call fastcc void @rfcomm_recv_data(ptr noundef nonnull %s, i8 noundef zeroext %4, i32 noundef %53, ptr noundef %skb)
  br label %cleanup

if.end54:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_recv_mcc(ptr noundef nonnull %s, ptr noundef %skb)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.91, i32 noundef %conv6) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end54, %if.else18.i, %if.then7.i, %rfcomm_dlc_get.exit.i.sw.epilog_crit_edge, %for.cond.i.i.sw.epilog_crit_edge, %if.then40, %sw.bb35.sw.epilog_crit_edge, %if.then32, %sw.bb27.sw.epilog_crit_edge, %if.then24, %sw.bb.sw.epilog_crit_edge
  %s.addr.0 = phi ptr [ %s, %sw.default ], [ %s, %if.end54 ], [ %call41, %if.then40 ], [ %s, %sw.bb35.sw.epilog_crit_edge ], [ %call33, %if.then32 ], [ %s, %sw.bb27.sw.epilog_crit_edge ], [ %s, %if.then24 ], [ %s, %sw.bb.sw.epilog_crit_edge ], [ null, %if.else18.i ], [ %s, %if.then7.i ], [ %s, %rfcomm_dlc_get.exit.i.sw.epilog_crit_edge ], [ %s, %for.cond.i.i.sw.epilog_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then47, %if.then9, %if.then
  %retval.0 = phi ptr [ %s, %if.then9 ], [ %s.addr.0, %sw.epilog ], [ %s, %if.then47 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_recv_sabm(ptr noundef %s, i8 noundef zeroext %dlci) unnamed_addr #0 align 64 {
entry:
  %d = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_sabm.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_sabm, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = zext i8 %dlci to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_sabm.__UNIQUE_ID_ddebug523, ptr noundef nonnull @.str.93, ptr noundef %s, i32 noundef %1, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dlci)
  %tobool3.not = icmp eq i8 %dlci, 0
  br i1 %tobool3.not, label %if.then4, label %if.end11

if.then4:                                         ; preds = %do.end
  tail call fastcc void @rfcomm_send_ua(ptr noundef %s, i8 noundef zeroext 0)
  %state6 = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then8, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state6, align 4
  tail call fastcc void @rfcomm_process_connect(ptr noundef %s)
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %dlcs.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end11
  %d.0.in.i = phi ptr [ %dlcs.i, %if.end11 ], [ %d.0.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %d.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %d.0.i = load ptr, ptr %d.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %d.0.i, %dlcs.i
  br i1 %cmp.not.i, label %rfcomm_dlc_get.exit.thread, label %for.body.i

rfcomm_dlc_get.exit.thread:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %d, align 4
  br label %if.end20

for.body.i:                                       ; preds = %for.cond.i
  %dlci2.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 8
  %7 = ptrtoint ptr %dlci2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dlci2.i, align 4
  %cmp4.i = icmp eq i8 %8, %dlci
  br i1 %cmp4.i, label %rfcomm_dlc_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

rfcomm_dlc_get.exit:                              ; preds = %for.body.i
  %9 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %d.0.i, ptr %d, align 4
  %tobool13.not = icmp eq ptr %d.0.i, null
  br i1 %tobool13.not, label %rfcomm_dlc_get.exit.if.end20_crit_edge, label %if.then14

rfcomm_dlc_get.exit.if.end20_crit_edge:           ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %rfcomm_dlc_get.exit
  %state15 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 5
  %10 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp16 = icmp eq i32 %11, 2
  br i1 %cmp16, label %if.then18, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_check_accept(ptr noundef nonnull %d.0.i)
  br label %cleanup

if.end20:                                         ; preds = %rfcomm_dlc_get.exit.if.end20_crit_edge, %rfcomm_dlc_get.exit.thread
  %12 = lshr i8 %dlci, 1
  %call23 = call i32 @rfcomm_connect_ind(ptr noundef %s, i8 noundef zeroext %12, ptr noundef nonnull %d) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d, align 4
  %dlci26 = getelementptr inbounds %struct.rfcomm_dlc, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %dlci26 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %dlci, ptr %dlci26, align 4
  %16 = shl i8 %dlci, 2
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %17 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %18 to i8
  %19 = shl i8 %.tr, 1
  %20 = or i8 %16, %19
  %conv30 = or i8 %20, 1
  %addr = getelementptr inbounds %struct.rfcomm_dlc, ptr %14, i32 0, i32 9
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv30, ptr %addr, align 1
  call fastcc void @rfcomm_dlc_link(ptr noundef %s, ptr noundef %14)
  %22 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d, align 4
  call fastcc void @rfcomm_check_accept(ptr noundef %23)
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @rfcomm_send_dm(ptr noundef %s, i8 noundef zeroext %dlci)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then25, %if.then18, %if.then14.cleanup_crit_edge, %if.then8, %if.then4.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rfcomm_recv_disc(ptr noundef %s, i8 noundef zeroext %dlci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_disc.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_disc, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = zext i8 %dlci to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_disc.__UNIQUE_ID_ddebug521, ptr noundef nonnull @.str.93, ptr noundef %s, i32 noundef %1, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dlci)
  %tobool3.not = icmp eq i8 %dlci, 0
  br i1 %tobool3.not, label %if.else21, label %if.then4

if.then4:                                         ; preds = %do.end
  %dlcs.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then4
  %d.0.in.i = phi ptr [ %dlcs.i, %if.then4 ], [ %d.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %d.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %d.0.i = load ptr, ptr %d.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %d.0.i, %dlcs.i
  br i1 %cmp.not.i, label %for.cond.i.if.else18_crit_edge, label %for.body.i

for.cond.i.if.else18_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else18

for.body.i:                                       ; preds = %for.cond.i
  %dlci2.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 8
  %3 = ptrtoint ptr %dlci2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dlci2.i, align 4
  %cmp4.i = icmp eq i8 %4, %dlci
  br i1 %cmp4.i, label %rfcomm_dlc_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

rfcomm_dlc_get.exit:                              ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %d.0.i, null
  br i1 %tobool6.not, label %rfcomm_dlc_get.exit.if.else18_crit_edge, label %if.then7

rfcomm_dlc_get.exit.if.else18_crit_edge:          ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else18

if.then7:                                         ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_send_ua(ptr noundef %s, i8 noundef zeroext %dlci)
  %state9 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 5
  %5 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state9, align 4
  %7 = add i32 %6, -5
  %switch.and = and i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %8 = select i1 %switch.selectcmp, i32 111, i32 104
  %9 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9, ptr %state9, align 4
  tail call fastcc void @__rfcomm_dlc_close(ptr noundef nonnull %d.0.i, i32 noundef %8)
  br label %if.end30

if.else18:                                        ; preds = %rfcomm_dlc_get.exit.if.else18_crit_edge, %for.cond.i.if.else18_crit_edge
  tail call fastcc void @rfcomm_send_dm(ptr noundef %s, i8 noundef zeroext %dlci)
  br label %if.end30

if.else21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_send_ua(ptr noundef %s, i8 noundef zeroext 0)
  %state23 = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %10 = ptrtoint ptr %state23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp24 = icmp eq i32 %11, 5
  %. = select i1 %cmp24, i32 111, i32 104
  tail call fastcc void @rfcomm_session_close(ptr noundef %s, i32 noundef %.)
  br label %if.end30

if.end30:                                         ; preds = %if.else21, %if.else18, %if.then7
  %s.addr.0 = phi ptr [ null, %if.else21 ], [ %s, %if.else18 ], [ %s, %if.then7 ]
  ret ptr %s.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rfcomm_recv_ua(ptr noundef %s, i8 noundef zeroext %dlci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_ua.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_ua, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = zext i8 %dlci to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_ua.__UNIQUE_ID_ddebug519, ptr noundef nonnull @.str.93, ptr noundef %s, i32 noundef %1, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dlci)
  %tobool3.not = icmp eq i8 %dlci, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  %dlcs.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then4
  %d.0.in.i = phi ptr [ %dlcs.i, %if.then4 ], [ %d.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %d.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %d.0.i = load ptr, ptr %d.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %d.0.i, %dlcs.i
  br i1 %cmp.not.i, label %for.cond.i.if.then7_crit_edge, label %for.body.i

for.cond.i.if.then7_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

for.body.i:                                       ; preds = %for.cond.i
  %dlci2.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 8
  %3 = ptrtoint ptr %dlci2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dlci2.i, align 4
  %cmp4.i = icmp eq i8 %4, %dlci
  br i1 %cmp4.i, label %rfcomm_dlc_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

rfcomm_dlc_get.exit:                              ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %d.0.i, null
  br i1 %tobool6.not, label %rfcomm_dlc_get.exit.if.then7_crit_edge, label %if.end9

rfcomm_dlc_get.exit.if.then7_crit_edge:           ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %rfcomm_dlc_get.exit.if.then7_crit_edge, %for.cond.i.if.then7_crit_edge
  tail call fastcc void @rfcomm_send_dm(ptr noundef %s, i8 noundef zeroext %dlci)
  br label %return

if.end9:                                          ; preds = %rfcomm_dlc_get.exit
  %state10 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 5
  %5 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state10, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %6, label %if.end9.return_crit_edge [
    i32 5, label %sw.bb
    i32 8, label %sw.bb14
  ]

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_dlc_clear_timer(ptr noundef nonnull %d.0.i)
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %8 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state10, align 4
  %state_change = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 24
  %9 = ptrtoint ptr %state_change to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state_change, align 4
  tail call void %10(ptr noundef nonnull %d.0.i, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %v24_sig = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 11
  %11 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %v24_sig, align 1
  tail call fastcc void @rfcomm_send_msc(ptr noundef %s, i32 noundef 1, i8 noundef zeroext %dlci, i8 noundef zeroext %12)
  br label %return

sw.bb14:                                          ; preds = %if.end9
  %13 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9, ptr %state10, align 4
  tail call fastcc void @__rfcomm_dlc_close(ptr noundef nonnull %d.0.i, i32 noundef 0)
  %14 = ptrtoint ptr %dlcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %dlcs.i, align 4
  %cmp.i.not = icmp eq ptr %15, %dlcs.i
  br i1 %cmp.i.not, label %if.then19, label %sw.bb14.return_crit_edge

sw.bb14.return_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then19:                                        ; preds = %sw.bb14
  %state20 = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %16 = ptrtoint ptr %state20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %state20, align 4
  tail call fastcc void @rfcomm_send_disc(ptr noundef %s, i8 noundef zeroext 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_session_clear_timer.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_ua, %if.then.i)) #10
          to label %rfcomm_session_clear_timer.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state20, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_session_clear_timer.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.42, ptr noundef %s, i32 noundef %18) #10
  br label %rfcomm_session_clear_timer.exit

rfcomm_session_clear_timer.exit:                  ; preds = %if.then.i, %if.then19
  %timer.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 2
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #10
  br label %return

if.else:                                          ; preds = %do.end
  %state23 = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %19 = ptrtoint ptr %state23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state23, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %20, label %if.else.return_crit_edge [
    i32 5, label %sw.bb24
    i32 8, label %sw.bb26
  ]

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb24:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %state23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %state23, align 4
  tail call fastcc void @rfcomm_process_connect(ptr noundef %s)
  br label %return

sw.bb26:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_session_close(ptr noundef %s, i32 noundef 104)
  br label %return

return:                                           ; preds = %sw.bb26, %sw.bb24, %if.else.return_crit_edge, %rfcomm_session_clear_timer.exit, %sw.bb14.return_crit_edge, %sw.bb, %if.end9.return_crit_edge, %if.then7
  %retval.1 = phi ptr [ %s, %if.else.return_crit_edge ], [ null, %sw.bb26 ], [ %s, %sw.bb24 ], [ %s, %sw.bb ], [ %s, %if.end9.return_crit_edge ], [ %s, %rfcomm_session_clear_timer.exit ], [ %s, %sw.bb14.return_crit_edge ], [ %s, %if.then7 ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_recv_data(ptr noundef %s, i8 noundef zeroext %dlci, i32 noundef %pf, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_data.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_data, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = zext i8 %dlci to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_data.__UNIQUE_ID_ddebug537, ptr noundef nonnull @.str.100, ptr noundef %s, i32 noundef %1, i32 noundef %conv, i32 noundef %pf) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dlcs.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %d.0.in.i = phi ptr [ %dlcs.i, %do.end ], [ %d.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %d.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %d.0.i = load ptr, ptr %d.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %d.0.i, %dlcs.i
  br i1 %cmp.not.i, label %for.cond.i.if.then5_crit_edge, label %for.body.i

for.cond.i.if.then5_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

for.body.i:                                       ; preds = %for.cond.i
  %dlci2.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 8
  %3 = ptrtoint ptr %dlci2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dlci2.i, align 4
  %cmp4.i = icmp eq i8 %4, %dlci
  br i1 %cmp4.i, label %rfcomm_dlc_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

rfcomm_dlc_get.exit:                              ; preds = %for.body.i
  %tobool4.not = icmp eq ptr %d.0.i, null
  br i1 %tobool4.not, label %rfcomm_dlc_get.exit.if.then5_crit_edge, label %if.end7

rfcomm_dlc_get.exit.if.then5_crit_edge:           ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %rfcomm_dlc_get.exit.if.then5_crit_edge, %for.cond.i.if.then5_crit_edge
  tail call fastcc void @rfcomm_send_dm(ptr noundef %s, i8 noundef zeroext %dlci)
  br label %drop

if.end7:                                          ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pf)
  %tobool8.not = icmp eq i32 %pf, 0
  br i1 %tobool8.not, label %if.end7.if.end17_crit_edge, label %land.lhs.true

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end7
  %cfc = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 19
  %5 = ptrtoint ptr %cfc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cfc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end17_crit_edge, label %if.then10

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then10:                                        ; preds = %land.lhs.true
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %call11 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #10
  %conv12 = zext i8 %10 to i32
  %tx_credits = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 21
  %11 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_credits, align 4
  %add = add i32 %12, %conv12
  store i32 %add, ptr %tx_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool14.not = icmp eq i32 %add, 0
  br i1 %tobool14.not, label %if.then10.if.end17_crit_edge, label %if.then15

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then10.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %if.end17.drop_crit_edge, label %land.lhs.true19

if.end17.drop_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

land.lhs.true19:                                  ; preds = %if.end17
  %state20 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 5
  %15 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.then22, label %land.lhs.true19.drop_crit_edge

land.lhs.true19.drop_crit_edge:                   ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %rx_credits = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 20
  %17 = ptrtoint ptr %rx_credits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_credits, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %rx_credits, align 4
  %data_ready = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 23
  %19 = ptrtoint ptr %data_ready to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_ready, align 4
  tail call void %20(ptr noundef nonnull %d.0.i, ptr noundef %skb) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

drop:                                             ; preds = %land.lhs.true19.drop_crit_edge, %if.end17.drop_crit_edge, %if.then5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.then22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_recv_mcc(ptr noundef %s, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %and = lshr i8 %3, 1
  %and.lobit = and i8 %and, 1
  %4 = lshr i8 %3, 2
  %len8 = getelementptr inbounds %struct.rfcomm_mcc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %len8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len8, align 1
  %7 = lshr i8 %6, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_mcc.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_mcc, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv19 = zext i8 %4 to i32
  %conv20 = zext i8 %and.lobit to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_mcc.__UNIQUE_ID_ddebug536, ptr noundef nonnull @.str.102, ptr noundef %s, i32 noundef %conv19, i32 noundef %conv20) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call21 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #10
  %conv22 = zext i8 %4 to i32
  %8 = add nsw i32 %conv22, -4
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 30)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %9, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb25
    i32 4, label %sw.bb29
    i32 13, label %sw.bb32
    i32 5, label %sw.bb35
    i32 9, label %sw.bb40
    i32 1, label %sw.bb46
    i32 0, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv23 = zext i8 %and.lobit to i32
  tail call fastcc void @rfcomm_recv_pn(ptr noundef %s, i32 noundef %conv23, ptr noundef %skb)
  br label %sw.epilog

sw.bb25:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv26 = zext i8 %and.lobit to i32
  %conv27 = zext i8 %7 to i32
  tail call fastcc void @rfcomm_recv_rpn(ptr noundef %s, i32 noundef %conv26, i32 noundef %conv27, ptr noundef %skb)
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.end
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %15 = lshr i8 %14, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_rls.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_mcc, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  %conv30 = zext i8 %and.lobit to i32
  %conv5.i = zext i8 %15 to i32
  %status.i = getelementptr inbounds %struct.rfcomm_rls, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %status.i, align 1
  %conv6.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_rls.__UNIQUE_ID_ddebug534, ptr noundef nonnull @.str.117, i32 noundef %conv5.i, i32 noundef %conv30, i32 noundef %conv6.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.lobit)
  %tobool7.not.i = icmp eq i8 %and.lobit, 0
  br i1 %tobool7.not.i, label %do.end.i.sw.epilog_crit_edge, label %if.end9.i

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %status10.i = getelementptr inbounds %struct.rfcomm_rls, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %status10.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status10.i, align 1
  tail call fastcc void @rfcomm_send_rls(ptr noundef %s, i8 noundef zeroext %15, i8 noundef zeroext %19) #10
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv33 = zext i8 %and.lobit to i32
  tail call fastcc void @rfcomm_recv_msc(ptr noundef %s, i32 noundef %conv33, ptr noundef %skb)
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.lobit)
  %tobool36.not = icmp eq i8 %and.lobit, 0
  br i1 %tobool36.not, label %sw.bb35.sw.epilog_crit_edge, label %if.then37

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then37:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  tail call fastcc void @rfcomm_send_fcoff(ptr noundef %s)
  br label %sw.epilog

sw.bb40:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.lobit)
  %tobool41.not = icmp eq i8 %and.lobit, 0
  br i1 %tobool41.not, label %sw.bb40.sw.epilog_crit_edge, label %if.then42

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then42:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  %flags43 = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags43) #10
  tail call fastcc void @rfcomm_send_fcon(ptr noundef %s)
  br label %sw.epilog

sw.bb46:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.lobit)
  %tobool47.not = icmp eq i8 %and.lobit, 0
  br i1 %tobool47.not, label %sw.bb46.sw.epilog_crit_edge, label %if.then48

sw.bb46.sw.epilog_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then48:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %len50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len50, align 4
  tail call fastcc void @rfcomm_send_test(ptr noundef %s, ptr noundef %21, i32 noundef %23)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.103, i32 noundef %conv22) #10
  %conv54 = zext i8 %and.lobit to i32
  tail call fastcc void @rfcomm_send_nsc(ptr noundef %s, i32 noundef %conv54, i8 noundef zeroext %4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then48, %sw.bb46.sw.epilog_crit_edge, %if.then42, %sw.bb40.sw.epilog_crit_edge, %if.then37, %sw.bb35.sw.epilog_crit_edge, %sw.bb32, %if.end9.i, %do.end.i.sw.epilog_crit_edge, %sw.bb25, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_process_connect(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_process_connect.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_process_connect, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_process_connect.__UNIQUE_ID_ddebug538, ptr noundef nonnull @.str.42, ptr noundef %s, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dlcs = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  %2 = ptrtoint ptr %dlcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlcs, align 4
  %cmp.not42 = icmp eq ptr %3, %dlcs
  br i1 %cmp.not42, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %mtu = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %d.043 = phi ptr [ %3, %for.body.lr.ph ], [ %n.044, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %d.043 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.044 = load ptr, ptr %d.043, align 4
  %state12 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.043, i32 0, i32 5
  %5 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp13 = icmp eq i32 %6, 7
  br i1 %cmp13, label %if.then14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then14:                                        ; preds = %for.body
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu, align 4
  %mtu15 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.043, i32 0, i32 18
  %9 = ptrtoint ptr %mtu15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mtu15, align 4
  %session.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.043, i32 0, i32 1
  %10 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %session.i, align 4
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sock.i, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk1.i, align 16
  %chan.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %sec_level.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.043, i32 0, i32 15
  %20 = ptrtoint ptr %sec_level.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sec_level.i, align 1
  %switch.tableidx = add i8 %21, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %22 = icmp ult i8 %switch.tableidx, 3
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 328964, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %auth_type.0.i = select i1 %22, i8 %switch.masked, i8 0
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %19, align 4
  %out.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.043, i32 0, i32 14
  %25 = ptrtoint ptr %out.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %out.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i = icmp ne i8 %26, 0
  %call.i = tail call i32 @hci_conn_security(ptr noundef %24, i8 noundef zeroext %21, i8 noundef zeroext %auth_type.0.i, i1 noundef zeroext %tobool.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_send_pn(ptr noundef %s, i32 noundef 1, ptr noundef %d.043)
  br label %for.inc

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.043, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #10
  tail call fastcc void @rfcomm_dlc_set_timer(ptr noundef %d.043, i32 noundef 2500)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then18, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %n.044, %dlcs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_check_accept(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %session.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session.i, align 4
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock.i, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk1.i, align 16
  %chan.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %sec_level.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 15
  %10 = ptrtoint ptr %sec_level.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sec_level.i, align 1
  %switch.tableidx = add i8 %11, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 3
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 328964, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %auth_type.0.i = select i1 %12, i8 %switch.masked, i8 0
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 4
  %out.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 14
  %15 = ptrtoint ptr %out.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %out.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i = icmp ne i8 %16, 0
  %call.i = tail call i32 @hci_conn_security(ptr noundef %14, i8 noundef zeroext %11, i8 noundef zeroext %auth_type.0.i, i1 noundef zeroext %tobool.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  %defer_setup = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 17
  %17 = ptrtoint ptr %defer_setup to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %defer_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not = icmp eq i32 %18, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #10
  tail call fastcc void @rfcomm_dlc_set_timer(ptr noundef %d, i32 noundef 2500)
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %state, align 4
  %state_change = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 24
  %20 = ptrtoint ptr %state_change to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state_change, align 4
  tail call void %21(ptr noundef %d, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rfcomm_dlc_accept(ptr noundef %d)
  br label %if.end6

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags5 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags5) #10
  tail call fastcc void @rfcomm_dlc_set_timer(ptr noundef %d, i32 noundef 2500)
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.else, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_connect_ind(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_dm(ptr noundef %s, i8 noundef zeroext %dlci) unnamed_addr #0 align 64 {
entry:
  %iv.i.i = alloca %struct.kvec, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  %cmd = alloca %struct.rfcomm_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rfcomm_cmd, ptr %cmd, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_dm.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_dm, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %dlci to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_dm.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.54, ptr noundef %s, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = shl i8 %dlci, 2
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %4 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  %shl7 = select i1 %tobool4.not, i8 2, i8 0
  %or = or i8 %shl7, %3
  %or8 = or i8 %or, 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or8, ptr %cmd, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 31, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %1, align 1
  %9 = xor i8 %or, -2
  %xor.i = zext i8 %9 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %xor516.i = xor i8 %11, 31
  %xor5.i = zext i8 %xor516.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6.i, align 1
  %xor1017.i = xor i8 %13, 1
  %xor10.i = zext i8 %xor1017.i to i32
  %arrayidx11.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor10.i
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11.i, align 1
  %16 = xor i8 %15, -1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_cmd.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_dm, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %0, align 1
  %conv.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_cmd.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.56, ptr noundef %s, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i) #10
  %20 = getelementptr inbounds %struct.kvec, ptr %iv.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd, ptr %iv.i.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_dm, %if.then.i.i)) #10
          to label %rfcomm_send_cmd.exit [label %if.then.i.i], !srcloc !362

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 4) #10
  br label %rfcomm_send_cmd.exit

rfcomm_send_cmd.exit:                             ; preds = %if.then.i.i, %do.end.i
  %23 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %sock.i.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %24 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sock.i.i, align 4
  %call3.i.i = call i32 @kernel_sendmsg(ptr noundef %25, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %iv.i.i, i32 noundef 1, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_recv_pn(ptr noundef %s, i32 noundef %cr, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %d = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_pn.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_pn, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_pn.__UNIQUE_ID_ddebug525, ptr noundef nonnull @.str.93, ptr noundef %s, i32 noundef %5, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %do.end.cleanup41_crit_edge, label %if.end6

do.end.cleanup41_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

if.end6:                                          ; preds = %do.end
  %dlcs.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end6
  %d.0.in.i = phi ptr [ %dlcs.i, %if.end6 ], [ %d.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %d.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %d.0.i = load ptr, ptr %d.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %d.0.i, %dlcs.i
  br i1 %cmp.not.i, label %rfcomm_dlc_get.exit.thread, label %for.body.i

rfcomm_dlc_get.exit.thread:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %d, align 4
  br label %if.else20

for.body.i:                                       ; preds = %for.cond.i
  %dlci2.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 8
  %8 = ptrtoint ptr %dlci2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dlci2.i, align 4
  %cmp4.i = icmp eq i8 %9, %3
  br i1 %cmp4.i, label %rfcomm_dlc_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

rfcomm_dlc_get.exit:                              ; preds = %for.body.i
  %10 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %d.0.i, ptr %d, align 4
  %tobool8.not = icmp eq ptr %d.0.i, null
  br i1 %tobool8.not, label %rfcomm_dlc_get.exit.if.else20_crit_edge, label %if.then9

rfcomm_dlc_get.exit.if.else20_crit_edge:          ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20

if.then9:                                         ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cr)
  %tobool10.not = icmp eq i32 %cr, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_apply_pn(ptr noundef nonnull %d.0.i, i32 noundef 1, ptr noundef %1)
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d, align 4
  tail call fastcc void @rfcomm_send_pn(ptr noundef %s, i32 noundef 0, ptr noundef %12)
  br label %cleanup41

if.else:                                          ; preds = %if.then9
  %state14 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 5
  %13 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cond44 = icmp eq i32 %14, 7
  br i1 %cond44, label %sw.bb, label %if.else.cleanup41_crit_edge

if.else.cleanup41_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rfcomm_apply_pn(ptr noundef nonnull %d.0.i, i32 noundef 0, ptr noundef %1)
  %15 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d, align 4
  %state16 = getelementptr inbounds %struct.rfcomm_dlc, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %state16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %state16, align 4
  %dlci17 = getelementptr inbounds %struct.rfcomm_dlc, ptr %16, i32 0, i32 8
  %18 = ptrtoint ptr %dlci17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dlci17, align 4
  tail call fastcc void @rfcomm_send_sabm(ptr noundef %s, i8 noundef zeroext %19)
  br label %cleanup41

if.else20:                                        ; preds = %rfcomm_dlc_get.exit.if.else20_crit_edge, %rfcomm_dlc_get.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cr)
  %tobool23.not = icmp eq i32 %cr, 0
  br i1 %tobool23.not, label %if.else20.cleanup41_crit_edge, label %if.end25

if.else20.cleanup41_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

if.end25:                                         ; preds = %if.else20
  %20 = lshr i8 %3, 1
  %call26 = call i32 @rfcomm_connect_ind(ptr noundef %s, i8 noundef zeroext %20, ptr noundef nonnull %d) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else37, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d, align 4
  %dlci29 = getelementptr inbounds %struct.rfcomm_dlc, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %dlci29 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %3, ptr %dlci29, align 4
  %24 = shl i8 %3, 2
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %25 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %26 to i8
  %27 = shl i8 %.tr, 1
  %28 = or i8 %24, %27
  %conv33 = or i8 %28, 1
  %addr = getelementptr inbounds %struct.rfcomm_dlc, ptr %22, i32 0, i32 9
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv33, ptr %addr, align 1
  call fastcc void @rfcomm_dlc_link(ptr noundef %s, ptr noundef %22)
  %30 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d, align 4
  call fastcc void @rfcomm_apply_pn(ptr noundef %31, i32 noundef 1, ptr noundef %1)
  %32 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d, align 4
  %state35 = getelementptr inbounds %struct.rfcomm_dlc, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %state35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %state35, align 4
  call fastcc void @rfcomm_send_pn(ptr noundef %s, i32 noundef 0, ptr noundef %33)
  br label %cleanup41

if.else37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @rfcomm_send_dm(ptr noundef %s, i8 noundef zeroext %3)
  br label %cleanup41

cleanup41:                                        ; preds = %if.else37, %if.then28, %if.else20.cleanup41_crit_edge, %sw.bb, %if.else.cleanup41_crit_edge, %if.then11, %do.end.cleanup41_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_recv_rpn(ptr noundef %s, i32 noundef %cr, i32 noundef %len, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = lshr i8 %3, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_rpn, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv5 = zext i8 %4 to i32
  %bit_rate6 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bit_rate6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bit_rate6, align 1
  %conv7 = zext i8 %6 to i32
  %line_settings = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %line_settings to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %line_settings, align 1
  %conv8 = zext i8 %8 to i32
  %flow_ctrl9 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %flow_ctrl9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flow_ctrl9, align 1
  %conv10 = zext i8 %10 to i32
  %xon_char11 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %xon_char11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xon_char11, align 1
  %conv12 = zext i8 %12 to i32
  %xoff_char13 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %xoff_char13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %xoff_char13, align 1
  %conv14 = zext i8 %14 to i32
  %param_mask = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %param_mask to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %param_mask, align 1
  %conv15 = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_rpn.__UNIQUE_ID_ddebug526, ptr noundef nonnull @.str.108, i32 noundef %conv5, i32 noundef %cr, i32 noundef %len, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv15) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cr)
  %tobool16.not = icmp eq i32 %cr, 0
  br i1 %tobool16.not, label %do.end.cleanup_crit_edge, label %if.end18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp eq i32 %len, 1
  br i1 %cmp, label %if.end18.rpn_out_crit_edge, label %if.end21

if.end18.rpn_out_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpn_out

if.end21:                                         ; preds = %if.end18
  %param_mask22 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %param_mask22 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %param_mask22, align 1
  %19 = and i16 %18, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool25.not = icmp eq i16 %19, 0
  br i1 %tobool25.not, label %if.end21.if.end52_crit_edge, label %if.then26

if.end21.if.end52_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then26:                                        ; preds = %if.end21
  %bit_rate27 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %bit_rate27 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bit_rate27, align 1
  %conv28 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %cmp29 = icmp ugt i8 %21, 8
  br i1 %cmp29, label %do.body32, label %if.then26.if.end52_crit_edge

if.then26.if.end52_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.body32:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_rpn, %if.then44)) #10
          to label %if.end52 [label %if.then44], !srcloc !362

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_rpn.__UNIQUE_ID_ddebug527, ptr noundef nonnull @.str.109, i32 noundef %conv28) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then44, %do.body32, %if.then26.if.end52_crit_edge, %if.end21.if.end52_crit_edge
  %rpn_mask.0 = phi i16 [ 16255, %if.then26.if.end52_crit_edge ], [ 16255, %if.end21.if.end52_crit_edge ], [ 16254, %if.then44 ], [ 16254, %do.body32 ]
  %bit_rate.0 = phi i8 [ %21, %if.then26.if.end52_crit_edge ], [ 0, %if.end21.if.end52_crit_edge ], [ 3, %if.then44 ], [ 3, %do.body32 ]
  %22 = ptrtoint ptr %param_mask22 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %param_mask22, align 1
  %24 = and i16 %23, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool56.not = icmp eq i16 %24, 0
  br i1 %tobool56.not, label %if.end52.if.end87_crit_edge, label %if.then57

if.end52.if.end87_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then57:                                        ; preds = %if.end52
  %line_settings58 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %line_settings58 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %line_settings58, align 1
  %27 = and i8 %26, 3
  %conv62 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp63.not = icmp eq i8 %27, 3
  br i1 %cmp63.not, label %if.then57.if.end87_crit_edge, label %do.body66

if.then57.if.end87_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

do.body66:                                        ; preds = %if.then57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_rpn, %if.then78)) #10
          to label %do.end82 [label %if.then78], !srcloc !362

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_rpn.__UNIQUE_ID_ddebug528, ptr noundef nonnull @.str.110, i32 noundef %conv62) #10
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.body66
  %28 = and i16 %rpn_mask.0, 16253
  br label %if.end87

if.end87:                                         ; preds = %do.end82, %if.then57.if.end87_crit_edge, %if.end52.if.end87_crit_edge
  %rpn_mask.1 = phi i16 [ %28, %do.end82 ], [ %rpn_mask.0, %if.then57.if.end87_crit_edge ], [ %rpn_mask.0, %if.end52.if.end87_crit_edge ]
  %data_bits.0 = phi i8 [ 3, %do.end82 ], [ 3, %if.then57.if.end87_crit_edge ], [ 0, %if.end52.if.end87_crit_edge ]
  %29 = ptrtoint ptr %param_mask22 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %param_mask22, align 1
  %31 = and i16 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool91.not = icmp eq i16 %31, 0
  br i1 %tobool91.not, label %if.end87.if.end123_crit_edge, label %if.then92

if.end87.if.end123_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then92:                                        ; preds = %if.end87
  %line_settings93 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %line_settings93 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %line_settings93, align 1
  %34 = and i8 %33, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp99.not = icmp eq i8 %34, 0
  br i1 %cmp99.not, label %if.then92.if.end123_crit_edge, label %do.body102

if.then92.if.end123_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

do.body102:                                       ; preds = %if.then92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_rpn, %if.then114)) #10
          to label %do.end118 [label %if.then114], !srcloc !362

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_rpn.__UNIQUE_ID_ddebug529, ptr noundef nonnull @.str.111, i32 noundef 1) #10
  br label %do.end118

do.end118:                                        ; preds = %if.then114, %do.body102
  %35 = xor i16 %rpn_mask.1, 4
  br label %if.end123

if.end123:                                        ; preds = %do.end118, %if.then92.if.end123_crit_edge, %if.end87.if.end123_crit_edge
  %rpn_mask.2 = phi i16 [ %35, %do.end118 ], [ %rpn_mask.1, %if.then92.if.end123_crit_edge ], [ %rpn_mask.1, %if.end87.if.end123_crit_edge ]
  %36 = ptrtoint ptr %param_mask22 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %param_mask22, align 1
  %38 = and i16 %37, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool127.not = icmp eq i16 %38, 0
  br i1 %tobool127.not, label %if.end123.if.end159_crit_edge, label %if.then128

if.end123.if.end159_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then128:                                       ; preds = %if.end123
  %line_settings129 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %line_settings129 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %line_settings129, align 1
  %41 = lshr i8 %40, 3
  %42 = and i8 %41, 7
  %conv134 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp135.not = icmp eq i8 %42, 0
  br i1 %cmp135.not, label %if.then128.if.end159_crit_edge, label %do.body138

if.then128.if.end159_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

do.body138:                                       ; preds = %if.then128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_rpn, %if.then150)) #10
          to label %do.end154 [label %if.then150], !srcloc !362

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_rpn.__UNIQUE_ID_ddebug530, ptr noundef nonnull @.str.112, i32 noundef %conv134) #10
  br label %do.end154

do.end154:                                        ; preds = %if.then150, %do.body138
  %43 = xor i16 %rpn_mask.2, 8
  br label %if.end159

if.end159:                                        ; preds = %do.end154, %if.then128.if.end159_crit_edge, %if.end123.if.end159_crit_edge
  %rpn_mask.3 = phi i16 [ %43, %do.end154 ], [ %rpn_mask.2, %if.then128.if.end159_crit_edge ], [ %rpn_mask.2, %if.end123.if.end159_crit_edge ]
  %44 = ptrtoint ptr %param_mask22 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %param_mask22, align 1
  %46 = and i16 %45, 63
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool163.not = icmp eq i16 %46, 0
  br i1 %tobool163.not, label %if.end159.if.end191_crit_edge, label %if.then164

if.end159.if.end191_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.then164:                                       ; preds = %if.end159
  %flow_ctrl165 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %flow_ctrl165 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flow_ctrl165, align 1
  %conv166 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp167.not = icmp eq i8 %48, 0
  br i1 %cmp167.not, label %if.then164.if.end191_crit_edge, label %do.body170

if.then164.if.end191_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

do.body170:                                       ; preds = %if.then164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_rpn, %if.then182)) #10
          to label %do.end186 [label %if.then182], !srcloc !362

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_rpn.__UNIQUE_ID_ddebug531, ptr noundef nonnull @.str.113, i32 noundef %conv166) #10
  br label %do.end186

do.end186:                                        ; preds = %if.then182, %do.body170
  %49 = xor i16 %rpn_mask.3, 16128
  br label %if.end191

if.end191:                                        ; preds = %do.end186, %if.then164.if.end191_crit_edge, %if.end159.if.end191_crit_edge
  %rpn_mask.4 = phi i16 [ %49, %do.end186 ], [ %rpn_mask.3, %if.then164.if.end191_crit_edge ], [ %rpn_mask.3, %if.end159.if.end191_crit_edge ]
  %50 = ptrtoint ptr %param_mask22 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %param_mask22, align 1
  %52 = and i16 %51, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool195.not = icmp eq i16 %52, 0
  br i1 %tobool195.not, label %if.end191.if.end223_crit_edge, label %if.then196

if.end191.if.end223_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223

if.then196:                                       ; preds = %if.end191
  %xon_char197 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %xon_char197 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %xon_char197, align 1
  %conv198 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %54)
  %cmp199.not = icmp eq i8 %54, 17
  br i1 %cmp199.not, label %if.then196.if.end223_crit_edge, label %do.body202

if.then196.if.end223_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223

do.body202:                                       ; preds = %if.then196
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_rpn, %if.then214)) #10
          to label %do.end218 [label %if.then214], !srcloc !362

if.then214:                                       ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_rpn.__UNIQUE_ID_ddebug532, ptr noundef nonnull @.str.114, i32 noundef %conv198) #10
  br label %do.end218

do.end218:                                        ; preds = %if.then214, %do.body202
  %55 = xor i16 %rpn_mask.4, 32
  br label %if.end223

if.end223:                                        ; preds = %do.end218, %if.then196.if.end223_crit_edge, %if.end191.if.end223_crit_edge
  %rpn_mask.5 = phi i16 [ %55, %do.end218 ], [ %rpn_mask.4, %if.then196.if.end223_crit_edge ], [ %rpn_mask.4, %if.end191.if.end223_crit_edge ]
  %xon_char.0 = phi i8 [ 17, %do.end218 ], [ 17, %if.then196.if.end223_crit_edge ], [ 0, %if.end191.if.end223_crit_edge ]
  %56 = ptrtoint ptr %param_mask22 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %param_mask22, align 1
  %58 = and i16 %57, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool227.not = icmp eq i16 %58, 0
  br i1 %tobool227.not, label %if.end223.rpn_out_crit_edge, label %if.then228

if.end223.rpn_out_crit_edge:                      ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpn_out

if.then228:                                       ; preds = %if.end223
  %xoff_char229 = getelementptr inbounds %struct.rfcomm_rpn, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %xoff_char229 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %xoff_char229, align 1
  %conv230 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %60)
  %cmp231.not = icmp eq i8 %60, 19
  br i1 %cmp231.not, label %if.then228.rpn_out_crit_edge, label %do.body234

if.then228.rpn_out_crit_edge:                     ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpn_out

do.body234:                                       ; preds = %if.then228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_rpn, %if.then246)) #10
          to label %do.end250 [label %if.then246], !srcloc !362

if.then246:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_rpn.__UNIQUE_ID_ddebug533, ptr noundef nonnull @.str.115, i32 noundef %conv230) #10
  br label %do.end250

do.end250:                                        ; preds = %if.then246, %do.body234
  %61 = xor i16 %rpn_mask.5, 64
  br label %rpn_out

rpn_out:                                          ; preds = %do.end250, %if.then228.rpn_out_crit_edge, %if.end223.rpn_out_crit_edge, %if.end18.rpn_out_crit_edge
  %rpn_mask.6 = phi i16 [ %61, %do.end250 ], [ %rpn_mask.5, %if.then228.rpn_out_crit_edge ], [ %rpn_mask.5, %if.end223.rpn_out_crit_edge ], [ 16255, %if.end18.rpn_out_crit_edge ]
  %xoff_char.0 = phi i8 [ 19, %do.end250 ], [ 19, %if.then228.rpn_out_crit_edge ], [ 0, %if.end223.rpn_out_crit_edge ], [ 19, %if.end18.rpn_out_crit_edge ]
  %xon_char.1 = phi i8 [ %xon_char.0, %do.end250 ], [ %xon_char.0, %if.then228.rpn_out_crit_edge ], [ %xon_char.0, %if.end223.rpn_out_crit_edge ], [ 17, %if.end18.rpn_out_crit_edge ]
  %data_bits.1 = phi i8 [ %data_bits.0, %do.end250 ], [ %data_bits.0, %if.then228.rpn_out_crit_edge ], [ %data_bits.0, %if.end223.rpn_out_crit_edge ], [ 3, %if.end18.rpn_out_crit_edge ]
  %bit_rate.1 = phi i8 [ %bit_rate.0, %do.end250 ], [ %bit_rate.0, %if.then228.rpn_out_crit_edge ], [ %bit_rate.0, %if.end223.rpn_out_crit_edge ], [ 3, %if.end18.rpn_out_crit_edge ]
  %call256 = tail call i32 @rfcomm_send_rpn(ptr noundef %s, i32 noundef 0, i8 noundef zeroext %4, i8 noundef zeroext %bit_rate.1, i8 noundef zeroext %data_bits.1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %xon_char.1, i8 noundef zeroext %xoff_char.0, i16 noundef zeroext %rpn_mask.6)
  br label %cleanup

cleanup:                                          ; preds = %rpn_out, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_recv_msc(ptr noundef %s, i32 noundef %cr, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = lshr i8 %3, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_recv_msc.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_recv_msc, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv5 = zext i8 %4 to i32
  %v24_sig = getelementptr inbounds %struct.rfcomm_msc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %v24_sig, align 1
  %conv6 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_recv_msc.__UNIQUE_ID_ddebug535, ptr noundef nonnull @.str.121, i32 noundef %conv5, i32 noundef %cr, i32 noundef %conv6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dlcs.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %d.0.in.i = phi ptr [ %dlcs.i, %do.end ], [ %d.0.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %d.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %d.0.i = load ptr, ptr %d.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %d.0.i, %dlcs.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %dlci2.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 8
  %8 = ptrtoint ptr %dlci2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dlci2.i, align 4
  %cmp4.i = icmp eq i8 %9, %4
  br i1 %cmp4.i, label %rfcomm_dlc_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

rfcomm_dlc_get.exit:                              ; preds = %for.body.i
  %tobool8.not = icmp eq ptr %d.0.i, null
  br i1 %tobool8.not, label %rfcomm_dlc_get.exit.cleanup_crit_edge, label %if.end10

rfcomm_dlc_get.exit.cleanup_crit_edge:            ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %rfcomm_dlc_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cr)
  %tobool11.not = icmp eq i32 %cr, 0
  br i1 %tobool11.not, label %if.end10.cleanup.sink.split_crit_edge, label %if.then12

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then12:                                        ; preds = %if.end10
  %v24_sig13 = getelementptr inbounds %struct.rfcomm_msc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %v24_sig13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %v24_sig13, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  br i1 %tobool16.not, label %if.then12.if.else_crit_edge, label %land.lhs.true

if.then12.if.else_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then12
  %cfc = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 19
  %13 = ptrtoint ptr %cfc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool17.not = icmp eq i32 %14, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then12.if.else_crit_edge
  %flags19 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags19) #10
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %15 = ptrtoint ptr %v24_sig13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %v24_sig13, align 1
  %remote_v24_sig = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 12
  %17 = ptrtoint ptr %remote_v24_sig to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %remote_v24_sig, align 4
  %modem_status = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 25
  %18 = ptrtoint ptr %modem_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %modem_status, align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %v24_sig13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %v24_sig13, align 1
  tail call void %19(ptr noundef nonnull %d.0.i, i8 noundef zeroext %21) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %22 = ptrtoint ptr %v24_sig13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %v24_sig13, align 1
  tail call fastcc void @rfcomm_send_msc(ptr noundef %s, i32 noundef 0, i8 noundef zeroext %4, i8 noundef zeroext %23)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end26, %if.end10.cleanup.sink.split_crit_edge
  %.sink12 = phi i8 [ 2, %if.end26 ], [ 1, %if.end10.cleanup.sink.split_crit_edge ]
  %mscex33 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.0.i, i32 0, i32 13
  %24 = ptrtoint ptr %mscex33 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mscex33, align 1
  %26 = or i8 %25, %.sink12
  store i8 %26, ptr %mscex33, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %rfcomm_dlc_get.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_fcoff(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %buf, i32 6
  %6 = call ptr @memset(ptr %5, i32 255, i32 10)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_fcoff.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_fcoff, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_fcoff.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.123, ptr noundef %s, i32 noundef 0) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %7 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %8 to i8
  %9 = shl i8 %.tr, 1
  %conv = or i8 %9, 1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %buf, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -17, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %1, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 97, ptr %2, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %3, align 1
  %15 = xor i8 %9, -2
  %xor.i = zext i8 %15 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.i, align 1
  %xor510.i = xor i8 %17, -17
  %xor5.i = zext i8 %xor510.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx6.i, align 1
  %20 = xor i8 %19, -1
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #10
  %22 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %23 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %iv.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_fcoff, %if.then.i)) #10
          to label %rfcomm_send_frame.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 6) #10
  br label %rfcomm_send_frame.exit

rfcomm_send_frame.exit:                           ; preds = %if.then.i, %do.end
  %25 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %26 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sock.i, align 4
  %call3.i = call i32 @kernel_sendmsg(ptr noundef %27, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_fcon(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %buf, i32 6
  %6 = call ptr @memset(ptr %5, i32 255, i32 10)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_fcon.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_fcon, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_fcon.__UNIQUE_ID_ddebug516, ptr noundef nonnull @.str.123, ptr noundef %s, i32 noundef 0) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %7 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %8 to i8
  %9 = shl i8 %.tr, 1
  %conv = or i8 %9, 1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %buf, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -17, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %1, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -95, ptr %2, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %3, align 1
  %15 = xor i8 %9, -2
  %xor.i = zext i8 %15 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.i, align 1
  %xor510.i = xor i8 %17, -17
  %xor5.i = zext i8 %xor510.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx6.i, align 1
  %20 = xor i8 %19, -1
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #10
  %22 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %23 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %iv.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_fcon, %if.then.i)) #10
          to label %rfcomm_send_frame.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 6) #10
  br label %rfcomm_send_frame.exit

rfcomm_send_frame.exit:                           ; preds = %if.then.i, %do.end
  %25 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %26 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sock.i, align 4
  %call3.i = call i32 @kernel_sendmsg(ptr noundef %27, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_test(ptr noundef %s, ptr noundef %pattern, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %iv = alloca [3 x %struct.kvec], align 4
  %msg = alloca %struct.msghdr, align 8
  %hdr = alloca [5 x i8], align 1
  %crc = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sock1 = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %sock1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iv) #10
  %2 = getelementptr inbounds %struct.kvec, ptr %iv, i32 0, i32 1
  %3 = getelementptr inbounds [3 x %struct.kvec], ptr %iv, i32 0, i32 1
  %4 = getelementptr inbounds [3 x %struct.kvec], ptr %iv, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds [3 x %struct.kvec], ptr %iv, i32 0, i32 2
  %6 = getelementptr inbounds [3 x %struct.kvec], ptr %iv, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #10
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %hdr) #10
  %7 = getelementptr inbounds [5 x i8], ptr %hdr, i32 0, i32 1
  %8 = getelementptr inbounds [5 x i8], ptr %hdr, i32 0, i32 2
  %9 = getelementptr inbounds [5 x i8], ptr %hdr, i32 0, i32 3
  %10 = getelementptr inbounds [5 x i8], ptr %hdr, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %len)
  %cmp = icmp sgt i32 %len, 125
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_test.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_test, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !362

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_test.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.123, ptr noundef %s, i32 noundef 0) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %11 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %12 to i8
  %13 = shl i8 %.tr, 1
  %conv = or i8 %13, 1
  %14 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %hdr, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -17, ptr %7, align 1
  %len.tr = trunc i32 %len to i8
  %16 = shl i8 %len.tr, 1
  %conv10 = add i8 %16, 5
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10, ptr %8, align 1
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 33, ptr %9, align 1
  %conv19 = or i8 %16, 1
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv19, ptr %10, align 1
  %20 = xor i8 %13, -2
  %xor.i = zext i8 %20 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.i, align 1
  %xor510.i = xor i8 %22, -17
  %xor5.i = zext i8 %xor510.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %23 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx6.i, align 1
  %25 = xor i8 %24, -1
  %26 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %crc, align 1
  %27 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hdr, ptr %iv, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %2, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pattern, ptr %3, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %len, ptr %4, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %crc, ptr %5, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %6, align 4
  %33 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %add36 = add nsw i32 %len, 6
  %call37 = call i32 @kernel_sendmsg(ptr noundef %1, ptr noundef nonnull %msg, ptr noundef nonnull %iv, i32 noundef 3, i32 noundef %add36) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crc) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %hdr) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_nsc(ptr noundef %s, i32 noundef %cr, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds i8, ptr %buf, i32 7
  %7 = call ptr @memset(ptr %6, i32 255, i32 9)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_nsc.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_nsc, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %type to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_nsc.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.127, ptr noundef %s, i32 noundef %cr, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %8 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %9 to i8
  %10 = shl i8 %.tr, 1
  %conv4 = or i8 %10, 1
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4, ptr %buf, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -17, ptr %0, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %1, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 17, ptr %2, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %3, align 1
  %conv8 = zext i8 %type to i32
  %shl9 = shl nuw nsw i32 %conv8, 2
  %shl10 = shl i32 %cr, 1
  %or11 = or i32 %shl9, %shl10
  %16 = trunc i32 %or11 to i8
  %conv13 = or i8 %16, 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv13, ptr %4, align 1
  %18 = xor i8 %10, -2
  %xor.i = zext i8 %18 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i, align 1
  %xor510.i = xor i8 %20, -17
  %xor5.i = zext i8 %xor510.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx6.i, align 1
  %23 = xor i8 %22, -1
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #10
  %25 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %26 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf, ptr %iv.i, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 7, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_nsc, %if.then.i)) #10
          to label %rfcomm_send_frame.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 7) #10
  br label %rfcomm_send_frame.exit

rfcomm_send_frame.exit:                           ; preds = %if.then.i, %do.end
  %28 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %29 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sock.i, align 4
  %call3.i = call i32 @kernel_sendmsg(ptr noundef %30, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 7) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_apply_pn(ptr noundef %d, i32 noundef %cr, ptr nocapture noundef readonly %pn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %session = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_apply_pn.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_apply_pn, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %dlci = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %4 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dlci, align 4
  %conv = zext i8 %5 to i32
  %mtu = getelementptr inbounds %struct.rfcomm_pn, ptr %pn, i32 0, i32 4
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %mtu, align 1
  %conv3 = zext i16 %7 to i32
  %flow_ctrl = getelementptr inbounds %struct.rfcomm_pn, ptr %pn, i32 0, i32 1
  %8 = ptrtoint ptr %flow_ctrl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flow_ctrl, align 1
  %conv4 = zext i8 %9 to i32
  %credits = getelementptr inbounds %struct.rfcomm_pn, ptr %pn, i32 0, i32 6
  %10 = ptrtoint ptr %credits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %credits, align 1
  %conv5 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_apply_pn.__UNIQUE_ID_ddebug524, ptr noundef nonnull @.str.106, ptr noundef %d, i32 noundef %3, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flow_ctrl6 = getelementptr inbounds %struct.rfcomm_pn, ptr %pn, i32 0, i32 1
  %12 = ptrtoint ptr %flow_ctrl6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flow_ctrl6, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %13, label %do.end.if.else_crit_edge [
    i8 -16, label %land.lhs.true
    i8 -32, label %do.end.if.then15_crit_edge
  ]

do.end.if.then15_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %cfc = getelementptr inbounds %struct.rfcomm_session, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %cfc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.not = icmp eq i32 %16, 0
  br i1 %cmp9.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.then15_crit_edge

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true.if.then15_crit_edge, %do.end.if.then15_crit_edge
  %cfc16 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 19
  %17 = ptrtoint ptr %cfc16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 40, ptr %cfc16, align 4
  %credits17 = getelementptr inbounds %struct.rfcomm_pn, ptr %pn, i32 0, i32 6
  %18 = ptrtoint ptr %credits17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %credits17, align 1
  %conv18 = zext i8 %19 to i32
  %tx_credits = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 21
  %20 = ptrtoint ptr %tx_credits to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv18, ptr %tx_credits, align 4
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %cfc19 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 19
  %21 = ptrtoint ptr %cfc19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cfc19, align 4
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  %cfc21 = getelementptr inbounds %struct.rfcomm_session, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %cfc21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfc21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp22 = icmp eq i32 %23, -1
  br i1 %cmp22, label %if.then24, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %cfc25 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 19
  %24 = ptrtoint ptr %cfc25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfc25, align 4
  %26 = ptrtoint ptr %cfc21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cfc21, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %priority = getelementptr inbounds %struct.rfcomm_pn, ptr %pn, i32 0, i32 2
  %27 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %priority, align 1
  %priority28 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 10
  %29 = ptrtoint ptr %priority28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %priority28, align 2
  %mtu29 = getelementptr inbounds %struct.rfcomm_pn, ptr %pn, i32 0, i32 4
  %30 = ptrtoint ptr %mtu29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %mtu29, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv30 = zext i16 %32 to i32
  %mtu31 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 18
  %33 = ptrtoint ptr %mtu31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv30, ptr %mtu31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cr)
  %tobool32.not = icmp eq i32 %cr, 0
  br i1 %tobool32.not, label %if.end27.if.end41_crit_edge, label %land.lhs.true33

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.lhs.true33:                                  ; preds = %if.end27
  %mtu35 = getelementptr inbounds %struct.rfcomm_session, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %mtu35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mtu35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv30)
  %cmp36 = icmp ult i32 %35, %conv30
  br i1 %cmp36, label %if.then38, label %land.lhs.true33.if.end41_crit_edge

land.lhs.true33.if.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then38:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %mtu31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %mtu31, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %land.lhs.true33.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_rls(ptr noundef %s, i8 noundef zeroext %dlci, i8 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds i8, ptr %buf, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 -1, ptr %7, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_rls.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_rls, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_rls.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.119, ptr noundef %s, i32 noundef 0, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %initiator = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 5
  %9 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %initiator, align 4
  %.tr = trunc i32 %10 to i8
  %11 = shl i8 %.tr, 1
  %conv4 = or i8 %11, 1
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4, ptr %buf, align 1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -17, ptr %0, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 9, ptr %1, align 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 81, ptr %2, align 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %3, align 1
  %17 = shl i8 %dlci, 2
  %18 = or i8 %17, 3
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %4, align 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %status, ptr %5, align 1
  %21 = xor i8 %11, -2
  %xor.i = zext i8 %21 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1.i, align 1
  %xor510.i = xor i8 %23, -17
  %xor5.i = zext i8 %xor510.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx6.i, align 1
  %26 = xor i8 %25, -1
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #10
  %28 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %29 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf, ptr %iv.i, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_rls, %if.then.i)) #10
          to label %rfcomm_send_frame.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 8) #10
  br label %rfcomm_send_frame.exit

rfcomm_send_frame.exit:                           ; preds = %if.then.i, %do.end
  %31 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %32 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sock.i, align 4
  %call3.i = call i32 @kernel_sendmsg(ptr noundef %33, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 8) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_process_tx(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_process_tx.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_process_tx, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %cfc = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 19
  %2 = ptrtoint ptr %cfc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfc, align 4
  %rx_credits = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 20
  %4 = ptrtoint ptr %rx_credits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_credits, align 4
  %tx_credits = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 21
  %6 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_credits, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_process_tx.__UNIQUE_ID_ddebug539, ptr noundef nonnull @.str.130, ptr noundef %d, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %session = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %8 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %session, align 4
  %dlci = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 8
  %10 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dlci, align 4
  %v24_sig = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 11
  %12 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %v24_sig, align 1
  tail call fastcc void @rfcomm_send_msc(ptr noundef %9, i32 noundef 1, i8 noundef zeroext %11, i8 noundef zeroext %13)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %cfc8 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 19
  %14 = ptrtoint ptr %cfc8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cfc8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool13.not = icmp eq i32 %and1.i, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.then10.if.end25_crit_edge

if.then10.if.end25_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then10
  %rx_credits14 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 20
  %18 = ptrtoint ptr %rx_credits14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_credits14, align 4
  %shr = lshr i32 %15, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %shr)
  %cmp.not = icmp ugt i32 %19, %shr
  br i1 %cmp.not, label %land.lhs.true.if.end25_crit_edge, label %if.then16

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %session17 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %20 = ptrtoint ptr %session17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %session17, align 4
  %addr = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 9
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %addr, align 1
  %sub = sub i32 %15, %19
  %conv = trunc i32 %sub to i8
  tail call fastcc void @rfcomm_send_credits(ptr noundef %21, i8 noundef zeroext %23, i8 noundef zeroext %conv)
  %24 = ptrtoint ptr %cfc8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfc8, align 4
  %26 = ptrtoint ptr %rx_credits14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rx_credits14, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %tx_credits24 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 21
  %27 = ptrtoint ptr %tx_credits24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %tx_credits24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then16, %land.lhs.true.if.end25_crit_edge, %if.then10.if.end25_crit_edge
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool28.not = icmp eq i32 %30, 0
  br i1 %tobool28.not, label %while.cond.preheader, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end25
  %tx_credits32 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 21
  %31 = ptrtoint ptr %tx_credits32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_credits32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool33.not6 = icmp eq i32 %32, 0
  br i1 %tobool33.not6, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %tx_queue34 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 2
  %session37 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %33 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end43.land.rhs_crit_edge, %land.rhs.lr.ph
  %call35 = call ptr @skb_dequeue(ptr noundef %tx_queue34) #10
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %34 = ptrtoint ptr %session37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %session37, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call35, i32 0, i32 19
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call35, i32 0, i32 6
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #10
  %40 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %iv.i, align 4
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_process_tx, %if.then.i)) #10
          to label %rfcomm_send_frame.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %35, i32 noundef %39) #10
  br label %rfcomm_send_frame.exit

rfcomm_send_frame.exit:                           ; preds = %if.then.i, %while.body
  %42 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %35, i32 0, i32 1
  %43 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sock.i, align 4
  %call3.i = call i32 @kernel_sendmsg(ptr noundef %44, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef %39) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp39 = icmp slt i32 %call3.i, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %rfcomm_send_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @skb_queue_head(ptr noundef %tx_queue34, ptr noundef nonnull %call35) #10
  br label %while.end

if.end43:                                         ; preds = %rfcomm_send_frame.exit
  call void @kfree_skb_reason(ptr noundef nonnull %call35, i32 noundef 0) #10
  %45 = ptrtoint ptr %tx_credits32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_credits32, align 4
  %dec = add i32 %46, -1
  store i32 %dec, ptr %tx_credits32, align 4
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %if.end43.while.end_crit_edge, label %if.end43.land.rhs_crit_edge

if.end43.land.rhs_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end43.while.end_crit_edge, %if.then41, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %47 = ptrtoint ptr %cfc8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cfc8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool46.not = icmp eq i32 %48, 0
  br i1 %tobool46.not, label %while.end.cleanup_crit_edge, label %land.lhs.true47

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true47:                                  ; preds = %while.end
  %49 = ptrtoint ptr %tx_credits32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_credits32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool49.not = icmp eq i32 %50, 0
  br i1 %tobool49.not, label %if.then50, label %land.lhs.true47.cleanup_crit_edge

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then50:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %land.lhs.true47.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_send_credits(ptr noundef %s, i8 noundef zeroext %addr, i8 noundef zeroext %credits) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds i8, ptr %buf, i32 5
  %5 = call ptr @memset(ptr %4, i32 255, i32 11)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_credits.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_credits, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %addr to i32
  %conv3 = zext i8 %credits to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_credits.__UNIQUE_ID_ddebug518, ptr noundef nonnull @.str.132, ptr noundef %s, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %addr, ptr %buf, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %1, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %credits, ptr %2, align 1
  %10 = xor i8 %addr, -1
  %xor.i = zext i8 %10 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor.i
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i, align 1
  %xor510.i = xor i8 %12, -1
  %xor5.i = zext i8 %xor510.i to i32
  %arrayidx6.i = getelementptr [256 x i8], ptr @rfcomm_crc_table, i32 0, i32 %xor5.i
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6.i, align 1
  %15 = xor i8 %14, -1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #10
  %17 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %18 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf, ptr %iv.i, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_send_credits, %if.then.i)) #10
          to label %rfcomm_send_frame.exit [label %if.then.i], !srcloc !362

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.66, ptr noundef %s, i32 noundef 5) #10
  br label %rfcomm_send_frame.exit

rfcomm_send_frame.exit:                           ; preds = %if.then.i, %do.end
  %20 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %sock.i = getelementptr inbounds %struct.rfcomm_session, ptr %s, i32 0, i32 1
  %21 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sock.i, align 4
  %call3.i = call i32 @kernel_sendmsg(ptr noundef %22, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 5) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_dlc_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rfcomm_dlc_debugfs_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_dlc_debugfs_show(ptr noundef %f, ptr nocapture noundef readnone %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_mutex, i32 noundef 0) #10
  %s.037 = load ptr, ptr @session_list, align 4
  %cmp.not38 = icmp eq ptr %s.037, @session_list
  br i1 %cmp.not38, label %entry.for.end22_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.cond.loopexit:                                ; preds = %for.body10.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %s.039 to i32
  call void @__asan_load4_noabort(i32 %0)
  %s.0 = load ptr, ptr %s.039, align 4
  %cmp.not = icmp eq ptr %s.0, @session_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end22_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.loopexit.for.end22_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %s.039 = phi ptr [ %s.0, %for.cond.loopexit.for.body_crit_edge ], [ %s.037, %entry.for.body_crit_edge ]
  %dlcs = getelementptr inbounds %struct.rfcomm_session, ptr %s.039, i32 0, i32 8
  %1 = ptrtoint ptr %dlcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %d.034 = load ptr, ptr %dlcs, align 4
  %cmp8.not35 = icmp eq ptr %d.034, %dlcs
  br i1 %cmp8.not35, label %for.body.for.cond.loopexit_crit_edge, label %for.body10.lr.ph

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body10.lr.ph:                                 ; preds = %for.body
  %sock = getelementptr inbounds %struct.rfcomm_session, ptr %s.039, i32 0, i32 1
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 16
  %chan1 = getelementptr inbounds %struct.l2cap_pinfo, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan1, align 8
  %src = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 8
  %dst = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 6
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %d.036 = phi ptr [ %d.034, %for.body10.lr.ph ], [ %d.0, %for.body10.for.body10_crit_edge ]
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.036, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %dlci = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.036, i32 0, i32 8
  %10 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dlci, align 4
  %conv = zext i8 %11 to i32
  %mtu = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.036, i32 0, i32 18
  %12 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu, align 4
  %rx_credits = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.036, i32 0, i32 20
  %14 = ptrtoint ptr %rx_credits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_credits, align 4
  %tx_credits = getelementptr inbounds %struct.rfcomm_dlc, ptr %d.036, i32 0, i32 21
  %16 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_credits, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.134, ptr noundef %src, ptr noundef %dst, i32 noundef %9, i32 noundef %conv, i32 noundef %13, i32 noundef %15, i32 noundef %17) #10
  %18 = ptrtoint ptr %d.036 to i32
  call void @__asan_load4_noabort(i32 %18)
  %d.0 = load ptr, ptr %d.036, align 4
  %cmp8.not = icmp eq ptr %d.0, %dlcs
  br i1 %cmp8.not, label %for.body10.for.cond.loopexit_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.body10.for.cond.loopexit_crit_edge:           ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.end22:                                        ; preds = %for.cond.loopexit.for.end22_crit_edge, %entry.for.end22_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rfcomm_mutex) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !152, !153, !155, !156, !157, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !180, !181, !183, !184, !185, !187, !188, !190, !191, !193, !194, !195, !197, !199, !201, !202, !203, !205, !207, !209, !211, !212, !214, !216, !218, !220, !221, !222, !224, !225, !226, !228, !229, !231, !232, !233, !235, !236, !237, !239, !241, !243, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !264, !266, !267, !268, !270, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !323, !324, !326, !327, !328, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !344, !346, !347, !348, !350}
!llvm.named.register.sp = !{!351}
!llvm.module.flags = !{!352, !353, !354, !355, !356, !357, !358, !359}
!llvm.ident = !{!360}

!0 = !{ptr @rfcomm_dlc_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/bluetooth/rfcomm/core.c", i32 306, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rfcomm_dlc_alloc.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/bluetooth/rfcomm/core.c", i32 309, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/rfcomm/core.c", i32 314, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rfcomm_dlc_alloc.__UNIQUE_ID_ddebug486, !7, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/rfcomm/core.c", i32 321, i32 2}
!14 = !{ptr @rfcomm_dlc_free.__UNIQUE_ID_ddebug487, !13, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/bluetooth/rfcomm/core.c", i32 505, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rfcomm_dlc_close.__UNIQUE_ID_ddebug492, !16, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bluetooth/rfcomm/core.c", i32 612, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rfcomm_dlc_send_noerror.__UNIQUE_ID_ddebug494, !20, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/bluetooth/rfcomm/core.c", i32 624, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__rfcomm_dlc_throttle.__UNIQUE_ID_ddebug495, !24, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bluetooth/rfcomm/core.c", i32 635, i32 2}
!29 = !{ptr @__rfcomm_dlc_unthrottle.__UNIQUE_ID_ddebug496, !28, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/bluetooth/rfcomm/core.c", i32 651, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rfcomm_dlc_set_modem_status.__UNIQUE_ID_ddebug497, !31, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/bluetooth/rfcomm/core.c", i32 669, i32 2}
!36 = !{ptr @rfcomm_dlc_get_modem_status.__UNIQUE_ID_ddebug498, !35, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/bluetooth/rfcomm/core.c", i32 1002, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rfcomm_send_rpn.__UNIQUE_ID_ddebug512, !38, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/bluetooth/rfcomm/core.c", i32 1321, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rfcomm_dlc_accept.__UNIQUE_ID_ddebug522, !42, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!45 = !{ptr @__initcall__kmod_rfcomm__551_2265_rfcomm_init6, !46, !"__initcall__kmod_rfcomm__551_2265_rfcomm_init6", i1 false, i1 false}
!46 = !{!"../net/bluetooth/rfcomm/core.c", i32 2265, i32 1}
!47 = !{ptr @__exitcall_rfcomm_exit, !48, !"__exitcall_rfcomm_exit", i1 false, i1 false}
!48 = !{!"../net/bluetooth/rfcomm/core.c", i32 2266, i32 1}
!49 = !{ptr @__param_disable_cfc, !50, !"__param_disable_cfc", i1 false, i1 false}
!50 = !{!"../net/bluetooth/rfcomm/core.c", i32 2268, i32 1}
!51 = !{ptr @__UNIQUE_ID_disable_cfctype552, !50, !"__UNIQUE_ID_disable_cfctype552", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_disable_cfc553, !53, !"__UNIQUE_ID_disable_cfc553", i1 false, i1 false}
!53 = !{!"../net/bluetooth/rfcomm/core.c", i32 2269, i32 1}
!54 = !{ptr @__param_channel_mtu, !55, !"__param_channel_mtu", i1 false, i1 false}
!55 = !{!"../net/bluetooth/rfcomm/core.c", i32 2271, i32 1}
!56 = !{ptr @__UNIQUE_ID_channel_mtutype554, !55, !"__UNIQUE_ID_channel_mtutype554", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_channel_mtu555, !58, !"__UNIQUE_ID_channel_mtu555", i1 false, i1 false}
!58 = !{!"../net/bluetooth/rfcomm/core.c", i32 2272, i32 1}
!59 = !{ptr @__param_l2cap_ertm, !60, !"__param_l2cap_ertm", i1 false, i1 false}
!60 = !{!"../net/bluetooth/rfcomm/core.c", i32 2274, i32 1}
!61 = !{ptr @__UNIQUE_ID_l2cap_ertmtype556, !60, !"__UNIQUE_ID_l2cap_ertmtype556", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_l2cap_ertm557, !63, !"__UNIQUE_ID_l2cap_ertm557", i1 false, i1 false}
!63 = !{!"../net/bluetooth/rfcomm/core.c", i32 2275, i32 1}
!64 = !{ptr @__UNIQUE_ID_author558, !65, !"__UNIQUE_ID_author558", i1 false, i1 false}
!65 = !{!"../net/bluetooth/rfcomm/core.c", i32 2277, i32 1}
!66 = !{ptr @__UNIQUE_ID_description559, !67, !"__UNIQUE_ID_description559", i1 false, i1 false}
!67 = !{!"../net/bluetooth/rfcomm/core.c", i32 2278, i32 1}
!68 = !{ptr @__UNIQUE_ID_version560, !69, !"__UNIQUE_ID_version560", i1 false, i1 false}
!69 = !{!"../net/bluetooth/rfcomm/core.c", i32 2279, i32 1}
!70 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__modver_attr, !69, !"__modver_attr", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_file561, !74, !"__UNIQUE_ID_file561", i1 false, i1 false}
!74 = !{!"../net/bluetooth/rfcomm/core.c", i32 2280, i32 1}
!75 = !{ptr @__UNIQUE_ID_license562, !74, !"__UNIQUE_ID_license562", i1 false, i1 false}
!76 = !{ptr @__UNIQUE_ID_alias563, !77, !"__UNIQUE_ID_alias563", i1 false, i1 false}
!77 = !{!"../net/bluetooth/rfcomm/core.c", i32 2281, i32 1}
!78 = !{ptr @disable_cfc, !79, !"disable_cfc", i1 false, i1 false}
!79 = !{!"../net/bluetooth/rfcomm/core.c", i32 40, i32 13}
!80 = !{ptr @l2cap_ertm, !81, !"l2cap_ertm", i1 false, i1 false}
!81 = !{!"../net/bluetooth/rfcomm/core.c", i32 41, i32 13}
!82 = !{ptr @rfcomm_thread, !83, !"rfcomm_thread", i1 false, i1 false}
!83 = !{!"../net/bluetooth/rfcomm/core.c", i32 44, i32 28}
!84 = !{ptr @rfcomm_dlc_debugfs, !85, !"rfcomm_dlc_debugfs", i1 false, i1 false}
!85 = !{!"../net/bluetooth/rfcomm/core.c", i32 2206, i32 23}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/bluetooth/rfcomm/core.c", i32 261, i32 2}
!88 = !{ptr @rfcomm_dlc_timeout.__UNIQUE_ID_ddebug482, !87, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!89 = !{ptr @skb_queue_head_init.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!91 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/bluetooth/rfcomm/core.c", i32 286, i32 2}
!94 = !{ptr @rfcomm_dlc_clear_state.__UNIQUE_ID_ddebug485, !93, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/bluetooth/rfcomm/core.c", i32 46, i32 8}
!97 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @rfcomm_mutex, !96, !"rfcomm_mutex", i1 false, i1 false}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/bluetooth/rfcomm/core.c", i32 373, i32 2}
!101 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @__rfcomm_dlc_open.__UNIQUE_ID_ddebug490, !100, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/bluetooth/rfcomm/core.c", i32 769, i32 2}
!105 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @rfcomm_session_create.__UNIQUE_ID_ddebug502, !104, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/bluetooth/rfcomm/core.c", i32 197, i32 2}
!109 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @rfcomm_l2sock_create.__UNIQUE_ID_ddebug478, !108, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/bluetooth/rfcomm/core.c", i32 189, i32 2}
!113 = !{ptr @rfcomm_l2data_ready.__UNIQUE_ID_ddebug477, !112, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/bluetooth/rfcomm/core.c", i32 183, i32 2}
!116 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @rfcomm_l2state_change.__UNIQUE_ID_ddebug476, !115, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/bluetooth/rfcomm/core.c", i32 684, i32 2}
!120 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rfcomm_session_add.__UNIQUE_ID_ddebug499, !119, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!122 = !{ptr @rfcomm_session_add.__key, !123, !"__key", i1 false, i1 false}
!123 = !{!"../net/bluetooth/rfcomm/core.c", i32 686, i32 2}
!124 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/bluetooth/rfcomm/core.c", i32 236, i32 2}
!127 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @rfcomm_session_timeout.__UNIQUE_ID_ddebug479, !126, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/bluetooth/rfcomm/core.c", i32 712, i32 2}
!131 = !{ptr @rfcomm_session_del.__UNIQUE_ID_ddebug500, !130, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/bluetooth/rfcomm/core.c", i32 251, i32 2}
!134 = !{ptr @rfcomm_session_clear_timer.__UNIQUE_ID_ddebug481, !133, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/bluetooth/rfcomm/core.c", i32 329, i32 2}
!137 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @rfcomm_dlc_link.__UNIQUE_ID_ddebug488, !136, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!139 = !{ptr @.str.47, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/bluetooth/rfcomm/core.c", i32 957, i32 2}
!141 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @rfcomm_send_pn.__UNIQUE_ID_ddebug511, !140, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/bluetooth/rfcomm/core.c", i32 270, i32 2}
!145 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @rfcomm_dlc_set_timer.__UNIQUE_ID_ddebug483, !144, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!147 = !{ptr @session_list, !148, !"session_list", i1 false, i1 false}
!148 = !{!"../net/bluetooth/rfcomm/core.c", i32 51, i32 8}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/bluetooth/rfcomm/core.c", i32 453, i32 2}
!151 = !{ptr @.str.52, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @__rfcomm_dlc_close.__UNIQUE_ID_ddebug491, !150, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!153 = !{ptr @.str.53, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/bluetooth/rfcomm/core.c", i32 879, i32 2}
!155 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @rfcomm_send_disc.__UNIQUE_ID_ddebug507, !154, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!157 = !{ptr @rfcomm_crc_table, !158, !"rfcomm_crc_table", i1 false, i1 false}
!158 = !{!"../net/bluetooth/rfcomm/core.c", i32 112, i32 22}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/bluetooth/rfcomm/core.c", i32 842, i32 2}
!161 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @rfcomm_send_cmd.__UNIQUE_ID_ddebug504, !160, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!163 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/bluetooth/rfcomm/core.c", i32 894, i32 2}
!165 = !{ptr @.str.58, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @rfcomm_queue_disc.__UNIQUE_ID_ddebug508, !164, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!167 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/bluetooth/rfcomm/core.c", i32 341, i32 2}
!169 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @rfcomm_dlc_unlink.__UNIQUE_ID_ddebug489, !168, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!171 = !{ptr @.str.61, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/bluetooth/rfcomm/core.c", i32 244, i32 2}
!173 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @rfcomm_session_set_timer.__UNIQUE_ID_ddebug480, !172, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/bluetooth/rfcomm/core.c", i32 556, i32 2}
!177 = !{ptr @rfcomm_dlc_send_frag.__UNIQUE_ID_ddebug493, !176, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!178 = !{ptr @.str.64, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/bluetooth/rfcomm/core.c", i32 102, i32 8}
!180 = !{ptr @rfcomm_wq, !179, !"rfcomm_wq", i1 false, i1 false}
!181 = !{ptr @.str.65, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/bluetooth/rfcomm/core.c", i32 833, i32 2}
!183 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @rfcomm_send_frame.__UNIQUE_ID_ddebug503, !182, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!185 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/bluetooth/rfcomm/core.c", i32 865, i32 2}
!187 = !{ptr @rfcomm_send_ua.__UNIQUE_ID_ddebug506, !186, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!188 = !{ptr @.str.68, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/bluetooth/rfcomm/core.c", i32 278, i32 2}
!190 = !{ptr @rfcomm_dlc_clear_timer.__UNIQUE_ID_ddebug484, !189, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!191 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/bluetooth/rfcomm/core.c", i32 1064, i32 2}
!193 = !{ptr @.str.70, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @rfcomm_send_msc.__UNIQUE_ID_ddebug514, !192, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!195 = !{ptr @.str.71, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../net/bluetooth/rfcomm/core.c", i32 2178, i32 11}
!197 = !{ptr @rfcomm_cb, !198, !"rfcomm_cb", i1 false, i1 false}
!198 = !{!"../net/bluetooth/rfcomm/core.c", i32 2177, i32 22}
!199 = !{ptr @.str.72, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../net/bluetooth/rfcomm/core.c", i32 2138, i32 2}
!201 = !{ptr @.str.73, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @rfcomm_security_cfm.__UNIQUE_ID_ddebug550, !200, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!203 = !{ptr @.str.74, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../net/bluetooth/rfcomm/core.c", i32 2215, i32 18}
!205 = !{ptr @.str.75, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../net/bluetooth/rfcomm/core.c", i32 2229, i32 2}
!207 = !{ptr @.str.76, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/bluetooth/rfcomm/core.c", i32 2234, i32 43}
!209 = !{ptr @.str.77, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../net/bluetooth/rfcomm/core.c", i32 2112, i32 2}
!211 = !{ptr @rfcomm_run.__UNIQUE_ID_ddebug549, !210, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!212 = !{ptr @.str.78, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../net/bluetooth/rfcomm/core.c", i32 2056, i32 3}
!214 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../net/bluetooth/rfcomm/core.c", i32 2068, i32 3}
!216 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/bluetooth/rfcomm/core.c", i32 2082, i32 3}
!218 = !{ptr @.str.81, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../net/bluetooth/rfcomm/core.c", i32 1965, i32 2}
!220 = !{ptr @.str.82, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @rfcomm_accept_connection.__UNIQUE_ID_ddebug542, !219, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!222 = !{ptr @.str.83, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../net/bluetooth/rfcomm/core.c", i32 1991, i32 2}
!224 = !{ptr @.str.84, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @rfcomm_check_connection.__UNIQUE_ID_ddebug545, !223, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!226 = !{ptr @.str.85, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../net/bluetooth/rfcomm/core.c", i32 851, i32 2}
!228 = !{ptr @rfcomm_send_sabm.__UNIQUE_ID_ddebug505, !227, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!229 = !{ptr @.str.86, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../net/bluetooth/rfcomm/core.c", i32 747, i32 2}
!231 = !{ptr @.str.87, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @rfcomm_session_close.__UNIQUE_ID_ddebug501, !230, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!233 = !{ptr @.str.88, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../net/bluetooth/rfcomm/core.c", i32 1935, i32 2}
!235 = !{ptr @.str.89, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @rfcomm_process_rx.__UNIQUE_ID_ddebug541, !234, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!237 = !{ptr @.str.90, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../net/bluetooth/rfcomm/core.c", i32 1754, i32 3}
!239 = !{ptr @.str.91, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../net/bluetooth/rfcomm/core.c", i32 1793, i32 3}
!241 = !{ptr @.str.92, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../net/bluetooth/rfcomm/core.c", i32 1362, i32 2}
!243 = !{ptr @.str.93, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @rfcomm_recv_sabm.__UNIQUE_ID_ddebug523, !242, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!245 = !{ptr @.str.94, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../net/bluetooth/rfcomm/core.c", i32 1806, i32 2}
!247 = !{ptr @rfcomm_process_connect.__UNIQUE_ID_ddebug538, !246, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!248 = !{ptr @.str.95, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../net/bluetooth/rfcomm/core.c", i32 915, i32 2}
!250 = !{ptr @rfcomm_send_dm.__UNIQUE_ID_ddebug509, !249, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!251 = !{ptr @.str.96, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../net/bluetooth/rfcomm/core.c", i32 1286, i32 2}
!253 = !{ptr @rfcomm_recv_disc.__UNIQUE_ID_ddebug521, !252, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!254 = !{ptr @.str.97, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../net/bluetooth/rfcomm/core.c", i32 1202, i32 2}
!256 = !{ptr @rfcomm_recv_ua.__UNIQUE_ID_ddebug519, !255, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!257 = !{ptr @.str.98, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../net/bluetooth/rfcomm/core.c", i32 1256, i32 2}
!259 = !{ptr @rfcomm_recv_dm.__UNIQUE_ID_ddebug520, !258, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!260 = !{ptr @.str.99, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../net/bluetooth/rfcomm/core.c", i32 1705, i32 2}
!262 = !{ptr @.str.100, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @rfcomm_recv_data.__UNIQUE_ID_ddebug537, !261, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!264 = !{ptr @.str.101, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../net/bluetooth/rfcomm/core.c", i32 1650, i32 2}
!266 = !{ptr @.str.102, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @rfcomm_recv_mcc.__UNIQUE_ID_ddebug536, !265, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!268 = !{ptr @.str.103, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../net/bluetooth/rfcomm/core.c", i32 1694, i32 3}
!270 = !{ptr @.str.104, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../net/bluetooth/rfcomm/core.c", i32 1434, i32 2}
!272 = !{ptr @rfcomm_recv_pn.__UNIQUE_ID_ddebug525, !271, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!273 = !{ptr @.str.105, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../net/bluetooth/rfcomm/core.c", i32 1403, i32 2}
!275 = !{ptr @.str.106, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @rfcomm_apply_pn.__UNIQUE_ID_ddebug524, !274, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!277 = !{ptr @.str.107, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../net/bluetooth/rfcomm/core.c", i32 1494, i32 2}
!279 = !{ptr @.str.108, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug526, !278, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!281 = !{ptr @.str.109, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../net/bluetooth/rfcomm/core.c", i32 1519, i32 4}
!283 = !{ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug527, !282, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!284 = !{ptr @.str.110, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../net/bluetooth/rfcomm/core.c", i32 1528, i32 4}
!286 = !{ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug528, !285, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!287 = !{ptr @.str.111, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../net/bluetooth/rfcomm/core.c", i32 1537, i32 4}
!289 = !{ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug529, !288, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!290 = !{ptr @.str.112, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../net/bluetooth/rfcomm/core.c", i32 1546, i32 4}
!292 = !{ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug530, !291, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!293 = !{ptr @.str.113, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../net/bluetooth/rfcomm/core.c", i32 1555, i32 4}
!295 = !{ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug531, !294, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!296 = !{ptr @.str.114, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../net/bluetooth/rfcomm/core.c", i32 1564, i32 4}
!298 = !{ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug532, !297, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!299 = !{ptr @.str.115, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../net/bluetooth/rfcomm/core.c", i32 1573, i32 4}
!301 = !{ptr @rfcomm_recv_rpn.__UNIQUE_ID_ddebug533, !300, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!302 = !{ptr @.str.116, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../net/bluetooth/rfcomm/core.c", i32 1591, i32 2}
!304 = !{ptr @.str.117, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @rfcomm_recv_rls.__UNIQUE_ID_ddebug534, !303, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!306 = !{ptr @.str.118, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../net/bluetooth/rfcomm/core.c", i32 1037, i32 2}
!308 = !{ptr @.str.119, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @rfcomm_send_rls.__UNIQUE_ID_ddebug513, !307, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!310 = !{ptr @.str.120, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../net/bluetooth/rfcomm/core.c", i32 1611, i32 2}
!312 = !{ptr @.str.121, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @rfcomm_recv_msc.__UNIQUE_ID_ddebug535, !311, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!314 = !{ptr @.str.122, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../net/bluetooth/rfcomm/core.c", i32 1090, i32 2}
!316 = !{ptr @.str.123, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @rfcomm_send_fcoff.__UNIQUE_ID_ddebug515, !315, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!318 = !{ptr @.str.124, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../net/bluetooth/rfcomm/core.c", i32 1112, i32 2}
!320 = !{ptr @rfcomm_send_fcon.__UNIQUE_ID_ddebug516, !319, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!321 = !{ptr @.str.125, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../net/bluetooth/rfcomm/core.c", i32 1138, i32 2}
!323 = !{ptr @rfcomm_send_test.__UNIQUE_ID_ddebug517, !322, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!324 = !{ptr @.str.126, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../net/bluetooth/rfcomm/core.c", i32 931, i32 2}
!326 = !{ptr @.str.127, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @rfcomm_send_nsc.__UNIQUE_ID_ddebug510, !325, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!328 = !{ptr @.str.128, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../net/bluetooth/rfcomm/core.c", i32 1876, i32 2}
!330 = !{ptr @rfcomm_process_dlcs.__UNIQUE_ID_ddebug540, !329, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!331 = !{ptr @.str.129, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../net/bluetooth/rfcomm/core.c", i32 1829, i32 2}
!333 = !{ptr @.str.130, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @rfcomm_process_tx.__UNIQUE_ID_ddebug539, !332, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!335 = !{ptr @.str.131, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../net/bluetooth/rfcomm/core.c", i32 1165, i32 2}
!337 = !{ptr @.str.132, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @rfcomm_send_credits.__UNIQUE_ID_ddebug518, !336, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!339 = !{ptr @.str.133, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../net/bluetooth/rfcomm/core.c", i32 2103, i32 2}
!341 = !{ptr @rfcomm_kill_listener.__UNIQUE_ID_ddebug548, !340, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!342 = !{ptr @rfcomm_dlc_debugfs_fops, !343, !"rfcomm_dlc_debugfs_fops", i1 false, i1 false}
!343 = !{!"../net/bluetooth/rfcomm/core.c", i32 2204, i32 1}
!344 = !{ptr @.str.134, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../net/bluetooth/rfcomm/core.c", i32 2192, i32 18}
!346 = !{ptr @__param_str_disable_cfc, !50, !"__param_str_disable_cfc", i1 false, i1 false}
!347 = !{ptr @__param_str_channel_mtu, !55, !"__param_str_channel_mtu", i1 false, i1 false}
!348 = !{ptr @channel_mtu, !349, !"channel_mtu", i1 false, i1 false}
!349 = !{!"../net/bluetooth/rfcomm/core.c", i32 42, i32 12}
!350 = !{ptr @__param_str_l2cap_ertm, !60, !"__param_str_l2cap_ertm", i1 false, i1 false}
!351 = !{!"sp"}
!352 = !{i32 1, !"wchar_size", i32 2}
!353 = !{i32 1, !"min_enum_size", i32 4}
!354 = !{i32 8, !"branch-target-enforcement", i32 0}
!355 = !{i32 8, !"sign-return-address", i32 0}
!356 = !{i32 8, !"sign-return-address-all", i32 0}
!357 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!358 = !{i32 7, !"uwtable", i32 1}
!359 = !{i32 7, !"frame-pointer", i32 2}
!360 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!361 = !{!"branch_weights", i32 2000, i32 1}
!362 = !{i64 2149003090, i64 2149003095, i64 2149003108, i64 2149003152, i64 2149003186, i64 2149003207}
!363 = !{i64 2148479268}
!364 = !{i64 2148393708, i64 2148393740, i64 2148393769, i64 2148393803, i64 2148393834, i64 2148393857}
!365 = !{i64 2149355382}
!366 = !{!"auto-init"}
!367 = !{i8 0, i8 2}
!368 = !{i64 2148391243, i64 2148391275, i64 2148391304, i64 2148391338, i64 2148391369, i64 2148391392}
!369 = !{!"branch_weights", i32 1, i32 2000}
!370 = !{i64 2155145644, i64 2155146132, i64 2155145681, i64 2155145737, i64 2155145771, i64 2155145795, i64 2155145836, i64 2155145857, i64 2155145885, i64 2155145919}
!371 = !{i64 2155163662, i64 2155164150, i64 2155163699, i64 2155163755, i64 2155163789, i64 2155163813, i64 2155163854, i64 2155163875, i64 2155163903, i64 2155163937}
